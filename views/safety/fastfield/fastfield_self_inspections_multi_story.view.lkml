view: fastfield_self_inspections_multi_story {
  sql_table_name: dbo.Fastfield_WeeklySelfInspectionMultiStory ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Id ;;
  }

  dimension: are_hazard_communicationprogramsavailablewith_material_safety_data_sheets {
    type: number
    sql: ${TABLE}.AreHazardCommunicationprogramsavailablewithMaterialSafetyDataSheets ;;
  }

  dimension: are_no_smokingsignslocatednearflammableliquidandgasstorage {
    type: number
    sql: ${TABLE}.AreNoSmokingsignslocatednearflammableliquidandgasstorage ;;
  }

  dimension: arealarmsworkingandaudible {
    type: number
    sql: ${TABLE}.Arealarmsworkingandaudible ;;
  }

  dimension: areall_lpgbottlesbeingstoredoutsideofthebuilding {
    type: number
    sql: ${TABLE}.AreallLPGbottlesbeingstoredoutsideofthebuilding ;;
  }

  dimension: areallfireextinguisherschargedandreadyforuse {
    type: number
    sql: ${TABLE}.Areallfireextinguisherschargedandreadyforuse ;;
  }

  dimension: areallfireextinguisherstaggedandcompliantwithinspectiondate {
    type: number
    sql: ${TABLE}.Areallfireextinguisherstaggedandcompliantwithinspectiondate ;;
  }

  dimension: areallflammableliquidsbeingkeptinapprovedflameresistantmetalcontainers {
    type: number
    sql: ${TABLE}.Areallflammableliquidsbeingkeptinapprovedflameresistantmetalcontainers ;;
  }

  dimension: areallforkliftdriverslicensedtooperatethemachine {
    type: number
    sql: ${TABLE}.Areallforkliftdriverslicensedtooperatethemachine ;;
  }

  dimension: areallleadingedgehazards6andgreaterproperlyprotectedie_guardrailwarningline_pfasetc {
    type: number
    sql: ${TABLE}.Areallleadingedgehazards6andgreaterproperlyprotectedieGuardrailwarninglinePFASetc ;;
  }

  dimension: areallpowerlinesatleast20feetfromthecraneboomandrigging {
    type: number
    sql: ${TABLE}.Areallpowerlinesatleast20feetfromthecraneboomandrigging ;;
  }

  dimension: arealltemporaryelectricaloutletsequippedwith_gfcis {
    type: number
    sql: ${TABLE}.ArealltemporaryelectricaloutletsequippedwithGFCIs ;;
  }

  dimension: areannualinspectionsuptodateandpostedonthecranehousing {
    type: number
    sql: ${TABLE}.Areannualinspectionsuptodateandpostedonthecranehousing ;;
  }

  dimension: areanyopenexcavationsbeinginspecteddailyforchangingconditions {
    type: number
    sql: ${TABLE}.Areanyopenexcavationsbeinginspecteddailyforchangingconditions ;;
  }

  dimension: arebackupalarmsworkingandaudible {
    type: number
    sql: ${TABLE}.Arebackupalarmsworkingandaudible ;;
  }

  dimension: arecanopieserectedbelowbuildingaccesspoints {
    type: number
    sql: ${TABLE}.Arecanopieserectedbelowbuildingaccesspoints ;;
  }

  dimension: arechangesinelevationof19orgreaterproperlydemarcatedtopreventaccess {
    type: number
    sql: ${TABLE}.Arechangesinelevationof19orgreaterproperlydemarcatedtopreventaccess ;;
  }

  dimension: arecompressedgasregulatorsnotdamagedorcracked {
    type: number
    sql: ${TABLE}.Arecompressedgasregulatorsnotdamagedorcracked ;;
  }

  dimension: arecontainersproperlylabeledtoidentifycontentsandhazards {
    type: number
    sql: ${TABLE}.Arecontainersproperlylabeledtoidentifycontentsandhazards ;;
  }

  dimension: arecordsandcablesingoodworkingconditionincludinggroundprongs {
    type: number
    sql: ${TABLE}.Arecordsandcablesingoodworkingconditionincludinggroundprongs ;;
  }

  dimension: aredamagedormalfunctioningtoolsbeingremovedfromservice {
    type: number
    sql: ${TABLE}.Aredamagedormalfunctioningtoolsbeingremovedfromservice ;;
  }

  dimension: aredebrischutesprovidedwhenmaterialdisposalisgreaterthan20feet {
    type: number
    sql: ${TABLE}.Aredebrischutesprovidedwhenmaterialdisposalisgreaterthan20feet ;;
  }

  dimension: aredropoffareasgreaterthan4feetbeingprotectedandoridentified {
    type: number
    sql: ${TABLE}.Aredropoffareasgreaterthan4feetbeingprotectedandoridentified ;;
  }

  dimension: areelectricalpowertoolsfreeofcrackedcasingsandorcorddamage {
    type: number
    sql: ${TABLE}.Areelectricalpowertoolsfreeofcrackedcasingsandorcorddamage ;;
  }

  dimension: areemergencytelephonenumbersposted {
    type: number
    sql: ${TABLE}.Areemergencytelephonenumbersposted ;;
  }

  dimension: areexcavationsgreaterthan5feetindepthbeingbenchedshoredprotectedorsloped {
    type: number
    sql: ${TABLE}.Areexcavationsgreaterthan5feetindepthbeingbenchedshoredprotectedorsloped ;;
  }

  dimension: arefireextinguisherslocatednearflammableliquidandgasstoragewithin50 {
    type: number
    sql: ${TABLE}.Arefireextinguisherslocatednearflammableliquidandgasstoragewithin50 ;;
  }

  dimension: arefireextinguisherslocatednearhotworkactivities {
    type: number
    sql: ${TABLE}.Arefireextinguisherslocatednearhotworkactivities ;;
  }

  dimension: arefireextinguisherspresentduringallweldingandcuttingactivities {
    type: number
    sql: ${TABLE}.Arefireextinguisherspresentduringallweldingandcuttingactivities ;;
  }

  dimension: arefirstaidkitsstocked_aedandemergencyeyewashavailable {
    type: number
    sql: ${TABLE}.ArefirstaidkitsstockedAEDandemergencyeyewashavailable ;;
  }

  dimension: areflashbackarrestersinplaceoncompressedgashoses {
    type: number
    sql: ${TABLE}.Areflashbackarrestersinplaceoncompressedgashoses ;;
  }

  dimension: arefloorholescolumncutoutsorobstructionsmovedoridentifiedfortheoperators {
    type: number
    sql: ${TABLE}.Arefloorholescolumncutoutsorobstructionsmovedoridentifiedfortheoperators ;;
  }

  dimension: arefloorholesgreaterthan2inchesbeingidentifiedcoveredandmarked {
    type: number
    sql: ${TABLE}.Arefloorholesgreaterthan2inchesbeingidentifiedcoveredandmarked ;;
  }

  dimension: arefloorstubupsbeingidentifiedastriphazardsandmarkedwithvisibilitypaint {
    type: number
    sql: ${TABLE}.Arefloorstubupsbeingidentifiedastriphazardsandmarkedwithvisibilitypaint ;;
  }

  dimension: aregascylindersbeingstoredinanuprightposition {
    type: number
    sql: ${TABLE}.Aregascylindersbeingstoredinanuprightposition ;;
  }

  dimension: arehardhatsavailableandbeingwornbyallemployees {
    type: number
    sql: ${TABLE}.Arehardhatsavailableandbeingwornbyallemployees ;;
  }

  dimension: areharnessesandrestraintlanyardsbeingutilizedbyemployeesusingboomlifts {
    type: number
    sql: ${TABLE}.Areharnessesandrestraintlanyardsbeingutilizedbyemployeesusingboomlifts ;;
  }

  dimension: areladderrungsevenlyspacedonjobmadeladders {
    type: number
    sql: ${TABLE}.Areladderrungsevenlyspacedonjobmadeladders ;;
  }

  dimension: areladdersextendingatleast36inchesabovelanding {
    type: number
    sql: ${TABLE}.Areladdersextendingatleast36inchesabovelanding ;;
  }

  dimension: areladdersingoodworkingconditionandnotpaintedtoinhibitinspection {
    type: number
    sql: ${TABLE}.Areladdersingoodworkingconditionandnotpaintedtoinhibitinspection ;;
  }

  dimension: areladdersinusetiedoffandsecuredtopreventmovementandtipping {
    type: number
    sql: ${TABLE}.Areladdersinusetiedoffandsecuredtopreventmovementandtipping ;;
  }

  dimension: arenailsbeingremovedorbentoverinscraplumber {
    type: number
    sql: ${TABLE}.Arenailsbeingremovedorbentoverinscraplumber ;;
  }

  dimension: areno_aframeladdersbeingleanedagainstwallforuse {
    type: number
    sql: ${TABLE}.ArenoAframeladdersbeingleanedagainstwallforuse ;;
  }

  dimension: arenoemployeesridingillegallyonequipment {
    type: number
    sql: ${TABLE}.Arenoemployeesridingillegallyonequipment ;;
  }

  dimension: arenoemployeesusingtheliftsrailstoperformelevatedwork {
    type: number
    sql: ${TABLE}.Arenoemployeesusingtheliftsrailstoperformelevatedwork ;;
  }

  dimension: arenoextensionladdersbeingseparatedandusedinsections {
    type: number
    sql: ${TABLE}.Arenoextensionladdersbeingseparatedandusedinsections ;;
  }

  dimension: areopenpanelcircuitsbeingprotectedbytheuseofspacers {
    type: number
    sql: ${TABLE}.Areopenpanelcircuitsbeingprotectedbytheuseofspacers ;;
  }

  dimension: areoperator_ccosandriggersignalpersonqualificationsavailableonsite {
    type: number
    sql: ${TABLE}.AreoperatorCCOsandriggersignalpersonqualificationsavailableonsite ;;
  }

  dimension: areoutriggersbeingproperlycribbedandsetonpadswhenrequired {
    type: number
    sql: ${TABLE}.Areoutriggersbeingproperlycribbedandsetonpadswhenrequired ;;
  }

  dimension: areoxygenbottlesstoredatleast20feetawayfromacetylenebottles {
    type: number
    sql: ${TABLE}.Areoxygenbottlesstoredatleast20feetawayfromacetylenebottles ;;
  }

  dimension: arepotentiallyhazardousatmospheresbeingtestedforgasesorlackofoxygen {
    type: number
    sql: ${TABLE}.Arepotentiallyhazardousatmospheresbeingtestedforgasesorlackofoxygen ;;
  }

  dimension: areprotectivevalvecapsinplaceonstoredcompressedgascylinders {
    type: number
    sql: ${TABLE}.Areprotectivevalvecapsinplaceonstoredcompressedgascylinders ;;
  }

  dimension: arereinforcedcapsbeingplaceonverticalrebarandimpalementhazards {
    type: number
    sql: ${TABLE}.Arereinforcedcapsbeingplaceonverticalrebarandimpalementhazards ;;
  }

  dimension: arerespiratorsbeingwornwhenrequired_wallgrindingblockcuttingetc {
    type: number
    sql: ${TABLE}.ArerespiratorsbeingwornwhenrequiredWallgrindingblockcuttingetc ;;
  }

  dimension: areroadwaydropoffareasbeingmarkedorprotectedforoperators {
    type: number
    sql: ${TABLE}.Areroadwaydropoffareasbeingmarkedorprotectedforoperators ;;
  }

  dimension: arerollingscaffoldsusingoutriggerswhengreaterthan4tiershigh3in_california {
    type: number
    sql: ${TABLE}.Arerollingscaffoldsusingoutriggerswhengreaterthan4tiershigh3inCalifornia ;;
  }

  dimension: arerungsandcleatspacingnotover12inches_ocforjobmadeladders {
    type: number
    sql: ${TABLE}.Arerungsandcleatspacingnotover12inchesOCforjobmadeladders ;;
  }

  dimension: aresafetymeetingsbeingheldweeklyanddocumentedonsite {
    type: number
    sql: ${TABLE}.Aresafetymeetingsbeingheldweeklyanddocumentedonsite ;;
  }

  dimension: aresafetyprogramsavailablefromeachsubcontractor {
    type: number
    sql: ${TABLE}.Aresafetyprogramsavailablefromeachsubcontractor ;;
  }

  dimension: aresafetyshieldsandweldingscreensinplacewhennecessary {
    type: number
    sql: ${TABLE}.Aresafetyshieldsandweldingscreensinplacewhennecessary ;;
  }

  dimension: arescaffoldingguardrailslocatedat423incheswithanintermediateinthecenter {
    type: number
    sql: ${TABLE}.Arescaffoldingguardrailslocatedat423incheswithanintermediateinthecenter ;;
  }

  dimension: arescaffoldplanksnotcrackedordamagedtoimpedeuse {
    type: number
    sql: ${TABLE}.Arescaffoldplanksnotcrackedordamagedtoimpedeuse ;;
  }

  dimension: areseatbeltsbeingusedifrequired {
    type: number
    sql: ${TABLE}.Areseatbeltsbeingusedifrequired ;;
  }

  dimension: arestairwelllandingplatformsadequatelyequippedwithtopandmidrails {
    type: number
    sql: ${TABLE}.Arestairwelllandingplatformsadequatelyequippedwithtopandmidrails ;;
  }

  dimension: arestateandfederallegalpostersandsafetysignsmounted {
    type: number
    sql: ${TABLE}.Arestateandfederallegalpostersandsafetysignsmounted ;;
  }

  dimension: arestepsavailableforbreaksinelevationgreaterthan19inches {
    type: number
    sql: ${TABLE}.Arestepsavailableforbreaksinelevationgreaterthan19inches ;;
  }

  dimension: arestepshavingmorethan3risersequippedwithtopandmidguardrails {
    type: number
    sql: ${TABLE}.Arestepshavingmorethan3risersequippedwithtopandmidguardrails ;;
  }

  dimension: aresuspensionropesoutriggersandcablesingoodconditiononswingstages {
    type: number
    sql: ${TABLE}.Aresuspensionropesoutriggersandcablesingoodconditiononswingstages ;;
  }

  dimension: aretaglinesbeingusedtocontrolloadswhennecessary {
    type: number
    sql: ${TABLE}.Aretaglinesbeingusedtocontrolloadswhennecessary ;;
  }

  dimension: aretemporaryelectricalknockoutboxesmountedsecurelyofftheground {
    type: number
    sql: ${TABLE}.Aretemporaryelectricalknockoutboxesmountedsecurelyofftheground ;;
  }

  dimension: areterminalboxesaffixedwithcovers_arecoverslabeledandmarked {
    type: number
    sql: ${TABLE}.AreterminalboxesaffixedwithcoversArecoverslabeledandmarked ;;
  }

  dimension: arethecorrectconnectingdevicesbeingselectedie_onlyusecable_yo_yosonmetaldecking {
    type: number
    sql: ${TABLE}.ArethecorrectconnectingdevicesbeingselectedieOnlyusecableYoYosonmetaldecking ;;
  }

  dimension: arethecraneslingsandriggingingoodcondition {
    type: number
    sql: ${TABLE}.Arethecraneslingsandriggingingoodcondition ;;
  }

  dimension: arethejobsitebarricadespostingsandwarningsignsbeingmaintainedandvisible {
    type: number
    sql: ${TABLE}.Arethejobsitebarricadespostingsandwarningsignsbeingmaintainedandvisible ;;
  }

  dimension: aretrenchboxesatleast18inchesabovesurfacegrade {
    type: number
    sql: ${TABLE}.Aretrenchboxesatleast18inchesabovesurfacegrade ;;
  }

  dimension: aretrenchboxesnotundercutbygreaterthan2feetatthebase {
    type: number
    sql: ${TABLE}.Aretrenchboxesnotundercutbygreaterthan2feetatthebase ;;
  }

  dimension: arevehiclestravelingatasaferateofspeed {
    type: number
    sql: ${TABLE}.Arevehiclestravelingatasaferateofspeed ;;
  }

  dimension: arewalkwaysandworkingareasunobstructedbydebrisandtrash {
    type: number
    sql: ${TABLE}.Arewalkwaysandworkingareasunobstructedbydebrisandtrash ;;
  }

  dimension: areweldingleadsfreeofcutsandpunctures {
    type: number
    sql: ${TABLE}.Areweldingleadsfreeofcutsandpunctures ;;
  }

  dimension: arewheelslockedonallrollingscaffolds {
    type: number
    sql: ${TABLE}.Arewheelslockedonallrollingscaffolds ;;
  }

  dimension: areworkersonladdersandscaffoldsnearwindowopeningsadequatelyprotectedfromfallsgreaterthan6ie_tieoffextrarailabove_top_railetc {
    type: number
    sql: ${TABLE}.Areworkersonladdersandscaffoldsnearwindowopeningsadequatelyprotectedfromfallsgreaterthan6ieTieoffextrarailaboveTopRailetc ;;
  }

  dimension: commentslistsectionyouarereferencing {
    type: string
    sql: ${TABLE}.Commentslistsectionyouarereferencing ;;
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

  dimension: doabovegroundfuelingtankshavedikesbermsorcatchbasinsavailable {
    type: number
    sql: ${TABLE}.Doabovegroundfuelingtankshavedikesbermsorcatchbasinsavailable ;;
  }

  dimension: dooperatorsappeartobetrainedqualified {
    type: number
    sql: ${TABLE}.Dooperatorsappeartobetrainedqualified ;;
  }

  dimension: doscaffoldplanksextendatleast6inchespastsupports {
    type: number
    sql: ${TABLE}.Doscaffoldplanksextendatleast6inchespastsupports ;;
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

  dimension: filedby {
    type: string
    sql: ${TABLE}.Filedby ;;
  }

  dimension: form_name {
    type: string
    sql: ${TABLE}.FormName ;;
  }

  dimension: form_version {
    type: number
    sql: ${TABLE}.FormVersion ;;
  }

  dimension: hasa_lift_planbeensubmittedandreviewedforcontentandaccuracy {
    type: number
    sql: ${TABLE}.HasaLiftPlanbeensubmittedandreviewedforcontentandaccuracy ;;
  }

  dimension: have_allsubcontractoremployeesgonethroughthe_arcosafetyorientationtraining {
    type: number
    sql: ${TABLE}.HaveALLsubcontractoremployeesgonethroughtheARCOsafetyorientationtraining ;;
  }

  dimension: have_emsfire_deptbeeninvitedtothejobsitetoidentifyaccessegressroutes_multipletimesasthebuildingchanges {
    type: number
    sql: ${TABLE}.HaveEMSFireDeptbeeninvitedtothejobsitetoidentifyaccessegressroutesMultipletimesasthebuildingchanges ;;
  }

  dimension: haveall_personal_fall_arrest_systems_harness_lanyard_anchor_pointsbeeninspecteddaily {
    type: number
    sql: ${TABLE}.HaveallPersonalFallArrestSystemsHarnessLanyardAnchorPointsbeeninspecteddaily ;;
  }

  dimension: haveallworkersbeentrainedintheuseoffallprotection {
    type: number
    sql: ${TABLE}.Haveallworkersbeentrainedintheuseoffallprotection ;;
  }

  dimension: if_personal_fall_arrest_systemsareinusehasarescueplanbeenestablished {
    type: number
    sql: ${TABLE}.IfPersonalFallArrestSystemsareinusehasarescueplanbeenestablished ;;
  }

  dimension: ifcableguardrailsareusedarethetoprailsproperlymarkedwithhighvisibilityflagging {
    type: number
    sql: ${TABLE}.Ifcableguardrailsareusedarethetoprailsproperlymarkedwithhighvisibilityflagging ;;
  }

  dimension: ifcableguardrailsareusedistherelessthan3ofdeflection {
    type: number
    sql: ${TABLE}.Ifcableguardrailsareusedistherelessthan3ofdeflection ;;
  }

  dimension: ifdeeperthan20feethastheexcavationbeenengineeredbyaprofessional {
    type: number
    sql: ${TABLE}.Ifdeeperthan20feethastheexcavationbeenengineeredbyaprofessional ;;
  }

  dimension: iffuelingstationsexistneartrafficaretheyprotectedwithbarricades {
    type: number
    sql: ${TABLE}.Iffuelingstationsexistneartrafficaretheyprotectedwithbarricades ;;
  }

  dimension: ifguardrailsareusedaretheyerectedat423forthetoprailandapproximately21forthemidrailheight {
    type: number
    sql: ${TABLE}.Ifguardrailsareusedaretheyerectedat423forthetoprailandapproximately21forthemidrailheight ;;
  }

  dimension: ifnotis_table_a19261408beingfollowed {
    type: number
    sql: ${TABLE}.IfnotisTableA19261408beingfollowed ;;
  }

  dimension: ifswingstagesareusedaredailyinspectionsreportsbeingcompleted_availableon_arconnect {
    type: number
    sql: ${TABLE}.IfswingstagesareusedaredailyinspectionsreportsbeingcompletedAvailableonARCOnnect ;;
  }

  dimension: ifwindowsillheightsarebelow39havefallprotectiontoprailsbeeninstalledat42abovethewalkingsurface {
    type: number
    sql: ${TABLE}.Ifwindowsillheightsarebelow39havefallprotectiontoprailsbeeninstalledat42abovethewalkingsurface ;;
  }

  dimension: is100fallprotectionbeingutilizedabove6feet {
    type: number
    sql: ${TABLE}.Is100fallprotectionbeingutilizedabove6feet ;;
  }

  dimension: isacompetentpersonpresentonthejobsitetoinspectopenexcavations {
    type: number
    sql: ${TABLE}.Isacompetentpersonpresentonthejobsitetoinspectopenexcavations ;;
  }

  dimension: isadditionaleyeprotectionbeingwornduringcuttingchippingandgrindingactivities {
    type: number
    sql: ${TABLE}.Isadditionaleyeprotectionbeingwornduringcuttingchippingandgrindingactivities ;;
  }

  dimension: isadequateclothingbeingworn4inchsleevesleathershoeslongpants {
    type: number
    sql: ${TABLE}.Isadequateclothingbeingworn4inchsleevesleathershoeslongpants ;;
  }

  dimension: isadequatelightingavailablethroughoutthejobsitewhereindividualsareworking {
    type: number
    sql: ${TABLE}.Isadequatelightingavailablethroughoutthejobsitewhereindividualsareworking ;;
  }

  dimension: isaladderorotheracceptablemeansofaccessandegressprovided {
    type: number
    sql: ${TABLE}.Isaladderorotheracceptablemeansofaccessandegressprovided ;;
  }

  dimension: isallelectricalequipmenteitherproperlygroundedordoubleinsulated {
    type: number
    sql: ${TABLE}.Isallelectricalequipmenteitherproperlygroundedordoubleinsulated ;;
  }

  dimension: isanadequatemeansofaccessandegresspresentintheexcavationevery25feet {
    type: number
    sql: ${TABLE}.Isanadequatemeansofaccessandegresspresentintheexcavationevery25feet ;;
  }

  dimension: isapotabledrinkablewatersupplyavailable {
    type: number
    sql: ${TABLE}.Isapotabledrinkablewatersupplyavailable ;;
  }

  dimension: isclearaccessavailabletofirehydrantsforemergencypersonnel {
    type: number
    sql: ${TABLE}.Isclearaccessavailabletofirehydrantsforemergencypersonnel ;;
  }

  dimension: iscranecabaffixedwithhandsignalchart {
    type: number
    sql: ${TABLE}.Iscranecabaffixedwithhandsignalchart ;;
  }

  dimension: isemergencyegressfromthejobsiteunobstructedthroughouttheproject {
    type: number
    sql: ${TABLE}.Isemergencyegressfromthejobsiteunobstructedthroughouttheproject ;;
  }

  dimension: isemergencyresponseequipmentavailableonthejobsite_riggingbasketetcifrequiredduetobuildingheightandoravailabilityof_ems {
    type: number
    sql: ${TABLE}.IsemergencyresponseequipmentavailableonthejobsiteRiggingbasketetcifrequiredduetobuildingheightandoravailabilityofEMS ;;
  }

  dimension: isfallingobjectprotectionprovidedunderthescaffoldingtoeboards {
    type: number
    sql: ${TABLE}.Isfallingobjectprotectionprovidedunderthescaffoldingtoeboards ;;
  }

  dimension: isfallprotectionbeingutilizedonscaffoldingwhenemployeesareover6feetinheight {
    type: number
    sql: ${TABLE}.Isfallprotectionbeingutilizedonscaffoldingwhenemployeesareover6feetinheight ;;
  }

  dimension: isgeneralfallprotectionbeingobservedforemployeesworkingover6feet {
    type: number
    sql: ${TABLE}.Isgeneralfallprotectionbeingobservedforemployeesworkingover6feet ;;
  }

  dimension: ishandwashingavailableonprojectswherechemicalsareused {
    type: number
    sql: ${TABLE}.Ishandwashingavailableonprojectswherechemicalsareused ;;
  }

  dimension: ishearingprotectionavailableandbeingwornwhenrequired {
    type: number
    sql: ${TABLE}.Ishearingprotectionavailableandbeingwornwhenrequired ;;
  }

  dimension: isindependentlifelinefallprotectionbeingusedduringuseofswingstagescaffolding {
    type: number
    sql: ${TABLE}.Isindependentlifelinefallprotectionbeingusedduringuseofswingstagescaffolding ;;
  }

  dimension: isscaffoldingonsoundfootingwithbaseplates {
    type: number
    sql: ${TABLE}.Isscaffoldingonsoundfootingwithbaseplates ;;
  }

  dimension: isscaffoldingproperlytaggedifinspectiondate_green_in_service_red_outof_service {
    type: number
    sql: ${TABLE}.IsscaffoldingproperlytaggedifinspectiondateGreenInServiceRedOutofService ;;
  }

  dimension: isthe_controlled_decking_zonemarkedwithcontrollines {
    type: number
    sql: ${TABLE}.IstheControlledDeckingZonemarkedwithcontrollines ;;
  }

  dimension: istheareabelowoverheadworkproperlybarricadedtopreventaccess {
    type: number
    sql: ${TABLE}.Istheareabelowoverheadworkproperlybarricadedtopreventaccess ;;
  }

  dimension: isthecraneloadchartavailable {
    type: number
    sql: ${TABLE}.Isthecraneloadchartavailable ;;
  }

  dimension: isthecraneswingradiusbeingadequatelyprotectedandorbarricaded {
    type: number
    sql: ${TABLE}.Isthecraneswingradiusbeingadequatelyprotectedandorbarricaded ;;
  }

  dimension: isthedoorormidchainclosedattachedonscissorlifts {
    type: number
    sql: ${TABLE}.Isthedoorormidchainclosedattachedonscissorlifts ;;
  }

  dimension: istheexcavationbeingevaluatedtodetermineifaconfinedspacehazardispresent {
    type: number
    sql: ${TABLE}.Istheexcavationbeingevaluatedtodetermineifaconfinedspacehazardispresent ;;
  }

  dimension: isthegroundlevelandfreeofdebrisaroundtheaerialplatform {
    type: number
    sql: ${TABLE}.Isthegroundlevelandfreeofdebrisaroundtheaerialplatform ;;
  }

  dimension: isthejobsitemarkedwith_no_trespassingsigns {
    type: number
    sql: ${TABLE}.IsthejobsitemarkedwithNoTrespassingsigns ;;
  }

  dimension: isthemaximumtraveldistancetoafireextinguisher100feetorlesswhereemployeesareworking {
    type: number
    sql: ${TABLE}.Isthemaximumtraveldistancetoafireextinguisher100feetorlesswhereemployeesareworking ;;
  }

  dimension: istheoperatorcompletingdailyinspections_areweeklyinspectionsbeingdocumentedandmaintainingloginthecranecab {
    type: number
    sql: ${TABLE}.IstheoperatorcompletingdailyinspectionsAreweeklyinspectionsbeingdocumentedandmaintainingloginthecranecab ;;
  }

  dimension: isthescaffoldingsecuredandtiedintothestructureevery26inheightandevery30inlength {
    type: number
    sql: ${TABLE}.Isthescaffoldingsecuredandtiedintothestructureevery26inheightandevery30inlength ;;
  }

  dimension: isthescaffoldingworkingplatformatleast18inchesinwidth {
    type: number
    sql: ${TABLE}.Isthescaffoldingworkingplatformatleast18inchesinwidth ;;
  }

  dimension: isthescaffoldworkingdeckfullyplankedtoblockpotentialfallhazards {
    type: number
    sql: ${TABLE}.Isthescaffoldworkingdeckfullyplankedtoblockpotentialfallhazards ;;
  }

  dimension: isthespoilpilepulledbackatleast2feetfromtheedgeoftheexcavation {
    type: number
    sql: ${TABLE}.Isthespoilpilepulledbackatleast2feetfromtheedgeoftheexcavation ;;
  }

  dimension: isthesuperintendentphonenumberpostedonthejobsiteorinawindow {
    type: number
    sql: ${TABLE}.Isthesuperintendentphonenumberpostedonthejobsiteorinawindow ;;
  }

  dimension: new_field159 {
    type: string
    sql: ${TABLE}.NewField159 ;;
  }

  dimension: new_field45 {
    type: string
    sql: ${TABLE}.NewField45 ;;
  }

  dimension: project {
    type: string
    sql: ${TABLE}.Project ;;
  }

  dimension: sequence_number {
    type: number
    sql: ${TABLE}.SequenceNumber ;;
  }

  dimension: signature {
    type: string
    sql: ${TABLE}.Signature ;;
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

  dimension: supt {
    type: string
    sql: ${TABLE}.Supt ;;
  }

  dimension: wasallscaffoldingerectedbyacertifiedscaffolderector {
    type: number
    sql: ${TABLE}.Wasallscaffoldingerectedbyacertifiedscaffolderector ;;
  }

  measure: count {
    type: count
    drill_fields: [id, form_name]
  }
}
