view: l_opportunities_summary {
  derived_table: {
    explore_source: opportunities {
      column: id { field: opportunities.id }
      column: count { field: l_opportunities_weighting.count_of_companies}
    }
  }

  dimension: opportunity_id {
    hidden: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: number_of_companies_involved {
    view_label: "Opportunities"
    type: number
    sql: ${TABLE}.count ;;
  }
}
