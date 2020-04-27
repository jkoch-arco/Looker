view: arcojob_dashboard {
  sql_table_name: viewpoint.ARCOJobDashboard ;;

  dimension: backlog {
    type: number
    sql: ${TABLE}.Backlog ;;
  }

  dimension: billed_amt {
    type: number
    sql: ${TABLE}.BilledAmt ;;
  }

  dimension: contract {
    type: string
    sql: ${TABLE}.Contract ;;
  }

  dimension: contract_amt {
    type: number
    sql: ${TABLE}.ContractAmt ;;
  }

  dimension: department {
    type: string
    sql: ${TABLE}.Department ;;
  }

  dimension: department_name {
    type: string
    sql: ${TABLE}.DepartmentName ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }

  dimension: earned_revenue {
    type: number
    sql: ${TABLE}.EarnedRevenue ;;
  }

  dimension: jtdcost {
    type: number
    sql: ${TABLE}.JTDCost ;;
  }

  dimension: jtdestimate {
    type: number
    sql: ${TABLE}.JTDEstimate ;;
  }

  dimension: orig_contract_amt {
    type: number
    sql: ${TABLE}.OrigContractAmt ;;
  }

  dimension: overbilled {
    type: number
    sql: ${TABLE}.Overbilled ;;
  }

  dimension: profit {
    type: number
    sql: ${TABLE}.Profit ;;
  }

  dimension: profit_percentage {
    type: number
    sql: ${TABLE}.ProfitPercentage ;;
  }

  dimension: projected_cost {
    type: number
    sql: ${TABLE}.ProjectedCost ;;
  }

  dimension: underbilled {
    type: number
    sql: ${TABLE}.Underbilled ;;
  }

  measure: count {
    type: count
    drill_fields: [department_name]
  }
}
