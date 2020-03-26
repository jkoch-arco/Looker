view: goals {
  sql_table_name: dbo.goals ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.ID ;;
  }

  dimension: company__c {
    type: string
    sql: ${TABLE}.Company__c ;;
  }

  dimension: division__c {
    type: string
    sql: ${TABLE}.Division__c ;;
  }

  dimension: goal_profit__c {
    type: number
    sql: ${TABLE}.Goal_Profit__c ;;
  }

  dimension: goal_revenue__c {
    type: number
    sql: ${TABLE}.Goal_Revenue__c ;;
  }

  dimension: goal_year__c {
    type: number
    sql: ${TABLE}.Goal_Year__c ;;
  }

  dimension: margin__c {
    type: string
    sql: ${TABLE}.Margin__c ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: profit_p__c {
    type: string
    sql: ${TABLE}.Profit_P__c ;;
  }

  dimension: revenue_percentage__c {
    type: string
    sql: ${TABLE}.Revenue_Percentage__c ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
