view: b_jccm {
  view_label: "Job"

  sql_table_name: viewpoint.bJCCM ;;

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
    hidden: yes
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
    hidden: yes
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
    hidden: yes
    type: string
    sql: ${TABLE}.BillAddress ;;
  }

  dimension: bill_address2 {
    hidden: yes
    type: string
    sql: ${TABLE}.BillAddress2 ;;
  }

  dimension: bill_city {
    hidden: yes
    type: string
    sql: ${TABLE}.BillCity ;;
  }

  dimension: bill_state {
    hidden: yes
    type: string
    sql: ${TABLE}.BillState ;;
  }

  dimension: bill_zip {
    hidden: yes
    type: string
    sql: ${TABLE}.BillZip ;;
  }

  dimension: bill_notes {
    hidden: yes
    type: string
    sql: ${TABLE}.BillNotes ;;
  }

  dimension: bill_on_completion_yn {
    hidden: yes
    type: string
    sql: ${TABLE}.BillOnCompletionYN ;;
  }

  dimension: customer_reference {
    hidden: yes
    type: string
    sql: ${TABLE}.CustomerReference ;;
  }

  dimension: complete_yn {
    hidden: yes
    type: string
    sql: ${TABLE}.CompleteYN ;;
  }

  dimension: round_opt {
    hidden: yes
    type: string
    sql: ${TABLE}.RoundOpt ;;
  }

  dimension: report_retg_item_yn {
    hidden: yes
    type: string
    sql: ${TABLE}.ReportRetgItemYN ;;
  }

  dimension: progress_format {
    hidden: yes
    type: string
    sql: ${TABLE}.ProgressFormat ;;
  }

  dimension: tmformat {
    hidden: yes
    type: string
    sql: ${TABLE}.TMFormat ;;
  }

  dimension: bill_group {
    hidden: yes
    type: string
    sql: ${TABLE}.BillGroup ;;
  }

  dimension: bill_day_of_mth {
    hidden: yes
    type: string
    sql: ${TABLE}.BillDayOfMth ;;
  }

  dimension: architect_name {
    hidden: yes
    type: string
    sql: ${TABLE}.ArchitectName ;;
  }

  dimension: architect_project {
    hidden: yes
    type: string
    sql: ${TABLE}.ArchitectProject ;;
  }

  dimension: contract_for_desc {
    hidden: yes
    type: string
    sql: ${TABLE}.ContractForDesc ;;
  }

  dimension_group: start {
    hidden: yes
    convert_tz: no
    type: time
    datatype: datetime
    timeframes: [raw,date]
    sql: ${TABLE}.StartDate ;;
  }

  dimension: jbtemplate {
    hidden: yes
    type: string
    sql: ${TABLE}.JBTemplate ;;
  }

  dimension: jbflat_billing_amt {
    hidden: yes
    type: number
    sql: ${TABLE}.JBFlatBillingAmt ;;
  }

  dimension: jblimit_opt {
    hidden: yes
    type: string
    sql: ${TABLE}.JBLimitOpt ;;
  }

  dimension: unique_attch_id {
    hidden: yes
    type: string
    sql: ${TABLE}.UniqueAttchID ;;
  }

  dimension: rec_type {
    hidden: yes
    type: number
    sql: ${TABLE}.RecType ;;
  }

  dimension: over_proj_notes {
    hidden: yes
    type: string
    sql: ${TABLE}.OverProjNotes ;;
  }

  dimension: close_purge_flag {
    hidden: yes
    type: string
    sql: ${TABLE}.ClosePurgeFlag ;;
  }

  dimension: misc_dist_code {
    hidden: yes
    type: string
    sql: ${TABLE}.MiscDistCode ;;
  }

  dimension: security_group {
    hidden: yes
    type: number
    sql: ${TABLE}.SecurityGroup ;;
  }

  dimension: update_jcci {
    hidden: yes
    type: string
    sql: ${TABLE}.UpdateJCCI ;;
  }

  dimension: bill_country {
    hidden: yes
    type: string
    sql: ${TABLE}.BillCountry ;;
  }

  dimension: udcarryforward {
    hidden: yes
    type: number
    sql: ${TABLE}.udcarryforward ;;
  }

  dimension: potential_project {
    hidden: yes
    type: string
    sql: ${TABLE}.PotentialProject ;;
  }

  dimension: max_retg_opt {
    hidden: yes
    type: string
    sql: ${TABLE}.MaxRetgOpt ;;
  }

  dimension: max_retg_pct {
    hidden: yes
    type: number
    sql: ${TABLE}.MaxRetgPct ;;
  }

  dimension: max_retg_amt {
    hidden: yes
    type: number
    sql: ${TABLE}.MaxRetgAmt ;;
  }

  dimension: incl_acoin_max_yn {
    hidden: yes
    type: string
    sql: ${TABLE}.InclACOinMaxYN ;;
  }

  dimension: max_retg_dist_style {
    hidden: yes
    type: string
    sql: ${TABLE}.MaxRetgDistStyle ;;
  }

  dimension: ud_compliance_email_end {
    hidden: yes
    type: string
    sql: ${TABLE}.udComplianceEmailEnd ;;
  }

  dimension: ud_safety_list {
    hidden: yes
    type: string
    sql: ${TABLE}.udSafetyList ;;
  }

  dimension: ud_upjob_unsubscribe {
    hidden: yes
    type: string
    sql: ${TABLE}.udUPJobUnsubscribe ;;
  }

  dimension: auuse_trust_accounts {
    hidden: yes
    type: string
    sql: ${TABLE}.AUUseTrustAccounts ;;
  }

  dimension: auqualification_date {
    hidden: yes
    type: string
    sql: ${TABLE}.AUQualificationDate ;;
  }

  dimension: aucmco {
    hidden: yes
    type: number
    sql: ${TABLE}.AUCMCo ;;
  }

  dimension: aucmgeneral_acct {
    hidden: yes
    type: number
    sql: ${TABLE}.AUCMGeneralAcct ;;
  }

  dimension: aucmretention_acct {
    hidden: yes
    type: number
    sql: ${TABLE}.AUCMRetentionAcct ;;
  }

  dimension: aucmdisputed_acct {
    hidden: yes
    type: number
    sql: ${TABLE}.AUCMDisputedAcct ;;
  }

  dimension: margin_pct {
    hidden: yes
    type: number
    sql: ${TABLE}.MarginPct ;;
  }

  dimension: jbreviewer_group {
    hidden: yes
    type: string
    sql: ${TABLE}.JBReviewerGroup ;;
  }

  dimension: review_level {
    hidden: yes
    type: string
    sql: ${TABLE}.ReviewLevel ;;
  }

  dimension: ud_send_to_procore {
    hidden: yes
    type: string
    sql: ${TABLE}.udSendToProcore ;;
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
