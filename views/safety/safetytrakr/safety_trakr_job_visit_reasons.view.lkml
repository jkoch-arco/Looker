view: safety_trakr_job_visit_reasons {
  view_label: "Safety Trakr Job Visit"
  sql_table_name: safetytrakr.JobVisitReasons ;;

  dimension: primary_id {
    hidden: yes
    primary_key: yes
    type: string
    sql: ${TABLE}.primaryId ;;
  }

  dimension: new_job_visit_reasonid {
    hidden: yes
    type: string
    sql: ${TABLE}.new_job_visit_reasonid ;;
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

  dimension: created_on {
    hidden: yes
    type: string
    sql: ${TABLE}.createdOn ;;
  }

  dimension: description {
    hidden: yes
    type: string
    sql: ${TABLE}.Description ;;
  }

  dimension: import_sequence_number {
    hidden: yes
    type: string
    sql: ${TABLE}.importSequenceNumber ;;
  }

  dimension: main_reason {
    type: string
    sql: ${TABLE}.mainReason ;;
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

}
