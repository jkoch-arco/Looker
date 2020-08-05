view: l_self_inspections_questionnaire {
  derived_table: {
    # datagroup_trigger: daily_refresh
    # indexes: ["submission_id"]
    sql:
      SELECT
         procore.data_source as data_source
        ,procore.id as submission_id
        ,procore.question as question
        ,procore.score as score
      FROM ${l_procore_self_inspections_questionnaire.SQL_TABLE_NAME} as procore
      UNION
      SELECT
         fastfield.data_source as data_source
        ,fastfield.SubmissionId as submission_id
        ,fastfield.question as question
        ,fastfield.score as score
      FROM ${l_union_fastfield_self_inspection_questionnaire.SQL_TABLE_NAME} as fastfield
      ;;
  }

  dimension: primary_key {
    hidden: yes
    primary_key: yes
    type: string
    sql: CONCAT( ${data_source} || ${submission_id} || ${question}) ;;
  }

  dimension: data_source {
    hidden: yes
    type: string
    sql: ${TABLE}.data_source ;;
  }

  dimension: submission_id {
    hidden: yes
    type: string
    sql: ${TABLE}.submission_id ;;
  }

  dimension: question {
    type: string
    sql: ${TABLE}.question ;;
  }

  dimension: raw_score {
    type: number
    sql: CAST(${TABLE}.score as int) ;;
  }

  dimension: absolute_score {
    hidden: yes
    type: number
    sql: ABS(${raw_score}) ;;
  }

  dimension: score {
    type: string
    case: {
      when: {
        label: "Safe"
        sql:  ${question} = 'Questions scored as Safe' OR ${raw_score} = 1 ;;
      }
      when: {
        label: "Deficient"
        sql:  ${question} =  'Questions scored as Deficient' OR ${raw_score} = -1 ;;
      }
      when: {
        label: "Neutral"
        sql:  ${question} =  'Questions scored as Neutral' OR ${raw_score} = 0 ;;
      }
      when: {
        label: "Not Inspected"
        sql: ${question} = 'Questions scored as Not Inspected' ;;
      }
      else: "N/A"
    }
  }

  measure: number_of_scores {
    type: sum
    sql: ${absolute_score} ;;
  }

  measure: number_of_submissions {
    type: count_distinct
    sql: ${submission_id} ;;
  }

  measure: safe_scores {
    type: sum
    sql: ${absolute_score} ;;
    filters: [score: "Safe"]
  }

  measure: neutral_scores {
    type: sum
    sql: ${absolute_score} ;;
    filters: [score: "Neutral"]
  }

  measure: deficient_scores {
    type: sum
    sql: ${absolute_score} ;;
    filters: [score: "Deficient"]
  }

  measure: na_scores {
    label: "N/A Scores"
    type: sum
    sql: ${absolute_score} ;;
    filters: [score: "N/A"]
  }

  measure: not_inspected_scores {
    type: sum
    sql: ${absolute_score} ;;
    filters: [score: "Not Inspected"]
  }

}