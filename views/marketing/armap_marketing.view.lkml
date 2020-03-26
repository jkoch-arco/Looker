#Brought over from POC
view: armap_marketing {
  view_label: "Projects"
  #metadata on projects

  dimension: primary_key {
    hidden: yes
    primary_key: yes
    sql: CONCAT(${load_time},${job_number},${company_code});;
  }

  sql_table_name: dbo.ARMAP_Marketing ;;

  dimension: city {
    type: string
    sql: ${TABLE}.City ;;
  }

  dimension: client_name {
    type: string
    sql: ${TABLE}.Client_Name ;;
    action: {
      label: "Add Comment to Client Name"
      url: "https://hooks.zapier.com/hooks/catch/5505451/otyo5n1/"
      form_param: {
        name: "Client Name"
        type: string
        default: "{{ client_name._value }}"
      }
      form_param: {
        name: "Comment Added By"
        type: string
        default: "{{ _user_attributes['email'] }}"
      }
      form_param: {
        name: "Comments"
        type: string
        default: ""
      }
    }
  }

  dimension: company_code {
    hidden: yes
    type: string
    sql: ${TABLE}.Company_Code ;;
  }

  dimension: is_confidential {
    type: string
    sql: ${TABLE}.Confidential_Flag ;;
  }

  dimension: construct_type {
    type: string
    sql: ${TABLE}.Contruct_Type ;;
  }

  dimension: country_code {
    type: string
    sql: ${TABLE}.Country_Code ;;
  }

  dimension: job_category {
    type: string
    sql: ${TABLE}.Job_Category ;;
  }

  dimension: job_name {
    description: "Job name is the same as project name"
    type: string
    sql: ${TABLE}.Job_Name ;;
    link: {
      label: "Link out to PDF in Google Drive"
      icon_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQPIC2hswphSo5bgI7WREKOtt2B-ma1vWV4wI3pIDicOXR93ONR&s"
      url: "drive.google.com/{{ value }}"
    }
    link: {
      label: "Job Safety Report"
      icon_url: "http://www.looker.com/favicon.ico"
      url: "https://arcobi.looker.com/dashboards/3?Job%20Name={{ value }}"
    }
  }

  dimension: job_number {
    description: "Job number is the same as project number"
    type: string
    sql: ${TABLE}.Job_Number ;;
  }

  dimension: keywords {
    type: string
    sql: ${TABLE}.Keywords ;;
  }

  dimension: latitude {
    hidden: yes
    type: number
    sql: ${TABLE}.Latitude ;;
  }

  dimension_group: load {
    hidden: yes
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

  dimension: longitude {
    hidden: yes
    type: number
    sql: ${TABLE}.Longitude ;;
  }


  dimension: location {
    ## location dimension, uses lat and long to give a specific point on map
    type: location
    sql_latitude: ${latitude} ;;
    sql_longitude: ${longitude} ;;
  }

  dimension: metro_area {
    type: string
    sql: ${TABLE}.Metro_Area ;;
  }

  dimension: project_manager {
    type: string
    sql: ${TABLE}.Project_Manager ;;
    action: {
      label: "Email Project Manager"
      #dummy url
      url: "https://desolate-refuge-53336.herokuapp.com/posts"
      icon_url: "https://sendgrid.com/favicon.ico"
      param: {
        name: "some_auth_code"
        value: "abc123456"
      }
      form_param: {
        name: "Subject"
        required: yes
        default: "Check on Project Status"
      }
      form_param: {
        name: "Body"
        type: textarea
        required: yes
        default:
        "Dear {{ project_manager._value }},

        Just wanted to check on the status of this job # {{ job_number._value }}.
        I see that it's been an ongoing for a while.

        "
      }
    }
    required_fields: [project_manager,job_number]
  }

  dimension: state_code {
    map_layer_name: us_states
    type: string
    sql: ${TABLE}.State_Code ;;
    drill_fields: [zip,location]
  }

  dimension: street {
    type: string
    sql: ${TABLE}.Street ;;
  }

  dimension: tot_sq_ft {
    label: "Total Sqft in Project"
    type: number
    sql: ${TABLE}.TotSqFt ;;
  }

  dimension: year {
    type: string
    sql: case when ${TABLE}.YEAR  = '2109' then '2019' else ${TABLE}.YEAR end ;;
  }

  dimension: zip {
    drill_fields: [location]
    type: zipcode
    sql: ${TABLE}.Zip ;;
  }

  dimension_group: project_duration {
    type: duration
    sql_start: case when ${safety_trakr.job_start_raw} > '2017-01-01' then
      ${safety_trakr.job_start_raw} else null end;;
    sql_end: current_timestamp ;;
  }

  dimension: project_month_duration_tier {
    type: tier
    sql: ${months_project_duration} ;;
    tiers: [1,3,6]
    style: integer
  }

  measure: total_number_sqft {
    type: sum
    sql: ${tot_sq_ft} ;;
  }

  measure: maximum_sqft {
    type: max
    sql: ${tot_sq_ft} ;;
  }

  measure: minimum_sqft {
    type: min
    sql: ${tot_sq_ft} ;;
  }


  measure: average_sqft {
    value_format_name: decimal_2
    type: average
    sql: ${tot_sq_ft} ;;
    drill_fields: [metro_area, job_number, job_name, client_name, project_manager, job_category, construct_type, total_number_sqft]
  }

  measure: count {
    label: "Number of Projects"
    type: count
    drill_fields: [job_name, safety_trakr.job_start_date, client_name, project_manager,total_number_sqft]
  }
}
