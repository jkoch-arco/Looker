view: employment {
  #sql_table_name: ARCO_BIDW_PII.ultipro.Employment ;;
  sql_table_name: (SELECT Row_number() OVER(partition BY employeeid ORDER BY statusstartdate DESC, terminationdate ASC) as most_recent_employee_record, Employment.* FROM ultipro.Employment WHERE LOAD_TS = (Select MAX(LOAD_TS) FROM ultipro.Employment)) ;;

  # Primary Key {

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

  dimension: most_recent_employee_record {
    hidden: yes
    type: number
    sql: ${TABLE}.most_recent_employee_record ;;
  }

  #}

  # Dimensions {

  dimension: employee_id {
    description: "Ultipro Unique Employee ID"
    type: string
    sql: ${TABLE}.EmployeeId ;;
  }

  dimension: employee_number {
    description: "ARCO Employee Given Number"
    type: string
    sql: ${TABLE}.EmployeeNumber ;;
    required_fields: [employee_id]
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

  dimension: employee_type {
    group_label: "Classifications"
    description: "Determines if employee is regular or temporary"
    type: string
    sql: ${TABLE}.EmployeeType ;;
  }

  dimension: employment_status {
    group_label: "Classifications"
    description: "Determines if employee is active or terminated"
    type: string
    sql: ${TABLE}.EmploymentStatus ;;
  }

  dimension: full_or_part_time {
    group_label: "Classifications"
    description: "Determines if employee is full time or part time"
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

  dimension: length_of_service_days {
    hidden: yes #Use alternative fields defined in business logic
    type: number
    sql: ${TABLE}.LengthOfService ;;
  }

  dimension: location_code {
    type: string
    sql: ${TABLE}.LocationCode ;;
  }

  dimension: location_code_description {
    type: string
    sql: ${TABLE}.LocationCodeDescription ;;
  }

  dimension: pay_frequency {
    type: string
    sql: ${TABLE}.PayFrequency ;;
  }

  dimension: local_union {
    hidden: yes
    type: string
    sql: ${TABLE}.LocalUnion ;;
  }

  dimension: national_union {
    hidden: yes
    type: string
    sql: ${TABLE}.NationalUnion ;;
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

  dimension: termination_reason_code {
    type: string
    sql: ${TABLE}.TerminationReasonCode ;;
  }

  # Dates {

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

  dimension_group: termination {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      quarter_of_year,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.TerminationDate ;;
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

  #}

  # Business Logic Dimensions {

  dimension: is_employee_active {
    hidden: yes
    type: yesno
    sql: ${employment_status} = 'A' ;;
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

  dimension: length_of_service_tier {
    group_label: "Length of Service"
    description: "Based on last hire date to today"
    type: tier
    tiers: [0,2,5,8,11,16,21]
    style: integer
    sql: ${length_of_service_years} ;;
  }

  #}

  # Measures {

  measure: count_of_employment_records {
    type: count
  }

  measure: average_tenure {
    type: average
    sql: 1.0*${length_of_service_years} ;;
    value_format_name: decimal_1
  }

  measure: count_of_employees {
    type: count_distinct
    sql: ${employee_id} ;;
  }

  measure: percent_of_all_employees {
    type: percent_of_total
    sql: ${count_of_employees} ;;
  }

  measure: count_of_active_employees {
    type: count_distinct
    sql: ${employee_id};;
    filters: [is_employee_active: "Yes"]
  }

  #}

  # ETL / Loading Fields {

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

  # }


}
