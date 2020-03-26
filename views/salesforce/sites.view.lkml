view: sites {
  sql_table_name: dbo.sites ;;

  dimension: budget_risk_level__c {
    type: string
    sql: ${TABLE}.BUDGET_RISK_LEVEL__C ;;
  }

  dimension_group: entitlements_approval_date__c {
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
    sql: ${TABLE}.ENTITLEMENTS_APPROVAL_DATE__C ;;
  }

  dimension: gmax__c {
    type: number
    sql: ${TABLE}.GMAX__C ;;
  }

  dimension_group: groundbreak_date__c {
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
    sql: ${TABLE}.GROUNDBREAK_DATE__C ;;
  }

  dimension_group: latest_date_of_budget__c {
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
    sql: ${TABLE}.LATEST_DATE_OF_BUDGET__C ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.NAME ;;
  }

  dimension_group: opening_date__c {
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
    sql: ${TABLE}.OPENING_DATE__C ;;
  }

  dimension_group: permitting_approval_date__c {
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
    sql: ${TABLE}.PERMITTING_APPROVAL_DATE__C ;;
  }

  dimension: pom_1__c {
    type: number
    sql: ${TABLE}.POM_1__C ;;
  }

  dimension: pom_2__c {
    type: number
    sql: ${TABLE}.POM_2__C ;;
  }

  dimension: prototype__c {
    type: string
    sql: ${TABLE}.PROTOTYPE__C ;;
  }

  dimension: recordtypeid {
    type: string
    sql: ${TABLE}.RECORDTYPEID ;;
  }

  dimension_group: rezoning_approval_date__c {
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
    sql: ${TABLE}.REZONING_APPROVAL_DATE__C ;;
  }

  dimension: schedule_risk_level__c {
    type: string
    sql: ${TABLE}.SCHEDULE_RISK_LEVEL__C ;;
  }

  dimension_group: substantial_completion_date__c {
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
    sql: ${TABLE}.SUBSTANTIAL_COMPLETION_DATE__C ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
