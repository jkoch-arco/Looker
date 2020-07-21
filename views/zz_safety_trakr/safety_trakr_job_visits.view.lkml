view: safety_trakr_job_visits {
  sql_table_name: safetytrakr.jobvisits ;;

  dimension: entity_image {
    type: string
    sql: ${TABLE}.entityimage ;;
  }

  dimension: entity_image_id {
    type: string
    sql: ${TABLE}.entityimageid ;;
  }

  dimension: import_sequence_number {
    type: string
    sql: ${TABLE}.importsequencenumber ;;
  }

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
    sql: ${TABLE}.new_actualvisitdate ;;
    convert_tz: no
    datatype: datetime
  }

  dimension: additional_notes {
    type: string
    sql: ${TABLE}.new_additionalnotes ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.new_description ;;
  }

  dimension: job_visit_reason_id {
    type: string
    sql: ${TABLE}.new_job_visit_reasonid ;;
  }

  dimension: job_number {
    type: number
    sql: ${TABLE}.new_jobnumber ;;
  }

  dimension: job_id {
    type: string
    sql: ${TABLE}.new_jobsid ;;
  }

  dimension: job_visit_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.new_jobvisistid ;;
  }

  dimension: primary_id {
    type: string
    sql: ${TABLE}.new_primaryid ;;
  }

  dimension: safety_manager_id {
    hidden: yes
    type: string
    sql: ${TABLE}.new_safetymanagerid ;;
  }

  dimension: safety_manager_name {
    type: string
    sql: ${TABLE}.new_safetymanagername ;;
  }

  dimension_group: scheduled_visit {
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
    sql: ${TABLE}.new_scheduledvisitdate ;;
    convert_tz: no
  }

  dimension: scopes {
    type: string
    sql: ${TABLE}.new_scopes ;;
  }

  dimension: owning_business_unit {
    type: string
    sql: ${TABLE}.owningbusinessunit ;;
  }

  dimension: state_code {
    type: string
    sql: ${TABLE}.statecode ;;
  }

  dimension: status_code {
    type: string
    sql: ${TABLE}.statuscode ;;
  }

  dimension: timezoneruleversionnumber {
    hidden: yes
    type: number
    sql: ${TABLE}.timezoneruleversionnumber ;;
  }

  dimension: utcconversiontimezonecode {
    hidden: yes
    type: string
    sql: ${TABLE}.utcconversiontimezonecode ;;
  }

  dimension: version_number {
    type: number
    sql: ${TABLE}.versionnumber ;;
  }

  measure: count {
    label: "Count of Job Visits"
    type: count
  }

  measure: latest_job_visit {
    type: date
    sql: MAX(${actual_visit_date}) ;;
  }

}
