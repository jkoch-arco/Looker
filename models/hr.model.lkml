connection: "preprod_arco_bidw_pii_read_access"

include: "/views/ultipro/*.view.lkml"   #This includes all of the utlipro view files for these explores
include: "/views/ultipro/employee_history/*.view.lkml"   #This includes all of the utlipro view files for these explores

datagroup: daily {
  sql_trigger: SELECT CONVERT(VARCHAR(10), getdate(), 111) ;;
}

persist_with: daily

explore: employment {
  sql_always_where: ${load_ts_raw} = (Select MAX(LOAD_TS) FROM ultipro.Employment)
  AND (${termination_reason_code} <> 'TRO' or ${termination_reason_code} is null);;

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

#table disappeared from schema
#   join: job_eeo_flsa {
#     type: left_outer
#     relationship: many_to_one
#     sql_on: ${employment.job_code} = ${job_eeo_flsa.job_code} ;;
#   }

#Permission issue
#   join: cohort_company {
#     view_label: "Employment"
#     fields: [cohort_company.company_name]
#     from: company
#     type: left_outer
#     relationship: many_to_one
#     sql_on: ${employment.cohort_company_code} = ${cohort_company.company_number_padded} ;;
#   }
#
#   join: gl_company {
#     view_label: "Employment"
#     fields: [gl_company.company_name]
#     from: company
#     type: left_outer
#     relationship: many_to_one
#     sql_on: ${employment.global_company_code} = ${gl_company.company_number_padded} ;;
#   }
#
#   join: parent_company {
#     view_label: "Employment"
#     fields: [parent_company.company_name]
#     from: company
#     type: left_outer
#     relationship: many_to_one
#     sql_on: ${employment.parent_company_code} = ${parent_company.company_number_padded} ;;
#   }

}

explore: calendar {
  hidden: yes
  join: l_hr_company_codes {
    type: cross
    relationship: one_to_many
  }
}
