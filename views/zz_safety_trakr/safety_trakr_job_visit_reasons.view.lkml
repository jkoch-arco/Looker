view: safety_trakr_job_visit_reasons {
  sql_table_name: safetytrakr.job_visit_reasons ;;

  dimension: job_visit_reason_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.new_job_visit_reasonid ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.new_description ;;
  }

  dimension: main_reason {
    type: string
    sql: ${TABLE}.new_main_reason ;;
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
