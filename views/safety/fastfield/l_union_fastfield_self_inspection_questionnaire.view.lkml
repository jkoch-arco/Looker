view: l_union_fastfield_self_inspection_questionnaire {

  derived_table: {
    datagroup_trigger: daily_refresh
    indexes: ["SubmissionId"]
    sql:

    SELECT 'Fastfield' as data_source, 'Self Inspection Questionnaire Multi Story' as questionnaire_type, SubmissionId, score, question
    FROM ${l_fastfield_self_inspections_questionnaire_multi_story.SQL_TABLE_NAME}

    UNION

    SELECT 'Fastfield' as data_source, 'Self Inspection Questionnaire' as questionnaire_type, SubmissionId, score, question
    FROM ${l_fastfield_self_inspections_questionnaire.SQL_TABLE_NAME}

    ;;
  }

  dimension: primary_key {
    hidden: yes
    primary_key: yes
    type: string
    sql: CONCAT( ${data_source} || ${type} || ${submission_id} || ${question}) ;;
  }

  dimension: data_source {
    hidden: yes
    type: string
    sql: ${TABLE}.data_source ;;
  }

  dimension: submission_id {
    hidden: yes
    type: string
    sql: ${TABLE}.SubmissionId ;;
  }

  dimension: type {
    hidden: yes
    type: string
    sql: ${TABLE}.questionnaire_type ;;
  }

  dimension: question {
    type: string
    sql: ${TABLE}.question ;;
  }

  dimension: raw_score {
    type: number
    sql: CAST(${TABLE}.score as int) ;;
  }

  dimension: score {
    type: string
    case: {
      when: {
        label: "Safe"
        sql:  ${raw_score} = 1 ;;
      }
      when: {
        label: "Deficient"
        sql:  ${raw_score} =  -1 ;;
      }
      when: {
        label: "Neutral"
        sql:  ${raw_score} =  0 ;;
      }
      else: "N/A"
    }
  }

  measure: number_of_scores {
    type: count
  }

  measure: number_of_questions {
    type: count_distinct
    sql: ${question} ;;
  }

  measure: number_of_submissions {
    type: count_distinct
    sql: ${submission_id} ;;
  }

  measure: safe_scores {
    type: count
    filters: [score: "Safe"]
  }

  measure: neutral_scores {
    type: count
    filters: [score: "Neutral"]
  }

  measure: deficient_scores {
    type: count
    filters: [score: "Deficient"]
  }

  measure: na_scores {
    label: "N/A Scores"
    type: count
    filters: [score: "N/A"]
  }

}
