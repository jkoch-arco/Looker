view: l_transfer_ordering_1 {
  derived_table: {
    datagroup_trigger: daily
    indexes: ["employeeid"]
    sql: SELECT
          employeeid,
          companycode,
          originalhire,
          terminationdate,
          statusstartdate,
          terminationreasoncode,
          Row_number() OVER(partition BY employeeid ORDER BY statusstartdate ASC) AS company_transfer_ordering,
          Row_number() OVER(partition BY employeeid ORDER BY statusstartdate DESC) AS most_recent_record
        FROM ARCO_BIDW_PII.ultipro.employment AS employment
        WHERE employment.load_ts = (SELECT Max(load_ts) FROM ARCO_BIDW_PII.ultipro.employment)
          AND 1=1
          --AND employeeid = 'BRE06P00P0K0'
          ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: employeeid {
    type: string
    sql: ${TABLE}.employeeid ;;
  }

  dimension: companycode {
    type: string
    sql: ${TABLE}.companycode ;;
  }

  dimension: originalhire {
    type: date
    sql: ${TABLE}.originalhire ;;
  }

  dimension: terminationdate {
    type: date
    sql: ${TABLE}.terminationdate ;;
  }

  dimension: statusstartdate {
    type: date
    sql: ${TABLE}.statusstartdate ;;
  }

  dimension: terminationreasoncode {
    type: string
    sql: ${TABLE}.terminationreasoncode ;;
  }

  dimension: company_transfer_ordering {
    type: number
    sql: ${TABLE}.company_transfer_ordering ;;
  }

  dimension: most_recent_record {
    type: number
    sql: ${TABLE}.most_recent_record ;;
  }

  set: detail {
    fields: [
      employeeid,
      companycode,
      originalhire,
      terminationdate,
      statusstartdate,
      terminationreasoncode,
      company_transfer_ordering,
      most_recent_record
    ]
  }
}
