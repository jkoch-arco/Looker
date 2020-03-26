view: sfdcactivities {
  sql_table_name: dbo.sfdcactivities ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.Id ;;
  }

  dimension_group: activity {
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
    sql: ${TABLE}.ActivityDate ;;
  }

  dimension: call_type {
    type: string
    sql: ${TABLE}.CallType ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }

  dimension: owner_id {
    type: string
    sql: ${TABLE}.OwnerId ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.Status ;;
  }

  dimension: subject {
    type: string
    sql: ${TABLE}.Subject ;;
  }

  dimension: task_subtype {
    type: string
    sql: ${TABLE}.TaskSubtype ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.Type ;;
  }

  dimension: what_id {
    type: string
    sql: ${TABLE}.WhatId ;;
  }

  dimension: who_id {
    type: string
    sql: ${TABLE}.WhoId ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
