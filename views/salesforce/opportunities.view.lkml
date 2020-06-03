view: opportunities {
  sql_table_name: dbo.opportunities ;;
#woohoo!
  dimension: id {
    group_label: "1 - Opportunity"
    primary_key: yes
    type: string
    sql: ${TABLE}.ID ;;
  }

  dimension: account_director {
    group_label: "Other"
    type: string
    sql: ${TABLE}.ACCOUNT_DIRECTOR__C ;;
  }

  dimension: account_id {
    hidden: yes
    type: string
    sql: ${TABLE}.ACCOUNTID ;;
  }

  dimension: actual_margin {
    group_label: "Other"
    type: number
    sql: ${TABLE}.Actual_Margin__c ;;
  }

  dimension: actual_profit_this_year {
    group_label: "Other"
    type: number
    sql: ${TABLE}.Actual_Profit_This_Year__c ;;
  }

  dimension: additional_jv_amount {
    group_label: "Tertiary Company"
    type: number
    sql: ${TABLE}.Additional_JV_Amount ;;
  }

  dimension: additional_jv_company {
    group_label: "Tertiary Company"
    label: "Tertiary Company"
    type: string
    sql: ${TABLE}.Additional_JV_Company__c ;;
  }

  dimension: additional_jv_division {
    group_label: "Tertiary Company"
    label: "Tertiary Division"
    type: string
    sql: ${TABLE}.Additional_JV_Division__c ;;
  }

  dimension: additional_jv_profit_2_years {
    group_label: "Tertiary Company"
    type: number
    sql: ${TABLE}.Additional_JV_Profit_2_Years__c ;;
  }

  dimension: additional_jv_profit_next_year {
    group_label: "Tertiary Company"
    type: number
    sql: ${TABLE}.Additional_JV_Profit_Next_Year__c ;;
  }

  dimension: additional_jv_profit_this_year {
    group_label: "Tertiary Company"
    type: number
    sql: ${TABLE}.Additional_JV_Profit_This_Year__c ;;
  }

  dimension: additional_jv_revenue_2_years {
    group_label: "Tertiary Company"
    type: number
    sql: ${TABLE}.Additional_JV_Revenue_2_Years__c ;;
  }

  dimension: additional_jv_revenue_next_year {
    group_label: "Tertiary Company"
    type: number
    sql: ${TABLE}.Additional_JV_Revenue_Next_Year__c ;;
  }

  dimension: additional_jv_revenue_previous_years {
    group_label: "Tertiary Company"
    type: number
    sql: ${TABLE}.Additional_JV_Revenue_Previous_Years__c ;;
  }

  dimension: additional_jv_revenue_this_years {
    group_label: "Tertiary Company"
    type: number
    sql: ${TABLE}.Additional_JV_Revenue_This_Years__c ;;
  }

  dimension: additional_jv_weighted_amount {
    group_label: "Tertiary Company"
    type: number
    sql: ${TABLE}.Additional_JV_Weighted_Amount__c ;;
  }

  dimension: amount {
    group_label: "Other"
    type: number
    sql: ${TABLE}.AMOUNT ;;
  }

  dimension: city {
    group_label: "1 - Opportunity"
    type: string
    sql: ${TABLE}.CITY__C ;;
  }

  dimension: client_type {
    group_label: "1 - Opportunity"
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

  dimension: closeout_duration {
    group_label: "Other"
    type: number
    sql: ${TABLE}.CLOSEOUTDURATION__C ;;
  }

  dimension: company {
    label: "Primary Company"
    type: string
    sql: ${TABLE}.COMPANY__C ;;
  }

  dimension: competition_type {
    group_label: "1 - Opportunity"
    type: string
    sql: ${TABLE}.Competition_Type__c ;;
  }

  dimension_group: completion {
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
    group_label: "1 - Opportunity"
    type: string
    sql: ${TABLE}.Contract_Type__c ;;
  }

  dimension: cost_status_profit {
    group_label: "Other"
    type: number
    sql: ${TABLE}.Cost_Status_Profit__c ;;
  }

  dimension: design_type {
    group_label: "Other"
    type: string
    sql: ${TABLE}.Design_Type__c ;;
  }

  dimension: division {
    group_label: "Other"
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
    group_label: "Other"
    type: string
    sql: ${TABLE}.JOB_NUMBER__C ;;
  }

  dimension: jv_company {
    group_label: "Secondary Company"
    label: "JV Company"
    type: string
    sql: ${TABLE}.JV_COMPANY__C ;;
  }

  dimension: jv_division {
    group_label: "Secondary Company"
    label: "Secondary Division"
    type: string
    sql: ${TABLE}.JV_DIVISION__C ;;
  }

  dimension: jv_profit_2_years {
    group_label: "Secondary Company"
    type: number
    sql: ${TABLE}.JV_PROFIT_2_YEARS__C ;;
  }

  dimension: jv_profit_next_year {
    group_label: "Secondary Company"
    type: number
    sql: ${TABLE}.JV_PROFIT_NEXT_YEAR__C ;;
  }

  dimension: jv_profit_this_year {
    group_label: "Secondary Company"
    type: number
    sql: ${TABLE}.JV_PROFIT_THIS_YEAR__C ;;
  }

  dimension: jv_revenue_2_years {
    group_label: "Secondary Company"
    type: number
    sql: ${TABLE}.JV_REVENUE_2_YEARS__C ;;
  }

  dimension: jv_revenue_last_year {
    group_label: "Secondary Company"
    type: number
    sql: ${TABLE}.JV_REVENUE_LAST_YEAR__C ;;
  }

  dimension: jv_revenue_next_year {
    group_label: "Secondary Company"
    type: number
    sql: ${TABLE}.JV_REVENUE_NEXT_YEAR__C ;;
  }

  dimension: jv_revenue_this_year {
    group_label: "Secondary Company"
    type: number
    sql: ${TABLE}.JV_REVENUE_THIS_YEAR__C ;;
  }

  dimension: jv_weighted_amount {
    group_label: "Secondary Company"
    type: number
    sql: ${TABLE}.JV_WEIGHTED_AMOUNT__C ;;
  }

  dimension: labor_type {
    group_label: "Other"
    type: string
    sql: ${TABLE}.Labor_Type__c ;;
  }

  dimension: lead_generator {
    group_label: "Other"
    type: string
    sql: ${TABLE}.LEAD_GENERATOR__C ;;
  }

  dimension: name {
    label: "Opportunity Name"
    group_label: "1 - Opportunity"
    link: {
      label: "Salesforce record"
      url: "https://arcomurray.lightning.force.com/lightning/r/Opportunity/{{id}}/view"
    }
    type: string
    sql: ${TABLE}.NAME ;;
  }

  dimension: new_or_returning_business {
    group_label: "1 - Opportunity"
    type: string
    sql: ${TABLE}.New_or_Returning_Business__c ;;
  }

  dimension: off_the_books_closed_profit {
    group_label: "Other"
    type: number
    sql: ${TABLE}.Off_the_Books_Closed_Profit__c ;;
  }

  dimension: off_the_books_closed_value {
    group_label: "Other"
    type: number
    sql: ${TABLE}.OFF_THE_BOOKS_CLOSED_VALUE__C ;;
  }

  dimension: ops_leader {
    group_label: "Other"
    type: string
    sql: ${TABLE}.OPS_LEADER__C ;;
  }

  dimension: overall_project_margin {
    group_label: "Other"
    type: number

    sql: ${TABLE}.Overall_Project_Margin__c ;;
  }

  dimension: overhead {
    group_label: "Other"
    type: number
    sql: ${TABLE}.Overhead ;;
  }

  dimension: percent_cost_next_year {
    group_label: "Other"
    type: number
    sql: ${TABLE}.PERCENT_COST_NEXT_YEAR__C ;;
  }

  dimension: percent_profit_this_year {
    group_label: "Other"
    type: number
    sql: ${TABLE}.PERCENT_PROFIT_THIS_YEAR__C ;;
  }

  dimension: percent_revenue_year_after_next {
    group_label: "Other"
    type: number
    sql: ${TABLE}.PERCENT_REVENUE_YEAR_AFTER_NEXT__C ;;
  }

  dimension: pm_bonus_list {
    label: "Additional PMs"
    group_label: "Other"
    type: string
    sql: ${TABLE}.PM_Bonus_List__c ;;
  }

  dimension: pm_bonus_percentage {
    group_label: "Other"
    type: number
    sql: ${TABLE}.PM_Bonus_Percentage ;;
  }

  dimension: pm_leader {
    group_label: "Other"
    type: string
    sql: ${TABLE}.PM_LEADER__C ;;
  }

  dimension: precon_leader {
    group_label: "Other"
    type: string
    sql: ${TABLE}.PRECON_LEADER__C ;;
  }

  dimension: primary_profit_2_years {
    group_label: "Primary Company"
    type: number
    sql: ${TABLE}.PRIMARY_PROFIT_2_YEARS__C ;;
  }

  dimension: primary_profit_next_year {
    group_label: "Primary Company"
    type: number
    sql: ${TABLE}.PRIMARY_PROFIT_NEXT_YEAR__C ;;
  }

  dimension: primary_profit_this_year {
    group_label: "Primary Company"
    type: number
    sql: ${TABLE}.PRIMARY_PROFIT_THIS_YEAR__C ;;
  }

  dimension: primary_revenue_2_years {
    group_label: "Primary Company"
    type: number
    sql: ${TABLE}.PRIMARY_REVENUE_2_YEARS__C ;;
  }

  dimension: primary_revenue_last_year {
    group_label: "Primary Company"
    type: number
    sql: ${TABLE}.PRIMARY_REVENUE_LAST_YEAR__C ;;
  }

  dimension: primary_revenue_next_year {
    group_label: "Primary Company"
    type: number
    sql: ${TABLE}.PRIMARY_REVENUE_NEXT_YEAR__C ;;
  }

  dimension: primary_revenue_this_year {
    group_label: "Primary Company"
    type: number
    sql: ${TABLE}.PRIMARY_REVENUE_THIS_YEAR__C ;;
  }

  dimension: primary_weighted_amount {
    group_label: "Primary Company"
    type: number
    sql: ${TABLE}.PRIMARY_WEIGHTED_AMOUNT__C ;;
  }

  dimension: probability {
    group_label: "1 - Opportunity"
    type: number
    value_format_name: percent_2
    sql: ${TABLE}.PROBABILITY/100 ;;
  }

  dimension: procore_priority {
    group_label: "Other"
    type: string
    sql: ${TABLE}.Procore_Priority__c ;;
  }

  dimension: project_type {
    group_label: "1 - Opportunity"
    type: string
    sql: ${TABLE}.Project_Type__c ;;
  }

  dimension: related_to_contact {
    group_label: "Other"
    type: string
    sql: ${TABLE}.RELATED_TO_CONTACT__C ;;
  }

  dimension: sale_type {
    group_label: "Sale Information"
    type: string
    sql: ${TABLE}.Sale_Type__c ;;
  }

  dimension: sale_value_last_year {
    group_label: "Sale Information"
    type: number
    sql: ${TABLE}.SALE_VALUE_LAST_YEAR__C ;;
  }

  dimension: sale_value_next_year {
    group_label: "Sale Information"
    type: number
    sql: ${TABLE}.SALE_VALUE_NEXT_YEAR__C ;;
  }

  dimension: sale_value_this_year {
    group_label: "Sale Information"
    type: number
    sql: ${TABLE}.SALE_VALUE_THIS_YEAR__C ;;
  }

  dimension: stage_name {
    label: "Stage"
    group_label: "1 - Opportunity"
    type: string
    sql: ${TABLE}.STAGENAME ;;
  }

  dimension: start_up_duration {
    group_label: "Other"
    type: number
    sql: ${TABLE}.STARTUPDURATION__C ;;
  }

  dimension: state {
    group_label: "1 - Opportunity"
    type: string
    sql: ${TABLE}.STATE__C ;;
  }

  dimension: super {
    group_label: "Other"
    type: string
    sql: ${TABLE}.SUPER__C ;;
  }

  dimension: this_year_sale_profit {
    group_label: "Total Revenue"
    type: number
    sql: ${TABLE}.THIS_YEAR_SALE_PROFIT__C ;;
  }

  dimension: total_revenue_2_years {
    group_label: "Total Revenue"
    type: number
    sql: ${TABLE}.TOTAL_REVENUE_2_YEARS__C ;;
  }

  dimension: total_revenue_last_year {
    group_label: "Total Revenue"
    type: number
    sql: ${TABLE}.TOTAL_REVENUE_LAST_YEAR__C ;;
  }

  dimension: total_revenue_next_year {
    group_label: "Total Revenue"
    type: number
    sql: ${TABLE}.TOTAL_REVENUE_NEXT_YEAR__C ;;
  }

  dimension: total_revenue_this_year {
    group_label: "Total Revenue"
    type: number
    sql: ${TABLE}.TOTAL_REVENUE_THIS_YEAR__C ;;
  }

  dimension: total_weighted_amount {
    group_label: "Other"
    type: number
    sql: ${TABLE}.TOTAL_WEIGHTED_AMOUNT__C ;;
  }

  dimension: weighted_value {
    group_label: "Other"
    type: number
    sql: ${TABLE}.WEIGHTED_VALUE__C ;;
  }

  dimension: loss_reason {
    group_label: "1 - Opportunity"
    type: string
    sql: ${TABLE}.LOSS_REASON__C ;;
  }

  dimension_group: creation {
    label: "Created"
    group_label: "1 - Opportunity"
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
    sql: ${TABLE}.CREATEDDATE ;;
  }

  dimension: stage_ordered {
    case: {
      when: {
        sql:  ${stage_name} = 'Potential Work - 95%';;
        label: "Potential Work - 95%"
      }
      when: {
        sql: ${stage_name} = 'Potential Work - 75%' ;;
        label: "Potential Work - 75%"
      }
      when: {
        sql: ${stage_name} = 'Potential Work - 50%' ;;
        label: "Potential Work - 50%"
      }
      when: {
        sql: ${stage_name} = 'Potential Work - 10%' ;;
        label: "Potential Work - 10%"
      }
      when: {
        sql: ${stage_name} = 'Proposing' ;;
        label: "Proposing"
      }
      when: {
        sql: ${stage_name} = 'Prospecting' ;;
        label: "Prospecting"
      }
      when: {
        sql: ${stage_name} = 'Targeting' ;;
        label: "Targeting"
      }
    }
  }

  dimension: sales_lead {
    label: "Sales Lead"
    group_label: "Other"
    type: string
    sql: ${TABLE}.LEAD_GENERATOR__C ;;
  }

  dimension:division_and_stage {
    label: "Division and Stage"
    group_label: "Confidentiality Reports"
    type: string
    sql: CONCAT(${division},' : ', ${stage_name}) ;;
  }

  measure: link_to_procore {
    label: "Link to Procore Project"
    group_label: "Confidentiality Reports"
    type: string
    sql: CASE WHEN ${procore_priority} > 0 THEN ${procore_priority} ELSE NULL END ;;
    html: <img src="https://logo.clearbit.com/procore.com?size=10" /> ;;
    link: {
      label: "Link to Procore"
      url: "https://app.procore.com/{{procore_priority}}/project/home"
      icon_url: "https://logo.clearbit.com/procore.com"
    }
  }

  measure: profit_this_year {
    label: "Total Profit - 2020"
    group_label: "Confidentiality Reports"
    type: sum
    sql: ${primary_profit_this_year} + ${jv_profit_this_year} + ${additional_jv_profit_this_year} ;;
    value_format_name: usd
  }

  measure: profit_next_year {
    label: "Total Profit - 2021"
    group_label: "Confidentiality Reports"
    type: sum
    sql: ${primary_profit_next_year} + ${jv_profit_next_year} + ${additional_jv_profit_next_year} ;;
    value_format_name: usd
  }

  measure: profit_two_year {
    label: "Total Profit - 2022"
    group_label: "Confidentiality Reports"
    type: sum
    sql: ${primary_profit_2_years} + ${jv_profit_2_years} + ${additional_jv_profit_2_years} ;;
    value_format_name: usd
  }

  measure: count_of_opportunities {
    type: count
    drill_fields: [opportunity_information*]
  }

  measure: total_contract_amount {
    group_label: "Total Amount"
    label: "Total Amount"
    type: sum
    sql: ${amount} ;;
    value_format_name: usd
    drill_fields: [opportunity_information*]
  }

  measure: total_contract_amount_with_probability {
    group_label: "Opportunity Total"
    label: "Total Contract Amount w/ Probability"
    type: sum
    sql: ${amount} * ${probability} ;;
    value_format_name: usd
    drill_fields: [opportunity_information*]
  }

  measure: total_contract_amount_allocated {
    group_label: "Company Allocated"
    label: "JV Amount"
    type: sum
    sql: ${amount} * ${l_opportunities_weighting.company_weighting} ;;
    sql_distinct_key: ${l_opportunities_weighting.pk} ;;
    value_format_name: usd
    drill_fields: [opportunity_company_information*]
  }

  measure: total_contract_amount_allocated_with_probability {
    group_label: "Company Allocated"
    label: "Weighted Amount"
    type: sum
    sql: ${amount} * ${l_opportunities_weighting.company_weighting} * ${probability} ;;
    sql_distinct_key: ${l_opportunities_weighting.pk} ;;
    value_format_name: usd
    drill_fields: [opportunity_company_information*]
  }

  measure: total_revenue_2_plus_years {
    group_label: "Company Allocated"
    label: "Total Revenue 2+ Years"
    type: sum
    sql: ${total_revenue_2_years} * ${l_opportunities_weighting.company_weighting};;
    sql_distinct_key: ${l_opportunities_weighting.pk} ;;
    value_format_name: usd
    drill_fields: [opportunity_company_information*]
  }

  measure: gross_profit_margin {
    group_label: "Bonus Calculator"
    type:  sum
    sql: (${overall_project_margin}/100) ;;
    value_format_name: percent_2
    drill_fields: [opportunity_information*]
  }

  measure: overhead_percentage {
    group_label: "Bonus Calculator"
    type:  sum
    sql: ${overhead} ;;
    value_format_name: percent_2
  }

  measure: pm_bonus {
    group_label: "Bonus Calculator"
    type: sum
    sql: ${pm_bonus_percentage} ;;
    value_format_name: percent_2
  }

  measure: percent_of_revenue_past_years {
    group_label: "Bonus Calculator"
    type:  sum
    sql: ${total_revenue_last_year} / nullif(${amount},0) ;;
    value_format_name: percent_2
  }

  measure: percent_of_revenue_this_year {
    group_label: "Bonus Calculator"
    type:  sum
    sql: ${total_revenue_this_year} / nullif(${amount},0) ;;
    value_format_name: percent_2
  }

  measure: percent_of_revenue_future_years {
    group_label: "Bonus Calculator"
    type:  sum
    sql: (${total_revenue_next_year} + ${total_revenue_2_years}) / nullif(${amount},0) ;;
    value_format_name: percent_2
  }

  measure: opportunity_creation_date {
    label: "Created Date"
    group_label: "Other"
    type: date
    sql: max(${creation_date}) ;;
  }

  measure: opportunity_close_date {
    label: "Close Date"
    group_label: "Other"
    type: date
    sql: max(${close_date}) ;;
  }

  measure: count_all_deals {
    group_label: "Win Percentage"
    type: count
    filters: [stage_name: "Completed Jobs, Completed^, Closeout Remaining, Work in Progress, Closed Lost", loss_reason: "-Dead, -Prospecting Dead"]
    }

  measure: count_won_deals {
    group_label: "Win Percentage"
    type: count
    filters: [stage_name: "Completed Jobs, Completed^, Closeout Remaining, Work in Progress"]
  }

  measure: percentage_of_deals_won {
    group_label: "Win Percentage"
    type: number
    sql: 1.0 * ${count_won_deals} / nullif(${count_all_deals},0) ;;
    value_format_name: percent_2
  }

  measure: sum_all_deals {
    group_label: "Win Percentage"
    type: sum
    filters: [stage_name: "Completed Jobs, Completed^, Closeout Remaining, Work in Progress, Closed Lost", loss_reason: "-Dead, -Prospecting Dead"]
    sql: ${amount} ;;
    value_format_name: usd
  }

  measure: sum_won_deals {
    group_label: "Win Percentage"
    type:  sum
    filters: [stage_name: "Completed Jobs, Completed^, Closeout Remaining, Work in Progress"]
    sql: ${amount} ;;
    value_format_name: usd
  }

  measure: percentage_of_dollars_won {
    group_label: "Win Percentage"
    type: number
    sql:  1.0 * ${sum_won_deals} / nullif(${sum_all_deals},0) ;;
    value_format_name: percent_2
  }

  measure: sum_dead_deals {
    group_label: "Win Percentage"
    type: sum
    filters: [loss_reason: "Dead, Prospecting Dead"]
    sql: ${amount} ;;
    value_format_name: usd
  }

  measure: count_dead_deals {
    group_label: "Win Percentage"
    type: count
    filters: [loss_reason: "Dead, Prospecting Dead"]
  }

  measure: percentage_of_deals_died{
    group_label: "Win Percentage"
    type: number
    sql: 1.0 * ${sum_dead_deals} / nullif(${sum_all_deals},0) ;;
  }

  measure: max_division {
    label: "Division"
    group_label: "Other"
    type: string
    sql: max(${division}) ;;
  }

  measure: count_of_opportunities_work_in_progress_or_95 {
    group_label: "Other"
    label: "Count of Opportunities Work in Progress or Potential Work - 95%"
    type: count
    filters: [stage_name: "Work in Progress, Potential Work - 95%"]
  }

  measure: count_of_opportunities_prospecting_proposing{
    group_label: "Other"
    label: "Count of Opportunities Proposing or Prospecting"
    type: count
    filters: [stage_name: "Prospecting, Proposing"]
  }

  measure: ratio {
    group_label: "Other"
    label: "Ratio of WIP + 95% over Prospecting + Proposing"
    type: number
    sql: 1.0 * ${count_of_opportunities_work_in_progress_or_95}/nullif(${count_of_opportunities_prospecting_proposing},0) ;;
    value_format_name: decimal_2
  }

  measure: average_profit_margin {
    group_label: "Other"
    label: "Average Profit Margin"
    type: average
    sql: ${overall_project_margin}/100 ;;
    filters: [cost_status_profit: "NOT 0"]
    value_format_name: percent_2
  }

  measure: time_to_close {
    label: "Time to Close"
    group_label: "Other"
    type: average
    sql: DATEDIFF( day, ${creation_date},${close_date}) ;;
  }

  measure: pm_leader_max {
    label: "PM Leader"
    group_label: "Confidentiality Reports"
    type: string
    sql: max(${pm_leader}) ;;
  }

  measure: additional_pm_max {
    label: "Additional PMs"
    group_label: "Confidentiality Reports"
    type: string
    sql: max(${pm_bonus_list}) ;;
  }

  measure: ops_leader_max {
    label: "Ops Leader"
    group_label: "Confidentiality Reports"
    type: string
    sql: max(${ops_leader}) ;;
  }

  measure: sales_lead_max {
    label: "Sales Lead"
    group_label: "Confidentiality Reports"
    type: string
    sql: max(${lead_generator}) ;;
  }

  measure: job_number_max {
    label: "Job No"
    group_label: "Confidentiality Reports"
    type: string
    sql: max(${job_number}) ;;
  }

  measure: city_max {
    label: "City"
    group_label: "Confidentiality Reports"
    type: string
    sql: max(${city}) ;;
  }

  measure: state_max {
    label: "State"
    group_label: "Confidentiality Reports"
    type: string
    sql: max(${state}) ;;
  }

  measure: primary_company_max {
    label: "Company"
    group_label: "Confidentiality Reports"
    type: string
    sql: max(${company}) ;;
  }

  measure: jv_company_max {
    label: "JV Company"
    group_label: "Confidentiality Reports"
    type: string
    sql: max(${jv_company}) ;;
  }

  measure: additional_jv_max {
    label: "Additional JV Company"
    group_label: "Confidentiality Reports"
    type: string
    sql: max(${additional_jv_company}) ;;
  }

  measure: amount_max {
    label: "Total Contract"
    group_label: "Confidentiality Reports"
    type: number
    sql: max(${amount}) ;;
    value_format_name: usd
  }

  measure: total_weighted_amount_max {
    label: "Total Weighted Contract"
    group_label: "Confidentiality Reports"
    type: number
    sql: max(${total_weighted_amount}) ;;
    value_format_name: usd
  }

  measure: total_off_the_books_revenue_max {
    label: "Toal Off the Books Revenue"
    group_label: "Confidentiality Reports"
    type: number
    sql: max(${off_the_books_closed_value}) ;;
    value_format_name: usd
  }

  measure: total_off_the_books_profit_max {
    label: "Total Off the Books Profit"
    group_label: "Confidentiality Reports"
    type: number
    sql: max(${off_the_books_closed_profit}) ;;
    value_format_name: usd
  }

  measure: revenue_this_year_max {
    label: "Total Revenue - 2020"
    group_label: "Confidentiality Reports"
    type: number
    sql: max(${total_revenue_this_year}) ;;
    value_format_name: usd
  }

  measure: revenue_next_year_max {
    label: "Total Revenue - 2021"
    group_label: "Confidentiality Reports"
    type: number
    sql: max(${total_revenue_next_year}) ;;
    value_format_name: usd
  }

  measure: revenue_2_years_max {
    label: "Total Revenue - 2022"
    group_label: "Confidentiality Reports"
    type: number
    sql: max(${total_revenue_2_years}) ;;
  }

  measure: actual_margin_max {
    label: "Margin This Year"
    group_label: "Confidentiality Reports"
    type: number
    sql: max(${actual_margin}/100) ;;
    value_format_name: percent_2
  }

  measure: profit_margin_max {
    label: "Overall Margin"
    group_label: "Confidentiality Reports"
    type: number
    sql: max(${overall_project_margin}/100) ;;
    value_format_name: usd
  }

  set: opportunity_information {
    fields: [id,name,total_contract_amount]
  }

  set: opportunity_company_information {
    fields: [id,name,l_opportunities_weighting.company,l_opportunities_weighting.company_weighting,total_contract_amount_allocated]
  }

  # Determine weighting of company allocated metrics {
  # Use this logic to drive the l_opportunities_weighting derived table
  dimension: jv_split {
    hidden: yes
    group_label: "Company Weightings"
    description: "This percentage belongs to the primary company"
    label: "1 - Primary Split"
    type: number
    sql: ${TABLE}.JV_SPLIT__C/100 ;;
    value_format_name: percent_1
  }

  dimension: jv_company_percent {
    hidden: yes
    group_label: "Company Weightings"
    description: "This percentage belongs to the second company"
    label: "2 - Secondary Split"
    type: number
    sql: 1 - ${jv_split} - ${additional_jv_percent} ;;
    value_format_name: percent_1
  }

  dimension: additional_jv_percent {
    hidden: yes
    group_label: "Company Weightings"
    description: "This percentage belongs to the third company"
    label: "3 - Tertiary Split"
    type: number
    sql: ${TABLE}.Additional_JV_Percent__c/100 ;;
    value_format_name: percent_1
  }
}
