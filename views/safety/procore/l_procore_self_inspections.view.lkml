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
}
