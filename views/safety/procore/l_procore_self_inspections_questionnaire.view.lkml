view: l_procore_self_inspections_questionnaire {

  derived_table: {
    sql:
    SELECT id, 'Procore' as data_source, score,
    CASE
      WHEN question = 'Deficient_Item_Count' THEN 'Questions scored as Deficient'
      WHEN question = 'Neutral_Item_Count' THEN 'Questions scored as Neutral'
      WHEN question = 'Yes_Item_Count' THEN 'Questions scored as Safe'
      WHEN question = 'NA_Item_Count' THEN 'Questions scored as N/A'
      WHEN question = 'Not_Inspected_Item_Count' THEN 'Questions scored as Not Inspected'
      ELSE question
    END as question
    FROM ${procore_self_inspections.SQL_TABLE_NAME} as data
      UNPIVOT
        (score FOR question in (
        [Deficient_Item_Count],
        [Neutral_Item_Count],
        [Yes_Item_Count],
        [NA_Item_Count],
        [Not_Inspected_Item_Count]
        )
      ) as questionUnpivot;;
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
    sql: ${TABLE}.id ;;
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
        sql:  ${question} = 'Questions scored as Safe' ;;
      }
      when: {
        label: "Deficient"
        sql:  ${question} =  'Questions scored as Deficient' ;;
      }
      when: {
        label: "Neutral"
        sql:  ${question} =  'Questions scored as Neutral' ;;
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
    sql: ${raw_score} ;;
  }

  measure: number_of_submissions {
    type: count_distinct
    sql: ${submission_id} ;;
  }

  measure: safe_scores {
    type: sum
    sql: ${raw_score} ;;
    filters: [score: "Safe"]
  }

  measure: neutral_scores {
    type: sum
    sql: ${raw_score} ;;
    filters: [score: "Neutral"]
  }

  measure: deficient_scores {
    type: sum
    sql: ${raw_score} ;;
    filters: [score: "Deficient"]
  }

  measure: na_scores {
    label: "N/A Scores"
    type: sum
    sql: ${raw_score} ;;
    filters: [score: "N/A"]
  }

  measure: not_inspected_scores {
    type: sum
    sql: ${raw_score} ;;
    filters: [score: "Not Inspected"]
  }

}
