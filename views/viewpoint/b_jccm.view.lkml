view: b_jccm {

  sql_table_name: viewpoint.bJCCM ;;

  measure: count {
    type: count
  }

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

  dimension: contract {
    type: string
    sql: LTRIM(TRIM(${TABLE}.Contract)) ;;
  }

  dimension: description {
    hidden: yes
    type: string
    sql: ${TABLE}.Description ;;
  }

  dimension: department {
    type: string
    sql: ${TABLE}.Department ;;
  }

  dimension: is_department_c {
    hidden: yes
    type: yesno
    sql: ${department} LIKE '%C%' ;;
  }

  dimension: contract_status {
    hidden: yes
    type: number
    sql: ${TABLE}.ContractStatus ;;
  }

  dimension: original_days {
    hidden: yes
    type: number
    sql: ${TABLE}.OriginalDays ;;
  }

  dimension: current_days {
    hidden: yes
    type: number
    sql: ${TABLE}.CurrentDays ;;
  }

  dimension_group: start_month {
    convert_tz: no
    type: time
    datatype: datetime
    timeframes: [raw,date]
    sql: ${TABLE}.StartMonth ;;
  }

  dimension: month_closed {
    hidden: yes
    type: string
    sql: ${TABLE}.MonthClosed ;;
  }

  dimension: proj_close_date {
    hidden: yes
    type: string
    sql: ${TABLE}.ProjCloseDate ;;
  }

  dimension_group: actual_close {
    convert_tz: no
    type: time
    timeframes: [raw,date,month,year]
    sql: ISNULL(${TABLE}.ActualCloseDate,'') ;;
  }

  dimension: cust_group {
    hidden: yes
    type: number
    sql: ${TABLE}.CustGroup ;;
  }

  dimension: customer {
    hidden: yes
    type: number
    sql: ${TABLE}.Customer ;;
  }

  dimension: pay_terms {
    hidden: yes
    type: string
    sql: ${TABLE}.PayTerms ;;
  }

  dimension: tax_interface {
    hidden: yes
    type: string
    sql: ${TABLE}.TaxInterface ;;
  }

  dimension: tax_group {
    hidden: yes
    type: number
    sql: ${TABLE}.TaxGroup ;;
  }

  dimension: tax_code {
    hidden: yes
    type: string
    sql: ${TABLE}.TaxCode ;;
  }

  dimension: retainage_pct {
    hidden: yes
    type: number
    sql: ${TABLE}.RetainagePCT ;;
  }

  dimension: default_bill_type {
    hidden: yes
    type: string
    sql: ${TABLE}.DefaultBillType ;;
  }

  dimension: orig_contract_amt {
    hidden: yes
    type: number
    sql: ${TABLE}.OrigContractAmt ;;
  }

  dimension: contract_amt {
    hidden: yes
    type: number
    sql: ${TABLE}.ContractAmt ;;
  }

  dimension: billed_amt {
    hidden: yes
    type: number
    sql: ${TABLE}.BilledAmt ;;
  }

  dimension: received_amt {
    hidden: yes
    type: number
    sql: ${TABLE}.ReceivedAmt ;;
  }

  dimension: current_retain_amt {
    hidden: yes
    type: number
    sql: ${TABLE}.CurrentRetainAmt ;;
  }

  dimension: in_batch_mth {
    hidden: yes
    type: string
    sql: ${TABLE}.InBatchMth ;;
  }

  dimension: in_use_batch_id {
    hidden: yes
    type: number
    sql: ${TABLE}.InUseBatchId ;;
  }

  dimension: notes {
    hidden: yes
    type: string
    sql: ${TABLE}.Notes ;;
  }

  dimension: siregion {
    hidden: yes
    type: string
    sql: ${TABLE}.SIRegion ;;
  }

  dimension: simetric {
    hidden: yes
    type: string
    sql: ${TABLE}.SIMetric ;;
  }

  dimension: process_group {
    hidden: yes
    type: string
    sql: ${TABLE}.ProcessGroup ;;
  }

  dimension: bill_address {
    type: string
    sql: ${TABLE}.BillAddress ;;
  }

  dimension: bill_address2 {
    type: string
    sql: ${TABLE}.BillAddress2 ;;
  }

  dimension: bill_city {
    type: string
    sql: ${TABLE}.BillCity ;;
  }

  dimension: bill_state {
    type: string
    sql: ${TABLE}.BillState ;;
  }

  dimension: bill_zip {
    type: string
    sql: ${TABLE}.BillZip ;;
  }

  dimension: bill_notes {
    type: string
    sql: ${TABLE}.BillNotes ;;
  }

  dimension: bill_on_completion_yn {
    type: string
    sql: ${TABLE}.BillOnCompletionYN ;;
  }

  dimension: customer_reference {
    type: string
    sql: ${TABLE}.CustomerReference ;;
  }

  dimension: complete_yn {
    type: string
    sql: ${TABLE}.CompleteYN ;;
  }

  dimension: round_opt {
    type: string
    sql: ${TABLE}.RoundOpt ;;
  }

  dimension: report_retg_item_yn {
    type: string
    sql: ${TABLE}.ReportRetgItemYN ;;
  }

  dimension: progress_format {
    type: string
    sql: ${TABLE}.ProgressFormat ;;
  }

  dimension: tmformat {
    type: string
    sql: ${TABLE}.TMFormat ;;
  }

  dimension: bill_group {
    type: string
    sql: ${TABLE}.BillGroup ;;
  }

  dimension: bill_day_of_mth {
    type: string
    sql: ${TABLE}.BillDayOfMth ;;
  }

  dimension: architect_name {
    type: string
    sql: ${TABLE}.ArchitectName ;;
  }

  dimension: architect_project {
    type: string
    sql: ${TABLE}.ArchitectProject ;;
  }

  dimension: contract_for_desc {
    type: string
    sql: ${TABLE}.ContractForDesc ;;
  }

  dimension_group: start {
    convert_tz: no
    type: time
    datatype: datetime
    timeframes: [raw,date]
    sql: ${TABLE}.StartDate ;;
  }

  dimension: jbtemplate {
    type: string
    sql: ${TABLE}.JBTemplate ;;
  }

  dimension: jbflat_billing_amt {
    type: number
    sql: ${TABLE}.JBFlatBillingAmt ;;
  }

  dimension: jblimit_opt {
    type: string
    sql: ${TABLE}.JBLimitOpt ;;
  }

  dimension: unique_attch_id {
    type: string
    sql: ${TABLE}.UniqueAttchID ;;
  }

  dimension: rec_type {
    type: number
    sql: ${TABLE}.RecType ;;
  }

  dimension: over_proj_notes {
    type: string
    sql: ${TABLE}.OverProjNotes ;;
  }

  dimension: close_purge_flag {
    type: string
    sql: ${TABLE}.ClosePurgeFlag ;;
  }

  dimension: misc_dist_code {
    type: string
    sql: ${TABLE}.MiscDistCode ;;
  }

  dimension: security_group {
    type: number
    sql: ${TABLE}.SecurityGroup ;;
  }

  dimension: update_jcci {
    type: string
    sql: ${TABLE}.UpdateJCCI ;;
  }

  dimension: bill_country {
    type: string
    sql: ${TABLE}.BillCountry ;;
  }

  dimension: udcarryforward {
    type: number
    sql: ${TABLE}.udcarryforward ;;
  }

  dimension: potential_project {
    type: string
    sql: ${TABLE}.PotentialProject ;;
  }

  dimension: max_retg_opt {
    type: string
    sql: ${TABLE}.MaxRetgOpt ;;
  }

  dimension: max_retg_pct {
    type: number
    sql: ${TABLE}.MaxRetgPct ;;
  }

  dimension: max_retg_amt {
    type: number
    sql: ${TABLE}.MaxRetgAmt ;;
  }

  dimension: incl_acoin_max_yn {
    type: string
    sql: ${TABLE}.InclACOinMaxYN ;;
  }

  dimension: max_retg_dist_style {
    type: string
    sql: ${TABLE}.MaxRetgDistStyle ;;
  }

  dimension: ud_compliance_email_end {
    type: string
    sql: ${TABLE}.udComplianceEmailEnd ;;
  }

  dimension: ud_safety_list {
    type: string
    sql: ${TABLE}.udSafetyList ;;
  }

  dimension: ud_upjob_unsubscribe {
    type: string
    sql: ${TABLE}.udUPJobUnsubscribe ;;
  }

  dimension: auuse_trust_accounts {
    type: string
    sql: ${TABLE}.AUUseTrustAccounts ;;
  }

  dimension: auqualification_date {
    type: string
    sql: ${TABLE}.AUQualificationDate ;;
  }

  dimension: aucmco {
    type: number
    sql: ${TABLE}.AUCMCo ;;
  }

  dimension: aucmgeneral_acct {
    type: number
    sql: ${TABLE}.AUCMGeneralAcct ;;
  }

  dimension: aucmretention_acct {
    type: number
    sql: ${TABLE}.AUCMRetentionAcct ;;
  }

  dimension: aucmdisputed_acct {
    type: number
    sql: ${TABLE}.AUCMDisputedAcct ;;
  }

  dimension: margin_pct {
    type: number
    sql: ${TABLE}.MarginPct ;;
  }

  dimension: jbreviewer_group {
    type: string
    sql: ${TABLE}.JBReviewerGroup ;;
  }

  dimension: review_level {
    type: string
    sql: ${TABLE}.ReviewLevel ;;
  }

  dimension: ud_send_to_procore {
    type: string
    sql: ${TABLE}.udSendToProcore ;;
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
