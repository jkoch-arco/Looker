view: procore_self_inspections {
  #sql_table_name: procore.Self_Inspections ;;
  sql_table_name: (SELECT * FROM (SELECT *, ROW_NUMBER() OVER (PARTITION BY inspection_date, Template_Name ORDER BY closed_date DESC) as RANKING FROM procore.Self_Inspections) as DATA WHERE RANKING = 1) ;;

  # Inspection Information {

  dimension: submission_id {
    group_label: "Inspection Information"
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: created_by_email {
    group_label: "Inspection Information"
    type: string
    sql: ${TABLE}.Created_by_Email ;;
  }

  dimension: created_by_name {
    group_label: "Inspection Information"
    type: string
    sql: TRIM(${TABLE}.Created_by_Name) ;;
  }

  dimension: inspection_desc {
    group_label: "Inspection Information"
    type: string
    sql: ${TABLE}.Inspection_Desc ;;
  }

  dimension: inspection_type {
    group_label: "Inspection Information"
    type: string
    sql: ${TABLE}.Inspection_Type ;;
  }

  dimension: location_name {
    group_label: "Inspection Information"
    type: string
    sql: ${TABLE}.Location_Name ;;
  }

  dimension: personal_flag {
    group_label: "Inspection Information"
    type: yesno
    sql: ${TABLE}.Personal_Flag = 'true' ;;
  }

  dimension: project_id {
    group_label: "Inspection Information"
    type: string
    sql: ${TABLE}.ProjectID ;;
  }

  dimension: project_name {
    group_label: "Inspection Information"
    type: string
    sql: ${TABLE}.Project_Name ;;
  }

  dimension: project_number {
    group_label: "Inspection Information"
    type: string
    sql: ${TABLE}.Project_Number ;;
  }

  dimension: responsible_contractor_name {
    group_label: "Inspection Information"
    type: string
    sql: ${TABLE}.Responsible_Contractor_Name ;;
  }

  dimension: responsible_party_email {
    group_label: "Inspection Information"
    type: string
    sql: ${TABLE}.Responsible_Party_Email ;;
  }

  dimension: responsible_party_name {
    group_label: "Inspection Information"
    type: string
    sql: ${TABLE}.Responsible_Party_Name ;;
  }

  dimension: status {
    group_label: "Inspection Information"
    type: string
    sql: ${TABLE}.Status ;;
  }

  dimension: template_name {
    group_label: "Inspection Information"
    type: string
    sql: ${TABLE}.Template_Name ;;
  }

  dimension: trade_name {
    group_label: "Inspection Information"
    type: string
    sql: ${TABLE}.trade_name ;;
  }

  #}

  # Date Fields {

  dimension_group: closed {
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
    sql: ${TABLE}.Closed_Date ;;
  }

  dimension_group: due {
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
    sql: ${TABLE}.Due_Date ;;
  }

  dimension_group: inspection {
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
    sql: ${TABLE}.Inspection_Date ;;
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

  #}

  # Inspection Results {

  dimension: conforming_response {
    group_label: "Inspection Results"
    type: string
    sql: ${TABLE}.Conforming_Response ;;
  }

  dimension: deficient_item_count {
    group_label: "Inspection Results"
    type: number
    sql: ${TABLE}.Deficient_Item_Count ;;
  }

  dimension: deficient_response {
    group_label: "Inspection Results"
    type: string
    sql: ${TABLE}.Deficient_Response ;;
  }

  dimension: na_item_count {
    group_label: "Inspection Results"
    label: "N/A Item Count"
    type: number
    sql: ${TABLE}.NA_Item_Count ;;
  }

  dimension: neutral_item_count {
    group_label: "Inspection Results"
    type: number
    sql: ${TABLE}.Neutral_Item_Count ;;
  }

  dimension: not_inspected_item_count {
    group_label: "Inspection Results"
    type: number
    sql: ${TABLE}.Not_Inspected_Item_Count ;;
  }

  dimension: total_item_count {
    group_label: "Inspection Results"
    type: number
    sql: ${TABLE}.Total_Item_Count ;;
  }

  dimension: yes_item_count {
    group_label: "Inspection Results"
    type: number
    sql: ${TABLE}.Yes_Item_Count ;;
  }

  #}

  # Measures {
  measure: count_of_self_inspections {
    type: count
    drill_fields: [inspection_details*]
  }

  measure: count_of_projects {
    type: count_distinct
    sql: ${project_number} ;;
    drill_fields: [inspection_details*]
  }

  measure: count_of_passing_inspections {
    type: count
    filters: [conforming_response: "Pass"]
    drill_fields: [inspection_details*]
  }

  measure: count_of_safe_inspections {
    type: count
    filters: [conforming_response: "Safe"]
    drill_fields: [inspection_details*]
  }

  measure: passing_percentage {
    type: number
    sql: 1.0 * ${count_of_passing_inspections} / nullif(${count_of_self_inspections},0) ;;
    value_format_name: percent_2
    drill_fields: [inspection_details*]
  }

  #}

  set: inspection_details {
    fields: [created_by_name,inspection_date,project_number,project_name]
  }

}
