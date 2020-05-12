# view: l_summary_turnover_analysis {
#   derived_table: {
#     explore_source: employment {
#       column: calendar_month { field: l_employee_history.calendar_month }
#       column: turnover { field: l_employee_history.turnover }
#       filters: {
#         field: l_employee_history.calendar_month
#         value: "4 years"
#       }
#
#       bind_filters: {
#         from_field: employment.global_company_code
#         to_field: l_employee_history.company_code
#       }
#       bind_filters: {
#         from_field: employment.department_description
#         to_field: employment.department_description
#       }
#     }
#   }
#
#   dimension: pk {
#     hidden: yes
#     primary_key: yes
#     sql: ${TABLE}.calendar_month ;;
#   }
#
#   dimension_group: calendar {
#     type: time
#     timeframes: [month,quarter,year]
#     label: "Employment History Calendar Month"
#     datatype: date
#     sql: ${TABLE}.calendar_month ;;
#   }
#
#   dimension: turnover {
#     type: number
#     sql: ${TABLE}.turnover ;;
#   }
#
#   measure: turnover_rate {
#     type: sum
#     sql: ${turnover} ;;
#     value_format_name: percent_1
#   }
#
# }
