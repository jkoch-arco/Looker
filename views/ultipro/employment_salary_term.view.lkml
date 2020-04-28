view: employment_salary_term {
  view_label: "Employment"
  sql_table_name: ARCO_BIDW_PII.ultipro.Employee_Sal_Term ;;

  dimension: primary_key {
    hidden: yes
    primary_key: yes
    type: string
    sql: CONCAT(${employee_number},${company_code}) ;;
  }

  dimension: company_code {
    hidden: yes
    type: string
    sql: ${TABLE}.CompanyCode ;;
  }

  dimension: employee_id {
    hidden: yes
    type: string
    sql: ${TABLE}.EmployeeId ;;
  }

  dimension: employee_number {
    hidden: yes
    type: string
    sql: ${TABLE}.EmployeeNumber ;;
  }

  dimension: annual_salary {
    group_label: "Salary"
    type: number
    sql: ${TABLE}.AnnualSalary ;;
  }

  dimension: salary_or_hourly_code {
    group_label: "Salary"
    type: string
    sql: ${TABLE}.SalaryorHourlyCode ;;
  }

  dimension: scheduled_work_hours {
    group_label: "Salary"
    type: number
    sql: ${TABLE}.ScheduledWorkHours ;;
  }

  dimension_group: salary_termination {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.TerminationDate ;;
  }

  dimension: termination_reason {
    group_label: "Termination Information"
    type: string
    sql: ${TABLE}.TerminationReason ;;
  }

  dimension: termination_reason_code {
    group_label: "Termination Information"
    type: string
    sql: ${TABLE}.TerminationReasonCode ;;
  }

  dimension: termination_type {
    group_label: "Termination Information"
    type: string
    sql: ${TABLE}.TerminationType ;;
  }

  dimension: termination_type_code {
    group_label: "Termination Information"
    type: string
    sql: ${TABLE}.TerminationTypeCode ;;
  }

  dimension_group: load_ts {
    hidden: yes
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.LOAD_TS ;;
  }

}
