connection: "prod_arco_bidw_read_access "

include: "/views/safety_trakr/*.view.lkml"

include: "/views/safety/fastfield/*.view.lkml"

explore: safety_trakr {
  from: safety_trakr_jobs
  group_label: "Safety Trakr"

  join: safety_trakr_job_visits {
    type: left_outer
    relationship: one_to_many
    sql_on: ${safety_trakr.primary_id} = ${safety_trakr_job_visits.primary_id} ;;
  }

  join: safety_trakr_job_visit_reasons {
    type: left_outer
    relationship: many_to_one
    sql_on: ${safety_trakr_job_visits.job_visit_reason_id} = ${safety_trakr_job_visit_reasons.job_visit_reason_id};;
  }

  join: saftey_manager_on_job_visit {
    from: saftey_manager
    type: left_outer
    relationship: one_to_many
    sql_on: ${safety_trakr_job_visits.safety_manager_id} = ${saftey_manager_on_job_visit.safety_manager_id} ;;
  }

  join: company {
    from: safety_trakr_company
    type: left_outer
    relationship: one_to_many
    sql_on: ${safety_trakr.company_id} = ${company.company_id} ;;
  }

  join: cr341_company {
    from: safety_trakr_company
    type: left_outer
    relationship: one_to_many
    sql_on: ${safety_trakr.cr341_company_name} = ${cr341_company.company_id} ;;
  }

  join: jv_company {
    from: safety_trakr_company
    type: left_outer
    relationship: one_to_many
    sql_on: ${safety_trakr.jv_company_id} = ${jv_company.company_id} ;;
  }
}

explore: fast_field_weekly_self_inspection {}
