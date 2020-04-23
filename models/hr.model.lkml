connection: "preprod_arco_bidw_pii_read_access"

include: "/views/ultipro/*.view.lkml"   #This includes all of the utlipro view files for these explores

explore: employment {
  sql_always_where: ${load_ts_raw} = (Select MAX(LOAD_TS) FROM ultipro.Employment)
  AND (${termination_reason_code} <> 'TRO' or ${termination_reason_code} is null);;

  join: employee_address {
    type: inner
    relationship: one_to_one
    sql_on: ${employment.employee_id} = ${employee_address.employee_id} ;;
  }

  join: employee_sal_term {
    type: inner
    relationship: one_to_many
    sql_on: ${employment.employee_id} = ${employee_sal_term.employee_id} ;;
  }

  join: job_eeo_flsa {
    type: inner
    relationship: many_to_one
    sql_on: ${employment.job_code} = ${job_eeo_flsa.job_code} ;;
  }

  join: person {
    type: inner
    relationship: one_to_one
    sql_on: ${employment.employee_id} = ${person.employee_id} ;;
  }

  join: l_employee_history {
    type: inner
    relationship: one_to_many
    sql_on: ${employment.employee_id} = ${l_employee_history.employee_id} ;;
  }

}

explore: calendar {
  hidden: yes
  join: company {
    type: cross
    relationship: one_to_many
  }
}
