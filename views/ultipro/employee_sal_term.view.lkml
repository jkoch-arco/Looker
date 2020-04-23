view: employee_sal_term {
  sql_table_name: ARCO_BIDW_PII.ultipro.Employee_Sal_Term ;;

  dimension: primary_key {
    primary_key: yes
    type: string
    sql: CONCAT(${employee_number},${employee_id}) ;;
  }

  dimension: annual_salary {
    type: number
    sql: ${TABLE}.AnnualSalary ;;
  }

  dimension: company_code {
    type: string
    sql: ${TABLE}.CompanyCode ;;
  }

  dimension: employee_id {
    type: string
    sql: ${TABLE}.EmployeeId ;;
  }

  dimension: employee_number {
    type: string
    sql: ${TABLE}.EmployeeNumber ;;
  }

  dimension_group: load_ts {
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

  dimension: salaryor_hourly_code {
    type: string
    sql: ${TABLE}.SalaryorHourlyCode ;;
  }

  dimension: scheduled_work_hours {
    type: number
    sql: ${TABLE}.ScheduledWorkHours ;;
  }

  dimension_group: termination {
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
    type: string
    sql: ${TABLE}.TerminationReason ;;
  }

  dimension: termination_reason_code {
    type: string
    sql: ${TABLE}.TerminationReasonCode ;;
  }

  dimension: termination_type {
    type: string
    sql: ${TABLE}.TerminationType ;;
  }

  dimension: termination_type_code {
    type: string
    sql: ${TABLE}.TerminationTypeCode ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
