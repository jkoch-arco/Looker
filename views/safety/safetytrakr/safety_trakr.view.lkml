view: safety_trakr {
  sql_table_name: safetytrakr.Safety_Trakr ;;

  dimension_group: actual_visit {
    type: time
    datatype: date
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    sql: ${TABLE}.Actual_Visit_Date ;;
  }

  dimension: additional_notes {
    type: string
    sql: ${TABLE}.Additional_Notes ;;
  }

  dimension: address {
    type: string
    sql: ${TABLE}.Address ;;
  }

  dimension: auto_key {
    type: number
    sql: ${TABLE}.Auto_Key ;;
  }

  dimension: company_number {
    type: string
    sql: ${TABLE}.Company_Number ;;
  }

  dimension: job_name {
    type: string
    sql: ${TABLE}.Job_Name ;;
  }

  dimension: job_number {
    type: string
    sql: ${TABLE}.Job_Number ;;
  }

  dimension_group: job_start {
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
    sql: ${TABLE}.Job_Start_Date ;;
  }

  dimension: jv_company_number {
    type: string
    sql: ${TABLE}.JV_Company_Number ;;
  }

  dimension_group: load_ts {
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
    sql: ${TABLE}.LOAD_TS ;;
  }

  dimension: project_manager_name {
    type: string
    sql: ${TABLE}.Project_Manager_Name ;;
  }

  dimension: safety_manager_name {
    type: string
    sql: ${TABLE}.Safety_Manager_Name ;;
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
    sql: ${TABLE}.Scheduled_Visit_Date ;;
  }

  dimension: scope {
    type: string
    sql: ${TABLE}.Scope ;;
  }

  dimension: superintendent_name {
    type: string
    sql: ${TABLE}.Superintendent_Name ;;
  }

  dimension: visit_reason {
    type: string
    sql: ${TABLE}.Visit_Reason ;;
  }

  measure: count {
    type: count
  }
}
