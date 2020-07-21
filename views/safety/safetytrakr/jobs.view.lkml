view: jobs {
  sql_table_name: safetytrakr.jobs ;;

  dimension: jobs_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.new_jobsid ;;
  }

  dimension_group: cr341_job_end {
    type: time
    datatype: date
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    sql: CAST(${TABLE}.cr341_jobenddate as DATE) ;;
  }

  dimension: job_address {
    type: string
    sql: ${TABLE}.new_jobaddress ;;
  }

  dimension: job_name {
    type: string
    sql: ${TABLE}.new_jobname ;;
  }

  dimension: job_number {
    type: string
    sql: ${TABLE}.new_jobnumber ;;
  }

  dimension_group: job_start {
    type: time
    datatype: date
    timeframes: [raw, date, week, month, quarter, year]
    sql: CAST(${TABLE}.new_jobstartdate as DATE) ;;
  }

  dimension: project_manager_name {
    type: string
    sql: ${TABLE}.new_projectmanagername ;;
  }

  dimension: superintendent_name {
    type: string
    sql: ${TABLE}.new_superintendentname ;;
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
