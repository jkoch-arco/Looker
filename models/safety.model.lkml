connection: "prod_arco_bidw_read_access"

#include: "/views/safety_trakr/*.view.lkml"

include: "/views/safety/fastfield/*.view.lkml"
include: "/views/safety/procore/*.view.lkml"
include: "/views/safety/safetytrakr/*.view.lkml"
include: "/views/safety/old_views/*.view.lkml"
include: "/views/safety/*.view.lkml"

datagroup: daily_refresh {
  sql_trigger: SELECT CAST(GETDATE() as DATE) ;;
}

persist_with: daily_refresh

explore: l_safety_project_number {
  label: "Safety Projects"
  view_label: "Safety Projects"
  join: l_self_inspections {
    view_label: "Self Inspections"
    type: left_outer
    sql_on: ${l_safety_project_number.project_number} = ${l_self_inspections.project_number} ;;
    relationship: one_to_many
  }
  join: l_self_inspections_questionnaire {
    view_label: "Self Inspections Questionnaire"
    type: inner
    relationship: one_to_many
    sql_on: ${l_self_inspections.submission_id} = ${l_self_inspections_questionnaire.submission_id}
      AND ${l_self_inspections.data_source} = ${l_self_inspections_questionnaire.data_source};;
  }
  join: l_toolbox_talks {
    view_label: "Toolbox Talks"
    type: left_outer
    sql_on: ${l_safety_project_number.project_number} = ${l_toolbox_talks.project_number} ;;
    relationship: one_to_many
  }
}

explore: l_safety_events_summary {
  label: "Consolidated Safety Events"
}




explore: safety_trakr_job {
  hidden: yes
  join: safety_trakr_job_visit {
    type: left_outer
    relationship: many_to_many
    sql_on: ${safety_trakr_job.job_number} = ${safety_trakr_job_visit.job_number} ;;
  }

# Unable to join, this was based on old logic from pre-prod tables.
#   join: job_visit_reasons {
#     type: left_outer
#     relationship: many_to_one
#     sql_on: ${safety_trakr_job_visits.job_visit_reason_id} = ${safety_trakr_job_visit_reasons.job_visit_reason_id};;
#   }
#   join: saftey_manager_on_job_visit {
#     from: saftey_manager
#     type: left_outer
#     relationship: one_to_many
#     sql_on: ${safety_trakr_job_visits.safety_manager_id} = ${saftey_manager_on_job_visit.safety_manager_id} ;;
#   }
#   join: company {
#     type: left_outer
#     relationship: one_to_many
#     sql_on: ${safety_trakr.company_id} = ${company.company_id} ;;
#   }
#
#   join: cr341_company {
#     from: company
#     type: left_outer
#     relationship: one_to_many
#     sql_on: ${safety_trakr.cr341_company_name} = ${cr341_company.company_id} ;;
#   }
#
#   join: jv_company {
#     from: company
#     type: left_outer
#     relationship: one_to_many
#     sql_on: ${safety_trakr.jv_company_id} = ${jv_company.company_id} ;;
#   }
}


explore: l_self_inspections {
  hidden: yes
}

explore: l_toolbox_talks {
  hidden: yes
}

explore: fastfield_toolbox_talks {
  hidden: yes
}

explore: procore_toolbox_talks {
  hidden: yes
}

explore: l_union_fastfield_self_inspections {
  hidden: yes
  join: l_union_fastfield_self_inspection_questionnaire {
    type: inner
    relationship: one_to_many
    sql_on: ${l_union_fastfield_self_inspections.submission_id} = ${l_union_fastfield_self_inspection_questionnaire.submission_id}
    AND ${l_union_fastfield_self_inspections.data_source} = ${l_union_fastfield_self_inspection_questionnaire.data_source};;

  }
}

explore: l_procore_self_inspections {
  hidden: yes
  join: l_procore_self_inspections_questionnaire {
    type: inner
    relationship: one_to_many
    sql_on: ${l_procore_self_inspections.submission_id} = ${l_procore_self_inspections_questionnaire.submission_id}
    AND ${l_procore_self_inspections.data_source} = ${l_procore_self_inspections_questionnaire.data_source} ;;
  }
}

explore: procore_self_inspections {
  hidden: yes
}
