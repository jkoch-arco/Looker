view: arco_bonus_worksheet {
  sql_table_name: viewpoint.ArcoBonusWorksheet ;;

  dimension: primary_key {
    hidden: yes
    primary_key: yes
    type: string
    sql: CONCAT(${year}, ${contract}, ${employee_number}) ;;
  }

  dimension: bonus_quarter {
    type: string
    sql: ${TABLE}.Qtr ;;
  }

  dimension: contract {
    group_label: "Contract Information"
    type: string
    sql: ${TABLE}.Contract ;;
  }

  dimension: company_id {
    group_label: "Contract Information"
    type: number
    sql: ${TABLE}.JCCo ;;
  }

  dimension: contract_description {
    group_label: "Contract Information"
    type: string
    sql: ${TABLE}.ContractDescription ;;
  }

  dimension: percent_complete {
    group_label: "Contract Information"
    type: number
    sql: ${TABLE}.PercentComplete ;;
    value_format_name: percent_1
  }

  dimension: year {
    group_label: "Contract Information"
    type: string
    sql: CAST(${TABLE}.Year as NCHAR) ;;
  }

  dimension: employee_number {
    group_label: "Employee Information"
    type: number
    sql: ${TABLE}.Employee ;;
  }

  dimension: first_name {
    group_label: "Employee Information"
    type: string
    sql: ${TABLE}.FirstName ;;
  }

  dimension: last_name {
    group_label: "Employee Information"
    type: string
    sql: ${TABLE}.LastName ;;
  }

  dimension: employee_full_name {
    group_label: "Employee Information"
    type: string
    sql: CONCAT(${first_name},' ',${last_name}) ;;
  }

  dimension: level {
    group_label: "Employee Information"
    type: number
    sql: ${TABLE}.Level ;;
  }

  dimension: role {
    group_label: "Employee Information"
    type: string
    sql: ${TABLE}.Role ;;
  }

  dimension: est_revenue {
    group_label: "Contract Numbers"
    label: "Estimated Revenue"
    type: number
    sql: ${TABLE}.EstRevenue ;;
  }

  dimension: revenue_to_date {
    group_label: "Contract Numbers"
    type: number
    sql: ${TABLE}.RevenueToDate ;;
  }

  dimension: prior_year_revenue {
    group_label: "Contract Numbers"
    type: number
    sql: ${TABLE}.PriorYearRevenue ;;
  }

  dimension: cost_to_date {
    group_label: "Contract Numbers"
    type: number
    sql: ${TABLE}.CostToDate ;;
  }

  dimension: jtd_gp {
    group_label: "Contract Numbers"
    label: "JTD GP"
    type: number
    sql: ${TABLE}.JTDGP ;;
  }

  dimension: current_year_gp {
    group_label: "Contract Numbers"
    label: "Current Year GP"
    type: number
    sql: ${TABLE}.CurrentYearGP ;;
  }

  dimension: prior_year_gp {
    group_label: "Contract Numbers"
    label: "Prior Year GP"
    type: number
    sql: ${TABLE}.PriorYearGP ;;
  }

  dimension: ytd_oh_sales {
    group_label: "Contract Numbers"
    label: "YTD OH Sales"
    type: number
    sql: ${TABLE}.YTDOH ;;
  }

  dimension: other_bonuses {
    group_label: "Contract Bonuses"
    type: number
    sql: ${TABLE}.OtherBonuses ;;
  }

  dimension: bonus_basis {
    group_label: "Contract Bonuses"
    type: number
    sql: ${TABLE}.BonusBasis ;;
  }

  dimension: bonus_rate {
    group_label: "Contract Bonuses"
    type: number
    sql: ${TABLE}.BonusRate ;;
    value_format_name: percent_1
  }

  dimension: assistant_bonus {
    group_label: "Contract Bonuses"
    type: number
    sql: ${TABLE}.AssistantBonus ;;
  }

  dimension: potential_bonus {
    group_label: "Contract Bonuses"
    type: number
    sql: ${TABLE}.PotentialBonus ;;
  }

  dimension: contract_status {
    group_label: "Other"
    type: number
    sql: ${TABLE}.ContractStatus ;;
  }

  dimension_group: interface {
    group_label: "Other"
    type: time
    timeframes: [
      raw,
      date
    ]
    sql: ${TABLE}.InterfaceDate ;;
  }

  dimension: month_closed {
    group_label: "Other"
    type: string
    sql: ${TABLE}.MonthClosed ;;
  }

  dimension: oh_pm {
    group_label: "Other"
    label: "OH PM"
    type: number
    sql: ${TABLE}.OHPM ;;
  }

  dimension: oh_sales {
    group_label: "Other"
    label: "OH Sales"
    type: number
    sql: ${TABLE}.OHSales ;;
  }

  dimension: pr_co {
    group_label: "Other"
    label: "PR Co"
    type: number
    sql: ${TABLE}.PRCo ;;
  }

  dimension: py_percent_complete {
    group_label: "Other"
    label: "PY Percent Complete"
    type: number
    sql: ${TABLE}.PYPercentComplete ;;
  }

  dimension: rate {
    group_label: "Other"
    type: number
    sql: ${TABLE}.Rate ;;
  }

  dimension: ytd_oh_pm {
    group_label: "Other"
    label: "YTD OH PM"
    type: number
    sql: ${TABLE}.YTDOHPM ;;
  }

  measure: total_estimated_revenue {
    type: sum_distinct
    sql: ${est_revenue} ;;
  }

  measure: count {
    type: count
  }
}
