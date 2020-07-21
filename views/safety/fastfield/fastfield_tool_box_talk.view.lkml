view: fastfield_tool_box_talk {
  sql_table_name: dbo.Fastfield_ToolBoxTalk ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Id ;;
  }

  dimension: aerial_boom_lifts {
    type: string
    sql: ${TABLE}.AerialBoomLifts ;;
  }

  dimension: choosea_tool_box_talk {
    type: string
    sql: ${TABLE}.ChooseaToolBoxTalk ;;
  }

  dimension: concrete_construction_safety {
    type: string
    sql: ${TABLE}.ConcreteConstructionSafety ;;
  }

  dimension: concrete_masonry_citations {
    type: string
    sql: ${TABLE}.ConcreteMasonryCitations ;;
  }

  dimension: cranes_derricks_assembly_disassembly {
    type: string
    sql: ${TABLE}.CranesDerricksAssemblyDisassembly ;;
  }

  dimension: cranes_derricks_inspections {
    type: string
    sql: ${TABLE}.CranesDerricksInspections ;;
  }

  dimension: cranes_derricks_operator_training {
    type: string
    sql: ${TABLE}.CranesDerricksOperatorTraining ;;
  }

  dimension: cranes_derricks_power_line_safety {
    type: string
    sql: ${TABLE}.CranesDerricksPowerLineSafety ;;
  }

  dimension: cranes_derricks_qualified_rigger_signalperson {
    type: string
    sql: ${TABLE}.CranesDerricksQualifiedRiggerSignalperson ;;
  }

  dimension_group: date {
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
    sql: ${TABLE}.Date ;;
  }

  dimension: dispatch_id {
    type: number
    sql: ${TABLE}.DispatchId ;;
  }

  dimension: display_reference_value {
    type: string
    sql: ${TABLE}.DisplayReferenceValue ;;
  }

  dimension: electrical_accident_prevention {
    type: string
    sql: ${TABLE}.ElectricalAccidentPrevention ;;
  }

  dimension: electrical_extension_cords {
    type: string
    sql: ${TABLE}.ElectricalExtensionCords ;;
  }

  dimension: electrical_safe_work_practices {
    type: string
    sql: ${TABLE}.ElectricalSafeWorkPractices ;;
  }

  dimension_group: end_form_timestamp {
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
    sql: ${TABLE}.EndFormTimestamp ;;
  }

  dimension: ergonomics_back_lifting_safety {
    type: string
    sql: ${TABLE}.ErgonomicsBackLiftingSafety ;;
  }

  dimension: excavation_protective_systems {
    type: string
    sql: ${TABLE}.ExcavationProtectiveSystems ;;
  }

  dimension: excavation_soil_classification {
    type: string
    sql: ${TABLE}.ExcavationSoilClassification ;;
  }

  dimension: excavation_underground_utilities {
    type: string
    sql: ${TABLE}.ExcavationUndergroundUtilities ;;
  }

  dimension: excavations_citations {
    type: string
    sql: ${TABLE}.ExcavationsCitations ;;
  }

  dimension: extension_ladder_selection {
    type: string
    sql: ${TABLE}.ExtensionLadderSelection ;;
  }

  dimension: fire_extinguishers {
    type: string
    sql: ${TABLE}.FireExtinguishers ;;
  }

  dimension: first_aid_cold_related_injury_illness {
    type: string
    sql: ${TABLE}.FirstAidColdRelatedInjuryIllness ;;
  }

  dimension: first_aid_heat_related_injury_illness {
    type: string
    sql: ${TABLE}.FirstAidHeatRelatedInjuryIllness ;;
  }

  dimension: flammable_liquids {
    type: string
    sql: ${TABLE}.FlammableLiquids ;;
  }

  dimension: forklift_handling_loads {
    type: string
    sql: ${TABLE}.ForkliftHandlingLoads ;;
  }

  dimension: forklift_inspections {
    type: string
    sql: ${TABLE}.ForkliftInspections ;;
  }

  dimension: form_name {
    type: string
    sql: ${TABLE}.FormName ;;
  }

  dimension: form_version {
    type: number
    sql: ${TABLE}.FormVersion ;;
  }

  dimension: general_building_site_safety {
    type: string
    sql: ${TABLE}.GeneralBuildingSiteSafety ;;
  }

  dimension: hand_power_tools {
    type: string
    sql: ${TABLE}.HandPowerTools ;;
  }

  dimension: hand_tool_safety {
    type: string
    sql: ${TABLE}.HandToolSafety ;;
  }

  dimension: hazcomghspictograms {
    type: string
    sql: ${TABLE}.HAZCOMGHSPictograms ;;
  }

  dimension: hazcomsafety_data_sheets {
    type: string
    sql: ${TABLE}.HAZCOMSafetyDataSheets ;;
  }

  dimension: heavy_construction_flagging_safety {
    type: string
    sql: ${TABLE}.HeavyConstructionFlaggingSafety ;;
  }

  dimension: heavy_equipment_materials_handling_equipment {
    type: string
    sql: ${TABLE}.HeavyEquipmentMaterialsHandlingEquipment ;;
  }

  dimension: heavy_equipment_operating_safely {
    type: string
    sql: ${TABLE}.HeavyEquipmentOperatingSafely ;;
  }

  dimension: heavy_equipment_working_around_heavy_equipment {
    type: string
    sql: ${TABLE}.HeavyEquipmentWorkingAroundHeavyEquipment ;;
  }

  dimension: impalement_protection {
    type: string
    sql: ${TABLE}.ImpalementProtection ;;
  }

  dimension: job_name {
    type: string
    sql: ${TABLE}.JobName ;;
  }

  dimension: job_number {
    type: string
    sql: ${TABLE}.JobNumber ;;
  }

  dimension: ladders_stairways_ladders {
    type: string
    sql: ${TABLE}.LaddersStairwaysLadders ;;
  }

  dimension: ladders_stairways_stairways {
    type: string
    sql: ${TABLE}.LaddersStairwaysStairways ;;
  }

  dimension: lotoelectrical_equipment {
    type: string
    sql: ${TABLE}.LOTOElectricalEquipment ;;
  }

  dimension: material_handling_compressed_gas_cylinders {
    type: string
    sql: ${TABLE}.MaterialHandlingCompressedGasCylinders ;;
  }

  dimension: material_handling_housekeeping {
    type: string
    sql: ${TABLE}.MaterialHandlingHousekeeping ;;
  }

  dimension: pneumatic_tools {
    type: string
    sql: ${TABLE}.PneumaticTools ;;
  }

  dimension: powder_actuated_tools {
    type: string
    sql: ${TABLE}.PowderActuatedTools ;;
  }

  dimension: power_tools {
    type: string
    sql: ${TABLE}.PowerTools ;;
  }

  dimension: ppeeye_protection {
    type: string
    sql: ${TABLE}.PPEEyeProtection ;;
  }

  dimension: ppehand_protection {
    type: string
    sql: ${TABLE}.PPEHandProtection ;;
  }

  dimension: ppehead_protection {
    type: string
    sql: ${TABLE}.PPEHeadProtection ;;
  }

  dimension: ppenoise {
    type: string
    sql: ${TABLE}.PPENoise ;;
  }

  dimension: respiratory_protection {
    type: string
    sql: ${TABLE}.RespiratoryProtection ;;
  }

  dimension: scaffolding_access {
    type: string
    sql: ${TABLE}.ScaffoldingAccess ;;
  }

  dimension: scaffolding_erecting_dismantling {
    type: string
    sql: ${TABLE}.ScaffoldingErectingDismantling ;;
  }

  dimension: scaffolding_fall_protection {
    type: string
    sql: ${TABLE}.ScaffoldingFallProtection ;;
  }

  dimension: scaffolding_using_scaffolds {
    type: string
    sql: ${TABLE}.ScaffoldingUsingScaffolds ;;
  }

  dimension: scissor_lifts {
    type: string
    sql: ${TABLE}.ScissorLifts ;;
  }

  dimension: sequence_number {
    type: number
    sql: ${TABLE}.SequenceNumber ;;
  }

  dimension_group: start_form_timestamp {
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
    sql: ${TABLE}.StartFormTimestamp ;;
  }

  dimension: submission_id {
    type: string
    sql: ${TABLE}.SubmissionId ;;
  }

  dimension: submitted_by {
    type: string
    sql: ${TABLE}.SubmittedBy ;;
  }

  dimension_group: submitted {
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
    sql: ${TABLE}.SubmittedOn ;;
  }

  dimension: superintendent {
    type: string
    sql: ${TABLE}.Superintendent ;;
  }

  measure: count {
    type: count
    drill_fields: [id, form_name, job_name]
  }
}
