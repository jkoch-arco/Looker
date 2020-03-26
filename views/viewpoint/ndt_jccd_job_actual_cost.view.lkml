view: ndt_jccd_job_actual_cost {
  derived_table: {
    explore_source: b_jccd {
      column: jcco {}
      column: job {}
      column: vp_actual_cost {}
      filters: {
        field: b_jccd.mth_date
        value: "before 2 months ago"
      }
      filters: {
        field: b_jccd.vp_actual_cost
        value: "not 0"
      }
    }
  }

  dimension: jcco {
    hidden: yes
    type: number
    sql: ${TABLE}.jcco ;;
  }

  dimension: job {
    hidden: yes
    type: string
    sql: ${TABLE}.job ;;
  }

  dimension: vp_actual_cost {
    hidden: yes
    type: number
    sql: ${TABLE}.vp_actual_cost ;;
  }

}
