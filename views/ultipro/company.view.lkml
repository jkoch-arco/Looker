view: company {
  #sql_table_name: ARCO_BIDW_PII.arco.Company ;; --Main reference table didn't contain all GL Company Codes
  sql_table_name: ${l_mdm_hr_company_codes.SQL_TABLE_NAME} ;;

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
    group_label: "Organization"
    label: "{{_view._name | capitalize | replace:'_',' '}} Name"
    type: string
    sql: COALESCE(${TABLE}.Company_Name,'Unavilable') ;;
  }

  dimension: company_number {
    type: string
    sql: ${TABLE}.Company_Number ;;
  }

  dimension: company_number_padded {
    type: string
    sql: ${TABLE}.company_number_padded  ;;
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
