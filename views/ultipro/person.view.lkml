view: person {
  view_label: "Employment"
  sql_table_name: ARCO_BIDW_PII.ultipro.Person ;;

  dimension: employee_id {
    hidden: yes
    primary_key: yes
    type: string
    sql: ${TABLE}.EmployeeId ;;
  }

  dimension: age_days {
    group_label: "Person Information"
    type: number
    sql: ${TABLE}.Age ;;
  }

  dimension: age {
    group_label: "Person Information"
    type: number
    sql: ${age_days} / 365 ;;
  }

  dimension: age_tier {
    group_label: "Person Information"
    type: tier
    tiers: [0,18,30,40,50,60]
    style: integer
    sql: ${age} ;;
  }

  dimension: ethnicity {
    group_label: "Person Information"
    type: string
    sql: ${TABLE}.EthnicityDescription ;;
  }

  dimension: gender {
    group_label: "Person Information"
    type: string
    sql: ${TABLE}.Gender ;;
  }

  measure: average_age {
    type: average
    sql: 1.0*${age} ;;
    value_format_name: decimal_1
  }

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

}
