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
        ;;
  }

  dimension: company_code {
    type: string
    sql: ${TABLE}.company_code ;;
  }

  dimension_group: calendar {
    type: time
    timeframes: [raw,month,quarter,year]
    sql: CONVERT(DATETIME2,CONCAT(${TABLE}.calendar_month,'01'),112)  ;;
  }

  dimension: employee_id {
    hidden: yes
    type: string
    sql: ${TABLE}.EmployeeId ;;
  }

  dimension: number_hired {
    hidden: yes
    type: number
    sql: ${TABLE}.number_hired ;;
  }

  dimension: number_terminated {
    hidden: yes
    type: number
    sql: ${TABLE}.number_terminated ;;
  }

  dimension: number_transferred_in {
    hidden: yes
    type: number
    sql: ${TABLE}.number_transferred_in ;;
  }

  dimension: number_transferred_out {
    hidden: yes
    type: number
    sql: ${TABLE}.number_transferred_out ;;
  }

  dimension: number_existing_headcount {
    hidden: yes
    type: number
    sql: ${TABLE}.number_existing_headcount ;;
  }

  dimension: number_active_employee {
    hidden: yes
    type: number
    sql: ${number_hired} + ${number_terminated} + ${number_existing_headcount}  ;;
  }

  measure: total_employees_hired {
    description: "By each month, will show the number of new employees hired into ARCO"
    type: sum
    sql: ${number_hired} ;;
    filters: [number_hired: "NOT 0"]
    drill_fields: [employee_id]
  }

  measure: total_number_terminated {
    description: "By each month, will show the number of terminated employees hired into ARCO"
    type: sum
    sql: ${number_terminated} ;;
    filters: [number_terminated: "NOT 0"]
    drill_fields: [employee_id]
  }

  measure: total_number_transferred_in {
    description: "By each month, will show the number of employees moved into of a company code"
    type: sum
    sql: ${number_transferred_in} ;;
    filters: [number_transferred_in: "NOT 0"]
    drill_fields: [employee_id]
  }

  measure: total_number_transferred_out {
    description: "By each month, will show the number of employees moved out of a company code"
    type: sum
    sql: ${number_transferred_out} ;;
    filters: [number_transferred_out: "NOT 0"]
    drill_fields: [employee_id]
  }

  measure: total_number_existing_headcount {
    type: sum
    sql: ${number_existing_headcount} ;;
    filters: [number_existing_headcount: "NOT 0"]
    drill_fields: [employee_id]
  }

  measure: total_number_active_employee {
    type: sum
    sql: ${number_active_employee} ;;
    filters: [number_active_employee: "NOT 0"]
    drill_fields: [employee_id]
  }


}
