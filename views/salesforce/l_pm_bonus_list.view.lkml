view: l_pm_bonus_list {
  view_label: "Opportunities"
  derived_table: {
    sql: SELECT ID as opportunity_id, value as pm_list, PM_Bonus_List__c as original_pm_list
      FROM  dbo.opportunities  AS opportunities
      Cross Apply (
                      Select Seq   = Row_Number() over (Order By (Select null))
                            ,Value = v.value('(./text())[1]', 'varchar(max)')
                       From  (values (convert(xml,'<x>' + replace(PM_Bonus_List__c,';','</x><x>')+'</x>'))) x(n)
                       Cross Apply n.nodes('x') node(v)
                    ) B
      GROUP BY ID, value, PM_Bonus_List__c;;
  }

  #Articles covering how this approach works
  #this is an alternative approach to STRING_SPLIT as the compability mode, see support article
  #Reference Article: https://stackoverflow.com/questions/51090031/alternative-for-string-split-in-sql-server
  #Support Article: https://docs.microsoft.com/en-us/sql/t-sql/functions/string-split-transact-sql?view=sql-server-ver15

  dimension: pk {
    hidden: yes
    primary_key: yes
    sql: ${opportunity_id} || ${pm_bonus} ;;
  }

  dimension: opportunity_id {
    hidden: yes
    type: string
    sql: ${TABLE}.opportunity_id ;;
  }

  dimension: pm_bonus {
    group_label: "Other"
    type: string
    sql: ${TABLE}.pm_list ;;
  }

  dimension: original_pm_list {
    hidden: yes
    type: string
    sql: ${TABLE}.original_pm_list ;;
  }

}
