view: l_fastfield_self_inspections_questionnaire {
  view_label: "Fastfield Self-Inspection Questionnaire"
  derived_table: {
    datagroup_trigger: daily_refresh
    indexes: ["SubmissionId"]
    sql:
    SELECT SubmissionId, score,
    CASE
    WHEN question = 'Arestateandfederallegalpostersandsafetysignsmounted' THEN 'Are state and federal legal posters and safety signs mounted?'
    WHEN question = 'Aresafetymeetingsbeingheldweeklyanddocumentedonsite' THEN 'Are safety meetings being held weekly and documented onsite?'
    WHEN question = 'Arefirstaidkitsstockedandemergencyeyewashavailable' THEN 'Are first aid kits stocked and emergency eye wash available?'
    WHEN question = 'Areemergencytelephonenumbersposted' THEN 'Are emergency telephone numbers posted?'
    WHEN question = 'Aresafetyprogramsavailablefromeachsubcontractor' THEN 'Are safety programs available from each subcontractor?'
    WHEN question = 'AreHazardCommunicationprogramsavailablewithMaterialSafetyDataShe' THEN 'Are hazard communication programs available with material safety data sheets?'
    WHEN question = 'HavesubcontractoremployeesgonethroughtheARCOsafetyorientationtra' THEN 'Have subcontractor employees gone through the arco safety orientation training?'
    WHEN question = 'IsthejobsitemarkedwithNoTrespassingsigns' THEN 'Is the job site marked with no trespassing signs?'
    WHEN question = 'Isthesuperintendentphonenumberpostedonthejobsiteorinawindow' THEN 'Is the superintendent phone number posted on the job site or in a window?'
    WHEN question = 'IsemergencyresponseequipmentavailableonthejobsiteRiggingbasketet' THEN 'Is emergency response equipment available on the job site rigging basket etc if required due to building height and or availability of ems?'
    WHEN question = 'Ishandwashingavailableonprojectswherechemicalsareused' THEN 'Is handwashing available on projects where chemicals are used?'
    WHEN question = 'Aredebrischutesprovidedwhenmaterialdisposalisgreaterthan20feet' THEN 'Are debris chutes provided when material disposal is greater than 20 feet?'
    WHEN question = 'Arefloorholesgreaterthan2inchesbeingidentifiedcoveredandmarked' THEN 'Are floor holes greater than 2 inches being identified covered and marked?'
    WHEN question = 'Isapotabledrinkablewatersupplyavailable' THEN 'Is a potable drinkable water supply available?'
    WHEN question = 'Arenailsbeingremovedorbentoverinscraplumber' THEN 'Are nails being removed or bent over in scrap lumber?'
    WHEN question = 'Arewalkwaysandworkingareasunobstructedbydebrisandtrash' THEN 'Are walkways and working areas unobstructed by debris and trash?'
    WHEN question = 'Arethejobsitebarricadespostingsandwarningsignsbeingmaintainedand' THEN 'Are the job site barricades postings and warning signs being maintained and visible?'
    WHEN question = 'Arecontainersproperlylabeledtoidentifycontentsandhazards' THEN 'Are containers properly labeled to identify contents and hazards?'
    WHEN question = 'Arepotentiallyhazardousatmospheresbeingtestedforgasesorlackofoxy' THEN 'Are potentially hazardous atmospheres being tested for gases or lack of oxygen?'
    WHEN question = 'Isadequatelightingavailablethroughoutthejobsitewhereindividualsa' THEN 'Is adequate lighting available throughout the job site where individuals are working?'
    WHEN question = 'Isemergencyegressfromthejobsiteunobstructedthroughouttheproject' THEN 'Is emergency egress from the job site unobstructed throughout the project?'
    WHEN question = 'Aredropoffareasgreaterthan4feetbeingprotectedandoridentified' THEN 'Are drop off areas greater than 4 feet being protected and or identified?'
    WHEN question = 'Arereinforcedcapsbeingplaceonverticalrebarandimpalementhazards' THEN 'Are reinforced caps being place on vertical rebar and impalement hazards?'
    WHEN question = 'Arefloorstubupsbeingidentifiedastriphazardsandmarkedwithvisibili' THEN 'Are floor stub ups being identified a strip hazards and marked with visibility paint?'
    WHEN question = 'Isthemaximumtraveldistancetoafireextinguisher100feetorlesswheree' THEN 'Is the maximum travel distance to a fire extinguisher 100 feet or less where employees are working?'
    WHEN question = 'Areallfireextinguisherstaggedandcompliantwithinspectiondate' THEN 'Are all fire extinguishers tagged and compliant with inspection date?'
    WHEN question = 'Areallfireextinguisherschargedandreadyforuse' THEN 'Are all fire extinguishers charged and ready for use?'
    WHEN question = 'Arefireextinguisherslocatednearhotworkactivities' THEN 'Are fire extinguishers located near hot work activities?'
    WHEN question = 'Arefireextinguisherslocatednearflammableliquidandgasstoragewithi' THEN 'Are fire extinguishers located near flammable liquid and gas storage within 50?'
    WHEN question = 'AreNoSmokingsignslocatednearflammableliquidandgasstorage' THEN 'Are no smoking signs located near flammable liquid and gas storage?'
    WHEN question = 'Areoxygenbottlesstoredatleast20feetawayfromacetylenebottles' THEN 'Are oxygen bottles stored atleast 20 feet away from acetylene bottles?'
    WHEN question = 'Areprotectivevalvecapsinplaceonstoredcompressedgascylinders' THEN 'Are protective valve caps in place on stored compressed gas cylinders?'
    WHEN question = 'Aregascylindersbeingstoredinanuprightposition' THEN 'Are gas cylinders being stored in an upright position?'
    WHEN question = 'Doabovegroundfuelingtankshavedikesbermsorcatchbasinsavailable' THEN 'Do above ground fueling tanks have dikes berms or catch basins available?'
    WHEN question = 'AreallLPGbottlesbeingstoredoutsideofthebuilding' THEN 'Are all lpg bottles being stored outside of the building?'
    WHEN question = 'Isclearaccessavailabletofirehydrantsforemergencypersonnel' THEN 'Is clear access available to fire hydrants for emergency personnel?'
    WHEN question = 'Areallflammableliquidsbeingkeptinapprovedflameresistantmetalcont' THEN 'Are all flammable liquids being kept in approved flame resistant metal containers?'
    WHEN question = 'Arehardhatsavailableandbeingwornbyallemployees' THEN 'Are hard hats available and being worn by all employees?'
    WHEN question = 'Isadequateclothingbeingworn4inchsleevesleathershoeslongpants' THEN 'Is adequate clothing being worn 4 inch sleeves leather shoes long pants?'
    WHEN question = 'Isadditionaleyeprotectionbeingwornduringcuttingchippingandgrindi' THEN 'Is additional eye protection being worn during cutting chipping and grinding activities?'
    WHEN question = 'ArerespiratorsbeingwornwhenrequiredWallgrindingblockcuttingetc' THEN 'Are respirators being worn when required wall grinding block cutting etc?'
    WHEN question = 'Ishearingprotectionavailableandbeingwornwhenrequired' THEN 'Is hearing protection available and being worn when required?'
    WHEN question = 'Isallelectricalequipmenteitherproperlygroundedordoubleinsulated' THEN 'Is all electrical equipment either properly grounded or double insulated?'
    WHEN question = 'ArealltemporaryelectricaloutletsequippedwithGFCIs' THEN 'Are all temporary electrical outlets equipped with gfcis?'
    WHEN question = 'AreterminalboxesaffixedwithcoversArecoverslabeledandmarked' THEN 'Are terminal boxes affixed with covers are covers labeled and marked?'
    WHEN question = 'Arecordsandcablesingoodworkingconditionincludinggroundprongs' THEN 'A records and cables in good working condition including ground prongs?'
    WHEN question = 'Aretemporaryelectricalknockoutboxesmountedsecurelyofftheground' THEN 'Are temporary electrical knockout boxes mounted securely off the ground?'
    WHEN question = 'Areopenpanelcircuitsbeingprotectedbytheuseofspacers' THEN 'Are open panel circuits being protected by the use of s pacers?'
    WHEN question = 'Aredamagedormalfunctioningtoolsbeingremovedfromservice' THEN 'Are damaged or malfunctioning tools being removed from service?'
    WHEN question = 'Areelectricalpowertoolsfreeofcrackedcasingsandorcorddamage' THEN 'Are electrical power tools free of cracked casings and or cord damage?'
    WHEN question = 'Isacompetentpersonpresentonthejobsitetoinspectopenexcavations' THEN 'Is a competent person present on the job site to inspect open excavations?'
    WHEN question = 'Isanadequatemeansofaccessandegresspresentintheexcavationevery25f' THEN 'Is an adequate means of access and egress present in the excavation every 25 feet?'
    WHEN question = 'Areexcavationsgreaterthan5feetindepthbeingbenchedshoredprotected' THEN 'Are excavations greater than 5 feet in depth being benched shored protected or sloped?'
    WHEN question = 'Isthespoilpilepulledbackatleast2feetfromtheedgeoftheexcavation' THEN 'Is the spoil pile pulled back atleast 2 feet from the edge of the excavation?'
    WHEN question = 'Aretrenchboxesatleast18inchesabovesurfacegrade' THEN 'Are trench boxes atleast 18 inches above surface grade?'
    WHEN question = 'Aretrenchboxesnotundercutbygreaterthan2feetatthebase' THEN 'Are trench boxes not undercut by greater than 2 feet at the base?'
    WHEN question = 'Ifdeeperthan20feethastheexcavationbeenengineeredbyaprofessional' THEN 'If deeper than 20 feet has the excavation been engineered by a professional?'
    WHEN question = 'Areanyopenexcavationsbeinginspecteddailyforchangingconditions' THEN 'Are any open excavations being inspected daily for changing conditions?'
    WHEN question = 'Istheexcavationbeingevaluatedtodetermineifaconfinedspacehazardis' THEN 'Is the excavation being evaluated to determine if a confined space hazard is present?'
    WHEN question = 'Isscaffoldingonsoundfootingwithbaseplates' THEN 'Is scaffolding on sound footing with base plates?'
    WHEN question = 'Isaladderorotheracceptablemeansofaccessandegressprovided' THEN 'Is a ladder or other acceptable means of access and egress provided?'
    WHEN question = 'Isthescaffoldingsecuredandtiedintothestructureevery26inheightand' THEN 'Is the scaffolding secured and tied into the structure every 26 in height and every 30 in length?'
    WHEN question = 'Arescaffoldingguardrailslocatedat423incheswithanintermediateinth' THEN 'Are scaffolding guardrails located at 423 inches with an intermediate in the center?'
    WHEN question = 'Isfallingobjectprotectionprovidedunderthescaffoldingtoeboardsorr' THEN 'Is falling object protection provided under the scaffolding toe boards?'
    WHEN question = 'Aresuspensionropesoutriggersandcablesingoodconditiononswingstage' THEN 'Are suspension ropes outriggers and cables in good condition on swing stages?'
    WHEN question = 'Isindependentlifelinefallprotectionbeingusedduringuseofswingstag' THEN 'Is independent lifeline fall protection being used during use of swing stage scaffolding?'
    WHEN question = 'Isfallprotectionbeingutilizedonscaffoldingwhenemployeesareover6f' THEN 'Is fall protection being utilized on scaffolding when employees are over 6 feet in height?'
    WHEN question = 'Arewheelslockedonallrollingscaffolds' THEN 'Are wheels locked on all rolling scaffolds?'
    WHEN question = 'Arerollingscaffoldsusingoutriggerswhengreaterthan4tiershigh3inCa' THEN 'Are rolling scaffolds using outriggers when greater than 4 tiers high 3 in california?'
    WHEN question = 'Isthescaffoldingworkingplatformatleast18inchesinwidth' THEN 'Is the scaffolding working platform atleast 18 inches in width?'
    WHEN question = 'Arescaffoldplanksnotcrackedordamagedtoimpedeuse' THEN 'Are scaffold planks not cracked or damaged to impede use?'
    WHEN question = 'Isthescaffoldworkingdeckfullyplankedtoblockpotentialfallhazards' THEN 'Is the scaffold working deck fully planked to block potential fall hazards?'
    WHEN question = 'Doscaffoldplanksextendatleast6inchespastsupports' THEN 'Do scaffold planks extend atleast 6 inches past supports?'
    WHEN question = 'Wasallscaffoldingerectedbyacertifiedscaffolderector' THEN 'Was all scaffolding erected by a certified scaffold erect?'
    WHEN question = 'Areannualinspectionsuptodateandpostedonthecranehousing' THEN 'Are annual inspections up to date and posted on the crane housing?'
    WHEN question = 'AreoperatorCCOsandriggersignalpersonqualificationsavailableonsit' THEN 'Are operator c cos and rig ger signal person qualifications available onsite?'
    WHEN question = 'IstheoperatorcompletingdailyinspectionsAreweeklyinspectionsbeing' THEN 'Is the operator completing daily inspections are weekly inspections being documented and maintaining login the crane cab?'
    WHEN question = 'Areoutriggersbeingproperlycribbedandsetonpadswhenrequired' THEN 'Are outriggers being properly cribbed and seton pads when required?'
    WHEN question = 'Areallpowerlinesatleast20feetfromthecraneboomandrigging' THEN 'Are all power lines atleast 20 feet from the crane boom and rigging?'
    WHEN question = 'IfnotisTableA19261408beingfollowed' THEN 'If not is table a 19261408 being followed?'
    WHEN question = 'Iscranecabaffixedwithhandsignalchart' THEN 'Is crane cab affixed with hand signal chart?'
    WHEN question = 'Arealarmsworkingandaudible' THEN 'Are alarms working and audible?'
    WHEN question = 'Isthecraneswingradiusbeingadequatelyprotectedandorbarricaded' THEN 'Is the cranes wing radius being adequately protected and or barricaded?'
    WHEN question = 'Arethecraneslingsandriggingingoodcondition' THEN 'Are the crane slings and rigging in good condition?'
    WHEN question = 'Aretaglinesbeingusedtocontrolloadswhennecessary' THEN 'Are taglines being used to control loads when necessary?'
    WHEN question = 'Isthecraneloadchartavailable' THEN 'Is the crane load chart available?'
    WHEN question = 'Arebackupalarmsworkingandaudible' THEN 'Are backup alarms working and audible?'
    WHEN question = 'Iffuelingstationsexistneartrafficaretheyprotectedwithbarricades' THEN 'If fueling stations exist near traffic are they protected with barricades?'
    WHEN question = 'Arenoemployeesridingillegallyonequipment' THEN 'Are no employees riding illegally on equipment?'
    WHEN question = 'Arevehiclestravelingatasaferateofspeed' THEN 'Are vehicles traveling at a safe rate of speed?'
    WHEN question = 'Areseatbeltsbeingusedifrequired' THEN 'Are seatbelts being used if required?'
    WHEN question = 'Areroadwaydropoffareasbeingmarkedorprotectedforoperators' THEN 'Are roadway drop off areas being marked or protected for operators?'
    WHEN question = 'Areallforkliftdriverslicensedtooperatethemachine' THEN 'Are all forklift drivers licensed to operate the machine?'
    WHEN question = 'Is100%fallprotectionbeingutilizedabove6feet' THEN 'Is 100 fall protection being utilized above 6 feet?'
    WHEN question = 'IstheControlledDeckingZonemarkedwithcontrollines' THEN 'Is the controlled decking zone marked with control lines?'
    WHEN question = 'Arecompressedgasregulatorsnotdamagedorcracked' THEN 'Are compressed gas regulators not damaged or cracked?'
    WHEN question = 'Areweldingleadsfreeofcutsandpunctures' THEN 'Are welding leads free of cuts and punctures?'
    WHEN question = 'Areflashbackarrestersinplaceoncompressedgashoses' THEN 'Are flashback arrest ers in place on compressed gas hoses?'
    WHEN question = 'Aresafetyshieldsandweldingscreensinplacewhennecessary' THEN 'Are safety shields and welding screens in place when necessary?'
    WHEN question = 'Arefireextinguisherspresentduringallweldingandcuttingactivities' THEN 'Are fire extinguishers present during all welding and cutting activities?'
    WHEN question = 'Areharnessesandlanyardsbeingutilizedbyemployeesusingboomlifts' THEN 'Are harnesses and restraint lanyards being utilized by employees using boom lifts?'
    WHEN question = 'Isthedoorormidchainclosedattachedonscissorlifts' THEN 'Is the door or mid chain closed attached on scissor lifts?'
    WHEN question = 'Isthegroundlevelandfreeofdebrisaroundtheaerialplatform' THEN 'Is the ground level and free of debris around the aerial platform?'
    WHEN question = 'Arefloorholescolumncutoutsorobstructionsmovedoridentifiedfortheo' THEN 'Are floor holes column cutouts or obstructions moved or identified for the operators?'
    WHEN question = 'Dooperatorsappeartobetrainedqualified' THEN 'Do operators appear to be trained qualified?'
    WHEN question = 'Arenoemployeesusingtheliftsrailstoperformelevatedwork' THEN 'Are no employees using the lifts rails to perform elevated work?'
    WHEN question = 'Areladdersingoodworkingconditionandnotpaintedtoinhibitinspection' THEN 'Are ladders in good working condition and not painted to inhibit inspection?'
    WHEN question = 'Areladdersinusetiedoffandsecuredtopreventmovementandtipping' THEN 'Are ladders in use tied off and secured to prevent movement and tipping?'
    WHEN question = 'Areladdersextendingatleast36inchesabovelanding' THEN 'Are ladders extending atleast 36 inches above landing?'
    WHEN question = 'ArenoAframeladdersbeingleanedagainstwallforuse' THEN 'Are no a frame ladders being leaned against wall for use?'
    WHEN question = 'Arenoextensionladdersbeingseparatedandusedinsections' THEN 'Are no extension ladders being separated and used in sections?'
    WHEN question = 'Arerungsandcleatspacingnotover12”inchesOCforjobmadeladders' THEN 'Are rungs and cleat spacing not over 12 inches oc for job made ladders?'
    WHEN question = 'Areladderrungsevenlyspacedonjobmadeladders' THEN 'Are ladder rungs evenly spaced on job made ladders?'
    WHEN question = 'Arestepshavingmorethan3risersequippedwithtopandmidguardrails' THEN 'Are steps having more than 3 risers equipped with top and mid guardrails?'
    WHEN question = 'Arestepsavailableforbreaksinelevationgreaterthan19inches' THEN 'Are steps available for breaks in elevation greater than 19 inches?'
    WHEN question = 'Arestairwelllandingplatformsadequatelyequippedwithtopandmidrails' THEN 'Are stairwell landing platforms adequately equipped with top and mid rails?'
    WHEN question = 'Isgeneralfallprotectionbeingobservedforemployeesworkingover6feet' THEN 'Is general fall protection being observed for employees working over 6 feet?'
    WHEN question = 'Isapreliftmeetingbeingheldtodiscusspanelerectionsafety' THEN 'Is a pre lift meeting being held to discuss panel erection safety?'
    WHEN question = 'Areconditionssafeinregardstowindandweathertoliftapanel' THEN 'Are conditions safe in regards to wind and weather to lift a panel?'
    WHEN question = 'Arewallbracesareingoodconditionandfreeofdefectsanddamage' THEN 'Are wall braces are in good condition and free of defects and damage?'
    WHEN question = 'Isthefloorslabanderectionareafreeofdebriswithobstaclesremoved' THEN 'Is the floors lab and erection area free of debris with obstacles removed?'
    WHEN question = 'Areunauthorizedpersonnelremovedfromtheareapriortoanylifting' THEN 'Are unauthorized personnel removed from the area prior to any lifting?'
    WHEN question = 'Isaqualifiedriggerinspectingequipmentandmethodspriortoliftingpan' THEN 'Is a qualified rig ger inspecting equipment and methods prior to lifting?'
    WHEN question = 'Ifwalkingapanelareallobstaclesinthepathofcrewandcraneremoved' THEN 'If walking a panel are all obstacles in the path of crew and crane removed?'
    WHEN question = 'Arenobracesremoveduntilallthestructuralconnectionsarecompleted' THEN 'Are no braces removed until all the structural connections are completed?'
    WHEN question = 'Arebracesbeinginspecteddailypriortowork' THEN 'Are braces being inspected daily prior to work?'
    ELSE question END as question
    FROM dbo.FastField_WeeklySelfInspection
    UNPIVOT
    (
      score
      FOR question in (
      [Arestateandfederallegalpostersandsafetysignsmounted]
    , [Aresafetymeetingsbeingheldweeklyanddocumentedonsite]
    , [Arefirstaidkitsstockedandemergencyeyewashavailable]
    , [Areemergencytelephonenumbersposted]
    , [Aresafetyprogramsavailablefromeachsubcontractor]
    , [AreHazardCommunicationprogramsavailablewithMaterialSafetyDataShe]
    , [HavesubcontractoremployeesgonethroughtheARCOsafetyorientationtra]
    , [IsthejobsitemarkedwithNoTrespassingsigns]
    , [Isthesuperintendentphonenumberpostedonthejobsiteorinawindow]
    , [IsemergencyresponseequipmentavailableonthejobsiteRiggingbasketet]
    , [Ishandwashingavailableonprojectswherechemicalsareused]
    , [Aredebrischutesprovidedwhenmaterialdisposalisgreaterthan20feet]
    , [Arefloorholesgreaterthan2inchesbeingidentifiedcoveredandmarked]
    , [Isapotabledrinkablewatersupplyavailable]
    , [Arenailsbeingremovedorbentoverinscraplumber]
    , [Arewalkwaysandworkingareasunobstructedbydebrisandtrash]
    , [Arethejobsitebarricadespostingsandwarningsignsbeingmaintainedand]
    , [Arecontainersproperlylabeledtoidentifycontentsandhazards]
    , [Arepotentiallyhazardousatmospheresbeingtestedforgasesorlackofoxy]
    , [Isadequatelightingavailablethroughoutthejobsitewhereindividualsa]
    , [Isemergencyegressfromthejobsiteunobstructedthroughouttheproject]
    , [Aredropoffareasgreaterthan4feetbeingprotectedandoridentified]
    , [Arereinforcedcapsbeingplaceonverticalrebarandimpalementhazards]
    , [Arefloorstubupsbeingidentifiedastriphazardsandmarkedwithvisibili]
    , [Isthemaximumtraveldistancetoafireextinguisher100feetorlesswheree]
    , [Areallfireextinguisherstaggedandcompliantwithinspectiondate]
    , [Areallfireextinguisherschargedandreadyforuse]
    , [Arefireextinguisherslocatednearhotworkactivities]
    , [Arefireextinguisherslocatednearflammableliquidandgasstoragewithi]
    , [AreNoSmokingsignslocatednearflammableliquidandgasstorage]
    , [Areoxygenbottlesstoredatleast20feetawayfromacetylenebottles]
    , [Areprotectivevalvecapsinplaceonstoredcompressedgascylinders]
    , [Aregascylindersbeingstoredinanuprightposition]
    , [Doabovegroundfuelingtankshavedikesbermsorcatchbasinsavailable]
    , [AreallLPGbottlesbeingstoredoutsideofthebuilding]
    , [Isclearaccessavailabletofirehydrantsforemergencypersonnel]
    , [Areallflammableliquidsbeingkeptinapprovedflameresistantmetalcont]
    , [Arehardhatsavailableandbeingwornbyallemployees]
    , [Isadequateclothingbeingworn4inchsleevesleathershoeslongpants]
    , [Isadditionaleyeprotectionbeingwornduringcuttingchippingandgrindi]
    , [ArerespiratorsbeingwornwhenrequiredWallgrindingblockcuttingetc]
    , [Ishearingprotectionavailableandbeingwornwhenrequired]
    , [Isallelectricalequipmenteitherproperlygroundedordoubleinsulated]
    , [ArealltemporaryelectricaloutletsequippedwithGFCIs]
    , [AreterminalboxesaffixedwithcoversArecoverslabeledandmarked]
    , [Arecordsandcablesingoodworkingconditionincludinggroundprongs]
    , [Aretemporaryelectricalknockoutboxesmountedsecurelyofftheground]
    , [Areopenpanelcircuitsbeingprotectedbytheuseofspacers]
    , [Aredamagedormalfunctioningtoolsbeingremovedfromservice]
    , [Areelectricalpowertoolsfreeofcrackedcasingsandorcorddamage]
    , [Isacompetentpersonpresentonthejobsitetoinspectopenexcavations]
    , [Isanadequatemeansofaccessandegresspresentintheexcavationevery25f]
    , [Areexcavationsgreaterthan5feetindepthbeingbenchedshoredprotected]
    , [Isthespoilpilepulledbackatleast2feetfromtheedgeoftheexcavation]
    , [Aretrenchboxesatleast18inchesabovesurfacegrade]
    , [Aretrenchboxesnotundercutbygreaterthan2feetatthebase]
    , [Ifdeeperthan20feethastheexcavationbeenengineeredbyaprofessional]
    , [Areanyopenexcavationsbeinginspecteddailyforchangingconditions]
    , [Istheexcavationbeingevaluatedtodetermineifaconfinedspacehazardis]
    , [Isscaffoldingonsoundfootingwithbaseplates]
    , [Isaladderorotheracceptablemeansofaccessandegressprovided]
    , [Isthescaffoldingsecuredandtiedintothestructureevery26inheightand]
    , [Arescaffoldingguardrailslocatedat423incheswithanintermediateinth]
    , [Isfallingobjectprotectionprovidedunderthescaffoldingtoeboardsorr]
    , [Aresuspensionropesoutriggersandcablesingoodconditiononswingstage]
    , [Isindependentlifelinefallprotectionbeingusedduringuseofswingstag]
    , [Isfallprotectionbeingutilizedonscaffoldingwhenemployeesareover6f]
    , [Arewheelslockedonallrollingscaffolds]
    , [Arerollingscaffoldsusingoutriggerswhengreaterthan4tiershigh3inCa]
    , [Isthescaffoldingworkingplatformatleast18inchesinwidth]
    , [Arescaffoldplanksnotcrackedordamagedtoimpedeuse]
    , [Isthescaffoldworkingdeckfullyplankedtoblockpotentialfallhazards]
    , [Doscaffoldplanksextendatleast6inchespastsupports]
    , [Wasallscaffoldingerectedbyacertifiedscaffolderector]
    , [Areannualinspectionsuptodateandpostedonthecranehousing]
    , [AreoperatorCCOsandriggersignalpersonqualificationsavailableonsit]
    , [IstheoperatorcompletingdailyinspectionsAreweeklyinspectionsbeing]
    , [Areoutriggersbeingproperlycribbedandsetonpadswhenrequired]
    , [Areallpowerlinesatleast20feetfromthecraneboomandrigging]
    , [IfnotisTableA19261408beingfollowed]
    , [Iscranecabaffixedwithhandsignalchart]
    , [Arealarmsworkingandaudible]
    , [Isthecraneswingradiusbeingadequatelyprotectedandorbarricaded]
    , [Arethecraneslingsandriggingingoodcondition]
    , [Aretaglinesbeingusedtocontrolloadswhennecessary]
    , [Isthecraneloadchartavailable]
    , [Arebackupalarmsworkingandaudible]
    , [Iffuelingstationsexistneartrafficaretheyprotectedwithbarricades]
    , [Arenoemployeesridingillegallyonequipment]
    , [Arevehiclestravelingatasaferateofspeed]
    , [Areseatbeltsbeingusedifrequired]
    , [Areroadwaydropoffareasbeingmarkedorprotectedforoperators]
    , [Areallforkliftdriverslicensedtooperatethemachine]
    , [Is100%fallprotectionbeingutilizedabove6feet]
    , [IstheControlledDeckingZonemarkedwithcontrollines]
    , [Arecompressedgasregulatorsnotdamagedorcracked]
    , [Areweldingleadsfreeofcutsandpunctures]
    , [Areflashbackarrestersinplaceoncompressedgashoses]
    , [Aresafetyshieldsandweldingscreensinplacewhennecessary]
    , [Arefireextinguisherspresentduringallweldingandcuttingactivities]
    , [Areharnessesandlanyardsbeingutilizedbyemployeesusingboomlifts]
    , [Isthedoorormidchainclosedattachedonscissorlifts]
    , [Isthegroundlevelandfreeofdebrisaroundtheaerialplatform]
    , [Arefloorholescolumncutoutsorobstructionsmovedoridentifiedfortheo]
    , [Dooperatorsappeartobetrainedqualified]
    , [Arenoemployeesusingtheliftsrailstoperformelevatedwork]
    , [Areladdersingoodworkingconditionandnotpaintedtoinhibitinspection]
    , [Areladdersinusetiedoffandsecuredtopreventmovementandtipping]
    , [Areladdersextendingatleast36inchesabovelanding]
    , [ArenoAframeladdersbeingleanedagainstwallforuse]
    , [Arenoextensionladdersbeingseparatedandusedinsections]
    , [Arerungsandcleatspacingnotover12”inchesOCforjobmadeladders]
    , [Areladderrungsevenlyspacedonjobmadeladders]
    , [Arestepshavingmorethan3risersequippedwithtopandmidguardrails]
    , [Arestepsavailableforbreaksinelevationgreaterthan19inches]
    , [Arestairwelllandingplatformsadequatelyequippedwithtopandmidrails]
    , [Isgeneralfallprotectionbeingobservedforemployeesworkingover6feet]
    , [Isapreliftmeetingbeingheldtodiscusspanelerectionsafety]
    , [Areconditionssafeinregardstowindandweathertoliftapanel]
    , [Arewallbracesareingoodconditionandfreeofdefectsanddamage]
    , [Isthefloorslabanderectionareafreeofdebriswithobstaclesremoved]
    , [Areunauthorizedpersonnelremovedfromtheareapriortoanylifting]
    , [Isaqualifiedriggerinspectingequipmentandmethodspriortoliftingpan]
    , [Ifwalkingapanelareallobstaclesinthepathofcrewandcraneremoved]
    , [Arenobracesremoveduntilallthestructuralconnectionsarecompleted]
    , [Arebracesbeinginspecteddailypriortowork]
      )
    ) AS questionUnpivot
    ;;
  }

  dimension: primary_key {
    hidden: yes
    primary_key: yes
    type: string
    sql: CONCAT(${submission_id} || ${question}) ;;
  }

  dimension: submission_id {
    hidden: yes
    type: string
    sql: ${TABLE}.SubmissionId ;;
  }

  dimension: question {
    type: string
    sql: ${TABLE}.question ;;
  }

  dimension: raw_score {
    type: number
    sql: CAST(${TABLE}.score as int) ;;
  }

}
