view: safety_trakr_job {
  sql_table_name: safetytrakr.Job ;;

  dimension: company {
    type: string
    sql: ${TABLE}.company ;;
  }

  dimension: company_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.companyId ;;
  }

  dimension: companyname {
    type: string
    sql: ${TABLE}.companyName ;;
  }

  dimension: company_name {
    type: string
    sql: ${TABLE}.company_name ;;
  }

  dimension: company_name_type {
    type: string
    sql: ${TABLE}.company_nameType ;;
  }

  dimension: company_type {
    type: string
    sql: ${TABLE}.companyType ;;
  }

  dimension: created_by {
    type: string
    sql: ${TABLE}.createdBy ;;
  }

  dimension: created_by_type {
    type: string
    sql: ${TABLE}.createdByType ;;
  }

  dimension: created_on {
    type: string
    sql: ${TABLE}.createdOn ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: import_sequence_number {
    type: string
    sql: ${TABLE}.importSequenceNumber ;;
  }

  dimension: job_address {
    type: string
    sql: ${TABLE}.jobAddress ;;
  }

  dimension: job_end_date {
    type: string
    sql: ${TABLE}.jobEndDate ;;
  }

  dimension: job_name {
    type: string
    sql: ${TABLE}.jobName ;;
  }

  dimension: job_number {
    type: string
    sql: ${TABLE}.jobNumber ;;
  }

  dimension: job_start_date {
    type: string
    sql: ${TABLE}.jobStartDate ;;
  }

  dimension: jv_company {
    type: string
    sql: ${TABLE}.jvCompany ;;
  }

  dimension: jv_company_type {
    type: string
    sql: ${TABLE}.jvCompanyType ;;
  }

  dimension: modified_by {
    type: string
    sql: ${TABLE}.modifiedBy ;;
  }

  dimension: modified_by_type {
    type: string
    sql: ${TABLE}.modifiedByType ;;
  }

  dimension: modified_on {
    type: string
    sql: ${TABLE}.modifiedOn ;;
  }

  dimension: new_jobsid {
    type: string
    sql: ${TABLE}.new_jobsid ;;
  }

  dimension: owner {
    type: string
    sql: ${TABLE}.owner ;;
  }

  dimension: owner_type {
    type: string
    sql: ${TABLE}.ownerType ;;
  }

  dimension: primary_id {
    type: string
    sql: ${TABLE}.primaryId ;;
  }

  dimension: project_manage_name {
    type: string
    sql: ${TABLE}.projectManageName ;;
  }

  dimension: record_created_on {
    type: string
    sql: ${TABLE}.recordCreatedOn ;;
  }

  dimension: status_reason_value {
    type: string
    sql: ${TABLE}.statusReasonValue ;;
  }

  dimension: status_value {
    type: string
    sql: ${TABLE}.statusValue ;;
  }

  dimension: super_intendent_name {
    type: string
    sql: ${TABLE}.superIntendentName ;;
  }

  dimension: timezone_rule_version_number {
    type: string
    sql: ${TABLE}.timezoneRuleVersionNumber ;;
  }

  dimension: utc_conversion_time_zone_code {
    type: string
    sql: ${TABLE}.utcConversionTimeZoneCode ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      company_name,
      job_name,
      project_manage_name,
      super_intendent_name,
      company_name,
      companys.new_companyid,
      companys.company_name,
      companys.full_company_name
    ]
  }
}
