view: b_jcor {
  sql_table_name: viewpoint.bJCOR ;;

  measure: count {
    type: count
  }

  dimension: load_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.LoadID ;;
  }

  dimension: jcco {
    type: number
    sql: ${TABLE}.JCCo ;;
  }

  dimension: contract {
    type: string
    sql: LTRIM(RTRIM(${TABLE}.Contract)) ;;
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

#   dimension: month_lag {
#     type: date_month
#     datatype: datetime
#     convert_tz: no
#     sql: LAG(${month}, 2, Null) OVER( PARTITION BY ${jcco},${contract} ORDER BY ${month} DESC) ;;
#   }

  dimension: rev_cost {
    type: number
    sql: ${TABLE}.RevCost ;;
  }

  dimension: other_amount {
    type: number
    sql: ${TABLE}.OtherAmount ;;
  }

  dimension: vp_change_order_cost {
    type: number
    sql: ${rev_cost} - ${other_amount} ;;
  }

  dimension: notes {
    type: string
    sql: ${TABLE}.Notes ;;
  }

  dimension_group: load_date {
    type: time
    sql: ${TABLE}.LoadDate ;;
  }

}
