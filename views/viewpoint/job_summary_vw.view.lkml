view: job_summary_vw {
  sql_table_name: [viewpoint].[JOB_SUMMARY_vw];;

# Dimensions{
  dimension: pk {
    type: string
    sql: concat(${job_number},'-',${company_number}) ;;
  }

  dimension: job_number {
    type: string
    sql: ${TABLE}.Job_Number ;;
  }

  dimension: company_number {
    type: number
    sql: ${TABLE}.Company_Number ;;
  }

  dimension: job_number_orig {
    type: string
    sql: ${TABLE}.Job_Number_Orig ;;
  }

  dimension: company_name {
    type: string
    sql: ${TABLE}.Company_Name ;;
  }

  dimension: client_name {
    type: string
    sql: ${TABLE}.Client_Name ;;
  }

  dimension: job_name {
    type: string
    sql: ${TABLE}.Job_Name ;;
  }

  dimension: job_address {
    type: string
    sql: ${TABLE}.Job_Address ;;
  }

  dimension: job_city {
    type: string
    sql: ${TABLE}.Job_City ;;
  }

  dimension: job_state {
    type: string
    sql: ${TABLE}.Job_State ;;
  }

  dimension: job_zip {
    type: string
    sql: ${TABLE}.Job_Zip ;;
  }

  dimension: start_year {
    type: number
    sql: ${TABLE}.Start_Year ;;
  }

  dimension: closed_year {
    type: number
    sql: ${TABLE}.Closed_Year ;;
  }

  dimension: closed_date {
    type: string
    sql: ${TABLE}.Closed_Date ;;
  }

  dimension: delivery_method {
    type: string
    sql: ${TABLE}.Delivery_Method ;;
  }

  dimension: contract_type {
    type: string
    sql: ${TABLE}.Contract_Type ;;
  }

  dimension: construct_type {
    type: string
    sql: ${TABLE}.Construct_Type ;;
  }

  dimension: industry_type {
    type: string
    sql: ${TABLE}.Industry_Type ;;
  }

  dimension: executive {
    type: string
    sql: ${TABLE}.Executive ;;
  }

  dimension: project_manager {
    type: string
    sql: ${TABLE}.Project_Manager ;;
  }

  dimension: project_accountant {
    type: string
    sql: ${TABLE}.Project_Accountant ;;
  }

  dimension: project_admin {
    type: string
    sql: ${TABLE}.Project_Admin ;;
  }

  dimension: controller {
    type: string
    sql: ${TABLE}.Controller ;;
  }

  dimension: superintendent {
    type: string
    sql: ${TABLE}.Superintendent ;;
  }

  dimension: job_status {
    type: string
    sql: ${TABLE}.Job_Status ;;
  }

  dimension: jv_flag {
    type: string
    sql: ${TABLE}.JV_Flag ;;
  }

  dimension: jv_details {
    type: string
    sql: ${TABLE}.JV_Details ;;
  }

  dimension: job_desc {
    type: string
    sql: ${TABLE}.Job_Desc ;;
  }

  dimension: sq_ft_notes {
    type: string
    sql: ${TABLE}.SqFtNotes ;;
  }

  dimension: sq_ft {
    type: number
    sql: ${TABLE}.SqFt ;;
  }

  dimension: contract_value {
    type: number
    sql: ${TABLE}.Contract_Value ;;
  }

  dimension: estimated_contract_value {
    type: number
    sql: ${TABLE}.Estimated_Contract_Value ;;
  }

  dimension: original_contract_value {
    type: number
    sql: ${TABLE}.Original_Contract_Value ;;
  }

  dimension: projected_cost {
    type: number
    sql: ${TABLE}.Projected_Cost ;;
  }

  dimension: actual_cost {
    type: number
    sql: ${TABLE}.Actual_Cost ;;
  }

  dimension: change_order_cost {
    type: number
    sql: ${TABLE}.Change_Order_Cost ;;
  }

  dimension: revenue {
    type: number
    sql: ${TABLE}.Revenue ;;
  }

  dimension: gross_profit {
    type: number
    sql: ${TABLE}.Gross_Profit ;;
  }

  dimension: percent_complete {
    type: number
    sql: ${TABLE}.Percent_Complete ;;
  }

  dimension: profit_margin {
    type: number
    sql: ${TABLE}.Profit_Margin ;;
  }
#}

# Measures{
  measure: count {
    type: count
    drill_fields: [detail*]
  }
#}
  set: detail {
    fields: [
      job_number,
      company_number,
      job_number_orig,
      company_name,
      client_name,
      job_name,
      job_address,
      job_city,
      job_state,
      job_zip,
      start_year,
      closed_year,
      closed_date,
      delivery_method,
      contract_type,
      construct_type,
      industry_type,
      executive,
      project_manager,
      project_accountant,
      project_admin,
      controller,
      superintendent,
      job_status,
      jv_flag,
      jv_details,
      job_desc,
      sq_ft_notes,
      sq_ft,
      contract_value,
      estimated_contract_value,
      original_contract_value,
      projected_cost,
      actual_cost,
      change_order_cost,
      revenue,
      gross_profit,
      percent_complete,
      profit_margin
    ]
  }
}
