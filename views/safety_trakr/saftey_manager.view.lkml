view: saftey_manager {
  sql_table_name: safetytrakr.Saftey_Manager ;;

  dimension: description {
    type: string
    sql: ${TABLE}.new_description ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.new_email ;;
  }

  dimension: phonenumber {
    type: string
    sql: ${TABLE}.new_phonenumber ;;
  }

  dimension: safety_manager_name {
    type: string
    sql: ${TABLE}.new_safetymanagername ;;
  }

  dimension: safety_manager_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.new_safteymanagerid ;;
  }

  dimension: state_code {
    type: string
    sql: ${TABLE}.statecode ;;
  }

  dimension: status_code {
    type: string
    sql: ${TABLE}.statuscode ;;
  }

  measure: count {
    type: count
  }
}
