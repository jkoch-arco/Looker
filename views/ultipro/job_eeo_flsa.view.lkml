view: job_eeo_flsa {
  sql_table_name: ARCO_BIDW_PII.ultipro.Job_EEO_FLSA ;;

  dimension: job_code {
    primary_key: yes
    type: string
    sql: ${TABLE}.JobCode ;;
  }

  dimension: eeocategory {
    type: string
    sql: ${TABLE}.EEOCategory ;;
  }

  dimension: eeocode {
    type: string
    sql: ${TABLE}.EEOCode ;;
  }

  dimension: flsatype {
    type: string
    sql: ${TABLE}.FLSAType ;;
  }

  dimension: flsatype_code {
    type: string
    sql: ${TABLE}.FLSATypeCode ;;
  }

  dimension: job_desc {
    type: string
    sql: ${TABLE}.JobDesc ;;
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
