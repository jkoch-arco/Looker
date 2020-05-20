view: l_opportunities_weighting {
  #Ensure anytime the logic in the salesforce explore is updated with how weighting is determined, the logic below will need to be updated
  derived_table: {
    sql:
      Select
        opportunity_id,
        nullif(company,'') as company,
        round(weighting,2) as weighting,
        UPPER(LEFT(ltrim(rtrim(replace(replace(company_ranking,'company',''),'_',''))),1))+LOWER(SUBSTRING(ltrim(rtrim(replace(replace(company_ranking,'company',''),'_',''))),2,LEN(ltrim(rtrim(replace(replace(company_ranking,'company',''),'_','')))))) as ranking
      FROM
      (
      SELECT
        opportunities.ID as opportunity_id,
        coalesce(nullif(ltrim(rtrim(opportunities.COMPANY__C)),''),'~UPDATE Company~')  AS primary_company,
        opportunities.JV_COMPANY__C  AS secondary_company,
        opportunities.Additional_JV_Company__c  AS tertiary_company,
        coalesce(nullif(opportunities.JV_SPLIT__C/100,0),1) AS primary_weighting,
        1 - (coalesce(nullif(opportunities.JV_SPLIT__C/100,0),1)) - (opportunities.Additional_JV_Percent__c/100) AS secondary_weighting,
        opportunities.Additional_JV_Percent__c/100 AS tertiary_weighting
      FROM dbo.opportunities  AS opportunities
      )
      as data
      UNPIVOT
         (company FOR company_ranking IN
            (Primary_company, Secondary_company, Tertiary_company)
      )AS unpvt1
      UNPIVOT
         (weighting FOR weighting_ranking IN
            (Primary_weighting, Secondary_weighting, Tertiary_weighting)
      )AS unpvt2
      WHERE replace(company_ranking,'company','')  = replace(weighting_ranking,'weighting','')
      and ltrim(rtrim(company)) <> '';;
  }

  dimension: pk {
    hidden: yes
    primary_key: yes
    sql: CONCAT(${opportunity_id},'||',${company_ranking}) ;;
  }

  dimension: opportunity_id {
    hidden: yes
    type: string
    sql: ${TABLE}.opportunity_id ;;
  }

  dimension: company {
    view_label: "Opportunities"
    group_label: "Company"
    description: "Listing of companies that are part of an opportunity"
    type: string
    sql: CASE WHEN ${TABLE}.company IS NULL THEN '~UPDATE Company~' ELSE ${TABLE}.company END;;
  }

  dimension: company_weighting {
    view_label: "Opportunities"
    group_label: "Company"
    description: "Weighting of how much the company has on an opportunity"
    type: number
    value_format_name: percent_2
    sql: ${TABLE}.weighting ;;
  }

  dimension: company_ranking {
    view_label: "Opportunities"
    group_label: "Company"
    description: "Identifies if the company is primary, secondary, or tertiary"
    type: string
    sql: ${TABLE}.ranking ;;
  }

  measure: percentage_of_contract_allocated {
    view_label: "Opportunities"
    group_label: "Validation"
    description: "Determines if an opportunity has been completely allocated. Value should be 100%"
    type: sum
    sql: ${company_weighting} ;;
    value_format_name: percent_2
  }

  measure: count_of_companies {
    hidden: yes
    type: count_distinct
    sql: ${company} ;;
    filters: {
      field: l_opportunities_weighting.company
      value: "-~UPDATE Company~"
    }
  }

  measure: max_company {
    label: "Company"
    group_label: "Other"
    type: string
    sql: max(${company}) ;;
  }

}
