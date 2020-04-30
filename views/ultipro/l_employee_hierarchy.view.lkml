view: l_employee_hierarchy {
  derived_table: {
    datagroup_trigger: daily
    sql_create:
    WITH
      employment as (
        (SELECT Row_number() OVER(partition BY employeeid ORDER BY statusstartdate DESC, terminationdate ASC) as most_recent_employee_record, Employment.* FROM ultipro.Employment WHERE LOAD_TS = (Select MAX(LOAD_TS) FROM ultipro.Employment))
      ),
      cte_org AS (
        SELECT
          employment.EmployeeId,
          employment.SupervisorId,
          1 as level
        FROM employment
        WHERE SupervisorId IS NULL
        UNION ALL
        SELECT
          e.EmployeeId,
          e.SupervisorId,
          level + 1
        FROM
         employment as e INNER JOIN cte_org o ON o.EmployeeId = e.SupervisorId
        WHERE level < 8
      )
      SELECT EmployeeId, SupervisorId, level as top_down_level, ABS(level-1-8) as bottom_up_level
      INTO ${SQL_TABLE_NAME}
      FROM cte_org
    ;;
    }
  dimension: employee_id {
    type: string
    sql: ${TABLE}.EmployeeId ;;
  }

  dimension: supervisor_id {
    type: string
    sql: ${TABLE}.SupervisorId ;;
  }

  dimension: top_down_level {
    type: number
    sql: ${TABLE}.top_down_level ;;
  }

  dimension: bottom_up_level {
    type: number
    sql: ${TABLE}.bottom_up_level ;;
  }

}
