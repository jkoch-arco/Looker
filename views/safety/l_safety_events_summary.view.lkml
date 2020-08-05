view: l_safety_events_self_inspections {
  derived_table: {
    explore_source: l_safety_project_number {
      column: project_number {}
      column: submission_id { field: l_self_inspections.submission_id }
      column: data_source { field: l_self_inspections.data_source }
      column: created_by_name { field: l_self_inspections.created_by_name }
      column: event_date { field: l_self_inspections.inspection_date }
      derived_column: event_type { sql: 'Self-Inspection' ;;}
    }
  }
}

view: l_safety_events_toolbox_talks {
  derived_table: {
    explore_source: l_safety_project_number {
      column: project_number {}
      column: submission_id { field: l_toolbox_talks.submission_id }
      column: data_source { field: l_toolbox_talks.data_source }
      column: created_by_name { field: l_toolbox_talks.created_by_name }
      column: event_date { field: l_toolbox_talks.updated_date }
      derived_column: event_type { sql: 'Toolbox Talk' ;;}
    }
  }
}


view: l_safety_events_summary {

  derived_table: {
    datagroup_trigger: daily_refresh
    indexes: ["project_number"]
    sql:
    SELECT project_number, submission_id, data_source, created_by_name, event_date, event_type FROM ${l_safety_events_self_inspections.SQL_TABLE_NAME} as self_inspections
    UNION
    SELECT project_number, submission_id, data_source, created_by_name, event_date, event_type FROM ${l_safety_events_toolbox_talks.SQL_TABLE_NAME} as toolbox_talks
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
    sql: ${TABLE}.created_by_name ;;
  }
  dimension_group: event {
    type: time
    datatype: date
    timeframes: [raw,date,week,month,quarter,year]
    convert_tz: no
    sql: ${TABLE}.event_date ;;
  }
  dimension: data_source {
    type: string
    sql: ${TABLE}.data_source ;;
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
    drill_fields: [event_details*]
  }

  set: event_details {
    fields: [data_source, submission_id, event_type, event_date, superintendent]
  }
}
