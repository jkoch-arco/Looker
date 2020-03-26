view: b_hqco {
  view_label: "Company"

  sql_table_name: viewpoint.bHQCO ;;

  # Dimensions {

  dimension: key_id {
    hidden: yes
    primary_key: yes
    type: number
    sql: ${TABLE}.KeyID ;;
  }

  dimension: hqco {
    label: "Company Number"
    type: number
    sql: ${TABLE}.HQCo ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: address {
    group_label: "Address"
    type: string
    sql: ${TABLE}.Address ;;
  }

  dimension: city {
    group_label: "Address"
    type: string
    sql: ${TABLE}.City ;;
  }

  dimension: state {
    group_label: "Address"
    type: string
    sql: ${TABLE}.State ;;
  }

  dimension: zip {
    group_label: "Address"
    type: string
    sql: ${TABLE}.Zip ;;
  }

  dimension: address_2 {
    group_label: "Address"
    type: string
    sql: ${TABLE}.Address2 ;;
  }

  dimension: fed_tax_id {
    group_label: "Tax"
    type: string
    sql: ${TABLE}.FedTaxId ;;
  }

  dimension: phone {
    group_label: "Contact"
    type: string
    sql: ${TABLE}.Phone ;;
  }

  dimension: fax {
    group_label: "Contact"
    type: string
    sql: ${TABLE}.Fax ;;
  }

  dimension: vendor_group {
    group_label: "Classification"
    type: number
    sql: ${TABLE}.VendorGroup ;;
  }

  dimension: material_group {
    group_label: "Classification"
    type: number
    sql: ${TABLE}.MatlGroup ;;
  }

  dimension: phase_group {
    group_label: "Classification"
    type: number
    sql: ${TABLE}.PhaseGroup ;;
  }

  dimension: customer_group {
    group_label: "Classification"
    type: number
    sql: ${TABLE}.CustGroup ;;
  }

  dimension: tax_group {
    group_label: "Classification"
    type: number
    sql: ${TABLE}.TaxGroup ;;
  }

  dimension: em_group {
    group_label: "Classification"
    label: "EM Group"
    type: number
    sql: ${TABLE}.EMGroup ;;
  }

  dimension: vendor {
    group_label: "Other"
    type: number
    sql: ${TABLE}.Vendor ;;
  }

  dimension: customer {
    group_label: "Other"
    type: number
    sql: ${TABLE}.Customer ;;
  }

  dimension: audit_co_params {
    group_label: "Audit"
    type: string
    sql: ${TABLE}.AuditCoParams ;;
  }

  dimension: audit_tax {
    group_label: "Audit"
    type: string
    sql: ${TABLE}.AuditTax ;;
  }

  dimension: audit_material {
    group_label: "Audit"
    type: string
    sql: ${TABLE}.AuditMatl ;;
  }

  dimension: notes {
    group_label: "Other"
    type: string
    sql: ${TABLE}.Notes ;;
  }

  dimension: unique_attch_id {
    group_label: "Other"
    type: string
    sql: ${TABLE}.UniqueAttchID ;;
  }

  dimension: shop_group {
    group_label: "Other"
    type: number
    sql: ${TABLE}.ShopGroup ;;
  }

  dimension: stemp_id {
    group_label: "Other"
    type: string
    sql: ${TABLE}.STEmpId ;;
  }

  dimension: menu_image {
    group_label: "Other"
    type: string
    sql: ${TABLE}.MenuImage ;;
  }

  dimension: country {
    group_label: "Address"
    type: string
    sql: ${TABLE}.Country ;;
  }

  dimension: default_country {
    group_label: "Address"
    type: string
    sql: ${TABLE}.DefaultCountry ;;
  }

  dimension: report_date_format {
    hidden: yes
    type: number
    sql: ${TABLE}.ReportDateFormat ;;
  }

  dimension: contact_group {
    group_label: "Classification"
    type: number
    sql: ${TABLE}.ContactGroup ;;
  }

  dimension: audit_contact {
    group_label: "Audit"
    type: string
    sql: ${TABLE}.AuditContact ;;
  }

  dimension: dfid {
    hidden: yes
    type: number
    sql: ${TABLE}.DFId ;;
  }

  dimension: currency_id {
    hidden: yes
    type: number
    sql: ${TABLE}.CurrencyID ;;
  }

  dimension: mask_id {
    hidden: yes
    type: number
    sql: ${TABLE}.MaskId ;;
  }

  dimension: ud_report_logo_path_file {
    group_label: "UD"
    type: string
    sql: ${TABLE}.udReportLogoPathFile ;;
  }

  dimension: ud_skip_new_job_notifier {
    group_label: "UD"
    type: string
    sql: ${TABLE}.udSkipNewJobNotifier ;;
  }

  dimension: quebec_employer_id {
    group_label: "Tax"
    type: string
    sql: ${TABLE}.QuebecEmployerID ;;
  }

  dimension: ud_slcompliance_email {
    group_label: "UD"
    type: string
    sql: ${TABLE}.udSLComplianceEmail ;;
  }

  dimension: ud_omit_safety_list {
    group_label: "UD"
    type: string
    sql: ${TABLE}.udOmitSafetyList ;;
  }

  dimension: ud_slcompliance_name {
    group_label: "UD"
    type: string
    sql: ${TABLE}.udSLComplianceName ;;
  }

  dimension: ud_slctinsurance_admin {
    group_label: "UD"
    type: string
    sql: ${TABLE}.udSLCTInsuranceAdmin ;;
  }

  dimension: ud_company_lic_holder_fl {
    group_label: "UD"
    type: string
    sql: ${TABLE}.udCompanyLicHolderFL ;;
  }

  dimension: ud_sub_exchange_exclude {
    group_label: "UD"
    type: string
    sql: ${TABLE}.udSubExchangeExclude ;;
  }

  dimension: ud_concur_integration {
    group_label: "UD"
    type: string
    sql: ${TABLE}.udConcurIntegration ;;
  }

  dimension: ud_pmcoreason_reqd {
    group_label: "UD"
    type: string
    sql: ${TABLE}.udPMCOReasonReqd ;;
  }

  dimension: ud_month_end_unsubscribe {
    group_label: "UD"
    type: string
    sql: ${TABLE}.udMonthEndUnsubscribe ;;
  }

  dimension: ud_sabbatical {
    group_label: "UD"
    type: string
    sql: ${TABLE}.udSabbatical ;;
  }

  dimension: duns {
    group_label: "Other"
    label: "DUNS"
    type: string
    sql: ${TABLE}.DUNS ;;
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

  #}

  # Measures {

  measure: count_of_companies {
    type: count
    drill_fields: [standard*]
  }

  #}

  # Drill Sets {

  set: standard {
    fields: [hqco,name]
  }

  #}
}
