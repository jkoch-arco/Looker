view: l_procore_self_inspections {
  derived_table: {
    explore_source: procore_self_inspections {
      column: submission_id {}
      column: created_by_name {}
      column: inspection_date {}
      column: count_of_self_inspections {}
      derived_column: source_system { sql: 'Procore';; }
      derived_column: event_type { sql: 'Self-Inspection';; }
    }
  }
  dimension: submission_id {}
  dimension: created_by_name {}
  dimension: inspection_date {type: date}
  dimension: count_of_self_inspections {type: number}
}
