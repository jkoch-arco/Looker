view: calendar {
  sql_table_name: arco.Calendar ;;

  dimension_group: date {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Date ;;
  }

  dimension: day {
    type: number
    sql: ${TABLE}.Day ;;
  }

  dimension: day_of_year {
    type: number
    sql: ${TABLE}.DayOfYear ;;
  }

  dimension: day_suffix {
    type: string
    sql: ${TABLE}.DaySuffix ;;
  }

  dimension: dowin_month {
    type: number
    sql: ${TABLE}.DOWInMonth ;;
  }

  dimension_group: first_day_of_month {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.FirstDayOfMonth ;;
  }

  dimension_group: first_day_of_next_month {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.FirstDayOfNextMonth ;;
  }

  dimension_group: first_day_of_next_year {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.FirstDayOfNextYear ;;
  }

  dimension_group: first_day_of_quarter {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.FirstDayOfQuarter ;;
  }

  dimension_group: first_day_of_year {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.FirstDayOfYear ;;
  }

  dimension: holiday_text {
    type: string
    sql: ${TABLE}.HolidayText ;;
  }

  dimension: is_holiday {
    type: string
    sql: ${TABLE}.IsHoliday ;;
  }

  dimension: is_weekend {
    type: string
    sql: ${TABLE}.IsWeekend ;;
  }

  dimension: isoweek_of_year {
    type: number
    sql: ${TABLE}.ISOWeekOfYear ;;
  }

  dimension_group: last_day_of_month {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.LastDayOfMonth ;;
  }

  dimension_group: last_day_of_quarter {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.LastDayOfQuarter ;;
  }

  dimension_group: last_day_of_year {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.LastDayOfYear ;;
  }

  dimension: mmyyyy {
    type: string
    sql: ${TABLE}.MMYYYY ;;
  }

  dimension: month {
    type: number
    sql: ${TABLE}.Month ;;
  }

  dimension: month_name {
    type: string
    sql: ${TABLE}.MonthName ;;
  }

  dimension: month_year {
    type: string
    sql: ${TABLE}.MonthYear ;;
  }

  dimension: quarter {
    type: number
    sql: ${TABLE}.Quarter ;;
  }

  dimension: quarter_name {
    type: string
    sql: ${TABLE}.QuarterName ;;
  }

  dimension: week_day_name {
    type: string
    sql: ${TABLE}.WeekDayName ;;
  }

  dimension: week_of_month {
    type: number
    sql: ${TABLE}.WeekOfMonth ;;
  }

  dimension: week_of_year {
    type: number
    sql: ${TABLE}.WeekOfYear ;;
  }

  dimension: weekday {
    type: number
    sql: ${TABLE}.Weekday ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}.Year ;;
  }

  measure: count {
    type: count
    drill_fields: [week_day_name, month_name, quarter_name]
  }
}
