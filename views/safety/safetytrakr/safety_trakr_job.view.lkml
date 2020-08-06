view: safety_trakr_job {
  sql_table_name: safetytrakr.Job ;;

  dimension: primary_id {
    hidden: yes
    primary_key: yes
    type: string
    sql: ${TABLE}.primaryId ;;
  }

  dimension: new_jobsid {
    hidden: yes
    type: string
    sql: ${TABLE}.new_jobsid ;;
  }

  # Dates {

  dimension_group: created_on {
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
    sql: CAST(${TABLE}.createdOn as DATE) ;;
  }

  dimension_group: job_start {
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
    sql: CAST(${TABLE}.jobStartDate AS DATE) ;;
  }

  dimension_group: job_end {
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
    sql: CAST(${TABLE}.jobEndDate AS DATE) ;;
  }

  #}

  dimension: company {
    hidden: yes
    type: string
    sql: ${TABLE}.company ;;
  }

  dimension: companyid {
    type: string
    hidden: yes
    sql: ${TABLE}.companyId ;;
  }

  dimension: company_id {
    hidden: yes
    type: string
    sql: ${TABLE}.company_name ;;
  }

  dimension: company_name {
    hidden: yes
    type: string
    sql: ${TABLE}.companyName ;;
  }

  dimension: company_name_type {
    hidden: yes
    type: string
    sql: ${TABLE}.company_nameType ;;
  }

  dimension: company_type {
    hidden: yes
    type: string
    sql: ${TABLE}.companyType ;;
  }

  dimension: created_by {
    hidden: yes
    type: string
    sql: ${TABLE}.createdBy ;;
  }

  dimension: created_by_type {
    hidden: yes
    type: string
    sql: ${TABLE}.createdByType ;;
  }

  dimension: description {
    hidden: yes
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: import_sequence_number {
    hidden: yes
    type: string
    sql: ${TABLE}.importSequenceNumber ;;
  }

  dimension: job_address {
    type: string
    sql: ${TABLE}.jobAddress ;;
  }

  dimension: job_name {
    type: string
    sql: ${TABLE}.jobName ;;
  }

  dimension: job_number {
    type: string
    sql: ${TABLE}.jobNumber ;;
  }

  dimension: jv_company {
    hidden: yes
    type: string
    sql: ${TABLE}.jvCompany ;;
  }

  dimension: jv_company_type {
    hidden: yes
    type: string
    sql: ${TABLE}.jvCompanyType ;;
  }

  dimension: modified_by {
    hidden: yes
    type: string
    sql: ${TABLE}.modifiedBy ;;
  }

  dimension: modified_by_type {
    hidden: yes
    type: string
    sql: ${TABLE}.modifiedByType ;;
  }

  dimension: modified_on {
    hidden: yes
    type: string
    sql: ${TABLE}.modifiedOn ;;
  }

  dimension: owner {
    hidden: yes
    type: string
    sql: ${TABLE}.owner ;;
  }

  dimension: owner_type {
    hidden: yes
    type: string
    sql: ${TABLE}.ownerType ;;
  }

  dimension: project_manager_name {
    type: string
    sql: ${TABLE}.projectManageName ;;
  }

  dimension: record_created_on {
    hidden: yes
    type: string
    sql: ${TABLE}.recordCreatedOn ;;
  }

  dimension: status_reason_value {
    hidden: yes
    type: string
    sql: ${TABLE}.statusReasonValue ;;
  }

  dimension: status_value {
    hidden: yes
    type: string
    sql: ${TABLE}.statusValue ;;
  }

  dimension: superintendent_name {
    type: string
    sql: ${TABLE}.superIntendentName ;;
  }

  dimension: timezone_rule_version_number {
    hidden: yes
    type: string
    sql: ${TABLE}.timezoneRuleVersionNumber ;;
  }

  dimension: utc_conversion_time_zone_code {
    hidden: yes
    type: string
    sql: ${TABLE}.utcConversionTimeZoneCode ;;
  }

  measure: count_of_jobs {
    type: count
    drill_fields: [job_information*]
  }

  set: job_information {
    fields: [job_number, superintendent_name, job_name]
  }

}
