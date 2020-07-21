#Brought over from POC

#Original explore definition here
# explore: safety_trakr {
#   group_label: "POC"
#   view_label: "Safety"
#   label: "Projects, Safety & Companeis"
#   description: "Use this to understand the current projects and safety visits"
#   join: armap_marketing {
#     view_label: "Projects"
#     relationship: many_to_one
#     sql_on: ${safety_trakr.job_number} = ${armap_marketing.job_number} ;;
#   }
#   join: company {
#     relationship: many_to_one
#     sql_on: ${company.name} = ${armap_marketing.company_code} ;;
#   }
# }

view: safety_trakr {
  sql_table_name: dbo.Safety_Trakr ;;

  dimension_group: actual_visit {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year,
      day_of_month
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Actual_Visit_Date ;;
  }

  dimension: additional_notes {
    type: string
    sql: ${TABLE}.Additional_Notes ;;
  }

  dimension: address {
    hidden: yes
    type: string
    sql: ${TABLE}.Address ;;
  }

  dimension: auto_key {
    hidden: yes
    type: number
    sql: ${TABLE}.Auto_Key ;;
  }

  dimension: company_number {
    hidden: yes
    type: string
    sql: ${TABLE}.Company_Number ;;
  }

  dimension: job_name {
    hidden: yes
    type: string
    sql: ${TABLE}.Job_Name ;;
  }

  dimension: job_number {
    hidden: yes
    type: string
    sql: ${TABLE}.Job_Number ;;
  }

  dimension_group: job_start {
    description: "Date the job / project began"
    view_label: "Projects"
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year,
      day_of_week,
      day_of_year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Job_Start_Date ;;
  }

  dimension: jv_company_number {
    hidden: yes
    type: string
    sql: ${TABLE}.JV_Company_Number ;;
  }

  dimension_group: load_ts {
    hidden: yes
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
    sql: ${TABLE}.LOAD_TS ;;
  }

  dimension: project_manager_name {
    type: string
    sql: ${TABLE}.Project_Manager_Name ;;
  }

  dimension: safety_manager_name {
    type: string
    sql: ${TABLE}.Safety_Manager_Name ;;
  }

  dimension_group: scheduled_visit {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Scheduled_Visit_Date ;;
  }

  dimension: scope {
    type: string
    sql: ${TABLE}.Scope ;;
  }

  dimension: superintendent_name {
    type: string
    sql: ${TABLE}.Superintendent_Name ;;
  }

  dimension: visit_reason {
    type: string
    sql: ${TABLE}.Visit_Reason ;;
  }

  measure: count {
    label: "Number of Safety Visits"
    type: count
    drill_fields: [job_name, visit_reason, safety_manager_name]
  }
}
