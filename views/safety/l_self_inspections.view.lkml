view: l_self_inspections {

  derived_table: {
    datagroup_trigger: daily_refresh
    indexes: ["project_number"]
    sql:
    SELECT
       procore.data_source as data_source
      ,procore.questionnaire_type as questionnaire_type
      ,procore.submission_id as submission_id
      ,procore.project_id as project_id
      ,UPPER(TRIM(procore.project_name)) as project_name
      ,COALESCE(UPPER(TRIM(procore.project_number)),'~UNK~') as project_number
      ,procore.status as status
      ,procore.created_by_email as created_by_email
      ,procore.created_by_name as created_by_name
      ,procore.responsible_party_email as responsible_party_email
      ,procore.responsible_party_name as responsible_party_name
      ,procore.responsible_contractor_name as responsible_contractor_name
      ,procore.inspection_type as inspection_type
      ,procore.location_name as location_name
      ,procore.inspection_desc as inspection_desc
      ,procore.template_name as template_name
      ,procore.trade_name as trade_name
      ,procore.inspection_date as inspection_date
      ,procore.due_date as due_date
      ,procore.closed_date as closed_date
    FROM ${l_procore_self_inspections.SQL_TABLE_NAME} as procore
    UNION
    SELECT
       fastfield.data_source as data_source
      ,fastfield.questionnaire_type as questionnaire_type
      ,fastfield.submissionid as submission_id
      ,NULL as project_id
      ,UPPER(TRIM(fastfield.Project)) as project_name
      ,COALESCE(UPPER(TRIM(fastfield.Project)),'~UNK~') as project_number
      ,NULL as status
      ,fastfield.SubmittedBy as created_by_email
      ,fastfield.Supt as created_by_name
      ,NULL as responsible_party_email
      ,NULL as responsible_party_name
      ,NULL as responsible_contractor_name
      ,NULL as inspection_type
      ,NULL as location_name
      ,NULL as inspection_desc
      ,fastfield.FormName as template_name
      ,NULL as trade_name
      ,fastfield.Date as inspection_date
      ,NULL as due_date
      ,fastfield.SubmittedOn as closed_date
    FROM ${l_union_fastfield_self_inspections.SQL_TABLE_NAME} as fastfield
    ;;
  }

  dimension: primary_key {
    primary_key: yes
    hidden: yes
    sql: CONCAT(${data_source},${submission_id}) ;;
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

  dimension: submission_id {
    group_label: "Inspection Information"
    type: string
    sql: ${TABLE}.submission_id ;;
  }

  dimension: project_id {
    group_label: "Inspection Information"
    type: string
    sql: ${TABLE}.project_id ;;
  }

  dimension: project_name {
    group_label: "Inspection Information"
    type: string
    sql: ${TABLE}.project_name ;;
  }

  dimension: project_number {
    group_label: "Inspection Information"
    type: string
    sql: ${TABLE}.project_number ;;
  }

  dimension: status {
    group_label: "Inspection Information"
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: created_by_email {
    group_label: "Inspection Information"
    type: string
    sql: ${TABLE}.created_by_email ;;
  }

  dimension: created_by_name {
    group_label: "Inspection Information"
    type: string
    sql: ${TABLE}.created_by_name ;;
  }

  dimension: responsible_party_email {
    group_label: "Inspection Information"
    type: string
    sql: ${TABLE}.responsible_party_email ;;
  }

  dimension: responsible_party_name {
    group_label: "Inspection Information"
    type: string
    sql: ${TABLE}.responsible_party_name ;;
  }

  dimension: responsible_contractor_name {
    group_label: "Inspection Information"
    type: string
    sql: ${TABLE}.responsible_contractor_name ;;
  }

  dimension: inspection_type {
    group_label: "Inspection Information"
    type: string
    sql: ${TABLE}.inspection_type ;;
  }

  dimension: location_name {
    group_label: "Inspection Information"
    type: string
    sql: ${TABLE}.location_name ;;
  }

  dimension: inspection_description {
    group_label: "Inspection Information"
    type: string
    sql: ${TABLE}.inspection_desc ;;
  }

  dimension: template_name {
    group_label: "Inspection Information"
    type: string
    sql: ${TABLE}.template_name ;;
  }

  dimension: trade_name {
    group_label: "Inspection Information"
    type: string
    sql: ${TABLE}.trade_name ;;
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
    sql: ${TABLE}.inspection_date ;;
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
    sql: ${TABLE}.due_date ;;
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
    sql: ${TABLE}.closed_date ;;
  }

  measure: count_of_self_inspections {
    type: count
  }

}
