view: l_union_fastfield_self_inspections {

  derived_table: {
    datagroup_trigger: daily_refresh
    indexes: ["SubmissionId"]
    sql:
    SELECT 'Fastfield' as data_source, 'Self Inspection Questionnaire Multi Story' as questionnaire_type, Date,Commentslistsectionyouarereferencing,Filedby,FormName,FormVersion,Project,Signature,SubmissionId,SubmittedBy,Supt,SubmittedOn
    FROM ${fastfield_self_inspections_multi_story.SQL_TABLE_NAME} as data
    UNION
    SELECT 'Fastfield' as data_source, 'Self Inspection Questionnaire' as questionnaire_type, Date,Commentslistsectionyouarereferencing,Filedby,FormName,FormVersion,Project,Signature,SubmissionId,SubmittedBy,Supt,SubmittedOn
    FROM ${fastfield_self_inspections.SQL_TABLE_NAME} as data
    ;;
  }

  dimension: primary_key {
    hidden: yes
    primary_key: yes
    type: string
    sql: CONCAT( ${data_source} || ${type} || ${submission_id}) ;;
  }

  dimension: data_source {
    #hidden: yes
    group_label: "Inspection Information"
    type: string
    sql: ${TABLE}.data_source ;;
  }

  dimension: type {
    #hidden: yes
    group_label: "Inspection Information"
    type: string
    sql: ${TABLE}.questionnaire_type ;;
  }

  dimension: submission_id {
    group_label: "Inspection Information"
    type: string
    sql: ${TABLE}.SubmissionId ;;
  }

  dimension: filed_by {
    group_label: "Inspection Information"
    type: string
    sql: ${TABLE}.Filedby ;;
  }

  dimension: form_name {
    group_label: "Inspection Information"
    type: string
    sql: ${TABLE}.FormName ;;
  }

  dimension: form_version {
    group_label: "Inspection Information"
    type: string
    sql: ${TABLE}.FormVersion ;;
  }

  dimension: project {
    group_label: "Inspection Information"
    type: string
    sql: ${TABLE}.Project ;;
  }

  dimension: signature {
    group_label: "Inspection Information"
    type: string
    sql: ${TABLE}.Signature ;;
  }

  dimension: submitted_email {
    group_label: "Inspection Information"
    type: string
    sql: ${TABLE}.SubmittedBy ;;
  }

  dimension_group: submitted {
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
    sql: ${TABLE}.SubmittedOn ;;
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
    sql: ${TABLE}.Date ;;
  }

  dimension: supt {
    group_label: "Inspection Information"
    type: string
    sql: trim(${TABLE}.Supt) ;;
  }

  dimension: comments {
    group_label: "Inspection Information"
    type: string
    sql: ${TABLE}.Commentslistsectionyouarereferencing ;;
  }

  measure: count_of_self_inspections {
    type: count
  }

}
