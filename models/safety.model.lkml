connection: "prod_arco_bidw_read_access"

#include: "/views/safety_trakr/*.view.lkml"

include: "/views/safety/fastfield/*.view.lkml"
include: "/views/safety/procore/*.view.lkml"
include: "/views/safety/safetytrakr/*.view.lkml"
include: "/views/safety/*.view.lkml"

datagroup: daily_refresh {
  sql_trigger: SELECT CAST(GETDATE() as DATE) ;;
}

persist_with: daily_refresh

explore: l_safety_events_summary {
  label: "Consolidated Safety Events"
}

explore: l_safety_project_number {
  hidden: no
  label: "Safety Projects"
  view_label: "0 - Safety Projects"

  #self inspections
  join: l_self_inspections {
    view_label: "1 - Self Inspections"
    type: left_outer
    sql_on: ${l_safety_project_number.project_number} = ${l_self_inspections.project_number} ;;
    relationship: one_to_many
  }
  join: l_self_inspections_questionnaire {
    view_label: "1 - Self Inspections - Questionnaire"
    type: inner
    relationship: one_to_many
    sql_on: ${l_self_inspections.submission_id} = ${l_self_inspections_questionnaire.submission_id}
      AND ${l_self_inspections.data_source} = ${l_self_inspections_questionnaire.data_source};;
  }

  #toolbox talks
  join: l_toolbox_talks {
    view_label: "2 - Toolbox Talks"
    type: left_outer
    sql_on: ${l_safety_project_number.project_number} = ${l_toolbox_talks.project_number} ;;
    relationship: one_to_many
  }

  #safety visits
  extends: [safety_trakr_job]
  join: safety_trakr_job {
    view_label: "3 - Safety Trakr"
    type: left_outer
    sql_on: ${l_safety_project_number.project_number} = ${safety_trakr_job.job_number} ;;
    relationship: one_to_many
  }
}

explore: safety_trakr_job {
  #This is extended up into the main explore
  hidden: yes
  join: safety_trakr_job_visit {
    view_label: "3 - Safety Trakr - Job Visit"
    type: left_outer
    relationship: many_to_many #ideally should be one to many, just not true with the join below
    sql_on: ${safety_trakr_job.job_number} = ${safety_trakr_job_visit.job_number} ;;
  }
  join: safety_trakr_job_visit_reasons {
    view_label: "3 - Safety Trakr - Job Visit"
    type: left_outer
    relationship: many_to_one
    sql_on: ${safety_trakr_job_visit.job_visit_reason} = ${safety_trakr_job_visit_reasons.new_job_visit_reasonid};;
  }
  join: safety_manager {
    view_label: "3 - Safety Trakr - Job Visit"
    type: left_outer
    relationship: many_to_one
    sql_on: ${safety_trakr_job_visit.safety_manager} = ${safety_manager.new_safteymanagerid} ;;
  }
  join: primary {
    view_label: "3 - Safety Trakr"
    from: safety_trakr_companys
    type: left_outer
    relationship: one_to_many
    sql_on: ${safety_trakr_job.company_id} = ${primary.new_companyid}  ;;
  }
  join: jv {
    view_label: "3 - Safety Trakr"
    from: safety_trakr_companys
    type: left_outer
    relationship: one_to_many
    sql_on: ${safety_trakr_job.jv_company} = ${jv.new_companyid}  ;;
  }
}

#Used for Building NDTS {
  explore: l_self_inspections {
    hidden: yes
  }

  explore: l_toolbox_talks {
    hidden: yes
  }

  explore: procore_self_inspections {
    hidden: yes
}
#}
