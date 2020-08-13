connection: "prod_arco_bidw_read_access"

include: "/views/contracts/bidw_job_data_vw.view.lkml"                # include all views in the views/ folder in this project
# include: "/**/view.lkml"                   # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

explore: bidw_job_data_vw {
  label: "Contracts"

  sql_always_where: {% if bidw_job_data_vw.show_accounting_type._parameter_value == "standard" %} ${is_standard_accounting_type}
  {% elsif bidw_job_data_vw.show_accounting_type._parameter_value == "over_and_above" %} ${is_over_and_above_accounting_type}
  {% elsif bidw_job_data_vw.show_accounting_type._parameter_value == "all_values" %} 1=1
  {% else %} 1=1 {% endif %}
  ;;
}
