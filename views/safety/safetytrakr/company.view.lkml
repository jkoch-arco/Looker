view: company {
  sql_table_name: safetytrakr.Company ;;

  dimension: company_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.new_companyid ;;
  }

  dimension: company_full {
    type: string
    sql: ${TABLE}.new_companyfull ;;
  }

  dimension: company_group {
    type: string
    sql: ${TABLE}.new_companygroup ;;
  }

  dimension: company_name {
    type: string
    sql: ${TABLE}.new_companyname ;;
  }

  dimension: company_number {
    type: string
    sql: ${TABLE}.new_companynumber ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.new_description ;;
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
