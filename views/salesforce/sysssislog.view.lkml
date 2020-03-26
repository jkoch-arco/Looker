view: sysssislog {
  sql_table_name: dbo.sysssislog ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: computer {
    type: string
    sql: ${TABLE}.computer ;;
  }

  dimension: databytes {
    type: string
    sql: ${TABLE}.databytes ;;
  }

  dimension: datacode {
    type: number
    sql: ${TABLE}.datacode ;;
  }

  dimension_group: endtime {
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
    sql: ${TABLE}.endtime ;;
  }

  dimension: event {
    type: string
    sql: ${TABLE}.event ;;
  }

  dimension: executionid {
    type: string
    sql: ${TABLE}.executionid ;;
  }

  dimension: message {
    type: string
    sql: ${TABLE}.message ;;
  }

  dimension: operator {
    type: string
    sql: ${TABLE}.operator ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: sourceid {
    type: string
    sql: ${TABLE}.sourceid ;;
  }

  dimension_group: starttime {
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
    sql: ${TABLE}.starttime ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
