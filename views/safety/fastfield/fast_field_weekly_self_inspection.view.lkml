view: fast_field_weekly_self_inspection {
  sql_table_name: dbo.FastField_WeeklySelfInspection ;;

  dimension: hazard_communication_programs {
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
      else: "N/A"
    }
  }

  dimension: smoking_signs {
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

  dimension: lpg_storage {
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

  dimension: fire_extinguishers {
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

  dimension: areallfireextinguisherstaggedandcompliantwithinspectiondate {
    type: string
    sql: ${TABLE}.Areallfireextinguisherstaggedandcompliantwithinspectiondate ;;
  }

  dimension: areallflammableliquidsbeingkeptinapprovedflameresistantmetalcont {
    type: string
    sql: ${TABLE}.Areallflammableliquidsbeingkeptinapprovedflameresistantmetalcont ;;
  }

  dimension: areallforkliftdriverslicensedtooperatethemachine {
    type: string
    sql: ${TABLE}.Areallforkliftdriverslicensedtooperatethemachine ;;
  }

  dimension: areallpowerlinesatleast20feetfromthecraneboomandrigging {
    type: string
    sql: ${TABLE}.Areallpowerlinesatleast20feetfromthecraneboomandrigging ;;
  }

  dimension: arealltemporaryelectricaloutletsequippedwith_gfcis {
    type: string
    sql: ${TABLE}.ArealltemporaryelectricaloutletsequippedwithGFCIs ;;
  }

  dimension: areannualinspectionsuptodateandpostedonthecranehousing {
    type: string
    sql: ${TABLE}.Areannualinspectionsuptodateandpostedonthecranehousing ;;
  }

  dimension: areanyopenexcavationsbeinginspecteddailyforchangingconditions {
    type: string
    sql: ${TABLE}.Areanyopenexcavationsbeinginspecteddailyforchangingconditions ;;
  }

  dimension: arebackupalarmsworkingandaudible {
    type: string
    sql: ${TABLE}.Arebackupalarmsworkingandaudible ;;
  }

  dimension: arebracesbeinginspecteddailypriortowork {
    type: string
    sql: ${TABLE}.Arebracesbeinginspecteddailypriortowork ;;
  }

  dimension: arecompressedgasregulatorsnotdamagedorcracked {
    type: string
    sql: ${TABLE}.Arecompressedgasregulatorsnotdamagedorcracked ;;
  }

  dimension: areconditionssafeinregardstowindandweathertoliftapanel {
    type: string
    sql: ${TABLE}.Areconditionssafeinregardstowindandweathertoliftapanel ;;
  }

  dimension: arecontainersproperlylabeledtoidentifycontentsandhazards {
    type: string
    sql: ${TABLE}.Arecontainersproperlylabeledtoidentifycontentsandhazards ;;
  }

  dimension: arecordsandcablesingoodworkingconditionincludinggroundprongs {
    type: string
    sql: ${TABLE}.Arecordsandcablesingoodworkingconditionincludinggroundprongs ;;
  }

  dimension: aredamagedormalfunctioningtoolsbeingremovedfromservice {
    type: string
    sql: ${TABLE}.Aredamagedormalfunctioningtoolsbeingremovedfromservice ;;
  }

  dimension: aredebrischutesprovidedwhenmaterialdisposalisgreaterthan20feet {
    type: string
    sql: ${TABLE}.Aredebrischutesprovidedwhenmaterialdisposalisgreaterthan20feet ;;
  }

  dimension: aredropoffareasgreaterthan4feetbeingprotectedandoridentified {
    type: string
    sql: ${TABLE}.Aredropoffareasgreaterthan4feetbeingprotectedandoridentified ;;
  }

  dimension: areelectricalpowertoolsfreeofcrackedcasingsandorcorddamage {
    type: string
    sql: ${TABLE}.Areelectricalpowertoolsfreeofcrackedcasingsandorcorddamage ;;
  }

  dimension: areemergencytelephonenumbersposted {
    type: string
    sql: ${TABLE}.Areemergencytelephonenumbersposted ;;
  }

  dimension: areexcavationsgreaterthan5feetindepthbeingbenchedshoredprotected {
    type: string
    sql: ${TABLE}.Areexcavationsgreaterthan5feetindepthbeingbenchedshoredprotected ;;
  }

  dimension: arefireextinguisherslocatednearflammableliquidandgasstoragewithi {
    type: string
    sql: ${TABLE}.Arefireextinguisherslocatednearflammableliquidandgasstoragewithi ;;
  }

  dimension: arefireextinguisherslocatednearhotworkactivities {
    type: string
    sql: ${TABLE}.Arefireextinguisherslocatednearhotworkactivities ;;
  }

  dimension: arefireextinguisherspresentduringallweldingandcuttingactivities {
    type: string
    sql: ${TABLE}.Arefireextinguisherspresentduringallweldingandcuttingactivities ;;
  }

  dimension: arefirstaidkitsstockedandemergencyeyewashavailable {
    type: string
    sql: ${TABLE}.Arefirstaidkitsstockedandemergencyeyewashavailable ;;
  }

  dimension: areflashbackarrestersinplaceoncompressedgashoses {
    type: string
    sql: ${TABLE}.Areflashbackarrestersinplaceoncompressedgashoses ;;
  }

  dimension: arefloorholescolumncutoutsorobstructionsmovedoridentifiedfortheo {
    type: string
    sql: ${TABLE}.Arefloorholescolumncutoutsorobstructionsmovedoridentifiedfortheo ;;
  }

  dimension: arefloorholesgreaterthan2inchesbeingidentifiedcoveredandmarked {
    type: string
    sql: ${TABLE}.Arefloorholesgreaterthan2inchesbeingidentifiedcoveredandmarked ;;
  }

  dimension: arefloorstubupsbeingidentifiedastriphazardsandmarkedwithvisibili {
    type: string
    sql: ${TABLE}.Arefloorstubupsbeingidentifiedastriphazardsandmarkedwithvisibili ;;
  }

  dimension: aregascylindersbeingstoredinanuprightposition {
    type: string
    sql: ${TABLE}.Aregascylindersbeingstoredinanuprightposition ;;
  }

  dimension: arehardhatsavailableandbeingwornbyallemployees {
    type: string
    sql: ${TABLE}.Arehardhatsavailableandbeingwornbyallemployees ;;
  }

  dimension: areharnessesandlanyardsbeingutilizedbyemployeesusingboomlifts {
    type: string
    sql: ${TABLE}.Areharnessesandlanyardsbeingutilizedbyemployeesusingboomlifts ;;
  }

  dimension: areladderrungsevenlyspacedonjobmadeladders {
    type: string
    sql: ${TABLE}.Areladderrungsevenlyspacedonjobmadeladders ;;
  }

  dimension: areladdersextendingatleast36inchesabovelanding {
    type: string
    sql: ${TABLE}.Areladdersextendingatleast36inchesabovelanding ;;
  }

  dimension: areladdersingoodworkingconditionandnotpaintedtoinhibitinspection {
    type: string
    sql: ${TABLE}.Areladdersingoodworkingconditionandnotpaintedtoinhibitinspection ;;
  }

  dimension: areladdersinusetiedoffandsecuredtopreventmovementandtipping {
    type: string
    sql: ${TABLE}.Areladdersinusetiedoffandsecuredtopreventmovementandtipping ;;
  }

  dimension: arenailsbeingremovedorbentoverinscraplumber {
    type: string
    sql: ${TABLE}.Arenailsbeingremovedorbentoverinscraplumber ;;
  }

  dimension: areno_aframeladdersbeingleanedagainstwallforuse {
    type: string
    sql: ${TABLE}.ArenoAframeladdersbeingleanedagainstwallforuse ;;
  }

  dimension: arenobracesremoveduntilallthestructuralconnectionsarecompleted {
    type: string
    sql: ${TABLE}.Arenobracesremoveduntilallthestructuralconnectionsarecompleted ;;
  }

  dimension: arenoemployeesridingillegallyonequipment {
    type: string
    sql: ${TABLE}.Arenoemployeesridingillegallyonequipment ;;
  }

  dimension: arenoemployeesusingtheliftsrailstoperformelevatedwork {
    type: string
    sql: ${TABLE}.Arenoemployeesusingtheliftsrailstoperformelevatedwork ;;
  }

  dimension: arenoextensionladdersbeingseparatedandusedinsections {
    type: string
    sql: ${TABLE}.Arenoextensionladdersbeingseparatedandusedinsections ;;
  }

  dimension: areopenpanelcircuitsbeingprotectedbytheuseofspacers {
    type: string
    sql: ${TABLE}.Areopenpanelcircuitsbeingprotectedbytheuseofspacers ;;
  }

  dimension: areoperator_ccosandriggersignalpersonqualificationsavailableonsit {
    type: string
    sql: ${TABLE}.AreoperatorCCOsandriggersignalpersonqualificationsavailableonsit ;;
  }

  dimension: areoutriggersbeingproperlycribbedandsetonpadswhenrequired {
    type: string
    sql: ${TABLE}.Areoutriggersbeingproperlycribbedandsetonpadswhenrequired ;;
  }

  dimension: areoxygenbottlesstoredatleast20feetawayfromacetylenebottles {
    type: string
    sql: ${TABLE}.Areoxygenbottlesstoredatleast20feetawayfromacetylenebottles ;;
  }

  dimension: arepotentiallyhazardousatmospheresbeingtestedforgasesorlackofoxy {
    type: string
    sql: ${TABLE}.Arepotentiallyhazardousatmospheresbeingtestedforgasesorlackofoxy ;;
  }

  dimension: areprotectivevalvecapsinplaceonstoredcompressedgascylinders {
    type: string
    sql: ${TABLE}.Areprotectivevalvecapsinplaceonstoredcompressedgascylinders ;;
  }

  dimension: arereinforcedcapsbeingplaceonverticalrebarandimpalementhazards {
    type: string
    sql: ${TABLE}.Arereinforcedcapsbeingplaceonverticalrebarandimpalementhazards ;;
  }

  dimension: arerespiratorsbeingwornwhenrequired_wallgrindingblockcuttingetc {
    type: string
    sql: ${TABLE}.ArerespiratorsbeingwornwhenrequiredWallgrindingblockcuttingetc ;;
  }

  dimension: areroadwaydropoffareasbeingmarkedorprotectedforoperators {
    type: string
    sql: ${TABLE}.Areroadwaydropoffareasbeingmarkedorprotectedforoperators ;;
  }

  dimension: arerollingscaffoldsusingoutriggerswhengreaterthan4tiershigh3in_ca {
    type: string
    sql: ${TABLE}.Arerollingscaffoldsusingoutriggerswhengreaterthan4tiershigh3inCa ;;
  }

  dimension: arerungsandcleatspacingnotover12inches_ocforjobmadeladders {
    type: string
    sql: ${TABLE}."Arerungsandcleatspacingnotover12”inchesOCforjobmadeladders" ;;
  }

  dimension: aresafetymeetingsbeingheldweeklyanddocumentedonsite {
    type: string
    sql: ${TABLE}.Aresafetymeetingsbeingheldweeklyanddocumentedonsite ;;
  }

  dimension: aresafetyprogramsavailablefromeachsubcontractor {
    type: string
    sql: ${TABLE}.Aresafetyprogramsavailablefromeachsubcontractor ;;
  }

  dimension: aresafetyshieldsandweldingscreensinplacewhennecessary {
    type: string
    sql: ${TABLE}.Aresafetyshieldsandweldingscreensinplacewhennecessary ;;
  }

  dimension: arescaffoldingguardrailslocatedat423incheswithanintermediateinth {
    type: string
    sql: ${TABLE}.Arescaffoldingguardrailslocatedat423incheswithanintermediateinth ;;
  }

  dimension: arescaffoldplanksnotcrackedordamagedtoimpedeuse {
    type: string
    sql: ${TABLE}.Arescaffoldplanksnotcrackedordamagedtoimpedeuse ;;
  }

  dimension: areseatbeltsbeingusedifrequired {
    type: string
    sql: ${TABLE}.Areseatbeltsbeingusedifrequired ;;
  }

  dimension: arestairwelllandingplatformsadequatelyequippedwithtopandmidrails {
    type: string
    sql: ${TABLE}.Arestairwelllandingplatformsadequatelyequippedwithtopandmidrails ;;
  }

  dimension: arestateandfederallegalpostersandsafetysignsmounted {
    type: string
    sql: ${TABLE}.Arestateandfederallegalpostersandsafetysignsmounted ;;
  }

  dimension: arestepsavailableforbreaksinelevationgreaterthan19inches {
    type: string
    sql: ${TABLE}.Arestepsavailableforbreaksinelevationgreaterthan19inches ;;
  }

  dimension: arestepshavingmorethan3risersequippedwithtopandmidguardrails {
    type: string
    sql: ${TABLE}.Arestepshavingmorethan3risersequippedwithtopandmidguardrails ;;
  }

  dimension: aresuspensionropesoutriggersandcablesingoodconditiononswingstage {
    type: string
    sql: ${TABLE}.Aresuspensionropesoutriggersandcablesingoodconditiononswingstage ;;
  }

  dimension: aretaglinesbeingusedtocontrolloadswhennecessary {
    type: string
    sql: ${TABLE}.Aretaglinesbeingusedtocontrolloadswhennecessary ;;
  }

  dimension: aretemporaryelectricalknockoutboxesmountedsecurelyofftheground {
    type: string
    sql: ${TABLE}.Aretemporaryelectricalknockoutboxesmountedsecurelyofftheground ;;
  }

  dimension: areterminalboxesaffixedwithcovers_arecoverslabeledandmarked {
    type: string
    sql: ${TABLE}.AreterminalboxesaffixedwithcoversArecoverslabeledandmarked ;;
  }

  dimension: arethecraneslingsandriggingingoodcondition {
    type: string
    sql: ${TABLE}.Arethecraneslingsandriggingingoodcondition ;;
  }

  dimension: arethejobsitebarricadespostingsandwarningsignsbeingmaintainedand {
    type: string
    sql: ${TABLE}.Arethejobsitebarricadespostingsandwarningsignsbeingmaintainedand ;;
  }

  dimension: aretrenchboxesatleast18inchesabovesurfacegrade {
    type: string
    sql: ${TABLE}.Aretrenchboxesatleast18inchesabovesurfacegrade ;;
  }

  dimension: aretrenchboxesnotundercutbygreaterthan2feetatthebase {
    type: string
    sql: ${TABLE}.Aretrenchboxesnotundercutbygreaterthan2feetatthebase ;;
  }

  dimension: areunauthorizedpersonnelremovedfromtheareapriortoanylifting {
    type: string
    sql: ${TABLE}.Areunauthorizedpersonnelremovedfromtheareapriortoanylifting ;;
  }

  dimension: arevehiclestravelingatasaferateofspeed {
    type: string
    sql: ${TABLE}.Arevehiclestravelingatasaferateofspeed ;;
  }

  dimension: arewalkwaysandworkingareasunobstructedbydebrisandtrash {
    type: string
    sql: ${TABLE}.Arewalkwaysandworkingareasunobstructedbydebrisandtrash ;;
  }

  dimension: arewallbracesareingoodconditionandfreeofdefectsanddamage {
    type: string
    sql: ${TABLE}.Arewallbracesareingoodconditionandfreeofdefectsanddamage ;;
  }

  dimension: areweldingleadsfreeofcutsandpunctures {
    type: string
    sql: ${TABLE}.Areweldingleadsfreeofcutsandpunctures ;;
  }

  dimension: arewheelslockedonallrollingscaffolds {
    type: string
    sql: ${TABLE}.Arewheelslockedonallrollingscaffolds ;;
  }

  dimension: commentslistsectionyouarereferencing {
    type: string
    sql: ${TABLE}.Commentslistsectionyouarereferencing ;;
  }

  dimension_group: date {
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

  dimension: doabovegroundfuelingtankshavedikesbermsorcatchbasinsavailable {
    type: string
    sql: ${TABLE}.Doabovegroundfuelingtankshavedikesbermsorcatchbasinsavailable ;;
  }

  dimension: dooperatorsappeartobetrainedqualified {
    type: string
    sql: ${TABLE}.Dooperatorsappeartobetrainedqualified ;;
  }

  dimension: doscaffoldplanksextendatleast6inchespastsupports {
    type: string
    sql: ${TABLE}.Doscaffoldplanksextendatleast6inchespastsupports ;;
  }

  dimension: filedby {
    type: string
    sql: ${TABLE}.Filedby ;;
  }

  dimension: form_id {
    type: string
    sql: ${TABLE}.FormId ;;
  }

  dimension: form_name {
    type: string
    sql: ${TABLE}.FormName ;;
  }

  dimension: form_version {
    type: string
    sql: ${TABLE}.FormVersion ;;
  }

  dimension: havesubcontractoremployeesgonethroughthe_arcosafetyorientationtra {
    type: string
    sql: ${TABLE}.HavesubcontractoremployeesgonethroughtheARCOsafetyorientationtra ;;
  }

  dimension: ifdeeperthan20feethastheexcavationbeenengineeredbyaprofessional {
    type: string
    sql: ${TABLE}.Ifdeeperthan20feethastheexcavationbeenengineeredbyaprofessional ;;
  }

  dimension: iffuelingstationsexistneartrafficaretheyprotectedwithbarricades {
    type: string
    sql: ${TABLE}.Iffuelingstationsexistneartrafficaretheyprotectedwithbarricades ;;
  }

  dimension: ifnotis_table_a19261408beingfollowed {
    type: string
    sql: ${TABLE}.IfnotisTableA19261408beingfollowed ;;
  }

  dimension: ifwalkingapanelareallobstaclesinthepathofcrewandcraneremoved {
    type: string
    sql: ${TABLE}.Ifwalkingapanelareallobstaclesinthepathofcrewandcraneremoved ;;
  }

  dimension: is100fallprotectionbeingutilizedabove6feet {
    type: string
    sql: ${TABLE}."Is100%fallprotectionbeingutilizedabove6feet" ;;
  }

  dimension: isacompetentpersonpresentonthejobsitetoinspectopenexcavations {
    type: string
    sql: ${TABLE}.Isacompetentpersonpresentonthejobsitetoinspectopenexcavations ;;
  }

  dimension: isadditionaleyeprotectionbeingwornduringcuttingchippingandgrindi {
    type: string
    sql: ${TABLE}.Isadditionaleyeprotectionbeingwornduringcuttingchippingandgrindi ;;
  }

  dimension: isadequateclothingbeingworn4inchsleevesleathershoeslongpants {
    type: string
    sql: ${TABLE}.Isadequateclothingbeingworn4inchsleevesleathershoeslongpants ;;
  }

  dimension: isadequatelightingavailablethroughoutthejobsitewhereindividualsa {
    type: string
    sql: ${TABLE}.Isadequatelightingavailablethroughoutthejobsitewhereindividualsa ;;
  }

  dimension: isaladderorotheracceptablemeansofaccessandegressprovided {
    type: string
    sql: ${TABLE}.Isaladderorotheracceptablemeansofaccessandegressprovided ;;
  }

  dimension: isallelectricalequipmenteitherproperlygroundedordoubleinsulated {
    type: string
    sql: ${TABLE}.Isallelectricalequipmenteitherproperlygroundedordoubleinsulated ;;
  }

  dimension: isanadequatemeansofaccessandegresspresentintheexcavationevery25f {
    type: string
    sql: ${TABLE}.Isanadequatemeansofaccessandegresspresentintheexcavationevery25f ;;
  }

  dimension: isapotabledrinkablewatersupplyavailable {
    type: string
    sql: ${TABLE}.Isapotabledrinkablewatersupplyavailable ;;
  }

  dimension: isapreliftmeetingbeingheldtodiscusspanelerectionsafety {
    type: string
    sql: ${TABLE}.Isapreliftmeetingbeingheldtodiscusspanelerectionsafety ;;
  }

  dimension: isaqualifiedriggerinspectingequipmentandmethodspriortoliftingpan {
    type: string
    sql: ${TABLE}.Isaqualifiedriggerinspectingequipmentandmethodspriortoliftingpan ;;
  }

  dimension: isclearaccessavailabletofirehydrantsforemergencypersonnel {
    type: string
    sql: ${TABLE}.Isclearaccessavailabletofirehydrantsforemergencypersonnel ;;
  }

  dimension: iscranecabaffixedwithhandsignalchart {
    type: string
    sql: ${TABLE}.Iscranecabaffixedwithhandsignalchart ;;
  }

  dimension: isemergencyegressfromthejobsiteunobstructedthroughouttheproject {
    type: string
    sql: ${TABLE}.Isemergencyegressfromthejobsiteunobstructedthroughouttheproject ;;
  }

  dimension: isemergencyresponseequipmentavailableonthejobsite_riggingbasketet {
    type: string
    sql: ${TABLE}.IsemergencyresponseequipmentavailableonthejobsiteRiggingbasketet ;;
  }

  dimension: isfallingobjectprotectionprovidedunderthescaffoldingtoeboardsorr {
    type: string
    sql: ${TABLE}.Isfallingobjectprotectionprovidedunderthescaffoldingtoeboardsorr ;;
  }

  dimension: isfallprotectionbeingutilizedonscaffoldingwhenemployeesareover6f {
    type: string
    sql: ${TABLE}.Isfallprotectionbeingutilizedonscaffoldingwhenemployeesareover6f ;;
  }

  dimension: isgeneralfallprotectionbeingobservedforemployeesworkingover6feet {
    type: string
    sql: ${TABLE}.Isgeneralfallprotectionbeingobservedforemployeesworkingover6feet ;;
  }

  dimension: ishandwashingavailableonprojectswherechemicalsareused {
    type: string
    sql: ${TABLE}.Ishandwashingavailableonprojectswherechemicalsareused ;;
  }

  dimension: ishearingprotectionavailableandbeingwornwhenrequired {
    type: string
    sql: ${TABLE}.Ishearingprotectionavailableandbeingwornwhenrequired ;;
  }

  dimension: isindependentlifelinefallprotectionbeingusedduringuseofswingstag {
    type: string
    sql: ${TABLE}.Isindependentlifelinefallprotectionbeingusedduringuseofswingstag ;;
  }

  dimension: isscaffoldingonsoundfootingwithbaseplates {
    type: string
    sql: ${TABLE}.Isscaffoldingonsoundfootingwithbaseplates ;;
  }

  dimension: isthe_controlled_decking_zonemarkedwithcontrollines {
    type: string
    sql: ${TABLE}.IstheControlledDeckingZonemarkedwithcontrollines ;;
  }

  dimension: isthecraneloadchartavailable {
    type: string
    sql: ${TABLE}.Isthecraneloadchartavailable ;;
  }

  dimension: isthecraneswingradiusbeingadequatelyprotectedandorbarricaded {
    type: string
    sql: ${TABLE}.Isthecraneswingradiusbeingadequatelyprotectedandorbarricaded ;;
  }

  dimension: isthedoorormidchainclosedattachedonscissorlifts {
    type: string
    sql: ${TABLE}.Isthedoorormidchainclosedattachedonscissorlifts ;;
  }

  dimension: istheexcavationbeingevaluatedtodetermineifaconfinedspacehazardis {
    type: string
    sql: ${TABLE}.Istheexcavationbeingevaluatedtodetermineifaconfinedspacehazardis ;;
  }

  dimension: isthefloorslabanderectionareafreeofdebriswithobstaclesremoved {
    type: string
    sql: ${TABLE}.Isthefloorslabanderectionareafreeofdebriswithobstaclesremoved ;;
  }

  dimension: isthegroundlevelandfreeofdebrisaroundtheaerialplatform {
    type: string
    sql: ${TABLE}.Isthegroundlevelandfreeofdebrisaroundtheaerialplatform ;;
  }

  dimension: isthejobsitemarkedwith_no_trespassingsigns {
    type: string
    sql: ${TABLE}.IsthejobsitemarkedwithNoTrespassingsigns ;;
  }

  dimension: isthemaximumtraveldistancetoafireextinguisher100feetorlesswheree {
    type: string
    sql: ${TABLE}.Isthemaximumtraveldistancetoafireextinguisher100feetorlesswheree ;;
  }

  dimension: istheoperatorcompletingdailyinspections_areweeklyinspectionsbeing {
    type: string
    sql: ${TABLE}.IstheoperatorcompletingdailyinspectionsAreweeklyinspectionsbeing ;;
  }

  dimension: isthescaffoldingsecuredandtiedintothestructureevery26inheightand {
    type: string
    sql: ${TABLE}.Isthescaffoldingsecuredandtiedintothestructureevery26inheightand ;;
  }

  dimension: isthescaffoldingworkingplatformatleast18inchesinwidth {
    type: string
    sql: ${TABLE}.Isthescaffoldingworkingplatformatleast18inchesinwidth ;;
  }

  dimension: isthescaffoldworkingdeckfullyplankedtoblockpotentialfallhazards {
    type: string
    sql: ${TABLE}.Isthescaffoldworkingdeckfullyplankedtoblockpotentialfallhazards ;;
  }

  dimension: isthespoilpilepulledbackatleast2feetfromtheedgeoftheexcavation {
    type: string
    sql: ${TABLE}.Isthespoilpilepulledbackatleast2feetfromtheedgeoftheexcavation ;;
  }

  dimension: isthesuperintendentphonenumberpostedonthejobsiteorinawindow {
    type: string
    sql: ${TABLE}.Isthesuperintendentphonenumberpostedonthejobsiteorinawindow ;;
  }

  dimension: no_name {
    type: string
    sql: ${TABLE}.NoName ;;
  }

  dimension: no_name1 {
    type: string
    sql: ${TABLE}.NoName1 ;;
  }

  dimension: project {
    type: string
    sql: ${TABLE}.Project ;;
  }

  dimension: signature {
    type: string
    sql: ${TABLE}.Signature ;;
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

  dimension: supt {
    type: string
    sql: ${TABLE}.Supt ;;
  }

  dimension: wasallscaffoldingerectedbyacertifiedscaffolderector {
    type: string
    sql: ${TABLE}.Wasallscaffoldingerectedbyacertifiedscaffolderector ;;
  }

  measure: count {
    type: count
    drill_fields: [form_name, no_name]
  }
}
