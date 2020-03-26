view: b_jcop {
  sql_table_name: viewpoint.bJCOP ;;

  measure: count {
    type: count
  }

  dimension: jcco {
    type: number
    sql: ${TABLE}.JCCo ;;
  }

  dimension: job {
    type: string
    sql: LTRIM(RTRIM(${TABLE}.Job)) ;;
  }

  dimension: month {
    type: date
    convert_tz: no
    sql: ${TABLE}.Month ;;
  }

  measure: month_prior {
    type: date
    convert_tz: no
    sql:DATEADD(M,-2,MAX([Month]));;
  }

  dimension: proj_cost {
    type: number
    sql: ${TABLE}.ProjCost ;;
  }

  dimension: other_amount {
    type: number
    sql: ${TABLE}.OtherAmount ;;
  }

  dimension: notes {
    type: string
    sql: ${TABLE}.Notes ;;
  }

  dimension_group: load_date {
    type: time
    sql: ${TABLE}.LoadDate ;;
  }

  dimension: load_id {
    type: number
    sql: ${TABLE}.LoadID ;;
  }

}
