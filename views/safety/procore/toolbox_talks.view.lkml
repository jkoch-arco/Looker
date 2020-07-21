view: toolbox_talks {
  sql_table_name: procore.Toolbox_Talks ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: created_by_email {
    type: string
    sql: ${TABLE}.Created_by_Email ;;
  }

  dimension: created_by_name {
    type: string
    sql: ${TABLE}.Created_by_Name ;;
  }

  dimension_group: updated {
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
    sql: ${TABLE}.Date_Updated ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
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

  dimension: location_name {
    type: string
    sql: ${TABLE}.Location_Name ;;
  }

  dimension: pdf_name {
    type: string
    sql: ${TABLE}.PDF_Name ;;
  }

  dimension: pdf_url {
    type: string
    sql: ${TABLE}.PDF_URL ;;
  }

  dimension: private_flag {
    type: string
    sql: ${TABLE}.Private_Flag ;;
  }

  dimension: project_id {
    type: string
    sql: ${TABLE}.ProjectID ;;
  }

  dimension: project_name {
    type: string
    sql: ${TABLE}.Project_Name ;;
  }

  dimension: project_number {
    type: string
    sql: ${TABLE}.Project_Number ;;
  }

  dimension: template_name {
    type: string
    sql: ${TABLE}.Template_Name ;;
  }

  measure: count {
    type: count
  }

}
