view: fastfield_self_inspections {
  view_label: "Fastfield Self-Inspection"
  sql_table_name: dbo.FastField_WeeklySelfInspection ;;

  dimension: submission_id {
    primary_key: yes
    group_label: "Inspection Information"
    type: string
    sql: ${TABLE}.SubmissionId ;;
  }

  dimension: filed_by {
    group_label: "Inspection Information"
    type: string
    sql: ${TABLE}.Filedby ;;
  }

  dimension: form_id {
    group_label: "Inspection Information"
    type: string
    sql: ${TABLE}.FormId ;;
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

  dimension: no_name {
    group_label: "Unknown"
    type: string
    sql: ${TABLE}.NoName ;;
  }

  dimension: inspection_description {
    group_label: "Inspection Information"
    type: string
    sql: ${TABLE}.NoName1 ;;
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
