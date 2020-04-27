view: employment {
  sql_table_name: ARCO_BIDW_PII.ultipro.Employment ;;

#   dimension: primary_key {
#    This is the natural primary key on the table, but due to SQL always where clause it elminates the CDC on the table and the transfer records which were moved to l_company_transfers
#     primary_key: yes
#     hidden: yes
#     sql: CONCAT(${load_ts_raw} ,${employee_id},  ${termination_raw} , ${termination_reason_code}) ;;
#   }

  dimension: primary_key {
    primary_key: yes
    hidden: yes
    sql: ${employee_id} ;;
  }

  dimension_group: benefit_seniority {
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
    sql: ${TABLE}.BeneSeniority ;;
  }

  dimension: parent_company_code {
    group_label: "Organization"
    type: string
    sql: ${TABLE}.CompanyCode ;;
  }

  dimension: cohort_company_code {
    group_label: "Organization"
    type: string
    sql: ${TABLE}.CompanyCohort ;;
  }

  dimension_group: job_start {
    description: "Start date of current job"
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
    sql: ${TABLE}.DateInJob ;;
  }

  dimension: employee_id {
    description: "Ultipro Unique Employee ID"
    type: string
    sql: ${TABLE}.EmployeeId ;;
  }

  dimension: employee_number {
    type: string
    sql: ${TABLE}.EmployeeNumber ;;
    required_fields: [employee_id]
  }

  dimension: employee_type {
    description: "Determines if regular or temporary employee"
    type: string
    sql: ${TABLE}.EmployeeType ;;
  }

  dimension: employment_status {
    description: "Determines if employee is active or terminated"
    type: string
    sql: ${TABLE}.EmploymentStatus ;;
  }

  dimension: is_employee_active {
    type: yesno
    sql: ${employment_status} = 'A' ;;
  }

  dimension: full_or_part_time {
    type: string
    sql: ${TABLE}.FullOrPartTime ;;
  }

  dimension: job_code {
    type: string
    sql: ${TABLE}.JobCode ;;
  }

  dimension: job_description {
    type: string
    sql: ${TABLE}.JobDescription ;;
  }

  dimension_group: last_hire {
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
    sql: ${TABLE}.LastHire ;;
  }

  dimension: length_of_service_days {
    hidden: yes
    group_label: "Length of Service"
    type: number
    sql: ${TABLE}.LengthOfService ;;
  }

  dimension: length_of_service_months {
    group_label: "Length of Service"
    description: "Based on last hire date to today"
    type: duration_month
    sql_start: ${last_hire_raw} ;;
    sql_end: getdate() ;;
  }

  dimension: length_of_service_years {
    group_label: "Length of Service"
    description: "Based on last hire date to today"
    type: duration_year
    sql_start: ${last_hire_raw} ;;
    sql_end: getdate() ;;
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

  dimension: local_union {
    hidden: yes
    type: string
    sql: ${TABLE}.LocalUnion ;;
  }

  dimension: location_code {
    type: string
    sql: ${TABLE}.LocationCode ;;
  }

  dimension: location_code_description {
    type: string
    sql: ${TABLE}.LocationCodeDescription ;;
  }

  dimension: national_union {
    hidden: yes
    type: string
    sql: ${TABLE}.NationalUnion ;;
  }

  dimension: department_code {
    group_label: "Organization"
    type: string
    sql: ${TABLE}.OrgLevel1 ;;
  }

  dimension: department_description {
    group_label: "Organization"
    type: string
    sql: ${TABLE}.OrgLevel1Description ;;
  }

  dimension: division_code {
    group_label: "Organization"
    type: string
    sql: ${TABLE}.OrgLevel2 ;;
  }

  dimension: division_description {
    group_label: "Organization"
    type: string
    sql: ${TABLE}.OrgLevel2Description ;;
  }

  dimension: global_company_code {
    group_label: "Organization"
    label: "GL Company Code"
    type: string
    sql: ${TABLE}.OrgLevel3 ;;
  }

  dimension: global_company_description {
    group_label: "Organization"
    label: "GL Company Description"
    type: string
    sql: ${TABLE}.OrgLevel3Description ;;
  }

  dimension_group: original_hire {
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
    sql: ${TABLE}.OriginalHire ;;
  }

  dimension: pay_frequency {
    type: string
    sql: ${TABLE}.PayFrequency ;;
  }

  dimension: pay_group {
    hidden: yes
    type: string
    sql: ${TABLE}.PayGroup ;;
  }

  dimension: reason_code {
    hidden: yes
    type: string
    sql: ${TABLE}.ReasonCode ;;
  }

  dimension_group: seniority {
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
    sql: ${TABLE}.Seniority ;;
  }

  dimension_group: status_start {
    hidden: yes
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
    sql: ${TABLE}.StatusStartDate ;;
  }

  #supervisor's group turnover, demographics, engagement
  #IC or Supervisor
  dimension: supervisor_id {
    group_label: "Supervisor"
    type: string
    sql: ${TABLE}.SupervisorId ;;
  }

  dimension: supervisor_employee_number {
    group_label: "Supervisor"
    type: string
    sql: ${TABLE}.SupervisorEmployeeNumber ;;
  }

  dimension: supervisor_first_name {
    group_label: "Supervisor"
    type: string
    sql: ${TABLE}.SupervisorFirstName ;;
  }

  dimension: supervisor_last_name {
    group_label: "Supervisor"
    type: string
    sql: ${TABLE}.SupervisorLastName ;;
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

  dimension: termination_reason_code {
    type: string
    sql: ${TABLE}.TerminationReasonCode ;;
  }

  measure: count_of_employment_records {
    type: count
  }

  measure: count_of_employees {
    type: count_distinct
    sql: ${employee_id} ;;
  }

  measure: count_of_active_employees {
    type: count_distinct
    sql: ${employee_id};;
    filters: [is_employee_active: "Yes"]
  }


}
