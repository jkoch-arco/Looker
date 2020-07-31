view: l_fastfield_self_inspection_summary {
  derived_table: {
    explore_source: l_union_fastfield_self_inspections {
      column: submission_id {}
      column: supt {}
      column: inspection_date {}
      column: count_of_self_inspections {}
      derived_column: source_system { sql: 'Fastfield';; }
      derived_column: event_type { sql: 'Self-Inspection';; }
    }
  }
  dimension: submission_id {}
  dimension: supt {}
  dimension: inspection_date {type: date}
  dimension: count_of_self_inspections {type: number}
}
