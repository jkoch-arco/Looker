view: job_summary_vw {
  sql_table_name: [viewpoint].[JOB_SUMMARY_vw];;

# Dimensions{

  dimension: pk {
    hidden: yes
    primary_key: yes
    type: string
    sql: concat(${job_number},'-',${company_number}) ;;
  }

  dimension: job_number {
    group_label: "Job"
    label: "Job #"
    type: string
    sql: ${TABLE}.Job_Number ;;
  }

  dimension: company_number {
    hidden: yes
    type: number
    sql: ${TABLE}.Company_Number ;;
  }

  dimension: job_number_orig {
    group_label: "Job"
    label: "Original Job Number"
    type: string
    sql: ${TABLE}.Job_Number_Orig ;;
  }

  dimension: company_name {
    hidden: yes
    type: string
    sql: ${TABLE}.Company_Name ;;
  }

  dimension: client_name {
    group_label: "Job"
    label: "Client Name"
    type: string
    sql: ${TABLE}.Client_Name ;;
  }

  dimension: job_name {
    group_label: "Job"
    label: "Name"
    type: string
    sql: ${TABLE}.Job_Name ;;
  }

  dimension: job_address {
    group_label: "Job"
    label: "Address"
    type: string
    sql: ${TABLE}.Job_Address ;;
  }

  dimension: job_city {
    group_label: "Job"
    label: "City"
    type: string
    sql: ${TABLE}.Job_City ;;
  }

  dimension: job_state {
    group_label: "Job"
    label: "State"
    type: string
    map_layer_name: us_states
    sql: ${TABLE}.Job_State ;;
  }

  dimension: job_zip {
    group_label: "Job"
    label: "Zip"
    type: string
    map_layer_name: us_zipcode_tabulation_areas
    sql: ${TABLE}.Job_Zip ;;
  }

  dimension: start_year {
    type: number
    sql: ${TABLE}.Start_Year ;;
  }

  dimension: closed_year_int {
    hidden: yes
    type: date_year
    sql: ${TABLE}.Closed_Year ;;
  }

  dimension: closed_date_varchar {
    hidden: yes
    type: string
    sql: ${TABLE}.Closed_Date ;;
  }

  dimension_group: closed {
    type: time
    datatype: date
    timeframes: [
      raw,
      date,
      month,
      quarter,
      year
    ]
    sql: CONVERT(varchar, nullif(Closed_Date,''), 23) ;;
  }

  dimension: delivery_method {
    group_label: "Project"
    type: string
    sql: ${TABLE}.Delivery_Method ;;
  }

  dimension: contract_type {
    group_label: "Classification"
    type: string
    sql: ${TABLE}.Contract_Type ;;
  }

  dimension: construct_type {
    group_label: "Classification"
    type: string
    sql: ${TABLE}.Construct_Type ;;
  }

  dimension: industry_type {
    group_label: "Classification"
    type: string
    sql: ${TABLE}.Industry_Type ;;
  }

  dimension: executive {
    group_label: "Project"
    label: "Executive"
    type: string
    sql: ${TABLE}.Executive ;;
  }

  dimension: project_manager {
    group_label: "Project"
    label: "Manager"
    type: string
    sql: ${TABLE}.Project_Manager ;;
  }

  dimension: project_accountant {
    group_label: "Project"
    label: "Accountant"
    type: string
    sql: ${TABLE}.Project_Accountant ;;
  }

  dimension: project_admin {
    group_label: "Project"
    label: "Admin"
    type: string
    sql: ${TABLE}.Project_Admin ;;
  }

  dimension: controller {
    group_label: "Project"
    label: "Controller"
    type: string
    sql: ${TABLE}.Controller ;;
  }

  dimension: superintendent {
    group_label: "Project"
    label: "Superintendent"
    type: string
    sql: ${TABLE}.Superintendent ;;
  }

  dimension: job_status {
    group_label: "Job"
    label: "Status"
    type: string
    sql: ${TABLE}.Job_Status ;;
  }

  dimension: jv_flag {
    group_label: "Job"
    type: string
    sql: ${TABLE}.JV_Flag ;;
  }

  dimension: jv_details {
    group_label: "Job"
    type: string
    sql: ${TABLE}.JV_Details ;;
  }

  dimension: job_desc {
    group_label: "Job"
    label: "Description"
    type: string
    sql: ${TABLE}.Job_Desc ;;
  }

  dimension: sq_ft_notes {
    group_label: "Job"
    label: "Sq Ft Notes"
    type: string
    sql: ${TABLE}.SqFtNotes ;;
  }

  dimension: sq_ft {
    group_label: "Job"
    label: "Sq Ft"
    type: number
    sql: ${TABLE}.SqFt ;;
  }

  dimension: contract_value {
    group_label: "Job Valuations"
    type: number
    sql: ${TABLE}.Contract_Value ;;
  }

  dimension: estimated_contract_value {
    group_label: "Job Valuations"
    type: number
    sql: ${TABLE}.Estimated_Contract_Value ;;
  }

  dimension: original_contract_value {
    group_label: "Job Valuations"
    type: number
    sql: ${TABLE}.Original_Contract_Value ;;
  }

  dimension: projected_cost {
    group_label: "Job Valuations"
    type: number
    sql: ${TABLE}.Projected_Cost ;;
  }

  dimension: actual_cost {
    group_label: "Job Valuations"
    type: number
    sql: ${TABLE}.Actual_Cost ;;
  }

  dimension: change_order_cost {
    group_label: "Job Valuations"
    type: number
    sql: ${TABLE}.Change_Order_Cost ;;
  }

  dimension: revenue {
    group_label: "Job Valuations"
    type: number
    sql: ${TABLE}.Revenue ;;
  }

  dimension: gross_profit {
    group_label: "Job Valuations"
    type: number
    sql: ${TABLE}.Gross_Profit ;;
  }

  dimension: percent_complete {
    group_label: "Job Valuations"
    type: number
    sql: ${TABLE}.Percent_Complete ;;
  }

  dimension: profit_margin {
    group_label: "Job Valuations"
    type: number
    sql: ${TABLE}.Profit_Margin ;;
  }

#}

# Derived {

  dimension: has_change_order {
    type: yesno
    sql: ${change_order_cost} > 0 ;;
  }

# }

# Measures{
  measure: count_of_jobs {
    type: count
    drill_fields: [job_information*]
  }

  measure: total_sq_ft {
    type: sum
    sql: ${sq_ft} ;;
    value_format_name: decimal_2
    drill_fields: [job_information*]
  }

  measure: total_contract_value {
    type: sum
    sql: ${contract_value} ;;
    value_format_name: usd
    drill_fields: [job_information*]
  }

  measure: total_estimated_contract_value {
    type: sum
    sql: ${estimated_contract_value} ;;
    value_format_name: usd
    drill_fields: [job_information*]
  }

  measure: total_projected_cost {
    description: "Projected cost was calcualted by doing X"
    type: sum
    sql: ${projected_cost} ;;
    value_format_name: usd
    drill_fields: [job_information*]
  }

  measure: total_actual_cost {
    type: sum
    sql: ${actual_cost} ;;
    value_format_name: usd
    drill_fields: [job_information*]
  }

  measure: total_change_order_cost {
    type: sum
    sql: ${change_order_cost} ;;
    value_format_name: usd
    drill_fields: [job_information*]
  }

  measure: total_revenue {
    type: sum
    sql: ${revenue} ;;
    value_format_name: usd
    drill_fields: [job_information*]
    #(Actual_Cost/Projected_Cost)*Estimated_Contract_Value
  }

  measure: total_gross_profit {
    type: sum
    sql: ${gross_profit} ;;
    value_format_name: usd
    drill_fields: [job_information*]
  }

  measure: gross_profit_no_change_orders {
    type: sum
    sql: ${gross_profit} + ${change_order_cost} ;;
    value_format_name: usd
    drill_fields: [job_information*]
    #Gross Profit no Change Orders = Gross_Profit + Change_Order_Cost WHERE Change_Order_Cost >= 0
  }

#}

# Metrics {

  measure: profit_margin_no_change_orders {
    type: number
    sql: 1.0 * ${gross_profit_no_change_orders} / nullif(${total_revenue},0)  ;;
    value_format_name: usd
    drill_fields: [job_information*]
    #Profit Margin no Change Orders = Gross Profit no Change Orders/Revenue
  }

# Demo measure
#   measure: recognized_revenue {
#     type: number
#     sql: 1.0 * ${total_revenue} / nullif(${total_estimated_contract_value},0) ;;
#     value_format_name: percent_1
#     drill_fields: [job_information*]
#   }

#}

# Sets {
  set: job_information {
    fields: [
      job_number,
      gross_profit_no_change_orders
      # company_number,
      # job_number_orig,
      # company_name,
      # client_name,
      # job_name,
      # job_address,
      # job_city,
      # job_state,
      # job_zip,
      # start_year,
      # closed_year,
      # closed_date,
      # delivery_method,
      # contract_type,
      # construct_type,
      # industry_type,
      # executive,
      # project_manager,
      # project_accountant,
      # project_admin,
      # controller,
      # superintendent,
      # job_status,
      # jv_flag,
      # jv_details,
      # job_desc,
      # sq_ft_notes,
      # sq_ft,
      # contract_value,
      # estimated_contract_value,
      # original_contract_value,
      # projected_cost,
      # actual_cost,
      # change_order_cost,
      # revenue,
      # gross_profit,
      # percent_complete,
      # profit_margin
    ]
  }

#}

}
