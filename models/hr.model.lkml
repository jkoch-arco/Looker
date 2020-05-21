connection: "preprod_arco_bidw_pii_read_access"

include: "/views/ultipro/*.view.lkml"   #This includes all of the utlipro view files for these explores
include: "/views/ultipro/employee_history/*.view.lkml"   #This includes all of the utlipro view files for these explores
include: "/views/ultipro/company/*.view.lkml"

datagroup: daily {
  sql_trigger: SELECT CONVERT(VARCHAR(10), getdate(), 111) ;;
}

persist_with: daily

explore: employment {

  sql_always_where: ${most_recent_employee_record} = 1 ;; #This will exclude transfers and former re-hire records

  join: employee_address {
    type: left_outer
    relationship: one_to_one
    sql_on: ${employment.employee_id} = ${employee_address.employee_id} ;;
  }

  join: employment_salary_term {
    type: left_outer
    relationship: one_to_one
    sql_on: ${employment.employee_id} = ${employment_salary_term.employee_id} and ${employment.parent_company_code} = ${employment_salary_term.company_code} ;;
  }

  join: person {
    type: left_outer
    relationship: one_to_one
    sql_on: ${employment.employee_id} = ${person.employee_id} ;;
  }

  join: l_employee_history {
    type: left_outer
    relationship: one_to_many
    sql_on: ${employment.employee_id} = ${l_employee_history.employee_id} ;;
  }

  join: l_employee_role_type {
    view_label: "Employment"
    type: left_outer
    relationship: one_to_one
    sql_on: ${employment.employee_id} = ${l_employee_role_type.employee_id} ;;
  }

#table disappeared from schema
#   join: job_eeo_flsa {
#     type: left_outer
#     relationship: many_to_one
#     sql_on: ${employment.job_code} = ${job_eeo_flsa.job_code} ;;
#   }


  # join: cohort_company {
  #   view_label: "Employment"
  #   fields: [cohort_company.company_name]
  #   from: company
  #   type: left_outer
  #   relationship: many_to_one
  #   sql_on: ${employment.cohort_company_code} = ${cohort_company.company_number_padded} ;;
  # }

  join: cohort_company {
    view_label: "Employment"
    type: left_outer
    relationship: many_to_one
    sql_on: ${employment.cohort_company_code} = ${cohort_company.cohort_company_code} ;;
  }


  join: gl_company {
    view_label: "Employment"
    from: hr_company
    type: left_outer
    relationship: many_to_one
    sql_on: ${employment.global_company_code} = ${gl_company.company_code} ;;
  }

  join: parent_company {
    view_label: "Employment"
    from: hr_company
    type: left_outer
    relationship: many_to_one
    sql_on: ${employment.parent_company_code} = ${parent_company.company_code} ;;
  }

  join: transfer_company {
    view_label: "Employment History"
    from: hr_company
    type: left_outer
    relationship: many_to_one
    sql_on: ${l_employee_history.company_code} = ${transfer_company.company_code} ;;
  }

#   join: l_summary_turnover_analysis {
#     type: left_outer
#     relationship: many_to_one
#     sql_on: ${l_summary_turnover_analysis.calendar_month} = ${l_employee_history.calendar_month} ;;
#   }

}

#explore: l_summary_turnover_analysis {}

explore: calendar {
  hidden: yes
  join: l_hr_company_codes {
    type: cross
    relationship: one_to_many
  }
}

explore: l_employee_role_type {
  hidden: yes
}
