view: goals {
  sql_table_name: dbo.goals ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.ID ;;
  }

  dimension: company {
    type: string
    sql: ${TABLE}.Company__c ;;
  }

  dimension: division {
    type: string
    sql: ${TABLE}.Division__c ;;
  }

  dimension: goal_profit {
    type: number
    sql: ${TABLE}.Goal_Profit__c ;;
  }

  dimension: goal_revenue {
    type: number
    sql: ${TABLE}.Goal_Revenue__c ;;
  }

  dimension: goal_year {
    type: number
    sql: ${TABLE}.Goal_Year__c ;;
  }

  dimension: margin {
    type: string
    sql: ${TABLE}.Margin__c ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: profit_p {
    type: string
    sql: ${TABLE}.Profit_P__c ;;
  }

  dimension: revenue_percentage {
    type: string
    sql: ${TABLE}.Revenue_Percentage__c ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
