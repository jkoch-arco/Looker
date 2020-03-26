view: users {
  sql_table_name: dbo.users ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.Id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
