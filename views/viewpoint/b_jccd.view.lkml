view: b_jccd {
  sql_table_name: viewpoint.bJCCD ;;

  measure: count {
    type: count
  }

  measure: vp_actual_cost {
    type: sum
    sql: ${actual_cost} ;;
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

  dimension_group: mth {
    convert_tz: no
    type: time
    timeframes: [raw,date]
    sql: ${TABLE}.Mth ;;
  }

#   dimension_group: mth {
#     type: time
#     timeframes: [raw,date]
#     sql: CONVERT(nvarchar(6), ${mth_raw}, 112) ;;
#   }



  dimension: cost_trans {
    type: number
    sql: ${TABLE}.CostTrans ;;
  }

  dimension: job {
    type: string
    sql: LTRIM(RTRIM(${TABLE}.Job)) ;;
  }

  dimension: phase_group {
    type: number
    sql: ${TABLE}.PhaseGroup ;;
  }

  dimension: phase {
    type: string
    sql: ${TABLE}.Phase ;;
  }

  dimension: cost_type {
    type: number
    sql: ${TABLE}.CostType ;;
  }

  dimension: posted_date {
    type: string
    sql: ${TABLE}.PostedDate ;;
  }

  dimension: actual_date {
    type: string
    sql: ${TABLE}.ActualDate ;;
  }

  dimension: jctrans_type {
    type: string
    sql: ${TABLE}.JCTransType ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.Source ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }

  dimension: batch_id {
    type: number
    sql: ${TABLE}.BatchId ;;
  }

  dimension: in_use_batch_id {
    type: number
    sql: ${TABLE}.InUseBatchId ;;
  }

  dimension: glco {
    type: number
    sql: ${TABLE}.GLCo ;;
  }

  dimension: gltrans_acct {
    type: string
    sql: ${TABLE}.GLTransAcct ;;
  }

  dimension: gloffset_acct {
    type: string
    sql: ${TABLE}.GLOffsetAcct ;;
  }

  dimension: reversal_status {
    type: number
    sql: ${TABLE}.ReversalStatus ;;
  }

  dimension: um {
    type: string
    sql: ${TABLE}.UM ;;
  }

  dimension: actual_unit_cost {
    type: number
    sql: ${TABLE}.ActualUnitCost ;;
  }

  dimension: per_ecm {
    type: string
    sql: ${TABLE}.PerECM ;;
  }

  dimension: actual_hours {
    type: number
    sql: ${TABLE}.ActualHours ;;
  }

  dimension: actual_units {
    type: number
    sql: ${TABLE}.ActualUnits ;;
  }

  dimension: actual_cost {
    type: number
    sql: ${TABLE}.ActualCost ;;
  }

  dimension: progress_cmplt {
    type: number
    sql: ${TABLE}.ProgressCmplt ;;
  }

  dimension: est_hours {
    type: number
    sql: ${TABLE}.EstHours ;;
  }

  dimension: est_units {
    type: number
    sql: ${TABLE}.EstUnits ;;
  }

  dimension: est_cost {
    type: number
    sql: ${TABLE}.EstCost ;;
  }

  dimension: proj_hours {
    type: number
    sql: ${TABLE}.ProjHours ;;
  }

  dimension: proj_units {
    type: number
    sql: ${TABLE}.ProjUnits ;;
  }

  dimension: proj_cost {
    type: number
    sql: ${TABLE}.ProjCost ;;
  }

  dimension: forecast_hours {
    type: number
    sql: ${TABLE}.ForecastHours ;;
  }

  dimension: forecast_units {
    type: number
    sql: ${TABLE}.ForecastUnits ;;
  }

  dimension: forecast_cost {
    type: number
    sql: ${TABLE}.ForecastCost ;;
  }

  dimension: posted_um {
    type: string
    sql: ${TABLE}.PostedUM ;;
  }

  dimension: posted_units {
    type: number
    sql: ${TABLE}.PostedUnits ;;
  }

  dimension: posted_unit_cost {
    type: number
    sql: ${TABLE}.PostedUnitCost ;;
  }

  dimension: posted_ecm {
    type: string
    sql: ${TABLE}.PostedECM ;;
  }

  dimension: post_tot_cm_units {
    type: number
    sql: ${TABLE}.PostTotCmUnits ;;
  }

  dimension: post_rem_cm_units {
    type: number
    sql: ${TABLE}.PostRemCmUnits ;;
  }

  dimension: total_cmtd_units {
    type: number
    sql: ${TABLE}.TotalCmtdUnits ;;
  }

  dimension: total_cmtd_cost {
    type: number
    sql: ${TABLE}.TotalCmtdCost ;;
  }

  dimension: remain_cmtd_units {
    type: number
    sql: ${TABLE}.RemainCmtdUnits ;;
  }

  dimension: remain_cmtd_cost {
    type: number
    sql: ${TABLE}.RemainCmtdCost ;;
  }

  dimension: delete_flag {
    type: string
    sql: ${TABLE}.DeleteFlag ;;
  }

  dimension: alloc_code {
    type: number
    sql: ${TABLE}.AllocCode ;;
  }

  dimension: aco {
    type: string
    sql: ${TABLE}.ACO ;;
  }

  dimension: acoitem {
    type: string
    sql: ${TABLE}.ACOItem ;;
  }

  dimension: prco {
    type: number
    sql: ${TABLE}.PRCo ;;
  }

  dimension: employee {
    type: number
    sql: ${TABLE}.Employee ;;
  }

  dimension: craft {
    type: string
    sql: ${TABLE}.Craft ;;
  }

  dimension: class {
    type: string
    sql: ${TABLE}.Class ;;
  }

  dimension: crew {
    type: string
    sql: ${TABLE}.Crew ;;
  }

  dimension: earn_factor {
    type: number
    sql: ${TABLE}.EarnFactor ;;
  }

  dimension: earn_type {
    type: number
    sql: ${TABLE}.EarnType ;;
  }

  dimension: shift {
    type: number
    sql: ${TABLE}.Shift ;;
  }

  dimension: liability_type {
    type: number
    sql: ${TABLE}.LiabilityType ;;
  }

  dimension: vendor_group {
    type: number
    sql: ${TABLE}.VendorGroup ;;
  }

  dimension: vendor {
    type: number
    sql: ${TABLE}.Vendor ;;
  }

  dimension: apco {
    type: number
    sql: ${TABLE}.APCo ;;
  }

  dimension: aptrans {
    type: number
    sql: ${TABLE}.APTrans ;;
  }

  dimension: apline {
    type: number
    sql: ${TABLE}.APLine ;;
  }

  dimension: apref {
    type: string
    sql: ${TABLE}.APRef ;;
  }

  dimension: po {
    type: string
    sql: ${TABLE}.PO ;;
  }

  dimension: poitem {
    type: number
    sql: ${TABLE}.POItem ;;
  }

  dimension: sl {
    type: string
    sql: ${TABLE}.SL ;;
  }

  dimension: slitem {
    type: number
    sql: ${TABLE}.SLItem ;;
  }

  dimension: mo {
    type: string
    sql: ${TABLE}.MO ;;
  }

  dimension: moitem {
    type: number
    sql: ${TABLE}.MOItem ;;
  }

  dimension: matl_group {
    type: number
    sql: ${TABLE}.MatlGroup ;;
  }

  dimension: material {
    type: string
    sql: ${TABLE}.Material ;;
  }

  dimension: inco {
    type: number
    sql: ${TABLE}.INCo ;;
  }

  dimension: loc {
    type: string
    sql: ${TABLE}.Loc ;;
  }

  dimension: instd_unit_cost {
    type: number
    sql: ${TABLE}.INStdUnitCost ;;
  }

  dimension: instd_ecm {
    type: string
    sql: ${TABLE}.INStdECM ;;
  }

  dimension: instd_um {
    type: string
    sql: ${TABLE}.INStdUM ;;
  }

  dimension: mstrans {
    type: number
    sql: ${TABLE}.MSTrans ;;
  }

  dimension: msticket {
    type: string
    sql: ${TABLE}.MSTicket ;;
  }

  dimension: jbbill_status {
    type: string
    sql: ${TABLE}.JBBillStatus ;;
  }

  dimension: jbbill_month {
    type: string
    sql: ${TABLE}.JBBillMonth ;;
  }

  dimension: jbbill_number {
    type: number
    sql: ${TABLE}.JBBillNumber ;;
  }

  dimension: emco {
    type: number
    sql: ${TABLE}.EMCo ;;
  }

  dimension: emequip {
    type: string
    sql: ${TABLE}.EMEquip ;;
  }

  dimension: emrev_code {
    type: string
    sql: ${TABLE}.EMRevCode ;;
  }

  dimension: emgroup {
    type: number
    sql: ${TABLE}.EMGroup ;;
  }

  dimension: emtrans {
    type: number
    sql: ${TABLE}.EMTrans ;;
  }

  dimension: tax_type {
    type: number
    sql: ${TABLE}.TaxType ;;
  }

  dimension: tax_group {
    type: number
    sql: ${TABLE}.TaxGroup ;;
  }

  dimension: tax_code {
    type: string
    sql: ${TABLE}.TaxCode ;;
  }

  dimension: tax_basis {
    type: number
    sql: ${TABLE}.TaxBasis ;;
  }

  dimension: tax_amt {
    type: number
    sql: ${TABLE}.TaxAmt ;;
  }

  dimension: unique_attch_id {
    type: string
    sql: ${TABLE}.UniqueAttchID ;;
  }

  dimension: src_jcco {
    type: number
    sql: ${TABLE}.SrcJCCo ;;
  }

  dimension: total_cmtd_tax {
    type: number
    sql: ${TABLE}.TotalCmtdTax ;;
  }

  dimension: rem_cmtd_tax {
    type: number
    sql: ${TABLE}.RemCmtdTax ;;
  }

  dimension: offset_glco {
    type: number
    sql: ${TABLE}.OffsetGLCo ;;
  }

  dimension: poitem_line {
    type: number
    sql: ${TABLE}.POItemLine ;;
  }

  dimension: smwork_completed_id {
    type: number
    sql: ${TABLE}.SMWorkCompletedID ;;
  }

  dimension: smco {
    type: number
    sql: ${TABLE}.SMCo ;;
  }

  dimension: smwork_order {
    type: number
    sql: ${TABLE}.SMWorkOrder ;;
  }

  dimension: smscope {
    type: number
    sql: ${TABLE}.SMScope ;;
  }

  dimension: pmcost_projection {
    type: string
    sql: ${TABLE}.PMCostProjection ;;
  }

  dimension: ud_legal_code {
    type: string
    sql: ${TABLE}.udLegalCode ;;
  }

  dimension: pordkey_id {
    type: number
    sql: ${TABLE}.PORDKeyID ;;
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
