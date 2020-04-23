view: person {
  sql_table_name: ARCO_BIDW_PII.ultipro.Person ;;

  dimension: employee_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.EmployeeId ;;
  }

  dimension: age_days {
    type: number
    sql: ${TABLE}.Age ;;
  }

  dimension: age {
    type: number
    sql: ${age_days} / 365 ;;
  }

  dimension: age_tier {
    type: tier
    tiers: [0,18,30,40,50,60]
    style: integer
    sql: ${age} ;;
  }

  dimension: ethnicity_description {
    type: string
    sql: ${TABLE}.EthnicityDescription ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.Gender ;;
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

  measure: count {
    type: count
  }
}
