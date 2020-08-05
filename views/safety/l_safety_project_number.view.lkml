view: l_self_inspections_project_number {
  derived_table: {
    explore_source: l_self_inspections {
      column: project_number {}
    }
  }
  dimension: project_number {}
}

view: l_toolbox_talks_project_number {
  derived_table: {
    explore_source: l_toolbox_talks {
      column: project_number {}
    }
  }
  dimension: project_number {}
}

view: l_safety_project_number {
  derived_table: {
    datagroup_trigger: daily_refresh
    indexes: ["project_number"]
    sql:
    SELECT project_number
    FROM ${l_self_inspections_project_number.SQL_TABLE_NAME} as self_inspections
    UNION
    SELECT project_number
    FROM ${l_toolbox_talks_project_number.SQL_TABLE_NAME} as toolbox_talks
    ;;
  }
  dimension: project_number {
    primary_key: yes
  }
}
