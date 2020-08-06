view: safety_trakr_companys {
  sql_table_name: safetytrakr.Companys ;;

  dimension: new_companyid {
    hidden: yes
    primary_key: yes
    type: string
    sql: ${TABLE}.new_companyid ;;
  }

  dimension: company_group_value {
    hidden: yes
    type: string
    sql: ${TABLE}.companyGroupValue ;;
  }

  dimension: company_name {
    label: "{{_view._name | capitalize}} Name"
    type: string
    sql: ${TABLE}.companyName ;;
  }

  dimension: company_number {
    hidden: yes
    type: string
    sql: ${TABLE}.companyNumber ;;
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

  dimension: full_company_name {
    label: "{{_view._name | capitalize}} Full Name"
    type: string
    sql: ${TABLE}.fullCompanyName ;;
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

  dimension: time_zone_rule_version_number {
    hidden: yes
    type: string
    sql: ${TABLE}.timeZoneRuleVersionNumber ;;
  }

  dimension: utc_conversion_time_zone_code {
    hidden: yes
    type: string
    sql: ${TABLE}.utcConversionTimeZoneCode ;;
  }

  measure: count_of_company {
    label: "Count of {{_view._name | capitalize}} Company"
    type: count
  }
}
