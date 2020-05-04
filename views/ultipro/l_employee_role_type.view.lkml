view: l_employee_role_type {

  derived_table: {
    datagroup_trigger: daily
    sql_create:
      WITH
      employeeids as (
        Select employeeid, supervisorid
        FROM
        (SELECT Row_number() OVER(partition BY employeeid ORDER BY statusstartdate DESC, terminationdate ASC) as most_recent_employee_record, Employment.* FROM ultipro.Employment WHERE LOAD_TS = (Select MAX(LOAD_TS) FROM ultipro.Employment)) as data
        WHERE most_recent_employee_record = 1
      ),
      supervisorids as (
        Select supervisorid
        FROM
        (SELECT Row_number() OVER(partition BY employeeid ORDER BY statusstartdate DESC, terminationdate ASC) as most_recent_employee_record, Employment.* FROM ultipro.Employment WHERE LOAD_TS = (Select MAX(LOAD_TS) FROM ultipro.Employment)) as data
        WHERE most_recent_employee_record = 1
        GROUP BY supervisorid
      ),
      ic_employeeids as (
        Select employeeid
        FROM employeeids
        WHERE employeeid not in (Select supervisorid FROM supervisorids where supervisorid is not null)
      ),
      listofids as (
        Select employeeid as employee_id, 'IC' as role_type
        from ic_employeeids
        UNION
        Select supervisorid, 'Manager' as role_type
        FROM supervisorids
      )
      Select employee_id, role_type
      INTO ${SQL_TABLE_NAME}
      FROM listofids
    ;;
  }

  dimension: employee_id {
    hidden: yes
    primary_key: yes
    type: string
    sql: ${TABLE}.employee_id ;;
  }
  dimension: role_type {
    group_label: "Classifications"
    type: string
    description: "Determines if an employee is a Manager or IC"
    sql: ${TABLE}.role_type ;;
  }

}
