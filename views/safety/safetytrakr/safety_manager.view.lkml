view: safety_manager {
  sql_table_name: safetytrakr.SafteyManager ;;

  dimension: new_safteymanagerid {
    hidden: yes
    primary_key: yes
    type: string
    sql: ${TABLE}.new_safteymanagerid ;;
  }

  dimension: created_by {
    hidden: yes
    type: string
    sql: ${TABLE}.createdBy ;;
  }

  dimension: created_by_type {
    hidden: yes
    type: string
    sql: ${TABLE}.createdByType ;;
  }

  dimension: created_on {
    hidden: yes
    type: string
    sql: ${TABLE}.createdOn ;;
  }

  dimension: description {
    hidden: yes
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: import_sequence_number {
    hidden: yes
    type: string
    sql: ${TABLE}.importSequenceNumber ;;
  }

  dimension: modified_by {
    hidden: yes
    type: string
    sql: ${TABLE}.modifiedBy ;;
  }

  dimension: modified_by_type {
    hidden: yes
    type: string
    sql: ${TABLE}.modifiedByType ;;
  }

  dimension: modified_on {
    hidden: yes
    type: string
    sql: ${TABLE}.modifiedOn ;;
  }

  dimension: owner {
    hidden: yes
    type: string
    sql: ${TABLE}.owner ;;
  }

  dimension: owner_type {
    hidden: yes
    type: string
    sql: ${TABLE}.ownerType ;;
  }

  dimension: phone_number {
    type: string
    sql: ${TABLE}.phoneNumber ;;
  }

  dimension: primary_id {
    hidden: yes
    type: string
    sql: ${TABLE}.primaryId ;;
  }

  dimension: record_created_on {
    hidden: yes
    type: string
    sql: ${TABLE}.recordCreatedOn ;;
  }

  dimension: safety_manager_name {
    type: string
    sql: ${TABLE}.safetyManagerName ;;
  }

  dimension: status_reason_value {
    hidden: yes
    type: string
    sql: ${TABLE}.statusReasonValue ;;
  }

  dimension: status_value {
    hidden: yes
    type: string
    sql: ${TABLE}.statusValue ;;
  }

  dimension: timezone_rule_version_number {
    hidden: yes
    type: string
    sql: ${TABLE}.timezoneRuleVersionNumber ;;
  }

  dimension: utc_conversion_time_zone_code {
    hidden: yes
    type: string
    sql: ${TABLE}.utcConversionTimeZoneCode ;;
  }

  measure: count_of_safety_managers {
    type: count
  }
}
