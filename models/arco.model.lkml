connection: "preprod_arco_bidw_read_access"

include: "/views/viewpoint/*.view.lkml"                # include all views in the views/ folder in this project
include: "/views/reference/*.view.lkml"

explore: b_jcjm {
  group_label: "Prototyping - Do Not Use"
  label: "Jobs"
  description: "Use this explore to do X"

}

explore: job_summary_vw {
  group_label: "Projects"
  label: "Job Summary"
  view_label: "Job Summary"
  description: "Use this explore to do job data"

  join: company {
    type: left_outer
    relationship: many_to_one
    sql_on: ${job_summary_vw.company_number} = ${company.company_number} ;;
  }

  join: parent_company {
    from: company
    type: left_outer
    relationship: many_to_one
    sql_on: ${company.company_parent} = ${parent_company.company_name} ;;
  }

}
