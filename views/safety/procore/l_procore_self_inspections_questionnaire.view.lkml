view: l_procore_self_inspections_questionnaire {
  derived_table: {
    explore_source: procore_self_inspections {
      column: submission_id {}
      column: conforming_response {}
      column: deficient_item_count {}
      column: deficient_response {}
      column: na_item_count {}
      column: neutral_item_count {}
      column: not_inspected_item_count {}
      column: yes_item_count {}
      column: total_item_count {}
      derived_column: question {
        sql: 'Specific Data Not Available' ;;
      }
      derived_column: data_source {
        sql: 'Procore' ;;
      }
    }
  }

}
