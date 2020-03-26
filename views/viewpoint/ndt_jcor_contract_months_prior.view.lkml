view: ndt_jcor_contract_months_prior {
  derived_table: {
    explore_source: b_jcor {
      column: jcco {}
      column: contract {}
      column: month_prior {}
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
  dimension: month_prior {
    hidden: yes
    type: number
  }
}
