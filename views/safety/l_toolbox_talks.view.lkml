view: l_toolbox_talks {

  derived_table: {
    datagroup_trigger: daily_refresh
    indexes: ["project_number"]
    sql:
    SELECT
      id as submission_id,
      'Procore' as data_source,
      ProjectID,
      COALESCE(UPPER(TRIM(Project_Number)),'~UNK~') as project_number,
      UPPER(TRIM(Project_Name)) as Project_Name,
      Date_Updated,
      Description,
      Template_Name,
      Location_Name,
      Created_by_Email,
      Created_by_Name
    FROM ${procore_toolbox_talks.SQL_TABLE_NAME} as procore
    UNION
    SELECT
      SubmissionId as submission_id,
      'Fastfield' as data_source,
      NULL as ProjectID,
      COALESCE(UPPER(TRIM(JobNumber)),'~UNK~') as project_number,
      UPPER(TRIM(JobName)) as Project_Name,
      SubmittedOn as Date_Updated,
      NULL as Description,
      ChooseaToolboxTalk as Template_Name,
      NULL as Location_Name,
      SubmittedBy as Created_by_Email,
      Superintendent as Created_by_Name
    FROM ${fastfield_toolbox_talks.SQL_TABLE_NAME} as fastfield
    ;;
  }

  dimension: primary_key {
    primary_key: yes
    hidden: yes
    type: string
    sql: ${submission_id}+${data_source} ;;
  }

  dimension: submission_id {
    type: string
    sql: ${TABLE}.submission_id ;;
  }

  dimension: data_source {
    type: string
    sql: ${TABLE}.data_source ;;
  }

  dimension: project_id {
    type: string
    sql: ${TABLE}.ProjectID ;;
  }

  dimension: project_number {
    type: string
    sql: ${TABLE}.project_number ;;
  }

  dimension: project_name {
    type: string
    sql: ${TABLE}.Project_Name ;;
  }

  dimension_group: updated {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.Date_Updated ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }

  dimension: template_name {
    label: "Toolbox Talk Session"
    description: "Covers a specific topic for people to attend"
    type: string
    sql: ${TABLE}.Template_Name ;;
  }

  dimension: location_name {
    type: string
    sql: ${TABLE}.Location_Name ;;
  }

  dimension: created_by_email {
    type: string
    sql: ${TABLE}.Created_by_Email ;;
  }

  dimension: created_by_name {
    type: string
    sql: ${TABLE}.Created_by_Name ;;
  }

  measure: count_of_toolbox_talks {
    type: count
    drill_fields: [toolbox_details*]
  }

  set: toolbox_details {
    fields: [project_name, template_name,created_by_name,created_by_email, updated_date]
  }
}
