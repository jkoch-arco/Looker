connection: "prod_arco_bidw_read_access"

include: "/views/contracts/bidw_job_data_vw.view.lkml"
include: "/views/reference/company.view.lkml"

explore: bidw_job_data_vw {
  label: "Contracts"

  join: company {
    type: full_outer
    sql_on: ${bidw_job_data_vw.entity_name} = ${company.company_full_name} ;;
    relationship: many_to_one
  }
}
