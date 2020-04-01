view: ndt_jcci_contract_amount {
  view_label: "Job"
  derived_table: {
    explore_source: b_jcci {
      column: jcco {}
      column: contract {}
      column: vp_contract_value {}
      filters: {
        field: b_jcci.vp_contract_value
        value: "not 0"
      }
    }
  }
  dimension: jcco {
    hidden: yes
    type: number
  }
  dimension: contract {hidden:yes}
  dimension: contract_value {
    group_label: "Financials"
    type: number
    sql: ${TABLE}.vp_contract_value ;;
  }
}
