view: safety_trakr_jobs {
  sql_table_name: safetytrakr.jobs ;;

  dimension: job_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.new_jobsid ;;
  }

  dimension: cr341_company_name {
    type: string
    sql: ${TABLE}.cr341_company_name ;;
  }

  dimension_group: cr341_job_end {
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
    sql: ${TABLE}.cr341_jobenddate ;;
  }

  dimension: import_sequence_number {
    hidden: yes
    type: string
    sql: ${TABLE}.importsequencenumber ;;
  }

  dimension: company_id {
    type: string
    sql: ${TABLE}.new_companyid ;;
  }

  dimension: company_id_0 {
    hidden: yes
    type: string
    sql: ${TABLE}.new_companyid0 ;;
  }

  dimension: company_name {
    type: string
    sql: ${TABLE}.new_companyname ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.new_description ;;
  }

  dimension: job_address {
    type: string
    sql: ${TABLE}.new_jobaddress ;;
  }

  dimension: job_name {
    type: string
    sql: ${TABLE}.new_jobname ;;
  }

  dimension: job_number {
    type: string
    sql: ${TABLE}.new_jobnumber ;;
  }

  dimension_group: job_start {
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
    sql: ${TABLE}.new_jobstartdate ;;
  }

  dimension: jv_company_id {
    type: string
    sql: ${TABLE}.new_jv_companyid ;;
  }

  dimension: primary_id {
    type: string
    sql: ${TABLE}.new_primaryid ;;
  }

  dimension: project_manager_name {
    type: string
    sql: ${TABLE}.new_projectmanagername ;;
  }

  dimension: superintendent_name {
    type: string
    sql: ${TABLE}.new_superintendentname ;;
  }

  dimension: owning_business_unit {
    type: string
    sql: ${TABLE}.owningbusinessunit ;;
  }

  dimension: state_code {
    type: string
    sql: ${TABLE}.statecode ;;
  }

  dimension: status_code {
    type: string
    sql: ${TABLE}.statuscode ;;
  }

  dimension: timezoneruleversionnumber {
    hidden: yes
    type: number
    sql: ${TABLE}.timezoneruleversionnumber ;;
  }

  dimension: utcconversiontimezonecode {
    hidden: yes
    type: string
    sql: ${TABLE}.utcconversiontimezonecode ;;
  }

  dimension: version_number {
    type: number
    sql: ${TABLE}.versionnumber ;;
  }

  measure: count {
    type: count
  }

}
