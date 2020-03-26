view: b_arcm {
  view_label: "Client"

  sql_table_name: viewpoint.bARCM ;;

  dimension: key_id {
    hidden: yes
    primary_key: yes
    type: number
    sql: ${TABLE}.KeyID ;;
  }

  dimension: abn {
    hidden: yes
    type: string
    sql: ${TABLE}.ABN ;;
  }

  dimension: acn {
    hidden: yes
    type: string
    sql: ${TABLE}.ACN ;;
  }

  dimension: address {
    hidden: yes
    type: string
    sql: ${TABLE}.Address ;;
  }

  dimension: address2 {
    hidden: yes
    type: string
    sql: ${TABLE}.Address2 ;;
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

  dimension: bill_country {
    hidden: yes
    type: string
    sql: ${TABLE}.BillCountry ;;
  }

  dimension: bill_freq {
    hidden: yes
    type: string
    sql: ${TABLE}.BillFreq ;;
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

  dimension: city {
    hidden: yes
    type: string
    sql: ${TABLE}.City ;;
  }

  dimension: contact {
    hidden: yes
    type: string
    sql: ${TABLE}.Contact ;;
  }

  dimension: contact_ext {
    hidden: yes
    type: string
    sql: ${TABLE}.ContactExt ;;
  }

  dimension: country {
    hidden: yes
    type: string
    map_layer_name: countries
    sql: ${TABLE}.Country ;;
  }

  dimension: credit_limit {
    hidden: yes
    type: number
    sql: ${TABLE}.CreditLimit ;;
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

  dimension: date_opened {
    hidden: yes
    type: string
    sql: ${TABLE}.DateOpened ;;
  }

  dimension: disc_template {
    hidden: yes
    type: number
    sql: ${TABLE}.DiscTemplate ;;
  }

  dimension: email {
    hidden: yes
    type: string
    sql: ${TABLE}.EMail ;;
  }

  dimension: excl_cont_from_fc {
    hidden: yes
    type: string
    sql: ${TABLE}.ExclContFromFC ;;
  }

  dimension: fax {
    hidden: yes
    type: string
    sql: ${TABLE}.Fax ;;
  }

  dimension: fcpct {
    hidden: yes
    type: number
    sql: ${TABLE}.FCPct ;;
  }

  dimension: fctype {
    hidden: yes
    type: string
    sql: ${TABLE}.FCType ;;
  }

  dimension: haul_tax_opt {
    hidden: yes
    type: number
    sql: ${TABLE}.HaulTaxOpt ;;
  }

  dimension: inv_lvl {
    hidden: yes
    type: number
    sql: ${TABLE}.InvLvl ;;
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

  dimension: markup_disc_pct {
    hidden: yes
    type: number
    sql: ${TABLE}.MarkupDiscPct ;;
  }

  dimension: misc_dist_code {
    hidden: yes
    type: string
    sql: ${TABLE}.MiscDistCode ;;
  }

  dimension: misc_on_inv {
    hidden: yes
    type: string
    sql: ${TABLE}.MiscOnInv ;;
  }

  dimension: misc_on_pay {
    hidden: yes
    type: string
    sql: ${TABLE}.MiscOnPay ;;
  }

  dimension: msdefault_invoice_report {
    hidden: yes
    type: number
    sql: ${TABLE}.MSDefaultInvoiceReport ;;
  }

  dimension: client_name {
    type: string
    sql: coalesce(${TABLE}.Name,'Unknown') ;;
    required_fields: [key_id]
  }

  dimension: notes {
    hidden: yes
    type: string
    sql: ${TABLE}.Notes ;;
  }

  dimension: pay_terms {
    hidden: yes
    type: string
    sql: ${TABLE}.PayTerms ;;
  }

  dimension: phone {
    hidden: yes
    type: string
    sql: ${TABLE}.Phone ;;
  }

  dimension: price_template {
    hidden: yes
    type: number
    sql: ${TABLE}.PriceTemplate ;;
  }

  dimension: print_lvl {
    hidden: yes
    type: number
    sql: ${TABLE}.PrintLvl ;;
  }

  dimension: rec_type {
    hidden: yes
    type: number
    sql: ${TABLE}.RecType ;;
  }

  dimension: sel_purge {
    hidden: yes
    type: string
    sql: ${TABLE}.SelPurge ;;
  }

  dimension: sep_haul {
    hidden: yes
    type: string
    sql: ${TABLE}.SepHaul ;;
  }

  dimension: sort_name {
    hidden: yes
    type: string
    sql: ${TABLE}.SortName ;;
  }

  dimension: state {
    hidden: yes
    type: string
    sql: ${TABLE}.State ;;
  }

  dimension: status {
    hidden: yes
    type: string
    sql: ${TABLE}.Status ;;
  }

  dimension: stmnt_print {
    hidden: yes
    type: string
    sql: ${TABLE}.StmntPrint ;;
  }

  dimension: stmt_type {
    hidden: yes
    type: string
    sql: ${TABLE}.StmtType ;;
  }

  dimension: subtotal_lvl {
    hidden: yes
    type: number
    sql: ${TABLE}.SubtotalLvl ;;
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

  dimension: temp_yn {
    hidden: yes
    type: string
    sql: ${TABLE}.TempYN ;;
  }

  dimension: ud_send_to_procore {
    hidden: yes
    type: string
    sql: ${TABLE}.udSendToProcore ;;
  }

  dimension: unique_attch_id {
    hidden: yes
    type: string
    sql: ${TABLE}.UniqueAttchID ;;
  }

  dimension: url {
    hidden: yes
    type: string
    sql: ${TABLE}.URL ;;
  }

  dimension: zip {
    hidden: yes
    type: zipcode
    sql: ${TABLE}.Zip ;;
  }

  measure: count_of_clients {
    type: count
    drill_fields: [standard*]
  }

  set: standard {
    fields: [client_name]
  }
}
