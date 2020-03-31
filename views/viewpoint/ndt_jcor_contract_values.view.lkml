view: ndt_jcor_contract_values {
  view_label: "Job"
  derived_table: {
    explore_source: ndt_jcor_contract_months_prior {
      column: jcco { field: b_jcor.jcco }
      column: contract { field: b_jcor.contract }
      column: rev_cost { field: b_jcor.rev_cost }
      column: other_amount { field: b_jcor.other_amount }
      column: vp_change_order_cost { field: b_jcor.vp_change_order_cost }
      filters: {
        field: b_jcor.rev_cost
        value: "not 0"
      }
    }
  }
  dimension: jcco {
    hidden: yes
    type: number
  }
  dimension: contract {hidden:yes}
  dimension: estimated_contract_value {
    group_label: "Financials"
    type: number
    sql: ${TABLE}.rev_cost ;;
  }
  dimension: original_contract_value {
    group_label: "Financials"
    type: number
    sql: ${TABLE}.other_amount ;;
  }
  dimension: change_order_cost {
    group_label: "Financials"
    type: number
    sql: ${TABLE}.vp_change_order_cost ;;
  }
}
