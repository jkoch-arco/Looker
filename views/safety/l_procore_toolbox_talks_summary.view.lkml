view: l_procore_toolbox_talks_summary {
  derived_table: {
    explore_source: procore_toolbox_talks {
      column: submission_id {}
      column: created_by_name {}
      column: updated_date {}
      column: count_of_toolbox_talks {}
      derived_column: source_system { sql: 'Procore';; }
      derived_column: event_type { sql: 'Toolbox Talk';; }
    }
  }
  dimension: submission_id {}
  dimension: created_by_name {}
  dimension: updated_date {type: date}
  dimension: count_of_toolbox_talks {type: number}
}
