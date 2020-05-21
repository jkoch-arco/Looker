#creates a unique list of company codes
#1) Used against the calendar table in l_calendar_month_by_company to assist in generating L_employee_history
#2) Used in l_mdm_hr_company_codes to help add company names for those not availble in the reference table
view: l_hr_company_codes {
  derived_table: {
    explore_source: employment {
      column: global_company_code {}
    }
  }
  dimension: global_company_code {}
}
