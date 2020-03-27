connection: "prod_sf_looker_read_access"

include: "/views/salesforce/*.view.lkml"


explore: opportunities {
  group_label: "Salesforce"
  description: "Salesforce Information"

  join: accounts {
    type: left_outer
    relationship: many_to_one
    sql_on: ${opportunities.accountid} = ${accounts.id} ;;
  }

  join: contacts {
    type: left_outer
    relationship: one_to_many
    sql_on: ${accounts.id} = ${contacts.account_id} ;;
  }

  join: goals {
    type: left_outer
    relationship: one_to_many
    sql_on: ${opportunities.company} = ${goals.company} and ${opportunities.division} = ${goals.division} ;;
  }

}
