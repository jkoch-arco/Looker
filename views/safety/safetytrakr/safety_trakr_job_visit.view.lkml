view: safety_trakr_job_visit {
  sql_table_name: safetytrakr.Job_Visit ;;

  dimension: primary_id {
    hidden: yes
    primary_key: yes
    type: string
    sql: ${TABLE}.primaryId ;;
  }

  dimension: new_jobvisistid {
    hidden: yes
    type: string
    sql: ${TABLE}.new_jobvisistid ;;
  }

  # Dates {
  dimension_group: actual_visit {
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
    sql: CAST(${TABLE}.actualVisitDate AS DATE) ;;
  }

  dimension_group: created {
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
    sql: CAST(${TABLE}.createdOn AS DATE) ;;
  }

  dimension_group: scheduled_visit {
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
    sql: CAST(${TABLE}.scheduledVisitDate as DATE) ;;
  }

  #}

  dimension: additional_notes {
    type: string
    sql: ${TABLE}.additionalNotes ;;
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

  dimension: job_number {
    type: string
    sql: ${TABLE}.jobNumber ;;
  }

  dimension: job_visit_reason {
    hidden: yes
    type: string
    sql: ${TABLE}.jobVisitReason ;;
  }

  dimension: job_visit_reason_type {
    hidden: yes
    type: string
    sql: ${TABLE}.jobVisitReasonType ;;
  }

  dimension: jobs {
    hidden: yes
    type: string
    sql: ${TABLE}.jobs ;;
  }

  dimension: jobs_type {
    hidden: yes
    type: string
    sql: ${TABLE}.jobsType ;;
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

  dimension: photo {
    hidden: yes
    type: string
    sql: ${TABLE}.photo ;;
  }

  dimension: record_created_on {
    hidden: yes
    type: string
    sql: ${TABLE}.recordCreatedOn ;;
  }

  dimension: safety_manager {
    hidden: yes
    type: string
    sql: ${TABLE}.safetyManager ;;
  }

  dimension: saftey_manager_name {
    hidden: yes
    type: string
    sql: ${TABLE}.safteyManagerName ;;
  }

  dimension: saftey_manager_type {
    hidden: yes
    type: string
    sql: ${TABLE}.safteyManagerType ;;
  }

  dimension: scopes {
    type: string
    sql: ${TABLE}.scopes ;;
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

  measure: count_of_job_visits {
    type: count
  }
}
