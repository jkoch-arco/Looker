view: b_jcjm {
  view_label: "Jobs"

  sql_table_name: viewpoint.bJCJM ;;

# Dimensions {

  dimension: key_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.KeyID ;;
  }

  dimension: apply_escalators {
    hidden: yes
    label: "Apply ESCALATORS"
    type: string
    sql: ${TABLE}.ApplyEscalators ;;
  }

  dimension: arch_eng_firm {
    type: number
    sql: ${TABLE}.ArchEngFirm ;;
  }

  dimension: auto_add_item_yn {
    type: string
    sql: ${TABLE}.AutoAddItemYN ;;
  }

  dimension: auto_gen_mtgno {
    type: string
    sql: ${TABLE}.AutoGenMTGNo ;;
  }

  dimension: auto_gen_pcono {
    group_label: "Auto Generated Numbers"
    type: string
    sql: ${TABLE}.AutoGenPCONo ;;
  }

  dimension: auto_gen_rfino {
    group_label: "Auto Generated Numbers"
    type: string
    sql: ${TABLE}.AutoGenRFINo ;;
  }

  dimension: auto_gen_rfqno {
    group_label: "Auto Generated Numbers"
    type: string
    sql: ${TABLE}.AutoGenRFQNo ;;
  }

  dimension: auto_gen_sub_no {
    group_label: "Auto Generated Numbers"
    description: "This number is related to subcontracting"
    type: string
    sql: ${TABLE}.AutoGenSubNo ;;
  }

  dimension: base_tax_on {
    type: string
    sql: ${TABLE}.BaseTaxOn ;;
  }

  dimension: bid_number {
    type: string
    sql: ${TABLE}.BidNumber ;;
  }

  dimension: cert_date {
    type: string
    sql: ${TABLE}.CertDate ;;
  }

  dimension: certified {
    type: string
    sql: ${TABLE}.Certified ;;
  }

  dimension: close_purge_flag {
    type: string
    sql: ${TABLE}.ClosePurgeFlag ;;
  }

  dimension: construction_type {
    type: string
    sql: ${TABLE}.ConstructionType ;;
  }

  dimension: contact_code {
    type: number
    sql: ${TABLE}.ContactCode ;;
  }

  dimension: contract {
    type: string
    sql: ${TABLE}.Contract ;;
  }

  dimension: craft_template {
    type: number
    sql: ${TABLE}.CraftTemplate ;;
  }

  dimension: default_rfidays_due {
    type: number
    sql: ${TABLE}.DefaultRFIDaysDue ;;
  }

  dimension: default_std_days_due {
    type: number
    sql: ${TABLE}.DefaultStdDaysDue ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }

  dimension: eeoregion {
    type: string
    sql: ${TABLE}.EEORegion ;;
  }

  dimension: four_projects_container_id {
    type: string
    sql: ${TABLE}.FourProjectsContainerId ;;
  }

  dimension: four_projects_container_name {
    type: string
    sql: ${TABLE}.FourProjectsContainerName ;;
  }

  dimension: geo_code {
    type: string
    sql: ${TABLE}.GeoCode ;;
  }

  dimension: haul_tax_opt {
    type: number
    sql: ${TABLE}.HaulTaxOpt ;;
  }

  dimension: hrs_per_man_day {
    type: number
    sql: ${TABLE}.HrsPerManDay ;;
  }

  dimension: ins_template {
    type: number
    sql: ${TABLE}.InsTemplate ;;
  }

  dimension: jcco {
    type: number
    sql: ${TABLE}.JCCo ;;
  }

  dimension: job {
    type: string
    sql: ${TABLE}.Job ;;
  }

  dimension: job_fax {
    type: string
    sql: ${TABLE}.JobFax ;;
  }

  dimension: job_phone {
    type: string
    sql: ${TABLE}.JobPhone ;;
  }

  dimension: job_status {
    type: number
    sql: ${TABLE}.JobStatus ;;
  }

  dimension: liab_template {
    type: number
    sql: ${TABLE}.LiabTemplate ;;
  }

  dimension_group: load {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.LoadDate ;;
  }

  dimension: load_id {
    type: number
    sql: ${TABLE}.LoadID ;;
  }

  dimension: lock_phases {
    type: string
    sql: ${TABLE}.LockPhases ;;
  }

  dimension: mail_address {
    type: string
    sql: ${TABLE}.MailAddress ;;
  }

  dimension: mail_address2 {
    type: string
    sql: ${TABLE}.MailAddress2 ;;
  }

  dimension: mail_city {
    type: string
    sql: ${TABLE}.MailCity ;;
  }

  dimension: mail_country {
    type: string
    sql: ${TABLE}.MailCountry ;;
  }

  dimension: mail_state {
    type: string
    sql: ${TABLE}.MailState ;;
  }

  dimension: mail_zip {
    type: string
    sql: ${TABLE}.MailZip ;;
  }

  dimension: mark_up_disc_rate {
    type: number
    sql: ${TABLE}.MarkUpDiscRate ;;
  }

  dimension: notes {
    type: string
    sql: ${TABLE}.Notes ;;
  }

  dimension: otsched {
    type: number
    sql: ${TABLE}.OTSched ;;
  }

  dimension: our_firm {
    type: number
    sql: ${TABLE}.OurFirm ;;
  }

  dimension: over_proj_notes {
    type: string
    sql: ${TABLE}.OverProjNotes ;;
  }

  dimension: pcvisible_in_jc {
    type: string
    sql: ${TABLE}.PCVisibleInJC ;;
  }

  dimension: pocomp_group {
    type: string
    sql: ${TABLE}.POCompGroup ;;
  }

  dimension: potential_project_id {
    type: number
    sql: ${TABLE}.PotentialProjectID ;;
  }

  dimension: price_template {
    type: number
    sql: ${TABLE}.PriceTemplate ;;
  }

  dimension: prleave_level {
    type: string
    sql: ${TABLE}.PRLeaveLevel ;;
  }

  dimension: prlocal_code {
    type: string
    sql: ${TABLE}.PRLocalCode ;;
  }

  dimension: proj_min_pct {
    type: number
    sql: ${TABLE}.ProjMinPct ;;
  }

  dimension: project_mgr {
    type: number
    sql: ${TABLE}.ProjectMgr ;;
  }

  dimension: prstate_code {
    type: string
    sql: ${TABLE}.PRStateCode ;;
  }

  dimension: rate_template {
    type: number
    sql: ${TABLE}.RateTemplate ;;
  }

  dimension: rev_grp_inv {
    type: string
    sql: ${TABLE}.RevGrpInv ;;
  }

  dimension: security_group {
    type: number
    sql: ${TABLE}.SecurityGroup ;;
  }

  dimension: ship_address {
    type: string
    sql: ${TABLE}.ShipAddress ;;
  }

  dimension: ship_address2 {
    type: string
    sql: ${TABLE}.ShipAddress2 ;;
  }

  dimension: ship_city {
    type: string
    sql: ${TABLE}.ShipCity ;;
  }

  dimension: ship_country {
    type: string
    sql: ${TABLE}.ShipCountry ;;
  }

  dimension: ship_state {
    type: string
    sql: ${TABLE}.ShipState ;;
  }

  dimension: ship_zip {
    type: string
    sql: ${TABLE}.ShipZip ;;
  }

  dimension: slcomp_group {
    type: string
    sql: ${TABLE}.SLCompGroup ;;
  }

  dimension: smsacode {
    type: string
    sql: ${TABLE}.SMSACode ;;
  }

  dimension: submittal_approving_firm {
    type: number
    sql: ${TABLE}.SubmittalApprovingFirm ;;
  }

  dimension: submittal_approving_firm_contact {
    type: number
    sql: ${TABLE}.SubmittalApprovingFirmContact ;;
  }

  dimension: submittal_review_days_approving_firm {
    type: number
    sql: ${TABLE}.SubmittalReviewDaysApprovingFirm ;;
  }

  dimension: submittal_review_days_auto_calc_yn {
    type: string
    sql: ${TABLE}.SubmittalReviewDaysAutoCalcYN ;;
  }

  dimension: submittal_review_days_requesting_firm {
    type: number
    sql: ${TABLE}.SubmittalReviewDaysRequestingFirm ;;
  }

  dimension: submittal_review_days_responsible_firm {
    type: number
    sql: ${TABLE}.SubmittalReviewDaysResponsibleFirm ;;
  }

  dimension: tax_code {
    type: string
    sql: ${TABLE}.TaxCode ;;
  }

  dimension: tax_group {
    type: number
    sql: ${TABLE}.TaxGroup ;;
  }

  dimension: timesheet_rev_group {
    type: string
    sql: ${TABLE}.TimesheetRevGroup ;;
  }

  dimension: ud_accountant {
    type: number
    sql: ${TABLE}.udAccountant ;;
  }

  dimension: ud_accountant_email {
    type: string
    sql: ${TABLE}.udAccountantEmail ;;
  }

  dimension: ud_accountant_name {
    type: string
    sql: ${TABLE}.udAccountantName ;;
  }

  dimension: ud_additional_insured {
    type: string
    sql: ${TABLE}.udAdditionalInsured ;;
  }

  dimension: ud_arcmname_override {
    type: string
    sql: ${TABLE}.udARCMNameOverride ;;
  }

  dimension: ud_arcoacct_em {
    type: string
    sql: ${TABLE}.udARCOAcctEm ;;
  }

  dimension: ud_arcoacctnt {
    type: string
    sql: ${TABLE}.udARCOAcctnt ;;
  }

  dimension: ud_bd {
    type: string
    sql: ${TABLE}.udBD ;;
  }

  dimension: ud_bill_reimbursables {
    type: string
    sql: ${TABLE}.udBillReimbursables ;;
  }

  dimension: ud_contract_date {
    type: string
    sql: ${TABLE}.udContractDate ;;
  }

  dimension: ud_contract_signed_date {
    type: string
    sql: ${TABLE}.udContractSignedDate ;;
  }

  dimension: ud_controller_override {
    type: string
    sql: ${TABLE}.udControllerOverride ;;
  }

  dimension: ud_customer_override {
    type: string
    sql: ${TABLE}.udCustomerOverride ;;
  }

  dimension: ud_eeoend {
    type: string
    sql: ${TABLE}.udEEOEnd ;;
  }

  dimension_group: ud_est_compl_dt {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.udEstComplDt ;;
  }

  dimension: ud_est_contract_value {
    type: string
    sql: ${TABLE}.udEstContractValue ;;
  }

  dimension: ud_est_cost {
    type: number
    sql: ${TABLE}.udEstCost ;;
  }

  dimension: ud_estimated_start {
    type: string
    sql: ${TABLE}.udEstimatedStart ;;
  }

  dimension: ud_exlcudefrom_concur {
    type: string
    sql: ${TABLE}.udExlcudefromConcur ;;
  }

  dimension: ud_gains_losses {
    type: string
    sql: ${TABLE}.udGainsLosses ;;
  }

  dimension: ud_gclicense {
    type: string
    sql: ${TABLE}.udGCLicense ;;
  }

  dimension: ud_hqcontroller {
    type: string
    sql: ${TABLE}.udHQController ;;
  }

  dimension: ud_industry_notes {
    type: string
    sql: ${TABLE}.udIndustryNotes ;;
  }

  dimension: ud_job2 {
    type: string
    sql: ${TABLE}.udJob2 ;;
  }

  dimension: ud_job_spec_forms {
    type: string
    sql: ${TABLE}.udJobSpecForms ;;
  }

  dimension: ud_jv {
    type: string
    sql: ${TABLE}.udJV ;;
  }

  dimension: ud_jvdetails {
    type: string
    sql: ${TABLE}.udJVDetails ;;
  }

  dimension: ud_license {
    type: string
    sql: ${TABLE}.udLicense ;;
  }

  dimension: ud_license_holder {
    type: string
    sql: ${TABLE}.udLicenseHolder ;;
  }

  dimension: ud_mail_county {
    type: string
    sql: ${TABLE}.udMailCounty ;;
  }

  dimension: ud_mkt_assoc {
    type: string
    sql: ${TABLE}.udMktAssoc ;;
  }

  dimension: ud_month_end_unsubscribe {
    type: string
    sql: ${TABLE}.udMonthEndUnsubscribe ;;
  }

  dimension: ud_no_pend_job {
    type: string
    sql: ${TABLE}.udNoPendJob ;;
  }

  dimension: ud_ofccpaddressee {
    type: string
    sql: ${TABLE}.udOFCCPAddressee ;;
  }

  dimension: ud_ofccpdate {
    type: string
    sql: ${TABLE}.udOFCCPDate ;;
  }

  dimension: ud_ofccppmnotified {
    type: string
    sql: ${TABLE}.udOFCCPPMNotified ;;
  }

  dimension: ud_ofccpregion {
    type: string
    sql: ${TABLE}.udOFCCPRegion ;;
  }

  dimension: ud_pending_job {
    type: string
    sql: ${TABLE}.udPendingJob ;;
  }

  dimension: ud_pjob {
    type: string
    sql: ${TABLE}.udPJob ;;
  }

  dimension: ud_pmexecutive_no1 {
    type: string
    sql: ${TABLE}.udPMExecutiveNo1 ;;
  }

  dimension: ud_project_admin {
    type: string
    sql: ${TABLE}.udProjectAdmin ;;
  }

  dimension: ud_project_design {
    type: string
    sql: ${TABLE}.udProjectDesign ;;
  }

  dimension: ud_project_executive {
    type: string
    sql: ${TABLE}.udProjectExecutive ;;
  }

  dimension: ud_send_to_procore {
    type: string
    sql: ${TABLE}.udSendToProcore ;;
  }

  dimension: ud_senior_pm {
    type: string
    sql: ${TABLE}.udSeniorPM ;;
  }

  dimension: ud_sf {
    type: number
    sql: ${TABLE}.udSF ;;
  }

  dimension: ud_sfnotes {
    type: string
    sql: ${TABLE}.udSFNotes ;;
  }

  dimension: ud_slctins_admin_override {
    type: string
    sql: ${TABLE}.udSLCTInsAdminOverride ;;
  }

  dimension: ud_super_email {
    type: string
    sql: ${TABLE}.udSuperEmail ;;
  }

  dimension: ud_superintendent {
    type: string
    sql: ${TABLE}.udSuperintendent ;;
  }

  dimension: ud_superintendent_phone {
    type: string
    sql: ${TABLE}.udSuperintendentPhone ;;
  }

  dimension: ud_ulti_pro_job {
    type: string
    sql: ${TABLE}.udUltiProJob ;;
  }

  dimension: ud_ulti_pro_location {
    type: string
    sql: ${TABLE}.udUltiProLocation ;;
  }

  dimension: udbuildersrisk {
    type: string
    sql: ${TABLE}.udbuildersrisk ;;
  }

  dimension: udconstructiontype {
    type: string
    sql: ${TABLE}.udconstructiontype ;;
  }

  dimension: udcontracttype {
    type: string
    sql: ${TABLE}.udcontracttype ;;
  }

  dimension: uddescription {
    type: string
    sql: ${TABLE}.uddescription ;;
  }

  dimension: udletterofintent {
    type: string
    sql: ${TABLE}.udletterofintent ;;
  }

  dimension: udnewjobinfo {
    type: string
    sql: ${TABLE}.udnewjobinfo ;;
  }

  dimension: udtypeofindustry {
    type: string
    sql: ${TABLE}.udtypeofindustry ;;
  }

  dimension: unique_attch_id {
    type: string
    sql: ${TABLE}.UniqueAttchID ;;
  }

  dimension: update_apactuals_yn {
    type: string
    sql: ${TABLE}.UpdateAPActualsYN ;;
  }

  dimension: update_msactuals_yn {
    type: string
    sql: ${TABLE}.UpdateMSActualsYN ;;
  }

  dimension: update_plugs {
    type: string
    sql: ${TABLE}.UpdatePlugs ;;
  }

  dimension: use_tax_yn {
    type: string
    sql: ${TABLE}.UseTaxYN ;;
  }

  dimension: vendor_group {
    type: number
    sql: ${TABLE}.VendorGroup ;;
  }

  dimension: wght_avg_ot {
    type: string
    sql: ${TABLE}.WghtAvgOT ;;
  }

# }

# Derived Dimensions / Business Logic {

  dimension: escalators_filled_in {
    description: "This is where esvaltors is not null"
    hidden: yes
    type: yesno
    sql: ${apply_escalators} IS NOT NULL ;;
  }

# }

# Measure {
  measure: count_of_jobs {
    type: count
  }

  measure: count_of_jobs_with_escalators {
    type: count
    filters: {
      field: escalators_filled_in
      value: "Yes"
    }
  }

#}

}
