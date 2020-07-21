view: procore_toolbox_talks {
  sql_table_name: procore.Toolbox_Talks ;;

  dimension: submission_id {
    group_label: "Toolbox Talk Session"
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: created_by_email {
    group_label: "Toolbox Talk Session"
    type: string
    sql: ${TABLE}.Created_by_Email ;;
  }

  dimension: created_by_name {
    group_label: "Toolbox Talk Session"
    type: string
    sql: TRIM(${TABLE}.Created_by_Name) ;;
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
    group_label: "Toolbox Talk Session"
    type: string
    sql: ${TABLE}.Description ;;
  }

  dimension_group: load_ts {
    hidden: yes
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
    group_label: "Toolbox Talk Session"
    type: string
    sql: ${TABLE}.Location_Name ;;
  }

  dimension: pdf_name {
    group_label: "Documentation"
    type: string
    sql: ${TABLE}.PDF_Name ;;
  }

  dimension: pdf_url {
    group_label: "Documentation"
    type: string
    sql: ${TABLE}.PDF_URL ;;
  }

  dimension: private_flag {
    group_label: "Toolbox Talk Session"
    type: string
    sql: ${TABLE}.Private_Flag ;;
  }

  dimension: project_id {
    group_label: "Toolbox Talk Session"
    type: string
    sql: ${TABLE}.ProjectID ;;
  }

  dimension: project_name {
    group_label: "Toolbox Talk Session"
    type: string
    sql: ${TABLE}.Project_Name ;;
  }

  dimension: project_number {
    group_label: "Toolbox Talk Session"
    type: string
    sql: ${TABLE}.Project_Number ;;
  }

  dimension: template_name {
    group_label: "Toolbox Talk Session"
    type: string
    sql: ${TABLE}.Template_Name ;;
  }

  measure: count_of_toolbox_talks {
    type: count
  }

}
