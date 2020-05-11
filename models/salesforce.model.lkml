connection: "prod_sf_looker_read_access"

include: "/views/salesforce/*.view.lkml"


explore: opportunities {
  group_label: "Salesforce"
  description: "Salesforce Information"

  join: accounts {
    type: left_outer
    relationship: many_to_one
    sql_on: ${opportunities.account_id} = ${accounts.id} ;;
  }

  join: contacts {
    type: left_outer
    relationship: one_to_many
    sql_on: ${accounts.id} = ${contacts.account_id} ;;
  }

  join: goals {
    type: left_outer
    relationship: many_to_one
    sql_on: ${opportunities.company} = ${goals.company} and ${opportunities.division} = ${goals.division} ;;
  }

  join: l_opportunities_weighting {
    type: left_outer
    relationship: one_to_many
    sql_on: ${opportunities.id} = ${l_opportunities_weighting.opportunity_id} ;;
  }

  join: l_opportunities_summary {
    type: left_outer
    relationship: one_to_one
    sql_on: ${opportunities.id} = ${l_opportunities_summary.opportunity_id};;
  }

  join: l_pm_bonus_list {
    type: left_outer
    relationship: one_to_many
    sql_on: ${opportunities.id} = ${l_pm_bonus_list.opportunity_id} ;;
  }

}
