view: employee_address {
  sql_table_name: ARCO_BIDW_PII.ultipro.Employee_Address ;;

  dimension: city {
    type: string
    sql: ${TABLE}.City ;;
  }


  dimension: country_code {
    type: string
    sql: ${TABLE}.CountryCode ;;
  }

  dimension: country_name {
    type: string
    sql: ${TABLE}.CountryName ;;
  }

  dimension: county {
    type: string
    sql: ${TABLE}.County ;;
  }

  dimension: employee_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.EmployeeId ;;
  }

  dimension_group: load_ts {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.LOAD_TS ;;
  }

  dimension: postal_code {
    type: string
    map_layer_name: us_zipcode_tabulation_areas
    sql: ${TABLE}.PostalCode ;;
  }

  dimension: state_or_province {
    type: string
    sql: ${TABLE}.StateOrProvince ;;
  }

  measure: count {
    type: count
    drill_fields: [country_name]
  }
}
