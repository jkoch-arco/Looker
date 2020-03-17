view: company {
  sql_table_name: arco.Company ;;

# Dimensions {

  dimension: company_number {
    primary_key: yes
    type: string
    sql: ${TABLE}.Company_Number ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.City ;;
  }

  dimension: company_full_name {
    type: string
    sql: ${TABLE}.Company_Full_Name ;;
  }

  dimension: company_group {
    type: string
    sql: ${TABLE}.Company_Group ;;
  }

  dimension: company_name {
    type: string
    sql: ${TABLE}.Company_Name ;;
  }

  dimension: company_parent {
    type: string
    sql: ${TABLE}.Company_Parent ;;
  }

  dimension: other_city {
    type: string
    sql: ${TABLE}.Other_City ;;
  }

  dimension: other_state_code {
    type: string
    sql: ${TABLE}.Other_State_Code ;;
  }

  dimension: parent_flg {
    type: string
    sql: ${TABLE}.Parent_Flg ;;
  }

  dimension: state_code {
    type: string
    sql: ${TABLE}.State_Code ;;
  }

  dimension: year_est {
    type: string
    sql: ${TABLE}.Year_Est ;;
  }

# }

}
