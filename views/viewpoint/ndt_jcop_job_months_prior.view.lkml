view: ndt_jcop_job_months_prior {
  derived_table: {
    explore_source: b_jcop {
      column: jcco {}
      column: job {}
      column: month_prior {}
      filters: {
        field: b_jcop.proj_cost
        value: "not 0"
      }
    }
  }

  dimension: pk {
    hidden: yes
    primary_key: yes
    type: string
    sql: concat(${jcco},${job}) ;;
  }

  dimension: jcco {
    hidden: yes
    type: number
  }
  dimension: job {hidden:yes}
  dimension: month_prior {
    hidden: yes
    type: number
  }
}
