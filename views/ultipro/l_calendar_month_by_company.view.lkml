# If necessary, uncomment the line below to include explore_source.
# include: "hr.model.lkml"

view: l_calendar_month_by_company {
  derived_table: {
    datagroup_trigger: daily
    indexes: ["date_month"]
    explore_source: calendar {
      column: date_month {}
      column: company_code { field: company.company_number_padded }
      derived_column: calendar_month {
        sql: format( date_month , 'yyyyMM' ) ;;
      }
      filters: [calendar.date_month: "120 months"]
    }
  }
  dimension: date_month {
    type: date_month
  }
  dimension: company_code {}
}
