view: fastfield_toolbox_talks {
  sql_table_name: (SELECT * FROM (SELECT *, ROW_NUMBER() OVER (PARTITION BY SubmissionID ORDER BY StartFormTimestamp DESC) as rank FROM dbo.Fastfield_ToolBoxTalk) as data WHERE rank = 1 ) ;;

  dimension: id {
    hidden: yes
    #primary_key: yes #This is naturally the primary key on the table
    type: number
    sql: ${TABLE}.Id ;;
  }

  dimension: submission_id {
    group_label: "Toolbox Talk Session"
    primary_key: yes #added logic to only have 1 submission
    type: string
    sql: ${TABLE}.SubmissionId ;;
  }

  dimension_group: talk {
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

  dimension: choose_a_tool_box_talk {
    group_label: "Toolbox Talk Session"
    type: string
    sql: ${TABLE}.ChooseaToolBoxTalk ;;
  }

  dimension: dispatch_id {
    group_label: "Toolbox Talk Session"
    type: number
    sql: ${TABLE}.DispatchId ;;
  }

  dimension: display_reference_value {
    group_label: "Toolbox Talk Session"
    type: string
    sql: ${TABLE}.DisplayReferenceValue ;;
  }

  dimension: form_name {
    group_label: "Toolbox Talk Session"
    type: string
    sql: ${TABLE}.FormName ;;
  }

  dimension: form_version {
    group_label: "Toolbox Talk Session"
    type: number
    sql: ${TABLE}.FormVersion ;;
  }

  dimension: job_name {
    group_label: "Toolbox Talk Session"
    type: string
    sql: ${TABLE}.JobName ;;
  }

  dimension: job_number {
    group_label: "Toolbox Talk Session"
    type: string
    sql: ${TABLE}.JobNumber ;;
  }

  dimension: sequence_number {
    group_label: "Toolbox Talk Session"
    type: number
    sql: ${TABLE}.SequenceNumber ;;
  }

  dimension_group: start_form {
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

  dimension_group: end_form {
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

  dimension: submitted_by {
    group_label: "Toolbox Talk Session"
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
    group_label: "Toolbox Talk Session"
    type: string
    sql: trim(${TABLE}.Superintendent) ;;
  }

  dimension: aerial_boom_lifts {
    group_label: "Documentation"
    type: string
    sql: ${TABLE}.AerialBoomLifts ;;
  }

  dimension: concrete_construction_safety {
    group_label: "Documentation"
    type: string
    sql: ${TABLE}.ConcreteConstructionSafety ;;
  }

  dimension: concrete_masonry_citations {
    group_label: "Documentation"
    type: string
    sql: ${TABLE}.ConcreteMasonryCitations ;;
  }

  dimension: cranes_derricks_assembly_disassembly {
    group_label: "Documentation"
    type: string
    sql: ${TABLE}.CranesDerricksAssemblyDisassembly ;;
  }

  dimension: cranes_derricks_inspections {
    group_label: "Documentation"
    type: string
    sql: ${TABLE}.CranesDerricksInspections ;;
  }

  dimension: cranes_derricks_operator_training {
    group_label: "Documentation"
    type: string
    sql: ${TABLE}.CranesDerricksOperatorTraining ;;
  }

  dimension: cranes_derricks_power_line_safety {
    group_label: "Documentation"
    type: string
    sql: ${TABLE}.CranesDerricksPowerLineSafety ;;
  }

  dimension: cranes_derricks_qualified_rigger_signal_person {
    group_label: "Documentation"
    type: string
    sql: ${TABLE}.CranesDerricksQualifiedRiggerSignalperson ;;
  }

  dimension: electrical_accident_prevention {
    group_label: "Documentation"
    type: string
    sql: ${TABLE}.ElectricalAccidentPrevention ;;
  }

  dimension: electrical_extension_cords {
    group_label: "Documentation"
    type: string
    sql: ${TABLE}.ElectricalExtensionCords ;;
  }

  dimension: electrical_safe_work_practices {
    group_label: "Documentation"
    type: string
    sql: ${TABLE}.ElectricalSafeWorkPractices ;;
  }

  dimension: ergonomics_back_lifting_safety {
    group_label: "Documentation"
    type: string
    sql: ${TABLE}.ErgonomicsBackLiftingSafety ;;
  }

  dimension: excavation_protective_systems {
    group_label: "Documentation"
    type: string
    sql: ${TABLE}.ExcavationProtectiveSystems ;;
  }

  dimension: excavation_soil_classification {
    group_label: "Documentation"
    type: string
    sql: ${TABLE}.ExcavationSoilClassification ;;
  }

  dimension: excavation_underground_utilities {
    group_label: "Documentation"
    type: string
    sql: ${TABLE}.ExcavationUndergroundUtilities ;;
  }

  dimension: excavations_citations {
    group_label: "Documentation"
    type: string
    sql: ${TABLE}.ExcavationsCitations ;;
  }

  dimension: extension_ladder_selection {
    group_label: "Documentation"
    type: string
    sql: ${TABLE}.ExtensionLadderSelection ;;
  }

  dimension: fire_extinguishers {
    group_label: "Documentation"
    type: string
    sql: ${TABLE}.FireExtinguishers ;;
  }

  dimension: first_aid_cold_related_injury_illness {
    group_label: "Documentation"
    type: string
    sql: ${TABLE}.FirstAidColdRelatedInjuryIllness ;;
  }

  dimension: first_aid_heat_related_injury_illness {
    group_label: "Documentation"
    type: string
    sql: ${TABLE}.FirstAidHeatRelatedInjuryIllness ;;
  }

  dimension: flammable_liquids {
    group_label: "Documentation"
    type: string
    sql: ${TABLE}.FlammableLiquids ;;
  }

  dimension: forklift_handling_loads {
    group_label: "Documentation"
    type: string
    sql: ${TABLE}.ForkliftHandlingLoads ;;
  }

  dimension: forklift_inspections {
    group_label: "Documentation"
    type: string
    sql: ${TABLE}.ForkliftInspections ;;
  }

  dimension: general_building_site_safety {
    group_label: "Documentation"
    type: string
    sql: ${TABLE}.GeneralBuildingSiteSafety ;;
  }

  dimension: hand_power_tools {
    group_label: "Documentation"
    type: string
    sql: ${TABLE}.HandPowerTools ;;
  }

  dimension: hand_tool_safety {
    group_label: "Documentation"
    type: string
    sql: ${TABLE}.HandToolSafety ;;
  }

  dimension: hazcom_ghs_pictograms {
    group_label: "Documentation"
    type: string
    sql: ${TABLE}.HAZCOMGHSPictograms ;;
  }

  dimension: hazcom_safety_data_sheets {
    group_label: "Documentation"
    type: string
    sql: ${TABLE}.HAZCOMSafetyDataSheets ;;
  }

  dimension: heavy_construction_flagging_safety {
    group_label: "Documentation"
    type: string
    sql: ${TABLE}.HeavyConstructionFlaggingSafety ;;
  }

  dimension: heavy_equipment_materials_handling_equipment {
    group_label: "Documentation"
    type: string
    sql: ${TABLE}.HeavyEquipmentMaterialsHandlingEquipment ;;
  }

  dimension: heavy_equipment_operating_safely {
    group_label: "Documentation"
    type: string
    sql: ${TABLE}.HeavyEquipmentOperatingSafely ;;
  }

  dimension: heavy_equipment_working_around_heavy_equipment {
    group_label: "Documentation"
    type: string
    sql: ${TABLE}.HeavyEquipmentWorkingAroundHeavyEquipment ;;
  }

  dimension: impalement_protection {
    group_label: "Documentation"
    type: string
    sql: ${TABLE}.ImpalementProtection ;;
  }

  dimension: ladders_stairways_ladders {
    group_label: "Documentation"
    type: string
    sql: ${TABLE}.LaddersStairwaysLadders ;;
  }

  dimension: ladders_stairways_stairways {
    group_label: "Documentation"
    type: string
    sql: ${TABLE}.LaddersStairwaysStairways ;;
  }

  dimension: loto_electrical_equipment {
    group_label: "Documentation"
    type: string
    sql: ${TABLE}.LOTOElectricalEquipment ;;
  }

  dimension: material_handling_compressed_gas_cylinders {
    group_label: "Documentation"
    type: string
    sql: ${TABLE}.MaterialHandlingCompressedGasCylinders ;;
  }

  dimension: material_handling_housekeeping {
    group_label: "Documentation"
    type: string
    sql: ${TABLE}.MaterialHandlingHousekeeping ;;
  }

  dimension: pneumatic_tools {
    group_label: "Documentation"
    type: string
    sql: ${TABLE}.PneumaticTools ;;
  }

  dimension: powder_actuated_tools {
    group_label: "Documentation"
    type: string
    sql: ${TABLE}.PowderActuatedTools ;;
  }

  dimension: power_tools {
    group_label: "Documentation"
    type: string
    sql: ${TABLE}.PowerTools ;;
  }

  dimension: ppe_eye_protection {
    group_label: "Documentation"
    type: string
    sql: ${TABLE}.PPEEyeProtection ;;
  }

  dimension: ppe_hand_protection {
    group_label: "Documentation"
    type: string
    sql: ${TABLE}.PPEHandProtection ;;
  }

  dimension: ppe_head_protection {
    group_label: "Documentation"
    type: string
    sql: ${TABLE}.PPEHeadProtection ;;
  }

  dimension: ppe_noise {
    group_label: "Documentation"
    type: string
    sql: ${TABLE}.PPENoise ;;
  }

  dimension: respiratory_protection {
    group_label: "Documentation"
    type: string
    sql: ${TABLE}.RespiratoryProtection ;;
  }

  dimension: scaffolding_access {
    group_label: "Documentation"
    type: string
    sql: ${TABLE}.ScaffoldingAccess ;;
  }

  dimension: scaffolding_erecting_dismantling {
    group_label: "Documentation"
    type: string
    sql: ${TABLE}.ScaffoldingErectingDismantling ;;
  }

  dimension: scaffolding_fall_protection {
    group_label: "Documentation"
    type: string
    sql: ${TABLE}.ScaffoldingFallProtection ;;
  }

  dimension: scaffolding_using_scaffolds {
    group_label: "Documentation"
    type: string
    sql: ${TABLE}.ScaffoldingUsingScaffolds ;;
  }

  dimension: scissor_lifts {
    group_label: "Documentation"
    type: string
    sql: ${TABLE}.ScissorLifts ;;
  }

  measure: count_of_toolbox_talks {
    type: count
  }
}
