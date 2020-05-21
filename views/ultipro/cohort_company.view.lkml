view: cohort_company {
  derived_table: {
    datagroup_trigger:daily
    create_process: {
      sql_step:
    CREATE TABLE ${SQL_TABLE_NAME} (
    [cohort_company_code] NVARCHAR(4),
    [cohort_company_short_name] NVARCHAR(10),
    [cohort_company_long_name] NVARCHAR(50)
    );;
      sql_step:
    INSERT INTO ${SQL_TABLE_NAME} VALUES
    ('001','ABS','ARCO Business Services'),
    ('002','ACC','ARCO Construction Company'),
    ('003','ADB','ARCO Design/Build'),
    ('004','ADBI','ARCO Design/Build Industrial'),
    ('005','ANC','ARCO National Construction Co.'),
    ('006','AMCC','ARCO/Murray Construction Co.'),
    ('007','AMNC','ARCO/Murray National Construction'),
    ('008','EV','Echo Valley Ranch')
      ;;
    }
  }

  dimension: cohort_company_code {
    hidden: yes
    primary_key: yes
    type: string
    sql: ${TABLE}.cohort_company_code ;;
  }

  dimension: cohort_company_short_name {
    group_label: "Organization"
    type: string
    sql: ${TABLE}.cohort_company_short_name ;;
  }

  dimension: cohort_company_long_name {
    group_label: "Organization"
    type: string
    sql: ${TABLE}.cohort_company_long_name ;;
  }

}
