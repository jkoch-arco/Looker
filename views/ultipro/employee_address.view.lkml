view: employee_address {
  view_label: "Employment"
  sql_table_name: ARCO_BIDW_PII.ultipro.Employee_Address ;;

  # Dimensions

  dimension: employee_id {
    hidden: yes
    primary_key: yes
    type: string
    sql: ${TABLE}.EmployeeId ;;
  }

  dimension: postal_code {
    group_label: "Address"
    type: string
    map_layer_name: us_zipcode_tabulation_areas
    sql: ${TABLE}.PostalCode ;;
  }

  dimension: city {
    group_label: "Address"
    type: string
    sql: ${TABLE}.City ;;
  }

  dimension: county {
    group_label: "Address"
    type: string
    sql: ${TABLE}.County ;;
  }

  dimension: state_or_province {
    group_label: "Address"
    type: string
    map_layer_name: us_states
    sql: ${TABLE}.StateOrProvince ;;
  }

  dimension: country_code {
    hidden: yes
    group_label: "Address"
    type: string
    map_layer_name: countries
    sql: ${TABLE}.CountryCode ;;
  }

  dimension: country_name {
    group_label: "Address"
    type: string
    map_layer_name: countries
    sql: ${TABLE}.CountryName ;;
  }

  #}

  # ETL / Loading Fields {

  dimension_group: load_ts {
    hidden: yes
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

  #}

}
