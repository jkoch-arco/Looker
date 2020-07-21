view: fastfield_covid19_job_roster {
  sql_table_name: dbo.Fastfield_Covid19_Job_Roster ;;

  dimension: company_name {
    type: string
    sql: ${TABLE}.Company_Name ;;
  }

  dimension: employee_contact_number {
    type: string
    sql: ${TABLE}.Employee_Contact_Number ;;
  }

  dimension: employee_email {
    type: string
    sql: ${TABLE}.Employee_Email ;;
  }

  dimension: employee_full_name {
    type: string
    sql: ${TABLE}.Employee_Full_Name ;;
  }

  dimension: employee_role {
    type: string
    sql: ${TABLE}.Employee_Role ;;
  }

  dimension: job_number {
    type: string
    sql: ${TABLE}.Job_Number ;;
  }

  dimension_group: load_ts {
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

  dimension: visit_date {
    type: string
    sql: ${TABLE}.Visit_Date ;;
  }

  measure: count {
    type: count
    drill_fields: [company_name, employee_full_name]
  }
}
