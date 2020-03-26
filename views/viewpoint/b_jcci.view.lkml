view: b_jcci {

  sql_table_name: viewpoint.bJCCI ;;

  measure: count {
    type: count
  }

  measure: vp_contract_value {
    type: sum
    sql: ${contract_amt} ;;
  }

  dimension: key_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.KeyID ;;
  }

  dimension: jcco {
    type: number
    sql: ${TABLE}.JCCo ;;
  }

  dimension: contract {
    type: string
    sql: LTRIM(RTRIM(${TABLE}.Contract)) ;;
  }

  dimension: item {
    type: string
    sql: ${TABLE}.Item ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }

  dimension: department {
    type: string
    sql: ${TABLE}.Department ;;
  }

  dimension: tax_group {
    type: number
    sql: ${TABLE}.TaxGroup ;;
  }

  dimension: tax_code {
    type: string
    sql: ${TABLE}.TaxCode ;;
  }

  dimension: um {
    type: string
    sql: ${TABLE}.UM ;;
  }

  dimension: siregion {
    type: string
    sql: ${TABLE}.SIRegion ;;
  }

  dimension: sicode {
    type: string
    sql: ${TABLE}.SICode ;;
  }

  dimension: retain_pct {
    type: number
    sql: ${TABLE}.RetainPCT ;;
  }

  dimension: orig_contract_amt {
    type: number
    sql: ${TABLE}.OrigContractAmt ;;
  }

  dimension: orig_contract_units {
    type: number
    sql: ${TABLE}.OrigContractUnits ;;
  }

  dimension: orig_unit_price {
    type: number
    sql: ${TABLE}.OrigUnitPrice ;;
  }

  dimension: contract_amt {
    type: number
    sql: ${TABLE}.ContractAmt ;;
  }

  dimension: contract_units {
    type: number
    sql: ${TABLE}.ContractUnits ;;
  }

  dimension: unit_price {
    type: number
    sql: ${TABLE}.UnitPrice ;;
  }

  dimension: billed_amt {
    type: number
    sql: ${TABLE}.BilledAmt ;;
  }

  dimension: billed_units {
    type: number
    sql: ${TABLE}.BilledUnits ;;
  }

  dimension: received_amt {
    type: number
    sql: ${TABLE}.ReceivedAmt ;;
  }

  dimension: current_retain_amt {
    type: number
    sql: ${TABLE}.CurrentRetainAmt ;;
  }

  dimension: bill_type {
    type: string
    sql: ${TABLE}.BillType ;;
  }

  dimension: bill_group {
    type: string
    sql: ${TABLE}.BillGroup ;;
  }

  dimension: bill_description {
    type: string
    sql: ${TABLE}.BillDescription ;;
  }

  dimension: bill_original_units {
    type: number
    sql: ${TABLE}.BillOriginalUnits ;;
  }

  dimension: bill_original_amt {
    type: number
    sql: ${TABLE}.BillOriginalAmt ;;
  }

  dimension: bill_current_units {
    type: number
    sql: ${TABLE}.BillCurrentUnits ;;
  }

  dimension: bill_current_amt {
    type: number
    sql: ${TABLE}.BillCurrentAmt ;;
  }

  dimension: bill_unit_price {
    type: number
    sql: ${TABLE}.BillUnitPrice ;;
  }

  dimension: notes {
    type: string
    sql: ${TABLE}.Notes ;;
  }

  dimension: init_subs {
    type: string
    sql: ${TABLE}.InitSubs ;;
  }

  dimension: unique_attch_id {
    type: string
    sql: ${TABLE}.UniqueAttchID ;;
  }

  dimension: start_month {
    type: string
    sql: ${TABLE}.StartMonth ;;
  }

  dimension: mark_up_rate {
    type: number
    sql: ${TABLE}.MarkUpRate ;;
  }

  dimension: proj_notes {
    type: string
    sql: ${TABLE}.ProjNotes ;;
  }

  dimension: proj_plug {
    type: string
    sql: ${TABLE}.ProjPlug ;;
  }

  dimension: init_as_zero {
    type: string
    sql: ${TABLE}.InitAsZero ;;
  }

  dimension_group: load_date {
    type: time
    sql: ${TABLE}.LoadDate ;;
  }

  dimension: load_id {
    type: number
    sql: ${TABLE}.LoadID ;;
  }

}
