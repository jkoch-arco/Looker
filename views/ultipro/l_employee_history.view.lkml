#Cleaner version with CTEs https://arcobi.looker.com/sql/k3sjhpgx5jkwkj?toggle=sql,vis
#But out of date with the latest below
#l_calendar_month_company_transfers
view: l_employee_history {

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
        l_company_transfers.company_code
        , l_company_transfers.calendar_month
        , hired.originalhire
        , CASE WHEN format(hired.OriginalHire,'yyyyMM') = l_company_transfers.calendar_month  THEN 'Hired'
          WHEN format(terminated.TerminationDate,'yyyyMM') = l_company_transfers.calendar_month  THEN 'Terminated'
          WHEN format(l_company_transfers.CompanyStartDate,'yyyyMM') = l_company_transfers.calendar_month THEN 'Transferred In'
          WHEN format(left_company.CompanyEndDate,'yyyyMM') = l_company_transfers.calendar_month THEN 'Transferred Out'
          WHEN format(l_company_transfers.CompanyStartDate,'yyyyMM') <> l_company_transfers.calendar_month THEN 'Existing Headcount'
          --WHEN active.EmployeeID is not null THEN 'Existing Headcount'
          ELSE NULL END as status
        , l_company_transfers.employeeid
        FROM ${l_calendar_month_company_transfers.SQL_TABLE_NAME} as l_company_transfers --calendar_dates
              LEFT OUTER JOIN ${l_company_transfers.SQL_TABLE_NAME} AS left_company
                  ON l_company_transfers.calendar_month = Format(l_company_transfers.companyenddate, 'yyyyMM')
                    AND l_company_transfers.company_code = left_company.companycode
                    AND l_company_transfers.employeeid = left_company.employeeid
              LEFT OUTER JOIN
                (SELECT * FROM ${l_transfer_ordering.SQL_TABLE_NAME} AS transfer_ordering WHERE  company_transfer_ordering = 1) AS hired
                  ON l_company_transfers.calendar_month = Format(hired.originalhire, 'yyyyMM')
                    AND hired.companycode = l_company_transfers.company_code
                    AND hired.employeeid = l_company_transfers.employeeid
              LEFT OUTER JOIN
                (SELECT * FROM ${l_transfer_ordering.SQL_TABLE_NAME} AS transfer_ordering WHERE  most_recent_record = 1) AS terminated
                  ON l_company_transfers.calendar_month = Format(terminated.terminationdate, 'yyyyMM')
                    AND terminated.companycode = l_company_transfers.company_code
                    AND terminated.employeeid = l_company_transfers.employeeid
      ) AS cleaned_up_records
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
