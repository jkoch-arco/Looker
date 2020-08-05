view: safety_trakr_companys {
  sql_table_name: safetytrakr.Companys ;;
  drill_fields: [new_companyid]

  dimension: new_companyid {
    primary_key: yes
    type: string
    sql: ${TABLE}.new_companyid ;;
  }

  dimension: company_group_value {
    type: string
    sql: ${TABLE}.companyGroupValue ;;
  }

  dimension: company_name {
    type: string
    sql: ${TABLE}.companyName ;;
  }

  dimension: company_number {
    type: string
    sql: ${TABLE}.companyNumber ;;
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

  dimension: full_company_name {
    type: string
    sql: ${TABLE}.fullCompanyName ;;
  }

  dimension: import_sequence_number {
    type: string
    sql: ${TABLE}.importSequenceNumber ;;
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

  dimension: time_zone_rule_version_number {
    type: string
    sql: ${TABLE}.timeZoneRuleVersionNumber ;;
  }

  dimension: utc_conversion_time_zone_code {
    type: string
    sql: ${TABLE}.utcConversionTimeZoneCode ;;
  }

  measure: count {
    type: count
    drill_fields: [new_companyid, company_name, full_company_name, job.count]
  }
}
