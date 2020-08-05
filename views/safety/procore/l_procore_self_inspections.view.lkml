view: l_procore_self_inspections {
  derived_table: {
    explore_source: procore_self_inspections {
      column: submission_id {}
      column: project_id {}
      column: project_name {}
      column: project_number {}
      column: status {}
      column: created_by_email {}
      column: created_by_name {}
      column: responsible_party_email {}
      column: responsible_party_name {}
      column: responsible_contractor_name {}
      column: inspection_type {}
      column: location_name {}
      column: inspection_desc {}
      #column: personal_flag {}
      column: template_name {}
      column: trade_name {}
      column: inspection_date { field: procore_self_inspections.inspection_raw }
      column: due_date { field: procore_self_inspections.due_raw }
      column: closed_date { field: procore_self_inspections.closed_raw }
      derived_column: data_source {
        sql: 'Procore' ;;
      }
      derived_column: questionnaire_type {
        sql: 'Self Inspection Questionnaire' ;;
      }
    }
  }

  # Inspection Information {

  dimension: submission_id {
    group_label: "Inspection Information"
    primary_key: yes
    type: string
    sql: ${TABLE}.submission_id ;;
  }

  dimension: data_source {
    group_label: "Inspection Information"
    type: string
    sql: ${TABLE}.data_source ;;
  }

  dimension: questionnaire_type {
    group_label: "Inspection Information"
    type: string
    sql: ${TABLE}.questionnaire_type ;;
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

  #}

}
