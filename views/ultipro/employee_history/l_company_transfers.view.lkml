#Creates a table aligning when an employee transferred in and out of a company within ARCO
view: l_company_transfers {
  derived_table: {
    datagroup_trigger: daily
    indexes: ["employeeid"]
    sql:
    SELECT
      transfer_ordering.employeeid,
      transfer_ordering.companycode,
      transfer_ordering.department_description,
      transfer_ordering.hire,
      CASE WHEN transfer_ordering.company_transfer_ordering = 1 THEN transfer_ordering.hire ELSE previous_company.terminationdate END AS CompanyStartDate,
      transfer_ordering.terminationdate AS CompanyEndDate
    FROM ${l_transfer_ordering.SQL_TABLE_NAME} AS transfer_ordering
    LEFT OUTER JOIN ${l_transfer_ordering.SQL_TABLE_NAME} AS previous_company
      ON transfer_ordering.company_transfer_ordering = previous_company.company_transfer_ordering + 1
      and transfer_ordering.employeeid = previous_company.employeeid
    ;;
  }
}
