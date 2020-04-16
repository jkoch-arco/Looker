view: employment {
  sql_table_name: ultipro.Employment ;;

  dimension: primary_key {
    primary_key: yes
    hidden: yes
    sql: CONCAT(${load_ts_raw} ,${employee_id},  ${termination_raw} , ${termination_reason_code}) ;;
  }

  dimension_group: bene_seniority {
    label: "Benefit Seniority"
    description: "This is the date when benefits are something"
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

  dimension: company_code {
    type: string
    sql: ${TABLE}.CompanyCode ;;
  }

  dimension: company_cohort {
    group_label: "This is grouped together"
    type: string
    sql: ${TABLE}.CompanyCohort ;;
  }

  dimension_group: date_in_job {
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
    type: string
    sql: ${TABLE}.EmployeeId ;;
  }

  dimension: employee_number {
    type: string
    sql: ${TABLE}.EmployeeNumber ;;
  }

  dimension: employee_type {
    type: string
    sql: ${TABLE}.EmployeeType ;;
  }

  dimension: employment_status {
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

  dimension: length_of_service {
    type: number
    sql: ${TABLE}.LengthOfService ;;
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

  dimension: local_union {
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
    type: string
    sql: ${TABLE}.NationalUnion ;;
  }

  dimension: org_level1 {
    type: string
    sql: ${TABLE}.OrgLevel1 ;;
  }

  dimension: org_level1_description {
    type: string
    sql: ${TABLE}.OrgLevel1Description ;;
  }

  dimension: org_level2 {
    type: string
    sql: ${TABLE}.OrgLevel2 ;;
  }

  dimension: org_level2_description {
    type: string
    sql: ${TABLE}.OrgLevel2Description ;;
  }

  dimension: org_level3 {
    type: string
    sql: ${TABLE}.OrgLevel3 ;;
  }

  dimension: org_level3_description {
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
    type: string
    sql: ${TABLE}.PayGroup ;;
  }

  dimension: reason_code {
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

  dimension: supervisor_employee_number {
    type: string
    sql: ${TABLE}.SupervisorEmployeeNumber ;;
  }

  dimension: supervisor_first_name {
    type: string
    sql: ${TABLE}.SupervisorFirstName ;;
  }

  dimension: supervisor_id {
    type: string
    sql: ${TABLE}.SupervisorId ;;
  }

  dimension: supervisor_last_name {
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
