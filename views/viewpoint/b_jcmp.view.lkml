view: b_jcmp {
  view_label: "Project Manager"

  sql_table_name: viewpoint.bJCMP ;;

  dimension: key_id {
    hidden: yes
    primary_key: yes
    type: number
    sql: ${TABLE}.KeyID ;;
  }

  dimension: jcco {
    hidden: yes
    type: number
    sql: ${TABLE}.JCCo ;;
  }

  dimension: project_mgr {
    hidden: yes
    type: number
    sql: ${TABLE}.ProjectMgr ;;
  }

  dimension: project_manager {
    type: string
    sql: coalesce(${TABLE}.Name,'Unknown') ;;
  }

  dimension: phone {
    hidden: yes
    type: string
    sql: ${TABLE}.Phone ;;
  }

  dimension: fax {
    hidden: yes
    type: string
    sql: ${TABLE}.FAX ;;
  }

  dimension: mobile_phone {
    hidden: yes
    type: string
    sql: ${TABLE}.MobilePhone ;;
  }

  dimension: pager {
    hidden: yes
    type: string
    sql: ${TABLE}.Pager ;;
  }

  dimension: internet {
    hidden: yes
    type: string
    sql: ${TABLE}.Internet ;;
  }

  dimension: email {
    hidden: yes
    type: string
    sql: ${TABLE}.Email ;;
  }

  dimension: unique_attch_id {
    hidden: yes
    type: string
    sql: ${TABLE}.UniqueAttchID ;;
  }

  dimension: ud_ssrsexclude_pmprojects {
    hidden: yes
    type: string
    sql: ${TABLE}.udSSRSExcludePMProjects ;;
  }

  dimension: ud_active_yn {
    hidden: yes
    type: string
    sql: ${TABLE}.udActiveYN ;;
  }

  dimension: ud_pmvendor_id {
    hidden: yes
    type: number
    sql: ${TABLE}.udPMVendorId ;;
  }

  dimension_group: load_date {
    hidden: yes
    type: time
    sql: ${TABLE}.LoadDate ;;
  }

  dimension: load_id {
    hidden: yes
    type: number
    sql: ${TABLE}.LoadID ;;
  }

  }
