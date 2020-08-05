view: safety_trakr_job_visit_reasons {
  sql_table_name: safetytrakr.JobVisitReasons ;;
  drill_fields: [new_job_visit_reasonid]

  dimension: new_job_visit_reasonid {
    primary_key: yes
    type: string
    sql: ${TABLE}.new_job_visit_reasonid ;;
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
    sql: ${TABLE}.Description ;;
  }

  dimension: import_sequence_number {
    type: string
    sql: ${TABLE}.importSequenceNumber ;;
  }

  dimension: main_reason {
    type: string
    sql: ${TABLE}.mainReason ;;
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
    drill_fields: [new_job_visit_reasonid]
  }
}
