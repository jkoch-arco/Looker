view: contacts {
  sql_table_name: dbo.contacts ;;

  dimension: id {
    hidden: yes
    primary_key: yes
    type: string
    sql: ${TABLE}.Id ;;
  }

  dimension: account_id {
    hidden:  yes
    type: string
    # hidden: yes
    sql: ${TABLE}.AccountId ;;
  }

  dimension: assigned_to {
    type: string
    sql: ${TABLE}.Assigned_to__c ;;
  }

  dimension: bio {
    type: string
    sql: ${TABLE}.Bio__c ;;
  }

  dimension: calendar_list {
    type: string
    sql: ${TABLE}.Calendar_List__c ;;
  }

  dimension: children {
    type: string
    sql: ${TABLE}.Children__c ;;
  }

  dimension: christmas_gift {
    type: string
    sql: ${TABLE}.Christmas_Gift__c ;;
  }

  dimension: client_rating {
    type: string
    sql: ${TABLE}.Client_Rating__c ;;
  }

  dimension: client_type {
    type: string
    sql: ${TABLE}.Client_Type__c ;;
  }

  dimension: created_by_id {
    type: string
    sql: ${TABLE}.CreatedById ;;
  }

  dimension_group: created {
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
    sql: ${TABLE}.CreatedDate ;;
  }

  dimension: department {
    type: string
    sql: ${TABLE}.Department ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.Email ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.FirstName ;;
  }

  dimension_group: last_activity {
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
    sql: ${TABLE}.LastActivityDate ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.LastName ;;
  }

  dimension: lead_source {
    type: string
    sql: ${TABLE}.LeadSource ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: newsletter__c {
    type: string
    sql: ${TABLE}.Newsletter__c ;;
  }

  dimension: owner_id {
    type: string
    sql: ${TABLE}.OwnerId ;;
  }

  dimension: phone {
    type: string
    sql: ${TABLE}.Phone ;;
  }

  dimension: reports_to_id {
    type: string
    sql: ${TABLE}.ReportsToId ;;
  }

  dimension: spouse__c {
    type: string
    sql: ${TABLE}.Spouse__c ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.Title ;;
  }

  dimension: top_10 {
    type: string
    sql: ${TABLE}.Top_10__c ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      first_name,
      last_name,
      name,
      accounts.id,
      accounts.name
    ]
  }
}
