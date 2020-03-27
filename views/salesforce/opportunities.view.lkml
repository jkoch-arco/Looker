view: opportunities {
  sql_table_name: dbo.opportunities ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.ID ;;
  }

  dimension: account_director {
    type: string
    sql: ${TABLE}.ACCOUNT_DIRECTOR__C ;;
  }

  dimension: accountid {
    type: string
    # hidden: yes
    sql: ${TABLE}.ACCOUNTID ;;
  }

  dimension: actual_margin {
    type: number
    sql: ${TABLE}.Actual_Margin__c ;;
  }

  dimension: actual_profit_this_year {
    type: number
    sql: ${TABLE}.Actual_Profit_This_Year__c ;;
  }

  dimension: additional_jv_amount {
    type: number
    sql: ${TABLE}.Additional_JV_Amount ;;
  }

  dimension: additional_jv_company {
    type: string
    sql: ${TABLE}.Additional_JV_Company__c ;;
  }

  dimension: additional_jv_division {
    type: string
    sql: ${TABLE}.Additional_JV_Division__c ;;
  }

  dimension: additional_jv_percent {
    type: number
    sql: ${TABLE}.Additional_JV_Percent__c ;;
  }

  dimension: additional_jv_profit_2_years {
    type: number
    sql: ${TABLE}.Additional_JV_Profit_2_Years__c ;;
  }

  dimension: additional_jv_profit_next_year {
    type: number
    sql: ${TABLE}.Additional_JV_Profit_Next_Year__c ;;
  }

  dimension: additional_jv_profit_this_year {
    type: number
    sql: ${TABLE}.Additional_JV_Profit_This_Year__c ;;
  }

  dimension: additional_jv_revenue_2_years {
    type: number
    sql: ${TABLE}.Additional_JV_Revenue_2_Years__c ;;
  }

  dimension: additional_jv_revenue_next_year {
    type: number
    sql: ${TABLE}.Additional_JV_Revenue_Next_Year__c ;;
  }

  dimension: additional_jv_revenue_previous_years {
    type: number
    sql: ${TABLE}.Additional_JV_Revenue_Previous_Years__c ;;
  }

  dimension: additional_jv_revenue_this_years {
    type: number
    sql: ${TABLE}.Additional_JV_Revenue_This_Years__c ;;
  }

  dimension: additional_jv_weighted_amount {
    type: number
    sql: ${TABLE}.Additional_JV_Weighted_Amount__c ;;
  }

  dimension: amount {
    type: number
    sql: ${TABLE}.AMOUNT ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.CITY__C ;;
  }

  dimension: client_type {
    type: string
    sql: ${TABLE}.Client_Type__c ;;
  }

  dimension_group: close {
    convert_tz: no
    datatype: datetime
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.CloseDate ;;
  }

  dimension: closeoutduration {
    type: number
    sql: ${TABLE}.CLOSEOUTDURATION__C ;;
  }

  dimension: company {
    type: string
    sql: ${TABLE}.COMPANY__C ;;
  }

  dimension: competition_type {
    type: string
    sql: ${TABLE}.Competition_Type__c ;;
  }

  dimension_group: completion_date {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.COMPLETION_DATE__C ;;
  }

  dimension: contract_type {
    type: string
    sql: ${TABLE}.Contract_Type__c ;;
  }

  dimension: cost_status_profit {
    type: number
    sql: ${TABLE}.Cost_Status_Profit__c ;;
  }

  dimension: design_type {
    type: string
    sql: ${TABLE}.Design_Type__c ;;
  }

  dimension: division {
    type: string
    sql: ${TABLE}.DIVISION__C ;;
  }

  dimension_group: groundbreaking {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.GROUNDBREAKING__C ;;
  }

  dimension: job_number {
    type: string
    sql: ${TABLE}.JOB_NUMBER__C ;;
  }

  dimension: jv_company {
    type: string
    sql: ${TABLE}.JV_COMPANY__C ;;
  }

  dimension: jv_division {
    type: string
    sql: ${TABLE}.JV_DIVISION__C ;;
  }

  dimension: jv_profit_2_years {
    type: number
    sql: ${TABLE}.JV_PROFIT_2_YEARS__C ;;
  }

  dimension: jv_profit_next_year {
    type: number
    sql: ${TABLE}.JV_PROFIT_NEXT_YEAR__C ;;
  }

  dimension: jv_profit_this_year {
    type: number
    sql: ${TABLE}.JV_PROFIT_THIS_YEAR__C ;;
  }

  dimension: jv_revenue_2_years {
    type: number
    sql: ${TABLE}.JV_REVENUE_2_YEARS__C ;;
  }

  dimension: jv_revenue_last_year {
    type: number
    sql: ${TABLE}.JV_REVENUE_LAST_YEAR__C ;;
  }

  dimension: jv_revenue_next_year {
    type: number
    sql: ${TABLE}.JV_REVENUE_NEXT_YEAR__C ;;
  }

  dimension: jv_revenue_this_year {
    type: number
    sql: ${TABLE}.JV_REVENUE_THIS_YEAR__C ;;
  }

  dimension: jv_split {
    type: number
    sql: ${TABLE}.JV_SPLIT__C ;;
  }

  dimension: jv_weighted_amount {
    type: number
    sql: ${TABLE}.JV_WEIGHTED_AMOUNT__C ;;
  }

  dimension: labor_type {
    type: string
    sql: ${TABLE}.Labor_Type__c ;;
  }

  dimension: lead_generator {
    type: string
    sql: ${TABLE}.LEAD_GENERATOR__C ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.NAME ;;
  }

  dimension: new_or_returning_business {
    type: string
    sql: ${TABLE}.New_or_Returning_Business__c ;;
  }

  dimension: off_the_books_closed_profit {
    type: number
    sql: ${TABLE}.Off_the_Books_Closed_Profit ;;
  }

  dimension: off_the_books_closed_value {
    type: number
    sql: ${TABLE}.OFF_THE_BOOKS_CLOSED_VALUE__C ;;
  }

  dimension: ops_leader {
    type: string
    sql: ${TABLE}.OPS_LEADER__C ;;
  }

  dimension: overall_project_margin {
    type: number
    sql: ${TABLE}.Overall_Project_Margin__c ;;
  }

  dimension: overhead {
    type: number
    sql: ${TABLE}.Overhead ;;
  }

  dimension: percent_cost_next_year {
    type: number
    sql: ${TABLE}.PERCENT_COST_NEXT_YEAR__C ;;
  }

  dimension: percent_profit_this_year {
    type: number
    sql: ${TABLE}.PERCENT_PROFIT_THIS_YEAR__C ;;
  }

  dimension: percent_revenue_year_after_next {
    type: number
    sql: ${TABLE}.PERCENT_REVENUE_YEAR_AFTER_NEXT__C ;;
  }

  dimension: pm_bonus_list {
    type: string
    sql: ${TABLE}.PM_Bonus_List__c ;;
  }

  dimension: pm_bonus_percentage {
    type: number
    sql: ${TABLE}.PM_Bonus_Percentage ;;
  }

  dimension: pm_leader {
    type: string
    sql: ${TABLE}.PM_LEADER__C ;;
  }

  dimension: precon_leader {
    type: string
    sql: ${TABLE}.PRECON_LEADER__C ;;
  }

  dimension: primary_profit_2_years {
    type: number
    sql: ${TABLE}.PRIMARY_PROFIT_2_YEARS__C ;;
  }

  dimension: primary_profit_next_year {
    type: number
    sql: ${TABLE}.PRIMARY_PROFIT_NEXT_YEAR__C ;;
  }

  dimension: primary_profit_this_year {
    type: number
    sql: ${TABLE}.PRIMARY_PROFIT_THIS_YEAR__C ;;
  }

  dimension: primary_revenue_2_years {
    type: number
    sql: ${TABLE}.PRIMARY_REVENUE_2_YEARS__C ;;
  }

  dimension: primary_revenue_last_year {
    type: number
    sql: ${TABLE}.PRIMARY_REVENUE_LAST_YEAR__C ;;
  }

  dimension: primary_revenue_next_year {
    type: number
    sql: ${TABLE}.PRIMARY_REVENUE_NEXT_YEAR__C ;;
  }

  dimension: primary_revenue_this_year {
    type: number
    sql: ${TABLE}.PRIMARY_REVENUE_THIS_YEAR__C ;;
  }

  dimension: primary_weighted_amount {
    type: number
    sql: ${TABLE}.PRIMARY_WEIGHTED_AMOUNT__C ;;
  }

  dimension: probability {
    type: number
    sql: ${TABLE}.PROBABILITY ;;
  }

  dimension: procore_priority {
    type: number
    sql: ${TABLE}.Procore_Priority__c ;;
  }

  dimension: project_type {
    type: string
    sql: ${TABLE}.Project_Type__c ;;
  }

  dimension: related_to_contact {
    type: string
    sql: ${TABLE}.RELATED_TO_CONTACT__C ;;
  }

  dimension: sale_type {
    type: string
    sql: ${TABLE}.Sale_Type__c ;;
  }

  dimension: sale_value_last_year {
    type: number
    sql: ${TABLE}.SALE_VALUE_LAST_YEAR__C ;;
  }

  dimension: sale_value_next_year {
    type: number
    sql: ${TABLE}.SALE_VALUE_NEXT_YEAR__C ;;
  }

  dimension: sale_value_this_year {
    type: number
    sql: ${TABLE}.SALE_VALUE_THIS_YEAR__C ;;
  }

  dimension: stagename {
    type: string
    sql: ${TABLE}.STAGENAME ;;
  }

  dimension: startupduration {
    type: number
    sql: ${TABLE}.STARTUPDURATION__C ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.STATE__C ;;
  }

  dimension: super {
    type: string
    sql: ${TABLE}.SUPER__C ;;
  }

  dimension: this_year_sale_profit {
    type: number
    sql: ${TABLE}.THIS_YEAR_SALE_PROFIT__C ;;
  }

  dimension: total_revenue_2_years {
    type: number
    sql: ${TABLE}.TOTAL_REVENUE_2_YEARS__C ;;
  }

  dimension: total_revenue_last_year {
    type: number
    sql: ${TABLE}.TOTAL_REVENUE_LAST_YEAR__C ;;
  }

  dimension: total_revenue_next_year {
    type: number
    sql: ${TABLE}.TOTAL_REVENUE_NEXT_YEAR__C ;;
  }

  dimension: total_revenue_this_year {
    type: number
    sql: ${TABLE}.TOTAL_REVENUE_THIS_YEAR__C ;;
  }

  dimension: total_weighted_amount {
    type: number
    sql: ${TABLE}.TOTAL_WEIGHTED_AMOUNT__C ;;
  }

  dimension: weighted_value {
    type: number
    sql: ${TABLE}.WEIGHTED_VALUE__C ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name, stagename, accounts.id, accounts.name]
  }
}