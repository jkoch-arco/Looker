view: sysdiagrams {
  sql_table_name: dbo.sysdiagrams ;;

  dimension: definition {
    type: string
    sql: ${TABLE}.definition ;;
  }

  dimension: diagram_id {
    type: number
    sql: ${TABLE}.diagram_id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: principal_id {
    type: number
    sql: ${TABLE}.principal_id ;;
  }

  dimension: version {
    type: number
    sql: ${TABLE}.version ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
