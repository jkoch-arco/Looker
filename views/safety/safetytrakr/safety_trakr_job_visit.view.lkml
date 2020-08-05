view: safety_trakr_job_visit {
  sql_table_name: safetytrakr.Job_Visit ;;

  dimension: actual_visit_date {
    type: string
    sql: ${TABLE}.actualVisitDate ;;
  }

  dimension: additional_notes {
    type: string
    sql: ${TABLE}.additionalNotes ;;
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

  dimension: job_number {
    type: string
    sql: ${TABLE}.jobNumber ;;
  }

  dimension: job_visit_reason {
    type: string
    sql: ${TABLE}.jobVisitReason ;;
  }

  dimension: job_visit_reason_type {
    type: string
    sql: ${TABLE}.jobVisitReasonType ;;
  }

  dimension: jobs {
    type: string
    sql: ${TABLE}.jobs ;;
  }

  dimension: jobs_type {
    type: string
    sql: ${TABLE}.jobsType ;;
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

  dimension: new_jobvisistid {
    type: string
    sql: ${TABLE}.new_jobvisistid ;;
  }

  dimension: owner {
    type: string
    sql: ${TABLE}.owner ;;
  }

  dimension: owner_type {
    type: string
    sql: ${TABLE}.ownerType ;;
  }

  dimension: photo {
    type: string
    sql: ${TABLE}.photo ;;
  }

  dimension: primary_id {
    type: string
    sql: ${TABLE}.primaryId ;;
  }

  dimension: record_created_on {
    type: string
    sql: ${TABLE}.recordCreatedOn ;;
  }

  dimension: safety_manager {
    type: string
    sql: ${TABLE}.safetyManager ;;
  }

  dimension: saftey_manager_name {
    type: string
    sql: ${TABLE}.safteyManagerName ;;
  }

  dimension: saftey_manager_type {
    type: string
    sql: ${TABLE}.safteyManagerType ;;
  }

  dimension: scheduled_visit_date {
    type: string
    sql: ${TABLE}.scheduledVisitDate ;;
  }

  dimension: scopes {
    type: string
    sql: ${TABLE}.scopes ;;
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
    drill_fields: [saftey_manager_name]
  }
}
