view: bidw_job_data_vw {
  sql_table_name: (SELECT * FROM (SELECT *, ROW_NUMBER() OVER (PARTITION BY Job_Number_CM, Job_Number_VP, Job_Number_AR  ORDER BY Intake_Date DESC) as RANKING FROM arco.BIDW_JOB_DATA_vw) as DATA WHERE RANKING = 1) ;;

  dimension: composite_primary_key {
    type: string
    primary_key: yes
    hidden: yes
    sql: concat(${job_number_cm}, ${job_number_vp}, ${job_number_ar}) ;;
  }

  parameter: view_by_selector {
    hidden: yes
    label: "View By Category"
    type: unquoted
    allowed_value: {
      label: "Industry Type"
      value: "industry_type"
    }
    allowed_value: {
      label: "Contract Type"
      value: "contract_type"
    }
    allowed_value: {
      label: "Construction Type"
      value: "construction_type"
    }
    allowed_value: {
      label: "Company Group"
      value: "company_group"
    }
    allowed_value: {
      label: "Company Name"
      value: "company_name"
    }
  }

  dimension: dynamic_dimension {
    description: "For use with the View by Selector field"
    hidden: yes
    label_from_parameter: view_by_selector
    type: string
    sql: {% if view_by_selector._parameter_value == "industry_type" %} ${industry_type}
           {% elsif view_by_selector._parameter_value == "contract_type" %} ${contract_type}
           {% elsif view_by_selector._parameter_value == "construction_type" %} ${construction_type}
          {% elsif view_by_selector._parameter_value == "company_group" %} ${company.company_group}
          {% else %} ${company.company_full_name} {% endif %};;
  }

  dimension: actual_cost {
    type: number
    sql: ${TABLE}.Actual_Cost ;;
    hidden: yes
  }

  dimension: arcorole {
    type: string
    sql: ${TABLE}.ARCORole ;;
  }

  dimension: attorney {
    type: string
    sql: ${TABLE}.Attorney ;;
  }

  dimension: business_development {
    type: string
    sql: ${TABLE}.BusinessDevelopment ;;
  }

  dimension: client_name {
    type: string
    sql: ${TABLE}.Client_Name ;;
  }

  dimension: client_name_cm {
    hidden: yes
    type: string
    sql: ${TABLE}.Client_Name_cm ;;
  }

  dimension: client_name_vp {
    hidden: yes
    type: string
    sql: ${TABLE}.ClientName_VP ;;
  }

  dimension: company_number {
    type: number
    sql: ${TABLE}.company_number ;;
  }

  dimension: company_number_cm {
    hidden: yes
    type: number
    sql: ${TABLE}.company_number_cm ;;
  }

  dimension: company_number_vp {
    hidden: yes
    type: number
    sql: ${TABLE}.company_number_vp ;;
  }

  dimension: company_name {
    type: string
    sql: ${TABLE}.company_name ;;
  }

  dimension: company_name_cm {
    hidden: yes
    group_label: "Company Name by Source"
    group_item_label: "Lawbase"
    type: string
    sql: ${TABLE}.company_name_cm ;;
  }

  dimension: company_name_vp {
    hidden: yes
    group_label: "Company Name by Source"
    group_item_label: "Viewpoint"
    type: string
    sql: ${TABLE}.company_name_vp ;;
  }

  dimension: compensation_type {
    type: string
    sql: ${TABLE}.CompensationType ;;
  }

  dimension: construction_type {
    type: string
    sql: ${TABLE}.ConstructionType ;;
  }

  dimension_group: contract {
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
    sql: ${TABLE}.Contract_Date ;;
  }

  dimension: contract_type {
    type: string
    sql: ${TABLE}.ContractType ;;
  }

  dimension: contract_value {
    hidden: yes
    type: number
    sql: ${TABLE}.ContractValue ;;
  }

  dimension: contract_value_cm {
    hidden: yes
    type: number
    sql: ${TABLE}.ContractValue_CM ;;
  }

  dimension: contract_value_VP {
    hidden: yes
    type: number
    sql: ${TABLE}.ContractValue_VP ;;
  }

  dimension: controller {
    type: string
    sql: ${TABLE}.Controller ;;
  }

  dimension: customer_name {
    type: string
    sql: ${TABLE}.Customer_Name ;;
  }

#   dimension: entity_name {
#     type: string
#     sql: ${TABLE}.EntityName ;;
#   }

  dimension: industry_type {
    type: string
    sql: ${TABLE}.IndustryType ;;
  }

  dimension_group: intake {
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
    sql: ${TABLE}.Intake_Date ;;
  }

  dimension_group: issue {
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
    sql: ${TABLE}.Issue_Date ;;
  }

  dimension: job_address {
    group_label: "Job Location"
    type: string
    sql: ${TABLE}.Job_Address ;;
  }

  dimension: job_city {
    group_label: "Job Location"
    type: string
    sql: ${TABLE}.Job_City ;;
  }

  dimension: job_desc {
    type: string
    sql: ${TABLE}.job_desc ;;
  }

  dimension: job_name {
    type: string
    sql: ${TABLE}.Job_Name ;;
  }

  dimension: job_number {
    type: string
    sql: ${TABLE}.job_number ;;
  }

  dimension: job_number_ar {
    group_label: "Job Numbers by Origin"
    type: string
    sql: ${TABLE}.Job_Number_AR ;;
  }

  dimension: job_number_cm {
    group_label: "Job Numbers by Origin"
    type: string
    sql: ${TABLE}.Job_Number_CM ;;
  }

  dimension: job_number_vp {
    group_label: "Job Numbers by Origin"
    type: string
    sql: ${TABLE}.Job_Number_VP ;;
  }

  dimension: job_number_ends_with_JV {
    group_label: "Job Number Suffix (Y/N) Flags"
    label: "Job Number Ends With -JV"
    type: yesno
    sql: right(${job_number},2) = 'JV'  ;;
  }

  dimension: job_number_ends_with_alpha_characters {
    group_label: "Job Number Suffix (Y/N) Flags"
    label: "Job Number Ends With [A-Z]"
    type: yesno
    sql: right(${job_number},1) NOT LIKE '[0-9]'  ;;
  }

  dimension: job_state {
    group_label: "Job Location"
    type: string
    sql: ${TABLE}.Job_State ;;
  }

  dimension: job_status {
    type: string
    sql: ${TABLE}.Job_Status ;;
  }

  dimension: job_zip {
    group_label: "Job Location"
    type: string
    sql: ${TABLE}.Job_Zip ;;
  }

  dimension: jv_percent {
    type: number
    sql: ${TABLE}.JV_Percent ;;
  }

  dimension: jvflag {
    type: string
    sql: ${TABLE}.JVFlag ;;
  }

  dimension: matter_address {
    group_label: "Matter"
    type: string
    sql: ${TABLE}.Matter_Address ;;
  }

  dimension: matter_address_cm {
    group_label: "Matter"
    type: string
    sql: ${TABLE}.Matter_Address_cm ;;
  }

  dimension: matter_desc {
    group_label: "Matter"
    type: string
    sql: ${TABLE}.Matter_Desc ;;
  }

  dimension: matter_desc_cm {
    group_label: "Matter"
    type: string
    sql: ${TABLE}.Matter_Desc ;;
  }

  dimension: matter_name {
    group_label: "Matter"
    type: string
    sql: ${TABLE}.Matter_Name ;;
  }

  dimension: matter_name_cm {
    group_label: "Matter"
    type: string
    sql: ${TABLE}.Matter_Name_CM ;;
  }

  dimension: paralegal {
    type: string
    sql: ${TABLE}.Paralegal ;;
  }

  dimension: pay_terms {
    type: string
    sql: ${TABLE}.PayTerms ;;
  }

  dimension: pay_terms_cm {
    hidden: yes
    type: string
    sql: ${TABLE}.PayTerms_CM ;;
  }

  dimension: pay_terms_vp {
    hidden: yes
    type: string
    sql: ${TABLE}.PayTerms_VP ;;
  }

  dimension: project_accountant {
    type: string
    sql: ${TABLE}.ProjectAccountant ;;
  }

  dimension: project_admin {
    type: string
    sql: ${TABLE}.ProjectAdmin ;;
  }

  dimension: project_city {
    group_label: "Project Location"
    type: string
    sql: ${TABLE}.Project_City ;;
  }

  dimension: project_city_cm {
    group_label: "Project Location"
    type: string
    sql: ${TABLE}.Project_City_CM ;;
  }

  dimension: project_county {
    group_label: "Project Location"
    type: string
    sql: ${TABLE}.Project_County ;;
  }

  dimension: project_manager {
    type: string
    sql: ${TABLE}.ProjectManager ;;
  }

  dimension: project_state {
    map_layer_name: us_states
    group_label: "Project Location"
    type: string
    sql: ${TABLE}.Project_State ;;
  }

  dimension: project_state_cm {
    map_layer_name: us_states
    group_label: "Project Location"
    type: string
    sql: ${TABLE}.Project_State_CM ;;
  }

  dimension: project_zip {
    group_label: "Project Location"
    type: zipcode
    sql: ${TABLE}.Project_Zip ;;
  }

  dimension: project_zip_cm {
    group_label: "Project Location"
    type: zipcode
    sql: ${TABLE}.Project_Zip_CM ;;
  }

  dimension: regional_manager {
    type: string
    sql: ${TABLE}.RegionalManager ;;
  }

  dimension: retention_pct {
    type: number
    sql: ${TABLE}.RetentionPct ;;
  }

  dimension: superintendent {
    type: string
    sql: ${TABLE}.Superintendent ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.Title ;;
  }

  dimension: total_cost {
    type: number
    sql: ${TABLE}.Total_Cost ;;
    hidden: yes
  }

  dimension: total_sq_ft_ar {
    hidden: yes
    type: number
    sql: ${TABLE}.TotalSqFt_ar ;;
  }

  dimension: total_sq_ft_cm {
    hidden: yes
    type: number
    sql: ${TABLE}.TotalSqFt_CM ;;
  }

  dimension: total_sq_ft_vp {
    hidden: yes
    type: number
    sql: ${TABLE}.TotalSqFt_VP ;;
  }

  dimension: total_sq_ft {
    hidden: yes
    type: number
    sql: coalesce(${total_sq_ft_cm}, ${total_sq_ft_vp}, ${total_sq_ft_ar}) ;;
  }

  dimension: union_flag {
    type: string
    sql: ${TABLE}.UnionFlag ;;
  }

  dimension: waiver_type {
    type: string
    sql: ${TABLE}.WaiverType ;;
  }

  measure: sum_total_sq_ft {
    label: "Total Sq Ft"
    type: sum
    sql: ${total_sq_ft} ;;
    value_format: "[>=1000000000]0.0,,,\"B\";[>=1000000]0.0,,\"M\";#,##0"
    drill_fields: [construction_details*]
  }

  measure: sum_contract_value {
    label: "Total Contract Value"
    type: sum
    sql: ${contract_value} ;;
    value_format: "[>=1000000000]$0.0,,,\"B\";[>=1000000]$0.0,,\"M\";$#,##0"
    drill_fields: [construction_details*]
  }

  measure: count_distinct_job_number_combined {
    label: "Number of Distinct Jobs"
    description: "Distinct job number count (ignoring jobs that end in -JV or A-Z)"
    type: count_distinct
    sql: ${job_number} ;;
    filters: [
      job_number_ends_with_alpha_characters: "No"
    ]
    drill_fields: [construction_details*]
  }

  measure: sum_total_cost {
    label: "Total Cost"
    hidden: yes
    type: sum
    sql: ${total_cost} ;;
    value_format_name: usd_0
  }
  measure: sum_actual_cost {
    label: "Total Actual Cost"
    hidden: yes
    type: sum
    sql: ${actual_cost} ;;
    value_format_name: usd_0
  }

  set: construction_details {
    fields: [project_city
      , project_state
      , project_zip
      , job_number
      , job_status
      , intake_date
      , industry_type
      , construction_type
      , sum_contract_value
      , sum_total_sq_ft
      ]
  }
}
