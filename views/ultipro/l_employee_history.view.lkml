#Cleaner version with CTEs https://arcobi.looker.com/sql/k3sjhpgx5jkwkj?toggle=sql,vis
#But out of date with the latest below
#l_calendar_month_company_transfers
view: l_employee_history {
  view_label: "Employment History"

  derived_table: {
    #datagroup_trigger: daily
    #indexes: ["employeeid"]
    sql:
    Select
        company_code
      , calendar_month
      , EmployeeId
      , department_description
      , sum(CASE WHEN status in ('Hired','Same Month') then 1 else 0 end) as number_hired
      , sum(CASE WHEN status in ('Terminated','Same Month') then -1 else 0 end) as number_terminated
      , sum(CASE WHEN status = 'Transferred In' then 1 else 0 end) as number_transferred_in
      , sum(CASE WHEN status = 'Transferred Out' then -1 else 0 end) as number_transferred_out
      , sum(CASE WHEN status = 'Existing Headcount' then 1 else 0 end) as number_existing_headcount
    FROM (SELECT
            l_company_transfers.company_code
            , l_company_transfers.calendar_month
            , hired.hire
            , CASE
              WHEN format(hired.hire,'yyyyMM') = format(terminated.TerminationDate,'yyyyMM') THEN 'Same Month'
              WHEN format(hired.hire,'yyyyMM') = l_company_transfers.calendar_month  THEN 'Hired'
              WHEN format(terminated.TerminationDate,'yyyyMM') = l_company_transfers.calendar_month  THEN 'Terminated'
              WHEN format(joined_company.CompanyStartDate,'yyyyMM') = l_company_transfers.calendar_month THEN 'Transferred In'
              WHEN format(left_company.CompanyEndDate,'yyyyMM') = l_company_transfers.calendar_month THEN 'Transferred Out'
              WHEN format(l_company_transfers.CompanyStartDate,'yyyyMM') <> l_company_transfers.calendar_month THEN 'Existing Headcount'
              ELSE NULL END as status
            , l_company_transfers.employeeid
            , l_company_transfers.department_description
            FROM
                (
                Select calendar_dates.*, l_company_transfers.*
                FROM ${l_calendar_month_by_company.SQL_TABLE_NAME} AS calendar_dates
                  LEFT OUTER JOIN ${l_company_transfers.SQL_TABLE_NAME} AS l_company_transfers
                    ON calendar_dates.calendar_month >= Format(l_company_transfers.companystartdate, 'yyyyMM')
                      AND calendar_dates.calendar_month <= COALESCE(Format(l_company_transfers.companyenddate, 'yyyyMM'),Format(Getdate(), 'yyyyMM'))
                      AND calendar_dates.company_code = l_company_transfers.companycode
                ) as l_company_transfers
                LEFT OUTER JOIN ${l_company_transfers.SQL_TABLE_NAME} AS joined_company
                    ON l_company_transfers.calendar_month = Format(joined_company.companystartdate, 'yyyyMM')
                      AND l_company_transfers.company_code = joined_company.companycode
                      AND l_company_transfers.employeeid = joined_company.employeeid
                LEFT OUTER JOIN ${l_company_transfers.SQL_TABLE_NAME} AS left_company
                    ON l_company_transfers.calendar_month = Format(left_company.companyenddate, 'yyyyMM')
                      AND l_company_transfers.company_code = left_company.companycode
                      AND l_company_transfers.employeeid = left_company.employeeid
                LEFT OUTER JOIN
                  (SELECT * FROM ${l_transfer_ordering.SQL_TABLE_NAME} AS transfer_ordering WHERE  company_transfer_ordering = 1) AS hired
                    ON l_company_transfers.calendar_month = Format(hired.hire, 'yyyyMM')
                      AND hired.companycode = l_company_transfers.company_code
                      AND hired.employeeid = l_company_transfers.employeeid
                LEFT OUTER JOIN
                  (SELECT * FROM ${l_transfer_ordering.SQL_TABLE_NAME} AS transfer_ordering WHERE  most_recent_record = 1) AS terminated
                    ON l_company_transfers.calendar_month = Format(terminated.terminationdate, 'yyyyMM')
                      AND terminated.companycode = l_company_transfers.company_code
                      AND terminated.employeeid = l_company_transfers.employeeid
            WHERE l_company_transfers.calendar_month is not null
          ) AS cleaned_up_records
    WHERE {% condition employment.department_description %} department_description {% endcondition %}
    GROUP  BY company_code,calendar_month, EmployeeId,department_description
        ;;
  }

  dimension: company_code {
    group_label: "Organization"
    type: string
    sql: ${TABLE}.company_code ;;
  }

  dimension_group: calendar {
    type: time
    timeframes: [raw,month,quarter,year]
    sql: CONVERT(DATETIME2,NULLIF(CONCAT(${TABLE}.calendar_month,'01'),'01'),112)  ;;
    convert_tz: no
  }

  dimension: employee_id {
    hidden: yes
    type: string
    sql: ${TABLE}.EmployeeId ;;
  }

  dimension: department_description {
    hidden: yes
    type: string
    sql: ${TABLE}.department_description ;;
  }

  dimension: number_hired {
    hidden: yes
    type: yesno
    sql: ${TABLE}.number_hired = 1 ;;
  }

  dimension: number_terminated {
    hidden: yes
    type: yesno
    sql: ${TABLE}.number_terminated = -1 ;;
  }

  dimension: number_transferred_in {
    hidden: yes
    type: yesno
    sql: ${TABLE}.number_transferred_in = 1 ;;
  }

  dimension: number_transferred_out {
    hidden: yes
    type: yesno
    sql: ${TABLE}.number_transferred_out = -1 ;;
  }

  dimension: number_existing_headcount {
    hidden: yes
    type: yesno
    sql: ${TABLE}.number_existing_headcount = 1 ;;
  }

  dimension: starting_headcount {
    hidden: yes
    type: yesno
    #sql: ${number_existing_headcount} + ABS(${number_terminated}) + ABS(${number_transferred_out}) ;;
    sql: ${number_existing_headcount} OR ${number_terminated} OR ${number_transferred_out} ;;
  }

  dimension: number_active_employee {
    hidden: yes
    type: yesno
    #sql: ${number_existing_headcount} + ${number_hired} + ${number_transferred_in} ;;
    sql: ${number_existing_headcount} or ${number_hired} or ${number_transferred_out} ;;
  }

  measure: total_employees_hired {
    description: "By each month, will show the number of new employees hired into ARCO"
    type: count_distinct
    sql: ${employee_id} ;;
    #filters: [number_hired: "NOT 0"]
    filters: [number_hired: "Yes"]
    drill_fields: [employee_id]
  }

  measure: total_number_terminated {
    description: "By each month, will show the number of terminated employees hired into ARCO"
    type: count_distinct
    sql: ${employee_id} ;;
    #filters: [number_terminated: "NOT 0"]
    filters: [number_terminated: "Yes"]
    drill_fields: [employee_id,total_number_terminated,employment.employment_status,company_code]
  }

  measure: total_number_transferred_in {
    description: "By each month, will show the number of employees moved into of a company code"
    type: count_distinct
    sql: ${employee_id} ;;
    #filters: [number_transferred_in: "NOT 0"]
    filters: [number_transferred_in: "Yes"]
    drill_fields: [employee_id]
  }

  measure: total_number_transferred_out {
    description: "By each month, will show the number of employees moved out of a company code"
    type: count_distinct
    sql: ${employee_id} ;;
    #filters: [number_transferred_out: "NOT 0"]
    filters: [number_transferred_out: "Yes"]
    drill_fields: [employee_id]
  }

  measure: total_number_existing_headcount {
    description: "By each month, will show the number of employees who had no HR events of hired, transferred, or terminated"
    type: count_distinct
    sql: ${employee_id} ;;
    #filters: [number_existing_headcount: "NOT 0"]
    filters: [number_existing_headcount: "Yes"]
    drill_fields: [employee_id]
  }

  measure: total_starting_headcount {
    description: "By each month, the number of employees part of a company prior to transfer out or terminations (i.e. the start of the month)"
    type: count_distinct
    sql: ${employee_id} ;;
    #filters: [starting_headcount: "NOT 0"]
    filters: [starting_headcount: "Yes"]
    drill_fields: [employee_id]
  }

  measure: total_number_active_employee {
    description: "By each month, the number of employees part of a company after accounting for hires and transfer in (i.e. the end of the month)"
    type: count_distinct
    sql: ${employee_id} ;;
    #filters: [number_active_employee: "NOT 0"]
    filters: [number_active_employee: "Yes"]
    drill_fields: [employee_id]
  }

  measure: turnover {
    type: number
    value_format_name: percent_1
    sql: (1.0 * (coalesce(${total_number_terminated},0) + coalesce(${total_number_transferred_out},0))) / NULLIF( 1.0 * (coalesce(${total_starting_headcount},0)+coalesce(${total_number_active_employee},0))/2 ,0)  ;;
    required_fields: [calendar_month]
    drill_fields: [calendar_month, turnover, total_starting_headcount, total_number_active_employee, total_number_transferred_in, total_number_transferred_out, total_employees_hired, total_number_terminated]
  }

}
