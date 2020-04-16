view: person {
  sql_table_name: ultipro.Person ;;

  dimension: employee_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.EmployeeId ;;
  }

  dimension: age {
    type: number
    sql: ${TABLE}.Age ;;
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
