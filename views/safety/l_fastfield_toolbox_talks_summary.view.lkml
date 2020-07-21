view: l_fastfield_toolbox_talks_summary {
  derived_table: {
    explore_source: fastfield_toolbox_talks {
      column: submission_id {}
      column: superintendent {}
      column: submitted_date {}
      column: count_of_toolbox_talks {}
      derived_column: source_system { sql: 'Fastfield';; }
      derived_column: event_type { sql: 'Toolbox Talk';; }
    }
  }
  dimension: submission_id {}
  dimension: superintendent {}
  dimension: submitted_date {type: date}
  dimension: count_of_toolbox_talks {type: number}
}
