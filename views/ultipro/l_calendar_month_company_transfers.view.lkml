view: l_calendar_month_company_transfers {

  derived_table: {
    datagroup_trigger: daily
    indexes: ["employeeid"]
    sql:
    Select calendar_dates.*, l_company_transfers.*
    FROM ${l_calendar_month_by_company.SQL_TABLE_NAME} AS calendar_dates
      LEFT OUTER JOIN ${l_company_transfers.SQL_TABLE_NAME} AS l_company_transfers
        ON calendar_dates.calendar_month >= Format(l_company_transfers.companystartdate, 'yyyyMM')
          AND calendar_dates.calendar_month <= COALESCE(Format(l_company_transfers.companyenddate, 'yyyyMM'),Format(Getdate(), 'yyyyMM'))
          AND calendar_dates.company_code = l_company_transfers.companycode
          ;;

  }

  }
