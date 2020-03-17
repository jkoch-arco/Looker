connection: "preprod_arco_bidw_read_access"

include: "/views/viewpoint/*.view.lkml"                # include all views in the views/ folder in this project

explore: b_jcjm {
  label: "Jobs"
  description: "Use this explore to do X"

}
explore: job_summary_vw {
  label: "Job Summary"
  description: "Use this explore to do job data"

}
