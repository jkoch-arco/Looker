view: l_safety_events_summary {

  derived_table: {
    sql:
    SELECT submission_id, supt as superintendent, inspection_date as event_date, source_system, event_type FROM ${l_fastfield_self_inspection_summary.SQL_TABLE_NAME}
    UNION
    SELECT submission_id, superintendent, submitted_date as event_date, source_system, event_type FROM ${l_fastfield_toolbox_talks_summary.SQL_TABLE_NAME}
    UNION
    SELECT submission_id, created_by_name as superintendent, inspection_date as event_date, source_system, event_type FROM ${l_procore_self_inspections.SQL_TABLE_NAME}
    UNION
    SELECT submission_id, created_by_name as superintendent, updated_date as event_date, source_system, event_type FROM ${l_procore_toolbox_talks_summary.SQL_TABLE_NAME}
    ;;
  }

  dimension: primary_key {
    hidden: yes
    primary_key: yes
    type: string
    sql: CONCAT(${submission_id},${event_type}) ;;
  }
  dimension: submission_id {
    type: string
    sql: ${TABLE}.submission_id ;;
  }
  dimension: superintendent {
    type: string
    sql: ${TABLE}.superintendent ;;
  }
  dimension_group: event {
    type: time
    datatype: date
    timeframes: [raw,date,week,month,quarter,year]
    convert_tz: no
    sql: ${TABLE}.event_date ;;
  }
  dimension: source_system {
    type: string
    sql: ${TABLE}.source_system ;;
  }
  dimension: event_type {
    type: string
    sql: ${TABLE}.event_type ;;
  }
  dimension: event_type_short_name {
    type: string
    case: {
      when: {
        sql: ${event_type} = 'Self-Inspection' ;;
        label: "SI"
      }
      when: {
        sql: ${event_type} = 'Toolbox Talk' ;;
        label: "TT"
      }
    }
  }
  measure: count_of_events {
    type: count
  }
}
