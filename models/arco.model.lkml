connection: "preprod_arco_bidw_read_access"
#This is my edit
#This is my edit now too
include: "/views/viewpoint/*.view.lkml"                # include all views in the views/ folder in this project
include: "/views/reference/*.view.lkml"

include: "/views/safety_trakr/*.view.lkml"

datagroup: viewpoint_refresh {
  sql_trigger: Select COUNT(*) FROM viewpoint.bJCJM ;;
}

explore: b_jcjm {
  persist_with: viewpoint_refresh
  group_label: "Prototyping - Do Not Use"
  label: "Jobs"
  description: "Use this explore to do X"

  sql_always_where: ${b_jccm.jcco} NOT IN (1,11,19,21,45,143)
  AND ((${jcco} in (2,3,4,5,7,8,10,12,16,18,21,30,31,48,49,51,70,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88) AND ${job} NOT LIKE '%P%')
    or (${jcco} = 47 AND LTRIM(${job}) NOT LIKE 'PP%'))
  AND ${job} NOT LIKE '9%'
  AND ${job} NOT LIKE '%B134%';;

  join: b_jccm {
    type: inner
    relationship: one_to_one
    sql_on: ${b_jcjm.jcco} = ${b_jccm.jcco} and ${b_jcjm.contract} = ${b_jccm.contract} ;;
  }

  join: b_arcm {
    type: left_outer
    relationship: many_to_one
    sql_on: ${b_jccm.customer} = ${b_arcm.customer} and ${b_jcjm.vendor_group} = ${b_arcm.cust_group} and ${b_arcm.load_raw} = (Select MAX(LoadDate) FROM viewpoint.bARCM  );;
  }

  join: b_hqco {
    type: left_outer
    relationship: many_to_one
    sql_on: ${b_jcjm.jcco} = ${b_hqco.hqco} ;;
  }

  join: company {
    type: left_outer
    relationship: many_to_one
    sql_on: ${b_jcjm.jcco} = ${company.company_number} ;;
  }

  join: b_jcmp {
    type: left_outer
    relationship: many_to_one
    sql_on: ${b_jcjm.jcco} = ${b_jcmp.jcco} and ${b_jcjm.project_mgr} = ${b_jcmp.project_mgr} ;;
  }

  join: ndt_jcci_contract_amount {
    type: left_outer
    relationship: many_to_one
    sql_on: ${b_jcjm.jcco} = ${ndt_jcci_contract_amount.jcco} and ${b_jcjm.contract} = ${ndt_jcci_contract_amount.contract} ;;
  }

  join: ndt_jccd_job_actual_cost {
    type: left_outer
    relationship: many_to_one
    sql_on: ${b_jcjm.jcco} = ${ndt_jccd_job_actual_cost.jcco} and ${b_jcjm.job} = ${ndt_jccd_job_actual_cost.job} ;;
  }

  join: ndt_jcor_contract_values {
    type: left_outer
    relationship: many_to_one
    sql_on: ${b_jcjm.jcco} = ${ndt_jcor_contract_values.jcco} and ${b_jcjm.job} = ${ndt_jcor_contract_values.contract} ;;
  }

  join: ndt_jcop_job_projected_costs {
    type: left_outer
    relationship: many_to_one
    sql_on: ${b_jcjm.jcco} = ${ndt_jcop_job_projected_costs.jcco} and ${b_jcjm.job} = ${ndt_jcop_job_projected_costs.job} ;;
  }

  join: ddup_extended {
    type: left_outer
    relationship: one_to_one
    sql_on: ${b_jcjm.project_admin} = ${ddup_extended.vpuser_name} ;;
  }

}

explore: job_summary_vw {
  persist_with: viewpoint_refresh
  group_label: "Projects"
  label: "Job Summary"
  view_label: "Job Summary"
  description: "Use this explore to do job data"

  join: company {
    type: left_outer
    relationship: many_to_one
    sql_on: ${job_summary_vw.company_number} = ${company.company_number} ;;
  }
}


#Used for subqueries
explore: b_jcci {hidden:yes}
explore: b_jccd {hidden:yes}
explore: b_jcor {hidden:yes}
explore: b_jcop {hidden:yes}

#Used to jobs and contacts from two months prior
explore: ndt_jcor_contract_months_prior {
  hidden:yes
  sql_always_where: ${b_jcor.rev_cost} <> 0 ;;
  join:b_jcor {
    type: inner
    relationship: one_to_one
    sql_on: ${ndt_jcor_contract_months_prior.jcco} = ${b_jcor.jcco}
    and ${ndt_jcor_contract_months_prior.contract} = ${b_jcor.contract}
    and ${ndt_jcor_contract_months_prior.month_prior} = ${b_jcor.month} ;;
  }
}

explore: ndt_jcop_job_months_prior {
  hidden: yes
  sql_always_where: ${b_jcop.proj_cost} <> 0 ;;
  join: b_jcop {
    type: inner
    relationship: one_to_one
    sql_on: ${ndt_jcop_job_months_prior.jcco} = ${b_jcop.jcco}
    and ${ndt_jcop_job_months_prior.job} = ${b_jcop.job}
    and ${ndt_jcop_job_months_prior.month_prior} = ${b_jcop.month} ;;
  }
}

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
    relationship: one_to_many
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
