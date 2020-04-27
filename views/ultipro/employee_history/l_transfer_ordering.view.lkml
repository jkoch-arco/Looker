#Adds ordering to the employment table for the historical order (oldest (1) to newest - company transfer ordering) and what is the newest record (1) - most recent record
view: l_transfer_ordering {
  derived_table: {
    datagroup_trigger: daily
    indexes: ["employeeid"]
    sql: SELECT
          employeeid,
          OrgLevel3 as companycode,
          employment.LastHire as originalhire,
          terminationdate,
          statusstartdate,
          terminationreasoncode,
          Row_number() OVER(partition BY employeeid ORDER BY statusstartdate ASC) AS company_transfer_ordering,
          Row_number() OVER(partition BY employeeid ORDER BY statusstartdate DESC) AS most_recent_record
        FROM ARCO_BIDW_PII.ultipro.employment AS employment
        WHERE employment.load_ts = (SELECT Max(load_ts) FROM ARCO_BIDW_PII.ultipro.employment)
          --AND employeeid = 'BRE06P00P0K0'
          ;;
  }
}
