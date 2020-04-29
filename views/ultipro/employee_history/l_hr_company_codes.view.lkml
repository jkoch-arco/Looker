#creates a unique list of company codes to be used against the calendar table in l_calendar_month_by_company
view: l_hr_company_codes {
  derived_table: {
    explore_source: employment {
      column: global_company_code {}
    }
  }
  dimension: global_company_code {}
}
