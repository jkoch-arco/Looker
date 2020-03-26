view: ndt_jcop_job_projected_costs {
  view_label: "Projected Costs"
  derived_table: {
    explore_source: ndt_jcop_job_months_prior {
      column: jcco { field: b_jcop.jcco }
      column: job { field: b_jcop.job }
      column: proj_cost { field: b_jcop.proj_cost }
      filters: {
        field: b_jcop.proj_cost
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

  dimension: proj_cost {
    hidden: yes
    type: number
    sql: coalesce(${TABLE}.proj_cost,0) ;;
  }

  dimension: is_proj_cost_avilable {
    hidden: yes
    type: yesno
    sql: ${proj_cost} <> 0 ;;
  }

  dimension: projected_cost {
    type: number
    sql: CASE WHEN ${b_jcjm.is_job_open}
            AND NOT(${b_jccm.is_department_c})
            AND NOT(${is_proj_cost_avilable})
          THEN ${ndt_jccd_job_actual_cost.vp_actual_cost}
          ELSE ${proj_cost} END;;
    value_format_name: usd
  }

  measure: total_projected_cost {
    type: sum
    sql: ${projected_cost} ;;
  }

}
