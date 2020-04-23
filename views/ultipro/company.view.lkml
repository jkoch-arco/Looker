view: company {
  sql_table_name: ARCO_BIDW_PII.arco.Company ;;

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

  dimension: company_number {
    type: string
    sql: ${TABLE}.Company_Number ;;
  }

  dimension: company_number_padded {
    type: string
    sql: right(replicate('0',3)+cast(${company_number} as varchar(3)),3)  ;;
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

  measure: count {
    type: count
    drill_fields: [company_name, company_full_name]
  }
}
