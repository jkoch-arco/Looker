#Cleaner version with CTEs https://arcobi.looker.com/sql/k3sjhpgx5jkwkj?toggle=sql,vis
#But out of date with the latest below

view: bK_l_employee_history {

  derived_table: {
    sql:
    Select
        company_code
      , calendar_month
      , EmployeeId
      , sum(CASE WHEN status = 'Hired' then 1 else 0 end) as number_hired
      , sum(CASE WHEN status = 'Terminated' then -1 else 0 end) as number_terminated
      , sum(CASE WHEN status = 'Transferred In' then 1 else 0 end) as number_transferred_in
      , sum(CASE WHEN status = 'Transferred Out' then -1 else 0 end) as number_transferred_out
      , sum(CASE WHEN status = 'Existing Headcount' then 1 else 0 end) as number_existing_headcount
    FROM   (SELECT
              calendar_dates.company_code
              , calendar_dates.calendar_month
              , hired.originalhire
              , CASE WHEN format(hired.OriginalHire,'yyyyMM') = calendar_dates.calendar_month  THEN 'Hired'
                WHEN format(terminated.TerminationDate,'yyyyMM') = calendar_dates.calendar_month  THEN 'Terminated'
                WHEN format(l_company_transfers.CompanyStartDate,'yyyyMM') = calendar_dates.calendar_month THEN 'Transferred In'
                WHEN format(left_company.CompanyEndDate,'yyyyMM') = calendar_dates.calendar_month THEN 'Transferred Out'
                WHEN format(l_company_transfers.CompanyStartDate,'yyyyMM') <> calendar_dates.calendar_month THEN 'Existing Headcount'
                --WHEN active.EmployeeID is not null THEN 'Existing Headcount'
                ELSE NULL END as status
              , l_company_transfers.employeeid
            FROM   (SELECT date_month as calendar_month, company_number_padded as company_code
                    FROM ${l_calendar_month_by_company.SQL_TABLE_NAME}
                  ) AS
                   calendar_dates
                   LEFT OUTER JOIN (
                    SELECT
                      transfer_ordering.employeeid,
                      transfer_ordering.companycode,
                      transfer_ordering.originalhire,
                      CASE WHEN transfer_ordering.company_transfer_ordering = 1 THEN transfer_ordering.originalhire ELSE Dateadd(month, 1,previous_company.terminationdate) END AS CompanyStartDate,
                      transfer_ordering.terminationdate AS CompanyEndDate
                    FROM
                      (
                      SELECT
                        employeeid,
                        companycode,
                        originalhire,
                        terminationdate,
                        statusstartdate,
                        terminationreasoncode,
                        Row_number() OVER(partition BY employeeid ORDER BY statusstartdate ASC) AS company_transfer_ordering,
                        Row_number() OVER(partition BY employeeid ORDER BY statusstartdate DESC) AS most_recent_record
                      FROM ultipro.employment AS employment
                      WHERE employment.load_ts = (SELECT Max(load_ts) FROM ultipro.employment)
                        AND employeeid = 'BRE06P00P0K0'
                      ) AS transfer_ordering
                    LEFT OUTER JOIN
                      (
                      SELECT
                        employeeid,
                        companycode,
                        originalhire,
                        terminationdate,
                        statusstartdate,
                        terminationreasoncode,
                        Row_number() OVER(partition BY employeeid ORDER BY statusstartdate ASC) AS company_transfer_ordering,
                        Row_number() OVER(partition BY employeeid ORDER BY statusstartdate DESC) AS most_recent_record
                      FROM   ultipro.employment AS employment
                      WHERE  employment.load_ts = (SELECT Max(load_ts) FROM   ultipro.employment)
                        AND employeeid = 'BRE06P00P0K0'
                    ) AS previous_company
                    ON transfer_ordering.company_transfer_ordering = previous_company.company_transfer_ordering + 1
                    ) AS l_company_transfers
                                ON calendar_dates.calendar_month >= Format(l_company_transfers.companystartdate, 'yyyyMM')
                                  AND calendar_dates.calendar_month <= COALESCE(Format(l_company_transfers.companyenddate, 'yyyyMM'),Format(Getdate(), 'yyyyMM'))
                                  AND calendar_dates.company_code = l_company_transfers.companycode
                   LEFT OUTER JOIN (
                    SELECT
                      transfer_ordering.employeeid,
                      transfer_ordering.companycode,
                      transfer_ordering.originalhire,
                      CASE WHEN transfer_ordering.company_transfer_ordering = 1 THEN transfer_ordering.originalhire ELSE Dateadd(month, 1,previous_company.terminationdate) END AS CompanyStartDate,
                      transfer_ordering.terminationdate AS CompanyEndDate
                    FROM
                      (
                      SELECT
                        employeeid,companycode,
                        originalhire,
                        terminationdate,
                        statusstartdate,
                        terminationreasoncode,
                        Row_number() OVER(partition BY employeeid ORDER BY statusstartdate ASC) AS company_transfer_ordering,
                        Row_number() OVER(partition BY employeeid ORDER BY statusstartdate DESC) AS most_recent_record
                      FROM ultipro.employment AS employment
                      WHERE employment.load_ts = (SELECT Max(load_ts) FROM ultipro.employment)
                        AND employeeid = 'BRE06P00P0K0'
                      ) AS transfer_ordering
                    LEFT OUTER JOIN
                      (
                      SELECT
                        employeeid,
                        companycode,
                        originalhire,
                        terminationdate,
                        statusstartdate,
                        terminationreasoncode,
                        Row_number() OVER(partition BY employeeid ORDER BY statusstartdate ASC) AS company_transfer_ordering,
                        Row_number() OVER(partition BY employeeid ORDER BY statusstartdate DESC) AS most_recent_record
                      FROM   ultipro.employment AS employment
                      WHERE  employment.load_ts = (SELECT Max(load_ts) FROM   ultipro.employment)
                        AND employeeid = 'BRE06P00P0K0'
                    ) AS previous_company
                    ON transfer_ordering.company_transfer_ordering = previous_company.company_transfer_ordering + 1
                    ) AS left_company
                                ON calendar_dates.calendar_month =
                   Format(l_company_transfers.companyenddate, 'yyyyMM')
                   AND calendar_dates.company_code = left_company.companycode
                   LEFT OUTER JOIN (SELECT *
                                    FROM   (SELECT employeeid,companycode,
                                                   originalhire,
                                                   terminationdate,
                                                   statusstartdate,
                                                           terminationreasoncode,
                                                           Row_number()
                                                   OVER(
                                                     partition BY employeeid
                                                     ORDER BY statusstartdate ASC)
                                                           AS
                                                           company_transfer_ordering
                                                           ,Row_number()
                                                   OVER(
                                                     partition BY employeeid
                                                     ORDER BY statusstartdate DESC)
                                                            AS
                                                            most_recent_record
                                            FROM   ultipro.employment AS employment
                                            WHERE  employment.load_ts =
                                                   (SELECT
                                                   Max(load_ts)
                                                                         FROM
                                                   ultipro.employment)
                                                   AND employeeid = 'BRE06P00P0K0'
                                                  )
                                           AS
                                           transfer_ordering
                                    WHERE  company_transfer_ordering = 1) AS hired
                                ON calendar_dates.calendar_month =
                                   Format(hired.originalhire, 'yyyyMM')
                                   AND hired.companycode =
                                       calendar_dates.company_code
                   LEFT OUTER JOIN (SELECT *
                                    FROM   (SELECT employeeid,companycode,
                                                   originalhire,
                                                   terminationdate,
                                                   statusstartdate,
                                                   terminationreasoncode,
                                                   Row_number()
                                                   OVER(
                                                     partition BY employeeid
                                                     ORDER BY statusstartdate ASC)
                                                           AS
                                                           company_transfer_ordering
                                                           ,Row_number()
                                                   OVER(
                                                     partition BY employeeid
                                                     ORDER BY statusstartdate DESC)
                                                            AS
                                                            most_recent_record
                                            FROM   ultipro.employment AS employment
                                            WHERE  employment.load_ts = (SELECT Max(load_ts) FROM ultipro.employment)
                                                   AND employeeid = 'BRE06P00P0K0'
                                            ) AS  transfer_ordering
                                    WHERE  most_recent_record = 1) AS terminated
                                ON calendar_dates.calendar_month = Format(terminated.terminationdate, 'yyyyMM') AND terminated.companycode = calendar_dates.company_code
           --and terminated.TerminationReasonCode <> 'TRO'
           ) AS cleaned_up_records
    WHERE  calendar_month > '201501'
           AND company_code IN ( '008', '003', '010' )
    GROUP  BY company_code,calendar_month, EmployeeId
    --ORDER  BY company_code,calendar_month ASC
        ;;
  }

  dimension: company_code {
    type: string
    sql: ${TABLE}.company_code ;;
  }

  dimension: calendar_month {
    type: string
    sql: ${TABLE}.calendar_month ;;
  }

  dimension: employee_id {
    type: string
    sql: ${TABLE}.EmployeeId ;;
  }

  dimension: number_hired {
    type: number
    sql: ${TABLE}.number_hired ;;
  }

  dimension: number_terminated {
    type: number
    sql: ${TABLE}.number_terminated ;;
  }

  dimension: number_transferred_in {
    type: number
    sql: ${TABLE}.number_transferred_in ;;
  }

  dimension: number_transferred_out {
    type: number
    sql: ${TABLE}.number_transferred_out ;;
  }

  dimension: number_existing_headcount {
    type: number
    sql: ${TABLE}.number_existing_headcount ;;
  }

  dimension: number_active_employee {
    type: number
    sql: ${number_hired} + ${number_terminated} + ${number_existing_headcount} + ${number_transferred_in} + ABS(${number_transferred_out});;
  }

  measure: total_employees_hired {
    type: sum
    sql: ${number_hired} ;;
  }

  measure: total_number_terminated {
    type: sum
    sql: ${number_terminated} ;;
  }

  measure: total_number_transferred_in {
    type: sum
    sql: ${number_transferred_in} ;;
  }

  measure: total_number_transferred_out {
    type: sum
    sql: ${number_transferred_out} ;;
  }

  measure: total_number_active_employee {
    type: sum
    sql: ${number_active_employee} ;;
  }

  measure: total_number_existing_headcount {
    type: sum
    sql: ${number_existing_headcount} ;;
  }
}



#Cleaner version with CTEs https://arcobi.looker.com/sql/k3sjhpgx5jkwkj?toggle=sql,vis
#But out of date with the latest below

view: l_employee_history_2 {

  derived_table: {
    datagroup_trigger: daily
    indexes: ["employeeid"]
    sql:
    Select
        company_code
      , calendar_month
      , EmployeeId
      , sum(CASE WHEN status = 'Hired' then 1 else 0 end) as number_hired
      , sum(CASE WHEN status = 'Terminated' then -1 else 0 end) as number_terminated
      , sum(CASE WHEN status = 'Transferred In' then 1 else 0 end) as number_transferred_in
      , sum(CASE WHEN status = 'Transferred Out' then -1 else 0 end) as number_transferred_out
      , sum(CASE WHEN status = 'Existing Headcount' then 1 else 0 end) as number_existing_headcount
    FROM (SELECT
            calendar_dates.company_code
            , calendar_dates.calendar_month
            , hired.originalhire
            , CASE WHEN format(hired.OriginalHire,'yyyyMM') = calendar_dates.calendar_month  THEN 'Hired'
              WHEN format(terminated.TerminationDate,'yyyyMM') = calendar_dates.calendar_month  THEN 'Terminated'
              WHEN format(l_company_transfers.CompanyStartDate,'yyyyMM') = calendar_dates.calendar_month THEN 'Transferred In'
              WHEN format(left_company.CompanyEndDate,'yyyyMM') = calendar_dates.calendar_month THEN 'Transferred Out'
              WHEN format(l_company_transfers.CompanyStartDate,'yyyyMM') <> calendar_dates.calendar_month THEN 'Existing Headcount'
              --WHEN active.EmployeeID is not null THEN 'Existing Headcount'
              ELSE NULL END as status
            , l_company_transfers.employeeid
            FROM ${l_calendar_month_by_company.SQL_TABLE_NAME} AS calendar_dates
                  LEFT OUTER JOIN ${l_company_transfers.SQL_TABLE_NAME} AS l_company_transfers
                        ON calendar_dates.calendar_month >= Format(l_company_transfers.companystartdate, 'yyyyMM')
                          AND calendar_dates.calendar_month <= COALESCE(Format(l_company_transfers.companyenddate, 'yyyyMM'),Format(Getdate(), 'yyyyMM'))
                          AND calendar_dates.company_code = l_company_transfers.companycode
                  LEFT OUTER JOIN ${l_company_transfers.SQL_TABLE_NAME} AS left_company
                      ON calendar_dates.calendar_month = Format(l_company_transfers.companyenddate, 'yyyyMM')
                        AND calendar_dates.company_code = left_company.companycode
                  LEFT OUTER JOIN
                    (SELECT * FROM ${l_transfer_ordering.SQL_TABLE_NAME} AS transfer_ordering WHERE  company_transfer_ordering = 1) AS hired
                      ON calendar_dates.calendar_month = Format(hired.originalhire, 'yyyyMM') AND hired.companycode = calendar_dates.company_code
                  LEFT OUTER JOIN
                    (SELECT * FROM ${l_transfer_ordering.SQL_TABLE_NAME} AS transfer_ordering WHERE  most_recent_record = 1) AS terminated
                      ON calendar_dates.calendar_month = Format(terminated.terminationdate, 'yyyyMM') AND terminated.companycode = calendar_dates.company_code
          ) AS cleaned_up_records
      WHERE 1=1 and 1=1
    GROUP  BY company_code,calendar_month, EmployeeId
    --ORDER  BY company_code,calendar_month ASC
        ;;
  }

  dimension: company_code {
    type: string
    sql: ${TABLE}.company_code ;;
  }

  dimension: calendar_month {
    type: string
    sql: ${TABLE}.calendar_month ;;
  }

  dimension: employee_id {
    type: string
    sql: ${TABLE}.EmployeeId ;;
  }

  dimension: number_hired {
    type: number
    sql: ${TABLE}.number_hired ;;
  }

  dimension: number_terminated {
    type: number
    sql: ${TABLE}.number_terminated ;;
  }

  dimension: number_transferred_in {
    type: number
    sql: ${TABLE}.number_transferred_in ;;
  }

  dimension: number_transferred_out {
    type: number
    sql: ${TABLE}.number_transferred_out ;;
  }

  dimension: number_existing_headcount {
    type: number
    sql: ${TABLE}.number_existing_headcount ;;
  }

  dimension: number_active_employee {
    type: number
    sql: ${number_hired} + ${number_terminated} + ${number_existing_headcount} + ${number_transferred_in} + ABS(${number_transferred_out});;
  }

  measure: total_employees_hired {
    type: sum
    sql: ${number_hired} ;;
  }

  measure: total_number_terminated {
    type: sum
    sql: ${number_terminated} ;;
  }

  measure: total_number_transferred_in {
    type: sum
    sql: ${number_transferred_in} ;;
  }

  measure: total_number_transferred_out {
    type: sum
    sql: ${number_transferred_out} ;;
  }

  measure: total_number_active_employee {
    type: sum
    sql: ${number_active_employee} ;;
  }

  measure: total_number_existing_headcount {
    type: sum
    sql: ${number_existing_headcount} ;;
  }
}
