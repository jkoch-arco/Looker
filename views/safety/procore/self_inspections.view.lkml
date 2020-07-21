view: self_inspections {
  sql_table_name: procore.Self_Inspections ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

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

  dimension: conforming_response {
    type: string
    sql: ${TABLE}.Conforming_Response ;;
  }

  dimension: created_by_email {
    type: string
    sql: ${TABLE}.Created_by_Email ;;
  }

  dimension: created_by_name {
    type: string
    sql: ${TABLE}.Created_by_Name ;;
  }

  dimension: deficient_item_count {
    type: number
    sql: ${TABLE}.Deficient_Item_Count ;;
  }

  dimension: deficient_response {
    type: string
    sql: ${TABLE}.Deficient_Response ;;
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

  dimension: inspection_desc {
    type: string
    sql: ${TABLE}.Inspection_Desc ;;
  }

  dimension: inspection_type {
    type: string
    sql: ${TABLE}.Inspection_Type ;;
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

  dimension: na_item_count {
    type: number
    sql: ${TABLE}.NA_Item_Count ;;
  }

  dimension: neutral_item_count {
    type: number
    sql: ${TABLE}.Neutral_Item_Count ;;
  }

  dimension: not_inspected_item_count {
    type: number
    sql: ${TABLE}.Not_Inspected_Item_Count ;;
  }

  dimension: personal_flag {
    type: string
    sql: ${TABLE}.Personal_Flag ;;
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

  dimension: responsible_contractor_name {
    type: string
    sql: ${TABLE}.Responsible_Contractor_Name ;;
  }

  dimension: responsible_party_email {
    type: string
    sql: ${TABLE}.Responsible_Party_Email ;;
  }

  dimension: responsible_party_name {
    type: string
    sql: ${TABLE}.Responsible_Party_Name ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.Status ;;
  }

  dimension: template_name {
    type: string
    sql: ${TABLE}.Template_Name ;;
  }

  dimension: total_item_count {
    type: number
    sql: ${TABLE}.Total_Item_Count ;;
  }

  dimension: trade_name {
    type: string
    sql: ${TABLE}.trade_name ;;
  }

  dimension: yes_item_count {
    type: number
    sql: ${TABLE}.Yes_Item_Count ;;
  }

  measure: count {
    type: count
  }

}