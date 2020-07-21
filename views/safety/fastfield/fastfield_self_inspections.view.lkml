view: fastfield_self_inspections {
  sql_table_name: dbo.FastField_WeeklySelfInspection ;;

  dimension: submission_id {
    primary_key: yes
    group_label: "Inspection Information"
    type: string
    sql: ${TABLE}.SubmissionId ;;
  }

  dimension: hazard_communication_programs_available {
    group_label: "Questionnaire"
    description: "Are hazard communication programs available with material safety data sheets?"
    type: string
    case: {
      when: {
        label: "Yes"
        sql:  ${TABLE}.AreHazardCommunicationprogramsavailablewithMaterialSafetyDataShe = 1 ;;
      }
      when: {
        label: "No"
        sql:  ${TABLE}.AreHazardCommunicationprogramsavailablewithMaterialSafetyDataShe = -1 ;;
      }
      when: {
        label: "Neutral"
        sql:  ${TABLE}.AreHazardCommunicationprogramsavailablewithMaterialSafetyDataShe = 0 ;;
      }
      else: "N/A"
    }
  }

  dimension: smoking_signs_posted {
    group_label: "Questionnaire"
    description: "Are no smoking signs located near flammable liquid and gas storage?"
    type: string
    case: {
      when: {
        label: "Yes"
        sql:  ${TABLE}.AreNoSmokingsignslocatednearflammableliquidandgasstorage = 1 ;;
      }
      when: {
        label: "No"
        sql:  ${TABLE}.AreNoSmokingsignslocatednearflammableliquidandgasstorage = -1 ;;
      }
      else: "N/A"
    }
  }

  dimension: alarms_operational {
    group_label: "Questionnaire"
    description: "Are all alarms working and audible?"
    type: string
    case: {
      when: {
        label: "Yes"
        sql:  ${TABLE}.Arealarmsworkingandaudible = 1 ;;
      }
      when: {
        label: "No"
        sql:  ${TABLE}.Arealarmsworkingandaudible = -1 ;;
      }
      else: "N/A"
    }
  }

  dimension: lpg_stored_correctly {
    group_label: "Questionnaire"
    label: "LPG Storage"
    description: "Are all LPG bottles being stored outside of the building?"
    type: string
    case: {
      when: {
        label: "Yes"
        sql:  ${TABLE}.AreallLPGbottlesbeingstoredoutsideofthebuilding = 1 ;;
      }
      when: {
        label: "No"
        sql:  ${TABLE}.AreallLPGbottlesbeingstoredoutsideofthebuilding = -1 ;;
      }
      else: "N/A"
    }
  }

  dimension: fire_extinguishers_ready_for_use {
    group_label: "Questionnaire"
    type: string
    description: "Are all fire extinguishers charged and ready for use?"
    case: {
      when: {
        label: "Yes"
        sql:  ${TABLE}.Areallfireextinguisherschargedandreadyforuse = 1 ;;
      }
      when: {
        label: "No"
        sql:  ${TABLE}.Areallfireextinguisherschargedandreadyforuse = -1 ;;
      }
      else: "N/A"
    }
  }

  dimension: fire_extinguishers_staged_and_compliant {
    group_label: "Questionnaire"
    type: string
    description: "Are all fire extinguishers staged and compliant within insepection date"
    case: {
      when: {
        label: "Yes"
        sql:  ${TABLE}.Areallfireextinguisherstaggedandcompliantwithinspectiondate = 1 ;;
      }
      when: {
        label: "No"
        sql:  ${TABLE}.Areallfireextinguisherstaggedandcompliantwithinspectiondate = -1 ;;
      }
      else: "N/A"
    }
  }

  dimension: flammable_liquids_stored_correctly {
    group_label: "Questionnaire"
    description: "Are all flammable liquids being kept in a pproved flame resistant metal containers?"
    type: string
    case: {
      when: {
        label: "Yes"
        sql:  ${TABLE}.Areallflammableliquidsbeingkeptinapprovedflameresistantmetalcont = 1 ;;
      }
      when: {
        label: "No"
        sql:  ${TABLE}.Areallflammableliquidsbeingkeptinapprovedflameresistantmetalcont = -1 ;;
      }
      else: "N/A"
    }
  }

  dimension: fork_lift_drivers_compliant {
    group_label: "Questionnaire"
    description: "Are all fork lift drivers licensed to operate the machine?"
    type: string
    case: {
      when: {
        label: "Yes"
        sql:  ${TABLE}.Areallforkliftdriverslicensedtooperatethemachine = 1 ;;
      }
      when: {
        label: "No"
        sql:  ${TABLE}.Areallforkliftdriverslicensedtooperatethemachine = -1 ;;
      }
      else: "N/A"
    }
  }

  dimension: crane_boom_power_lines_compliance {
    group_label: "Questionnaire"
    description: "Are all power lines at least 20 feet from the crane boom and rigging?"
    type: string
    case: {
      when: {
        label: "Yes"
        sql:  ${TABLE}.Areallpowerlinesatleast20feetfromthecraneboomandrigging = 1 ;;
      }
      when: {
        label: "No"
        sql:  ${TABLE}.Areallpowerlinesatleast20feetfromthecraneboomandrigging = -1 ;;
      }
      else: "N/A"
    }
  }

  dimension: gcfi_compliance {
    group_label: "Questionnaire"
    label: "GCFI Compliance"
    description: "Are all temporary electrical outlets equipped with GFCIs?"
    type: string
    case: {
      when: {
        label: "Yes"
        sql:  ${TABLE}.ArealltemporaryelectricaloutletsequippedwithGFCIs = 1 ;;
      }
      when: {
        label: "No"
        sql:  ${TABLE}.ArealltemporaryelectricaloutletsequippedwithGFCIs = -1 ;;
      }
      else: "N/A"
    }
  }

  dimension: areannualinspectionsuptodateandpostedonthecranehousing {
    group_label: "Questionnaire"
    type: string
    sql: ${TABLE}.Areannualinspectionsuptodateandpostedonthecranehousing ;;
  }

  dimension: areanyopenexcavationsbeinginspecteddailyforchangingconditions {
    group_label: "Questionnaire"
    type: string
    sql: ${TABLE}.Areanyopenexcavationsbeinginspecteddailyforchangingconditions ;;
  }

  dimension: arebackupalarmsworkingandaudible {
    group_label: "Questionnaire"
    type: string
    sql: ${TABLE}.Arebackupalarmsworkingandaudible ;;
  }

  dimension: arebracesbeinginspecteddailypriortowork {
    group_label: "Questionnaire"
    type: string
    sql: ${TABLE}.Arebracesbeinginspecteddailypriortowork ;;
  }

  dimension: arecompressedgasregulatorsnotdamagedorcracked {
    group_label: "Questionnaire"
    type: string
    sql: ${TABLE}.Arecompressedgasregulatorsnotdamagedorcracked ;;
  }

  dimension: areconditionssafeinregardstowindandweathertoliftapanel {
    group_label: "Questionnaire"
    type: string
    sql: ${TABLE}.Areconditionssafeinregardstowindandweathertoliftapanel ;;
  }

  dimension: arecontainersproperlylabeledtoidentifycontentsandhazards {
    group_label: "Questionnaire"
    type: string
    sql: ${TABLE}.Arecontainersproperlylabeledtoidentifycontentsandhazards ;;
  }

  dimension: arecordsandcablesingoodworkingconditionincludinggroundprongs {
    group_label: "Questionnaire"
    type: string
    sql: ${TABLE}.Arecordsandcablesingoodworkingconditionincludinggroundprongs ;;
  }

  dimension: aredamagedormalfunctioningtoolsbeingremovedfromservice {
    group_label: "Questionnaire"
    type: string
    sql: ${TABLE}.Aredamagedormalfunctioningtoolsbeingremovedfromservice ;;
  }

  dimension: aredebrischutesprovidedwhenmaterialdisposalisgreaterthan20feet {
    group_label: "Questionnaire"
    type: string
    sql: ${TABLE}.Aredebrischutesprovidedwhenmaterialdisposalisgreaterthan20feet ;;
  }

  dimension: aredropoffareasgreaterthan4feetbeingprotectedandoridentified {
    group_label: "Questionnaire"
    type: string
    sql: ${TABLE}.Aredropoffareasgreaterthan4feetbeingprotectedandoridentified ;;
  }

  dimension: areelectricalpowertoolsfreeofcrackedcasingsandorcorddamage {
    group_label: "Questionnaire"
    type: string
    sql: ${TABLE}.Areelectricalpowertoolsfreeofcrackedcasingsandorcorddamage ;;
  }

  dimension: areemergencytelephonenumbersposted {
    group_label: "Questionnaire"
    type: string
    sql: ${TABLE}.Areemergencytelephonenumbersposted ;;
  }

  dimension: areexcavationsgreaterthan5feetindepthbeingbenchedshoredprotected {
    group_label: "Questionnaire"
    type: string
    sql: ${TABLE}.Areexcavationsgreaterthan5feetindepthbeingbenchedshoredprotected ;;
  }

  dimension: arefireextinguisherslocatednearflammableliquidandgasstoragewithi {
    group_label: "Questionnaire"
    type: string
    sql: ${TABLE}.Arefireextinguisherslocatednearflammableliquidandgasstoragewithi ;;
  }

  dimension: arefireextinguisherslocatednearhotworkactivities {
    group_label: "Questionnaire"
    type: string
    sql: ${TABLE}.Arefireextinguisherslocatednearhotworkactivities ;;
  }

  dimension: arefireextinguisherspresentduringallweldingandcuttingactivities {
    group_label: "Questionnaire"
    type: string
    sql: ${TABLE}.Arefireextinguisherspresentduringallweldingandcuttingactivities ;;
  }

  dimension: arefirstaidkitsstockedandemergencyeyewashavailable {
    group_label: "Questionnaire"
    type: string
    sql: ${TABLE}.Arefirstaidkitsstockedandemergencyeyewashavailable ;;
  }

  dimension: areflashbackarrestersinplaceoncompressedgashoses {
    group_label: "Questionnaire"
    type: string
    sql: ${TABLE}.Areflashbackarrestersinplaceoncompressedgashoses ;;
  }

  dimension: arefloorholescolumncutoutsorobstructionsmovedoridentifiedfortheo {
    group_label: "Questionnaire"
    type: string
    sql: ${TABLE}.Arefloorholescolumncutoutsorobstructionsmovedoridentifiedfortheo ;;
  }

  dimension: arefloorholesgreaterthan2inchesbeingidentifiedcoveredandmarked {
    group_label: "Questionnaire"
    type: string
    sql: ${TABLE}.Arefloorholesgreaterthan2inchesbeingidentifiedcoveredandmarked ;;
  }

  dimension: arefloorstubupsbeingidentifiedastriphazardsandmarkedwithvisibili {
    group_label: "Questionnaire"
    type: string
    sql: ${TABLE}.Arefloorstubupsbeingidentifiedastriphazardsandmarkedwithvisibili ;;
  }

  dimension: aregascylindersbeingstoredinanuprightposition {
    group_label: "Questionnaire"
    type: string
    sql: ${TABLE}.Aregascylindersbeingstoredinanuprightposition ;;
  }

  dimension: arehardhatsavailableandbeingwornbyallemployees {
    group_label: "Questionnaire"
    type: string
    sql: ${TABLE}.Arehardhatsavailableandbeingwornbyallemployees ;;
  }

  dimension: areharnessesandlanyardsbeingutilizedbyemployeesusingboomlifts {
    group_label: "Questionnaire"
    type: string
    sql: ${TABLE}.Areharnessesandlanyardsbeingutilizedbyemployeesusingboomlifts ;;
  }

  dimension: areladderrungsevenlyspacedonjobmadeladders {
    group_label: "Questionnaire"
    type: string
    sql: ${TABLE}.Areladderrungsevenlyspacedonjobmadeladders ;;
  }

  dimension: areladdersextendingatleast36inchesabovelanding {
    group_label: "Questionnaire"
    type: string
    sql: ${TABLE}.Areladdersextendingatleast36inchesabovelanding ;;
  }

  dimension: areladdersingoodworkingconditionandnotpaintedtoinhibitinspection {
    group_label: "Questionnaire"
    type: string
    sql: ${TABLE}.Areladdersingoodworkingconditionandnotpaintedtoinhibitinspection ;;
  }

  dimension: areladdersinusetiedoffandsecuredtopreventmovementandtipping {
    group_label: "Questionnaire"
    type: string
    sql: ${TABLE}.Areladdersinusetiedoffandsecuredtopreventmovementandtipping ;;
  }

  dimension: arenailsbeingremovedorbentoverinscraplumber {
    group_label: "Questionnaire"
    type: string
    sql: ${TABLE}.Arenailsbeingremovedorbentoverinscraplumber ;;
  }

  dimension: areno_aframeladdersbeingleanedagainstwallforuse {
    group_label: "Questionnaire"
    type: string
    sql: ${TABLE}.ArenoAframeladdersbeingleanedagainstwallforuse ;;
  }

  dimension: arenobracesremoveduntilallthestructuralconnectionsarecompleted {
    group_label: "Questionnaire"
    type: string
    sql: ${TABLE}.Arenobracesremoveduntilallthestructuralconnectionsarecompleted ;;
  }

  dimension: arenoemployeesridingillegallyonequipment {
    group_label: "Questionnaire"
    type: string
    sql: ${TABLE}.Arenoemployeesridingillegallyonequipment ;;
  }

  dimension: arenoemployeesusingtheliftsrailstoperformelevatedwork {
    group_label: "Questionnaire"
    type: string
    sql: ${TABLE}.Arenoemployeesusingtheliftsrailstoperformelevatedwork ;;
  }

  dimension: arenoextensionladdersbeingseparatedandusedinsections {
    group_label: "Questionnaire"
    type: string
    sql: ${TABLE}.Arenoextensionladdersbeingseparatedandusedinsections ;;
  }

  dimension: areopenpanelcircuitsbeingprotectedbytheuseofspacers {
    group_label: "Questionnaire"
    type: string
    sql: ${TABLE}.Areopenpanelcircuitsbeingprotectedbytheuseofspacers ;;
  }

  dimension: areoperator_ccosandriggersignalpersonqualificationsavailableonsit {
    group_label: "Questionnaire"
    type: string
    sql: ${TABLE}.AreoperatorCCOsandriggersignalpersonqualificationsavailableonsit ;;
  }

  dimension: areoutriggersbeingproperlycribbedandsetonpadswhenrequired {
    group_label: "Questionnaire"
    type: string
    sql: ${TABLE}.Areoutriggersbeingproperlycribbedandsetonpadswhenrequired ;;
  }

  dimension: areoxygenbottlesstoredatleast20feetawayfromacetylenebottles {
    group_label: "Questionnaire"
    type: string
    sql: ${TABLE}.Areoxygenbottlesstoredatleast20feetawayfromacetylenebottles ;;
  }

  dimension: arepotentiallyhazardousatmospheresbeingtestedforgasesorlackofoxy {
    group_label: "Questionnaire"
    type: string
    sql: ${TABLE}.Arepotentiallyhazardousatmospheresbeingtestedforgasesorlackofoxy ;;
  }

  dimension: areprotectivevalvecapsinplaceonstoredcompressedgascylinders {
    group_label: "Questionnaire"
    type: string
    sql: ${TABLE}.Areprotectivevalvecapsinplaceonstoredcompressedgascylinders ;;
  }

  dimension: arereinforcedcapsbeingplaceonverticalrebarandimpalementhazards {
    group_label: "Questionnaire"
    type: string
    sql: ${TABLE}.Arereinforcedcapsbeingplaceonverticalrebarandimpalementhazards ;;
  }

  dimension: arerespiratorsbeingwornwhenrequired_wallgrindingblockcuttingetc {
    group_label: "Questionnaire"
    type: string
    sql: ${TABLE}.ArerespiratorsbeingwornwhenrequiredWallgrindingblockcuttingetc ;;
  }

  dimension: areroadwaydropoffareasbeingmarkedorprotectedforoperators {
    group_label: "Questionnaire"
    type: string
    sql: ${TABLE}.Areroadwaydropoffareasbeingmarkedorprotectedforoperators ;;
  }

  dimension: arerollingscaffoldsusingoutriggerswhengreaterthan4tiershigh3in_ca {
    group_label: "Questionnaire"
    type: string
    sql: ${TABLE}.Arerollingscaffoldsusingoutriggerswhengreaterthan4tiershigh3inCa ;;
  }

  dimension: arerungsandcleatspacingnotover12inches_ocforjobmadeladders {
    group_label: "Questionnaire"
    type: string
    sql: ${TABLE}."Arerungsandcleatspacingnotover12”inchesOCforjobmadeladders" ;;
  }

  dimension: aresafetymeetingsbeingheldweeklyanddocumentedonsite {
    group_label: "Questionnaire"
    type: string
    sql: ${TABLE}.Aresafetymeetingsbeingheldweeklyanddocumentedonsite ;;
  }

  dimension: aresafetyprogramsavailablefromeachsubcontractor {
    group_label: "Questionnaire"
    type: string
    sql: ${TABLE}.Aresafetyprogramsavailablefromeachsubcontractor ;;
  }

  dimension: aresafetyshieldsandweldingscreensinplacewhennecessary {
    group_label: "Questionnaire"
    type: string
    sql: ${TABLE}.Aresafetyshieldsandweldingscreensinplacewhennecessary ;;
  }

  dimension: arescaffoldingguardrailslocatedat423incheswithanintermediateinth {
    group_label: "Questionnaire"
    type: string
    sql: ${TABLE}.Arescaffoldingguardrailslocatedat423incheswithanintermediateinth ;;
  }

  dimension: arescaffoldplanksnotcrackedordamagedtoimpedeuse {
    group_label: "Questionnaire"
    type: string
    sql: ${TABLE}.Arescaffoldplanksnotcrackedordamagedtoimpedeuse ;;
  }

  dimension: areseatbeltsbeingusedifrequired {
    group_label: "Questionnaire"
    type: string
    sql: ${TABLE}.Areseatbeltsbeingusedifrequired ;;
  }

  dimension: arestairwelllandingplatformsadequatelyequippedwithtopandmidrails {
    group_label: "Questionnaire"
    type: string
    sql: ${TABLE}.Arestairwelllandingplatformsadequatelyequippedwithtopandmidrails ;;
  }

  dimension: arestateandfederallegalpostersandsafetysignsmounted {
    group_label: "Questionnaire"
    type: string
    sql: ${TABLE}.Arestateandfederallegalpostersandsafetysignsmounted ;;
  }

  dimension: arestepsavailableforbreaksinelevationgreaterthan19inches {
    group_label: "Questionnaire"
    type: string
    sql: ${TABLE}.Arestepsavailableforbreaksinelevationgreaterthan19inches ;;
  }

  dimension: arestepshavingmorethan3risersequippedwithtopandmidguardrails {
    group_label: "Questionnaire"
    type: string
    sql: ${TABLE}.Arestepshavingmorethan3risersequippedwithtopandmidguardrails ;;
  }

  dimension: aresuspensionropesoutriggersandcablesingoodconditiononswingstage {
    group_label: "Questionnaire"
    type: string
    sql: ${TABLE}.Aresuspensionropesoutriggersandcablesingoodconditiononswingstage ;;
  }

  dimension: aretaglinesbeingusedtocontrolloadswhennecessary {
    group_label: "Questionnaire"
    type: string
    sql: ${TABLE}.Aretaglinesbeingusedtocontrolloadswhennecessary ;;
  }

  dimension: aretemporaryelectricalknockoutboxesmountedsecurelyofftheground {
    group_label: "Questionnaire"
    type: string
    sql: ${TABLE}.Aretemporaryelectricalknockoutboxesmountedsecurelyofftheground ;;
  }

  dimension: areterminalboxesaffixedwithcovers_arecoverslabeledandmarked {
    group_label: "Questionnaire"
    type: string
    sql: ${TABLE}.AreterminalboxesaffixedwithcoversArecoverslabeledandmarked ;;
  }

  dimension: arethecraneslingsandriggingingoodcondition {
    group_label: "Questionnaire"
    type: string
    sql: ${TABLE}.Arethecraneslingsandriggingingoodcondition ;;
  }

  dimension: arethejobsitebarricadespostingsandwarningsignsbeingmaintainedand {
    group_label: "Questionnaire"
    type: string
    sql: ${TABLE}.Arethejobsitebarricadespostingsandwarningsignsbeingmaintainedand ;;
  }

  dimension: aretrenchboxesatleast18inchesabovesurfacegrade {
    group_label: "Questionnaire"
    type: string
    sql: ${TABLE}.Aretrenchboxesatleast18inchesabovesurfacegrade ;;
  }

  dimension: aretrenchboxesnotundercutbygreaterthan2feetatthebase {
    group_label: "Questionnaire"
    type: string
    sql: ${TABLE}.Aretrenchboxesnotundercutbygreaterthan2feetatthebase ;;
  }

  dimension: areunauthorizedpersonnelremovedfromtheareapriortoanylifting {
    group_label: "Questionnaire"
    type: string
    sql: ${TABLE}.Areunauthorizedpersonnelremovedfromtheareapriortoanylifting ;;
  }

  dimension: arevehiclestravelingatasaferateofspeed {
    group_label: "Questionnaire"
    type: string
    sql: ${TABLE}.Arevehiclestravelingatasaferateofspeed ;;
  }

  dimension: arewalkwaysandworkingareasunobstructedbydebrisandtrash {
    group_label: "Questionnaire"
    type: string
    sql: ${TABLE}.Arewalkwaysandworkingareasunobstructedbydebrisandtrash ;;
  }

  dimension: arewallbracesareingoodconditionandfreeofdefectsanddamage {
    group_label: "Questionnaire"
    type: string
    sql: ${TABLE}.Arewallbracesareingoodconditionandfreeofdefectsanddamage ;;
  }

  dimension: areweldingleadsfreeofcutsandpunctures {
    group_label: "Questionnaire"
    type: string
    sql: ${TABLE}.Areweldingleadsfreeofcutsandpunctures ;;
  }

  dimension: arewheelslockedonallrollingscaffolds {
    group_label: "Questionnaire"
    type: string
    sql: ${TABLE}.Arewheelslockedonallrollingscaffolds ;;
  }

  dimension: commentslistsectionyouarereferencing {
    group_label: "Questionnaire"
    type: string
    sql: ${TABLE}.Commentslistsectionyouarereferencing ;;
  }

  dimension: doabovegroundfuelingtankshavedikesbermsorcatchbasinsavailable {
    group_label: "Questionnaire"
    type: string
    sql: ${TABLE}.Doabovegroundfuelingtankshavedikesbermsorcatchbasinsavailable ;;
  }

  dimension: dooperatorsappeartobetrainedqualified {
    group_label: "Questionnaire"
    type: string
    sql: ${TABLE}.Dooperatorsappeartobetrainedqualified ;;
  }

  dimension: doscaffoldplanksextendatleast6inchespastsupports {
    group_label: "Questionnaire"
    type: string
    sql: ${TABLE}.Doscaffoldplanksextendatleast6inchespastsupports ;;
  }

  dimension: filed_by {
    group_label: "Inspection Information"
    type: string
    sql: ${TABLE}.Filedby ;;
  }

  dimension: form_id {
    group_label: "Inspection Information"
    type: string
    sql: ${TABLE}.FormId ;;
  }

  dimension: form_name {
    group_label: "Inspection Information"
    type: string
    sql: ${TABLE}.FormName ;;
  }

  dimension: form_version {
    group_label: "Inspection Information"
    type: string
    sql: ${TABLE}.FormVersion ;;
  }

  dimension: havesubcontractoremployeesgonethroughthe_arcosafetyorientationtra {
    group_label: "Questionnaire"
    type: string
    sql: ${TABLE}.HavesubcontractoremployeesgonethroughtheARCOsafetyorientationtra ;;
  }

  dimension: ifdeeperthan20feethastheexcavationbeenengineeredbyaprofessional {
    group_label: "Questionnaire"
    type: string
    sql: ${TABLE}.Ifdeeperthan20feethastheexcavationbeenengineeredbyaprofessional ;;
  }

  dimension: iffuelingstationsexistneartrafficaretheyprotectedwithbarricades {
    group_label: "Questionnaire"
    type: string
    sql: ${TABLE}.Iffuelingstationsexistneartrafficaretheyprotectedwithbarricades ;;
  }

  dimension: ifnotis_table_a19261408beingfollowed {
    group_label: "Questionnaire"
    type: string
    sql: ${TABLE}.IfnotisTableA19261408beingfollowed ;;
  }

  dimension: ifwalkingapanelareallobstaclesinthepathofcrewandcraneremoved {
    group_label: "Questionnaire"
    type: string
    sql: ${TABLE}.Ifwalkingapanelareallobstaclesinthepathofcrewandcraneremoved ;;
  }

  dimension: is100fallprotectionbeingutilizedabove6feet {
    group_label: "Questionnaire"
    type: string
    sql: ${TABLE}."Is100%fallprotectionbeingutilizedabove6feet" ;;
  }

  dimension: isacompetentpersonpresentonthejobsitetoinspectopenexcavations {
    group_label: "Questionnaire"
    type: string
    sql: ${TABLE}.Isacompetentpersonpresentonthejobsitetoinspectopenexcavations ;;
  }

  dimension: isadditionaleyeprotectionbeingwornduringcuttingchippingandgrindi {
    group_label: "Questionnaire"
    type: string
    sql: ${TABLE}.Isadditionaleyeprotectionbeingwornduringcuttingchippingandgrindi ;;
  }

  dimension: isadequateclothingbeingworn4inchsleevesleathershoeslongpants {
    group_label: "Questionnaire"
    type: string
    sql: ${TABLE}.Isadequateclothingbeingworn4inchsleevesleathershoeslongpants ;;
  }

  dimension: isadequatelightingavailablethroughoutthejobsitewhereindividualsa {
    group_label: "Questionnaire"
    type: string
    sql: ${TABLE}.Isadequatelightingavailablethroughoutthejobsitewhereindividualsa ;;
  }

  dimension: isaladderorotheracceptablemeansofaccessandegressprovided {
    group_label: "Questionnaire"
    type: string
    sql: ${TABLE}.Isaladderorotheracceptablemeansofaccessandegressprovided ;;
  }

  dimension: isallelectricalequipmenteitherproperlygroundedordoubleinsulated {
    group_label: "Questionnaire"
    type: string
    sql: ${TABLE}.Isallelectricalequipmenteitherproperlygroundedordoubleinsulated ;;
  }

  dimension: isanadequatemeansofaccessandegresspresentintheexcavationevery25f {
    group_label: "Questionnaire"
    type: string
    sql: ${TABLE}.Isanadequatemeansofaccessandegresspresentintheexcavationevery25f ;;
  }

  dimension: isapotabledrinkablewatersupplyavailable {
    group_label: "Questionnaire"
    type: string
    sql: ${TABLE}.Isapotabledrinkablewatersupplyavailable ;;
  }

  dimension: isapreliftmeetingbeingheldtodiscusspanelerectionsafety {
    group_label: "Questionnaire"
    type: string
    sql: ${TABLE}.Isapreliftmeetingbeingheldtodiscusspanelerectionsafety ;;
  }

  dimension: isaqualifiedriggerinspectingequipmentandmethodspriortoliftingpan {
    group_label: "Questionnaire"
    type: string
    sql: ${TABLE}.Isaqualifiedriggerinspectingequipmentandmethodspriortoliftingpan ;;
  }

  dimension: isclearaccessavailabletofirehydrantsforemergencypersonnel {
    group_label: "Questionnaire"
    type: string
    sql: ${TABLE}.Isclearaccessavailabletofirehydrantsforemergencypersonnel ;;
  }

  dimension: iscranecabaffixedwithhandsignalchart {
    group_label: "Questionnaire"
    type: string
    sql: ${TABLE}.Iscranecabaffixedwithhandsignalchart ;;
  }

  dimension: isemergencyegressfromthejobsiteunobstructedthroughouttheproject {
    group_label: "Questionnaire"
    type: string
    sql: ${TABLE}.Isemergencyegressfromthejobsiteunobstructedthroughouttheproject ;;
  }

  dimension: isemergencyresponseequipmentavailableonthejobsite_riggingbasketet {
    group_label: "Questionnaire"
    type: string
    sql: ${TABLE}.IsemergencyresponseequipmentavailableonthejobsiteRiggingbasketet ;;
  }

  dimension: isfallingobjectprotectionprovidedunderthescaffoldingtoeboardsorr {
    group_label: "Questionnaire"
    type: string
    sql: ${TABLE}.Isfallingobjectprotectionprovidedunderthescaffoldingtoeboardsorr ;;
  }

  dimension: isfallprotectionbeingutilizedonscaffoldingwhenemployeesareover6f {
    group_label: "Questionnaire"
    type: string
    sql: ${TABLE}.Isfallprotectionbeingutilizedonscaffoldingwhenemployeesareover6f ;;
  }

  dimension: isgeneralfallprotectionbeingobservedforemployeesworkingover6feet {
    group_label: "Questionnaire"
    type: string
    sql: ${TABLE}.Isgeneralfallprotectionbeingobservedforemployeesworkingover6feet ;;
  }

  dimension: ishandwashingavailableonprojectswherechemicalsareused {
    group_label: "Questionnaire"
    type: string
    sql: ${TABLE}.Ishandwashingavailableonprojectswherechemicalsareused ;;
  }

  dimension: ishearingprotectionavailableandbeingwornwhenrequired {
    group_label: "Questionnaire"
    type: string
    sql: ${TABLE}.Ishearingprotectionavailableandbeingwornwhenrequired ;;
  }

  dimension: isindependentlifelinefallprotectionbeingusedduringuseofswingstag {
    group_label: "Questionnaire"
    type: string
    sql: ${TABLE}.Isindependentlifelinefallprotectionbeingusedduringuseofswingstag ;;
  }

  dimension: isscaffoldingonsoundfootingwithbaseplates {
    group_label: "Questionnaire"
    type: string
    sql: ${TABLE}.Isscaffoldingonsoundfootingwithbaseplates ;;
  }

  dimension: isthe_controlled_decking_zonemarkedwithcontrollines {
    group_label: "Questionnaire"
    type: string
    sql: ${TABLE}.IstheControlledDeckingZonemarkedwithcontrollines ;;
  }

  dimension: isthecraneloadchartavailable {
    group_label: "Questionnaire"
    type: string
    sql: ${TABLE}.Isthecraneloadchartavailable ;;
  }

  dimension: isthecraneswingradiusbeingadequatelyprotectedandorbarricaded {
    group_label: "Questionnaire"
    type: string
    sql: ${TABLE}.Isthecraneswingradiusbeingadequatelyprotectedandorbarricaded ;;
  }

  dimension: isthedoorormidchainclosedattachedonscissorlifts {
    group_label: "Questionnaire"
    type: string
    sql: ${TABLE}.Isthedoorormidchainclosedattachedonscissorlifts ;;
  }

  dimension: istheexcavationbeingevaluatedtodetermineifaconfinedspacehazardis {
    group_label: "Questionnaire"
    type: string
    sql: ${TABLE}.Istheexcavationbeingevaluatedtodetermineifaconfinedspacehazardis ;;
  }

  dimension: isthefloorslabanderectionareafreeofdebriswithobstaclesremoved {
    group_label: "Questionnaire"
    type: string
    sql: ${TABLE}.Isthefloorslabanderectionareafreeofdebriswithobstaclesremoved ;;
  }

  dimension: isthegroundlevelandfreeofdebrisaroundtheaerialplatform {
    group_label: "Questionnaire"
    type: string
    sql: ${TABLE}.Isthegroundlevelandfreeofdebrisaroundtheaerialplatform ;;
  }

  dimension: isthejobsitemarkedwith_no_trespassingsigns {
    group_label: "Questionnaire"
    type: string
    sql: ${TABLE}.IsthejobsitemarkedwithNoTrespassingsigns ;;
  }

  dimension: isthemaximumtraveldistancetoafireextinguisher100feetorlesswheree {
    group_label: "Questionnaire"
    type: string
    sql: ${TABLE}.Isthemaximumtraveldistancetoafireextinguisher100feetorlesswheree ;;
  }

  dimension: istheoperatorcompletingdailyinspections_areweeklyinspectionsbeing {
    group_label: "Questionnaire"
    type: string
    sql: ${TABLE}.IstheoperatorcompletingdailyinspectionsAreweeklyinspectionsbeing ;;
  }

  dimension: isthescaffoldingsecuredandtiedintothestructureevery26inheightand {
    group_label: "Questionnaire"
    type: string
    sql: ${TABLE}.Isthescaffoldingsecuredandtiedintothestructureevery26inheightand ;;
  }

  dimension: isthescaffoldingworkingplatformatleast18inchesinwidth {
    group_label: "Questionnaire"
    type: string
    sql: ${TABLE}.Isthescaffoldingworkingplatformatleast18inchesinwidth ;;
  }

  dimension: isthescaffoldworkingdeckfullyplankedtoblockpotentialfallhazards {
    group_label: "Questionnaire"
    type: string
    sql: ${TABLE}.Isthescaffoldworkingdeckfullyplankedtoblockpotentialfallhazards ;;
  }

  dimension: isthespoilpilepulledbackatleast2feetfromtheedgeoftheexcavation {
    group_label: "Questionnaire"
    type: string
    sql: ${TABLE}.Isthespoilpilepulledbackatleast2feetfromtheedgeoftheexcavation ;;
  }

  dimension: isthesuperintendentphonenumberpostedonthejobsiteorinawindow {
    group_label: "Questionnaire"
    type: string
    sql: ${TABLE}.Isthesuperintendentphonenumberpostedonthejobsiteorinawindow ;;
  }

  dimension: no_name {
    group_label: "Unknown"
    type: string
    sql: ${TABLE}.NoName ;;
  }

  dimension: inspection_description {
    group_label: "Inspection Information"
    type: string
    sql: ${TABLE}.NoName1 ;;
  }

  dimension: project {
    group_label: "Inspection Information"
    type: string
    sql: ${TABLE}.Project ;;
  }

  dimension: signature {
    group_label: "Inspection Information"
    type: string
    sql: ${TABLE}.Signature ;;
  }

  dimension: submitted_email {
    group_label: "Inspection Information"
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

  dimension_group: inspection {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Date ;;
  }

  dimension: supt {
    group_label: "Inspection Information"
    type: string
    sql: trim(${TABLE}.Supt) ;;
  }

  dimension: wasallscaffoldingerectedbyacertifiedscaffolderector {
    group_label: "Questionnaire"
    type: string
    sql: ${TABLE}.Wasallscaffoldingerectedbyacertifiedscaffolderector ;;
  }

  measure: count_of_self_inspections {
    type: count
    drill_fields: [form_name, no_name]
  }
}
