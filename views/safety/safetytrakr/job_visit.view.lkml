view: job_visit {
  sql_table_name: safetytrakr.JobVisit ;;

  dimension_group: actual_visit {
    type: time
    datatype: date
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    sql: CAST(${TABLE}.new_actualvisitdate as DATE) ;;
  }

  dimension: additional_notes {
    type: string
    sql: ${TABLE}.new_additionalnotes ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.new_description ;;
  }

  dimension: job_number {
    type: string
    sql: ${TABLE}.new_jobnumber ;;
  }

  dimension: job_visist_id {
    type: string
    sql: ${TABLE}.new_jobvisistid ;;
  }

  dimension: safety_manager_name {
    type: string
    sql: ${TABLE}.new_safetymanagername ;;
  }

  dimension: scheduled_visit_date {
    type: string
    sql: ${TABLE}.new_scheduledvisitdate ;;
  }

  dimension: scopes {
    type: string
    sql: ${TABLE}.new_scopes ;;
  }

  dimension: state_code {
    type: string
    sql: ${TABLE}.statecode ;;
  }

  dimension: status_code {
    type: string
    sql: ${TABLE}.statuscode ;;
  }

  measure: count {
    type: count
  }
}
