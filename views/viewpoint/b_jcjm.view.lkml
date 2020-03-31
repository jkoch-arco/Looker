view: b_jcjm {
  view_label: "Job"

  sql_table_name: viewpoint.bJCJM ;;

# Dimensions {

  dimension: key_id {
    hidden: yes
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
    hidden: yes
    type: number
    sql: ${TABLE}.ArchEngFirm ;;
  }

  dimension: auto_add_item_yn {
    hidden: yes
    type: string
    sql: ${TABLE}.AutoAddItemYN ;;
  }

  dimension: auto_gen_mtgno {
    hidden: yes
    type: string
    sql: ${TABLE}.AutoGenMTGNo ;;
  }

  dimension: auto_gen_pcono {
    hidden: yes
    group_label: "Auto Generated Numbers"
    type: string
    sql: ${TABLE}.AutoGenPCONo ;;
  }

  dimension: auto_gen_rfino {
    hidden: yes
    group_label: "Auto Generated Numbers"
    type: string
    sql: ${TABLE}.AutoGenRFINo ;;
  }

  dimension: auto_gen_rfqno {
    hidden: yes
    group_label: "Auto Generated Numbers"
    type: string
    sql: ${TABLE}.AutoGenRFQNo ;;
  }

  dimension: auto_gen_sub_no {
    hidden: yes
    group_label: "Auto Generated Numbers"
    description: "This number is related to subcontracting"
    type: string
    sql: ${TABLE}.AutoGenSubNo ;;
  }

  dimension: base_tax_on {
    hidden: yes
    type: string
    sql: ${TABLE}.BaseTaxOn ;;
  }

  dimension: bid_number {
    hidden: yes
    type: string
    sql: ${TABLE}.BidNumber ;;
  }

  dimension: cert_date {
    hidden: yes
    type: string
    sql: ${TABLE}.CertDate ;;
  }

  dimension: certified {
    hidden: yes
    type: string
    sql: ${TABLE}.Certified ;;
  }

  dimension: close_purge_flag {
    hidden: yes
    type: string
    sql: ${TABLE}.ClosePurgeFlag ;;
  }

  dimension: construction_type {
    hidden: yes
    type: string
    sql: ${TABLE}.ConstructionType ;;
  }

  dimension: contact_code {
    hidden: yes
    type: number
    sql: ${TABLE}.ContactCode ;;
  }

  dimension: contract {
    hidden: yes
    type: string
    sql: LTRIM(TRIM(${TABLE}.Contract)) ;;
  }

  dimension: craft_template {
    hidden: yes
    type: number
    sql: ${TABLE}.CraftTemplate ;;
  }

  dimension: default_rfidays_due {
    hidden: yes
    type: number
    sql: ${TABLE}.DefaultRFIDaysDue ;;
  }

  dimension: default_std_days_due {
    hidden: yes
    type: number
    sql: ${TABLE}.DefaultStdDaysDue ;;
  }

  dimension: job_name {
    type: string
    sql: REPLACE(REPLACE(${TABLE}.Description,CHAR(10),''),CHAR(13),'') ;;
  }

  dimension: eeoregion {
    hidden: yes
    type: string
    sql: ${TABLE}.EEORegion ;;
  }

  dimension: four_projects_container_id {
    hidden: yes
    type: string
    sql: ${TABLE}.FourProjectsContainerId ;;
  }

  dimension: four_projects_container_name {
    hidden: yes
    type: string
    sql: ${TABLE}.FourProjectsContainerName ;;
  }

  dimension: geo_code {
    hidden: yes
    type: string
    sql: ${TABLE}.GeoCode ;;
  }

  dimension: haul_tax_opt {
    hidden: yes
    type: number
    sql: ${TABLE}.HaulTaxOpt ;;
  }

  dimension: hrs_per_man_day {
    hidden: yes
    type: number
    sql: ${TABLE}.HrsPerManDay ;;
  }

  dimension: ins_template {
    hidden: yes
    type: number
    sql: ${TABLE}.InsTemplate ;;
  }

  dimension: jcco {
    label: "Company Number"
    type: number
    sql: ${TABLE}.JCCo ;;
  }

  dimension: job {
    label: "Job # Original"
    hidden: yes
    type: string
    sql: LTRIM(RTRIM(${TABLE}.Job)) ;;
  }

  dimension: job_number {
    label: "Job #"
    type: string
    sql: LTRIM(RTRIM(REPLACE(REPLACE(${job},'-',''),' ','')));;
  }

  dimension: job_fax {
    hidden: yes
    type: string
    sql: ${TABLE}.JobFax ;;
  }

  dimension: job_phone {
    hidden: yes
    type: string
    sql: ${TABLE}.JobPhone ;;
  }

  dimension: job_status_number {
    hidden: yes
    type: number
    sql: ${TABLE}.JobStatus ;;
  }

  dimension: liab_template {
    hidden: yes
    type: number
    sql: ${TABLE}.LiabTemplate ;;
  }

  dimension_group: load {
    hidden: yes
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
    hidden: yes
    type: number
    sql: ${TABLE}.LoadID ;;
  }

  dimension: lock_phases {
    hidden: yes
    type: string
    sql: ${TABLE}.LockPhases ;;
  }

  dimension: address {
    group_label: "Job Address"
    type: string
    sql: ISNULL(${TABLE}.MailAddress,'Unknown') ;;
  }

  dimension: address_2 {
    hidden: yes
    group_label: "Job Address"
    type: string
    sql: ${TABLE}.MailAddress2 ;;
  }

  dimension: city {
    group_label: "Job Address"
    type: string
    sql: ISNULL(${TABLE}.MailCity,'Unknown') ;;
  }

  dimension: country {
    group_label: "Job Address"
    type: string
    sql: ISNULL(${TABLE}.MailCountry,'Unknown') ;;
  }

  dimension: state {
    group_label: "Job Address"
    type: string
    map_layer_name: us_states
    sql: ISNULL(${TABLE}.MailState,'ZZ') ;;
  }

  dimension: zip {
    group_label: "Job Address"
    type: string
    map_layer_name: us_zipcode_tabulation_areas
    sql: ISNULL(${TABLE}.MailZip,99999) ;;
  }

  dimension: mark_up_disc_rate {
    hidden: yes
    type: number
    sql: ${TABLE}.MarkUpDiscRate ;;
  }

  dimension: notes {
    hidden: yes
    type: string
    sql: ${TABLE}.Notes ;;
  }

  dimension: otsched {
    hidden: yes
    type: number
    sql: ${TABLE}.OTSched ;;
  }

  dimension: our_firm {
    hidden: yes
    type: number
    sql: ${TABLE}.OurFirm ;;
  }

  dimension: over_proj_notes {
    hidden: yes
    type: string
    sql: ${TABLE}.OverProjNotes ;;
  }

  dimension: pcvisible_in_jc {
    hidden: yes
    type: string
    sql: ${TABLE}.PCVisibleInJC ;;
  }

  dimension: pocomp_group {
    hidden: yes
    type: string
    sql: ${TABLE}.POCompGroup ;;
  }

  dimension: potential_project_id {
    hidden: yes
    type: number
    sql: ${TABLE}.PotentialProjectID ;;
  }

  dimension: price_template {
    hidden: yes
    type: number
    sql: ${TABLE}.PriceTemplate ;;
  }

  dimension: prleave_level {
    hidden: yes
    type: string
    sql: ${TABLE}.PRLeaveLevel ;;
  }

  dimension: prlocal_code {
    hidden: yes
    type: string
    sql: ${TABLE}.PRLocalCode ;;
  }

  dimension: proj_min_pct {
    hidden: yes
    type: number
    sql: ${TABLE}.ProjMinPct ;;
  }

  dimension: project_mgr {
    hidden: yes
    type: number
    sql: ${TABLE}.ProjectMgr ;;
  }

  dimension: prstate_code {
    hidden: yes
    type: string
    sql: ${TABLE}.PRStateCode ;;
  }

  dimension: rate_template {
    hidden: yes
    type: number
    sql: ${TABLE}.RateTemplate ;;
  }

  dimension: rev_grp_inv {
    hidden: yes
    type: string
    sql: ${TABLE}.RevGrpInv ;;
  }

  dimension: security_group {
    hidden: yes
    type: number
    sql: ${TABLE}.SecurityGroup ;;
  }

  dimension: ship_address {
    hidden: yes
    type: string
    sql: ${TABLE}.ShipAddress ;;
  }

  dimension: ship_address2 {
    hidden: yes
    type: string
    sql: ${TABLE}.ShipAddress2 ;;
  }

  dimension: ship_city {
    hidden: yes
    type: string
    sql: ${TABLE}.ShipCity ;;
  }

  dimension: ship_country {
    hidden: yes
    type: string
    sql: ${TABLE}.ShipCountry ;;
  }

  dimension: ship_state {
    hidden: yes
    type: string
    sql: ${TABLE}.ShipState ;;
  }

  dimension: ship_zip {
    hidden: yes
    type: string
    sql: ${TABLE}.ShipZip ;;
  }

  dimension: slcomp_group {
    hidden: yes
    type: string
    sql: ${TABLE}.SLCompGroup ;;
  }

  dimension: smsacode {
    hidden: yes
    type: string
    sql: ${TABLE}.SMSACode ;;
  }

  dimension: submittal_approving_firm {
    hidden: yes
    type: number
    sql: ${TABLE}.SubmittalApprovingFirm ;;
  }

  dimension: submittal_approving_firm_contact {
    hidden: yes
    type: number
    sql: ${TABLE}.SubmittalApprovingFirmContact ;;
  }

  dimension: submittal_review_days_approving_firm {
    hidden: yes
    type: number
    sql: ${TABLE}.SubmittalReviewDaysApprovingFirm ;;
  }

  dimension: submittal_review_days_auto_calc_yn {
    hidden: yes
    type: string
    sql: ${TABLE}.SubmittalReviewDaysAutoCalcYN ;;
  }

  dimension: submittal_review_days_requesting_firm {
    hidden: yes
    type: number
    sql: ${TABLE}.SubmittalReviewDaysRequestingFirm ;;
  }

  dimension: submittal_review_days_responsible_firm {
    hidden: yes
    type: number
    sql: ${TABLE}.SubmittalReviewDaysResponsibleFirm ;;
  }

  dimension: tax_code {
    hidden: yes
    type: string
    sql: ${TABLE}.TaxCode ;;
  }

  dimension: tax_group {
    hidden: yes
    type: number
    sql: ${TABLE}.TaxGroup ;;
  }

  dimension: timesheet_rev_group {
    hidden: yes
    type: string
    sql: ${TABLE}.TimesheetRevGroup ;;
  }

  dimension: ud_accountant {
    hidden: yes
    type: number
    sql: ${TABLE}.udAccountant ;;
  }

  dimension: ud_accountant_email {
    hidden: yes
    type: string
    sql: ${TABLE}.udAccountantEmail ;;
  }

  dimension: accountant_name {
    type: string
    sql:  ISNULL(${TABLE}.udAccountantName,'Unknown') ;;
  }

  dimension: ud_additional_insured {
    hidden: yes
    type: string
    sql: ${TABLE}.udAdditionalInsured ;;
  }

  dimension: ud_arcmname_override {
    hidden: yes
    type: string
    sql: ${TABLE}.udARCMNameOverride ;;
  }

  dimension: ud_arcoacct_em {
    hidden: yes
    type: string
    sql: ${TABLE}.udARCOAcctEm ;;
  }

  dimension: ud_arcoacctnt {
    hidden: yes
    type: string
    sql: ${TABLE}.udARCOAcctnt ;;
  }

  dimension: ud_bd {
    hidden: yes
    type: string
    sql: ${TABLE}.udBD ;;
  }

  dimension: ud_bill_reimbursables {
    hidden: yes
    type: string
    sql: ${TABLE}.udBillReimbursables ;;
  }

  dimension_group: ud_contract {
    hidden: yes
    convert_tz: no
    type: time
    datatype:datetime
    timeframes: [raw,date]
    sql: ${TABLE}.udContractDate ;;
  }

  dimension: ud_contract_signed_date {
    hidden: yes
    type: string
    sql: ${TABLE}.udContractSignedDate ;;
  }

  dimension: ud_controller_override {
    hidden: yes
    type: string
    sql: ${TABLE}.udControllerOverride ;;
  }

  dimension: ud_customer_override {
    hidden: yes
    type: string
    sql: ${TABLE}.udCustomerOverride ;;
  }

  dimension: ud_eeoend {
    hidden: yes
    type: string
    sql: ${TABLE}.udEEOEnd ;;
  }

  dimension_group: ud_est_compl_dt {
    hidden: yes
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
    hidden: yes
    type: string
    sql: ${TABLE}.udEstContractValue ;;
  }

  dimension: ud_est_cost {
    hidden: yes
    type: number
    sql: ${TABLE}.udEstCost ;;
  }

  dimension: ud_estimated_start {
    hidden: yes
    type: string
    sql: ${TABLE}.udEstimatedStart ;;
  }

  dimension: ud_exlcudefrom_concur {
    hidden: yes
    type: string
    sql: ${TABLE}.udExlcudefromConcur ;;
  }

  dimension: ud_gains_losses {
    hidden: yes
    type: string
    sql: ${TABLE}.udGainsLosses ;;
  }

  dimension: ud_gclicense {
    hidden: yes
    type: string
    sql: ${TABLE}.udGCLicense ;;
  }

  dimension: controller {
    hidden: yes
    type: string
    sql: ISNULL(${TABLE}.udHQController,'Unknown') ;;
  }

  dimension: ud_industry_notes {
    hidden: yes
    type: string
    sql: ${TABLE}.udIndustryNotes ;;
  }

  dimension: ud_job2 {
    hidden: yes
    type: string
    sql: ${TABLE}.udJob2 ;;
  }

  dimension: ud_job_spec_forms {
    hidden: yes
    type: string
    sql: ${TABLE}.udJobSpecForms ;;
  }

  dimension: jv_flag {
    label: "JV Flag"
    type: string
    sql: ${TABLE}.udJV ;;
  }

  dimension: jv_details {
    label: "JV Details"
    type: string
    sql: ISNULL(${TABLE}.udJVDetails,'No details provided') ;;
  }

  dimension: ud_license {
    hidden: yes
    type: string
    sql: ${TABLE}.udLicense ;;
  }

  dimension: ud_license_holder {
    hidden: yes
    type: string
    sql: ${TABLE}.udLicenseHolder ;;
  }

  dimension: ud_mail_county {
    hidden: yes
    type: string
    sql: ${TABLE}.udMailCounty ;;
  }

  dimension: ud_mkt_assoc {
    hidden: yes
    type: string
    sql: ${TABLE}.udMktAssoc ;;
  }

  dimension: ud_month_end_unsubscribe {
    hidden: yes
    type: string
    sql: ${TABLE}.udMonthEndUnsubscribe ;;
  }

  dimension: ud_no_pend_job {
    hidden: yes
    type: string
    sql: ${TABLE}.udNoPendJob ;;
  }

  dimension: ud_ofccpaddressee {
    hidden: yes
    type: string
    sql: ${TABLE}.udOFCCPAddressee ;;
  }

  dimension: ud_ofccpdate {
    hidden: yes
    type: string
    sql: ${TABLE}.udOFCCPDate ;;
  }

  dimension: ud_ofccppmnotified {
    hidden: yes
    type: string
    sql: ${TABLE}.udOFCCPPMNotified ;;
  }

  dimension: ud_ofccpregion {
    hidden: yes
    type: string
    sql: ${TABLE}.udOFCCPRegion ;;
  }

  dimension: ud_pending_job {
    hidden: yes
    type: string
    sql: ${TABLE}.udPendingJob ;;
  }

  dimension: ud_pjob {
    hidden: yes
    type: string
    sql: ${TABLE}.udPJob ;;
  }

  dimension: executive {
    type: string
    sql: ISNULL(${TABLE}.udPMExecutiveNo1,'Unknown');;
  }

  dimension: project_admin {
    hidden: yes
    type: string
    sql: ${TABLE}.udProjectAdmin ;;
  }

  dimension: delivery_method {
    type: string
    sql: CASE WHEN ${TABLE}.udProjectDesign IS NULL OR ${TABLE}.udProjectDesign='' THEN 'Unknown' ELSE LTRIM(RTRIM(${TABLE}.udProjectDesign)) END   ;;
  }

  dimension: ud_project_executive {
    hidden: yes
    type: string
    sql: ${TABLE}.udProjectExecutive ;;
  }

  dimension: ud_send_to_procore {
    hidden: yes
    type: string
    sql: ${TABLE}.udSendToProcore ;;
  }

  dimension: ud_senior_pm {
    hidden: yes
    type: string
    sql: ${TABLE}.udSeniorPM ;;
  }

  dimension: sq_ft {
    label: "SQ Ft"
    type: number
    sql: ISNULL(${TABLE}.udSF,'0') ;;
  }

  dimension: sq_ft_notes {
    label: "SQ Ft Notes"
    type: string
    sql: ISNULL(${TABLE}.udSFNotes,'No notes provided') ;;
  }

  dimension: ud_slctins_admin_override {
    hidden: yes
    type: string
    sql: ${TABLE}.udSLCTInsAdminOverride ;;
  }

  dimension: ud_super_email {
    hidden: yes
    type: string
    sql: ${TABLE}.udSuperEmail ;;
  }

  dimension: superintendent {
    type: string
    sql: ISNULL(${TABLE}.udSuperintendent,'Unknown') ;;
  }

  dimension: ud_superintendent_phone {
    hidden: yes
    type: string
    sql: ${TABLE}.udSuperintendentPhone ;;
  }

  dimension: ud_ulti_pro_job {
    hidden: yes
    type: string
    sql: ${TABLE}.udUltiProJob ;;
  }

  dimension: ud_ulti_pro_location {
    hidden: yes
    type: string
    sql: ${TABLE}.udUltiProLocation ;;
  }

  dimension: udbuildersrisk {
    hidden: yes
    type: string
    sql: ${TABLE}.udbuildersrisk ;;
  }

  dimension: construct_type {
    type: string
    sql: CASE WHEN ${TABLE}.udconstructiontype IS NULL OR ${TABLE}.udconstructiontype='' THEN 'Unknown' ELSE LTRIM(RTRIM(${TABLE}.udconstructiontype)) END   ;;
  }

  dimension: contract_type {
    type: string
    sql: CASE WHEN ${TABLE}.udcontracttype IS NULL OR ${TABLE}.udcontracttype='' THEN 'Unknown' ELSE LTRIM(RTRIM(${TABLE}.udcontracttype)) END   ;;
  }

  dimension: job_description {
    type: string
    sql: ISNULL(REPLACE(REPLACE(${TABLE}.uddescription,CHAR(10),''),CHAR(13),''),'No description provided');;

  }

  dimension: udletterofintent {
    hidden: yes
    type: string
    sql: ${TABLE}.udletterofintent ;;
  }

  dimension: udnewjobinfo {
    hidden: yes
    type: string
    sql: ${TABLE}.udnewjobinfo ;;
  }

  dimension: type_of_industry {
    type: string
    sql: CASE WHEN ${TABLE}.udtypeofindustry IS NULL OR LTRIM(RTRIM(${TABLE}.udtypeofindustry))='Other' THEN 'Unknown' ELSE LTRIM(RTRIM(${TABLE}.udtypeofindustry)) END   ;;
  }

  dimension: unique_attch_id {
    hidden: yes
    type: string
    sql: ${TABLE}.UniqueAttchID ;;
  }

  dimension: update_apactuals_yn {
    hidden: yes
    type: string
    sql: ${TABLE}.UpdateAPActualsYN ;;
  }

  dimension: update_msactuals_yn {
    hidden: yes
    type: string
    sql: ${TABLE}.UpdateMSActualsYN ;;
  }

  dimension: update_plugs {
    hidden: yes
    type: string
    sql: ${TABLE}.UpdatePlugs ;;
  }

  dimension: use_tax_yn {
    hidden: yes
    type: string
    sql: ${TABLE}.UseTaxYN ;;
  }

  dimension: vendor_group {
    hidden: yes
    type: number
    sql: ${TABLE}.VendorGroup ;;
  }

  dimension: wght_avg_ot {
    hidden: yes
    type: string
    sql: ${TABLE}.WghtAvgOT ;;
  }

# }

# Derived Dimensions / Business Logic {

  dimension: job_status {
    case: {
      when: {
        label: "Pending"
        sql: ${job_status_number} = 0 ;;
      }
      when: {
        label: "Open"
        sql: ${job_status_number} = 1 ;;
      }
      when: {
        label: "Soft Closed"
        sql: ${job_status_number} = 2 ;;
      }
      else: "Closed"
    }
  }

  dimension: is_job_open {
    hidden: yes
    type: yesno
    sql: ${job_status_number} IN (0,1,2) ;;
  }

  dimension_group: start {
    convert_tz: no
    type: time
    timeframes: [raw,date,month,year]
    sql: coalesce(${ud_contract_date},${b_jccm.start_month_date}) ;;
  }

  dimension: revenue {
    group_label: "Financials"
    type: number
    sql: CONVERT(DECIMAL(16,2),ISNULL((${ndt_jccd_job_actual_cost.actual_cost}/NULLIF(CASE WHEN ${is_job_open} AND (NOT ${b_jccm.is_department_c}) AND ${ndt_jcop_job_projected_costs.proj_cost} = 0 THEN ${ndt_jccd_job_actual_cost.actual_cost} ELSE ${ndt_jcop_job_projected_costs.proj_cost} END,0))*${ndt_jcor_contract_values.estimated_contract_value},'0')) ;;
  }

# }

# Measure {
  measure: count_of_jobs {
    type: count
  }

  measure: total_revenue {
    type: sum
    sql: ${revenue} ;;
  }
#}

}
