view: l_fastfield_self_inspections_questionnaire {
  view_label: "Fastfield Self-Inspection Questionnaire"
  derived_table: {
    datagroup_trigger: daily_refresh
    indexes: ["SubmissionId"]
    sql: SELECT SubmissionId, result as score, question
      FROM (SELECT SubmissionId
      , [Arestateandfederallegalpostersandsafetysignsmounted] as "Are state and federal legal posters and safety signs mounted?"
      , [Aresafetymeetingsbeingheldweeklyanddocumentedonsite] as "Are safety meetings being held weekly and documented onsite?"
      , [Arefirstaidkitsstockedandemergencyeyewashavailable] as "Are first aid kits stocked and emergency eye wash available?"
      , [Areemergencytelephonenumbersposted] as "Are emergency telephone numbers posted?"
      , [Aresafetyprogramsavailablefromeachsubcontractor] as "Are safety programs available from each subcontractor?"
      , [AreHazardCommunicationprogramsavailablewithMaterialSafetyDataShe] as "Are hazard communication programs available with material safety data sheets?"
      , [HavesubcontractoremployeesgonethroughtheARCOsafetyorientationtra] as "Have subcontractor employees gone through the arco safety orientation training?"
      , [IsthejobsitemarkedwithNoTrespassingsigns] as "Is the job site marked with no trespassing signs?"
      , [Isthesuperintendentphonenumberpostedonthejobsiteorinawindow] as "Is the superintendent phone number posted on the job site or in a window?"
      , [IsemergencyresponseequipmentavailableonthejobsiteRiggingbasketet] as "Is emergency response equipment available on the job site rigging basket etc?"
      , [Ishandwashingavailableonprojectswherechemicalsareused] as "Is handwashing available on projects where chemicals are used?"
      , [Aredebrischutesprovidedwhenmaterialdisposalisgreaterthan20feet] as "Are debris chutes provided when material disposal is greater than 20 feet?"
      , [Arefloorholesgreaterthan2inchesbeingidentifiedcoveredandmarked] as "Are floor holes greater than 2 inches being identified covered and marked?"
      , [Isapotabledrinkablewatersupplyavailable] as "Is a potable drinkable water supply available?"
      , [Arenailsbeingremovedorbentoverinscraplumber] as "Are nails being removed or bent over in scrap lumber?"
      , [Arewalkwaysandworkingareasunobstructedbydebrisandtrash] as "Are walkways and working areas unobstructed by debris and trash?"
      , [Arethejobsitebarricadespostingsandwarningsignsbeingmaintainedand] as "Are the job site barricades postings and warning signs being maintained?"
      , [Arecontainersproperlylabeledtoidentifycontentsandhazards] as "Are containers properly labeled to identify contents and hazards?"
      , [Arepotentiallyhazardousatmospheresbeingtestedforgasesorlackofoxy] as "Are potentially hazardous atmospheres being tested for gases or lack of oxygen?"
      , [Isadequatelightingavailablethroughoutthejobsitewhereindividualsa] as "Is adequate lighting available throughout the job site where individuals?"
      , [Isemergencyegressfromthejobsiteunobstructedthroughouttheproject] as "Is emergency egress from the job site unobstructed throughout the project?"
      , [Aredropoffareasgreaterthan4feetbeingprotectedandoridentified] as "Are drop off areas greater than 4 feet being protected and or identified?"
      , [Arereinforcedcapsbeingplaceonverticalrebarandimpalementhazards] as "Are reinforced caps being place on vertical rebar and impalement hazards?"
      , [Arefloorstubupsbeingidentifiedastriphazardsandmarkedwithvisibili] as "Are floor stub ups being identified a strip hazards and marked with visibility?"
      , [Isthemaximumtraveldistancetoafireextinguisher100feetorlesswheree] as "Is the maximum travel distance to a fire extinguisher 100 feet or less where?"
      , [Areallfireextinguisherstaggedandcompliantwithinspectiondate] as "Are all fire extinguishers tagged and compliant with inspection date?"
      , [Areallfireextinguisherschargedandreadyforuse] as "Are all fire extinguishers charged and ready for use?"
      , [Arefireextinguisherslocatednearhotworkactivities] as "Are fire extinguishers located near hot work activities?"
      , [Arefireextinguisherslocatednearflammableliquidandgasstoragewithi] as "Are fire extinguishers located near flammable liquid and gas storage?"
      , [AreNoSmokingsignslocatednearflammableliquidandgasstorage] as "Are no smoking signs located near flammable liquid and gas storage?"
      , [Areoxygenbottlesstoredatleast20feetawayfromacetylenebottles] as "Are oxygen bottles stored atleast 20 feet away from acetylene bottles?"
      , [Areprotectivevalvecapsinplaceonstoredcompressedgascylinders] as "Are protective valve caps in place on stored compressed gas cylinders?"
      , [Aregascylindersbeingstoredinanuprightposition] as "Are gas cylinders being stored in an upright position?"
      , [Doabovegroundfuelingtankshavedikesbermsorcatchbasinsavailable] as "Do above ground fueling tanks have dikes berms or catch basins available?"
      , [AreallLPGbottlesbeingstoredoutsideofthebuilding] as "Are all lpg bottles being stored outside of the building?"
      , [Isclearaccessavailabletofirehydrantsforemergencypersonnel] as "Is clear access available to fire hydrants for emergency personnel?"
      , [Areallflammableliquidsbeingkeptinapprovedflameresistantmetalcont] as "Are all flammable liquids being kept in approved flame resistant metal?"
      , [Arehardhatsavailableandbeingwornbyallemployees] as "Are hard hats available and being worn by all employees?"
      , [Isadequateclothingbeingworn4inchsleevesleathershoeslongpants] as "Is adequate clothing being worn 4 inch sleeves leather shoes long pants?"
      , [Isadditionaleyeprotectionbeingwornduringcuttingchippingandgrindi] as "Is additional eye protection being worn during cutting chipping and grind?"
      , [ArerespiratorsbeingwornwhenrequiredWallgrindingblockcuttingetc] as "Are respirators being worn when required wall grinding block cutting etc?"
      , [Ishearingprotectionavailableandbeingwornwhenrequired] as "Is hearing protection available and being worn when required?"
      , [Isallelectricalequipmenteitherproperlygroundedordoubleinsulated] as "Is all electrical equipment either properly grounded or double insulated?"
      , [ArealltemporaryelectricaloutletsequippedwithGFCIs] as "Are all temporary electrical outlets equipped with gfcis?"
      , [AreterminalboxesaffixedwithcoversArecoverslabeledandmarked] as "Are terminal boxes affixed with covers are covers labeled and marked?"
      , [Arecordsandcablesingoodworkingconditionincludinggroundprongs] as "A records and cables in good working condition including ground prongs?"
      , [Aretemporaryelectricalknockoutboxesmountedsecurelyofftheground] as "Are temporary electrical knockout boxes mounted securely off the ground?"
      , [Areopenpanelcircuitsbeingprotectedbytheuseofspacers] as "Are open panel circuits being protected by the use of s pacers?"
      , [Aredamagedormalfunctioningtoolsbeingremovedfromservice] as "Are damaged or malfunctioning tools being removed from service?"
      , [Areelectricalpowertoolsfreeofcrackedcasingsandorcorddamage] as "Are electrical power tools free of cracked casings and or cord damage?"
      , [Isacompetentpersonpresentonthejobsitetoinspectopenexcavations] as "Is a competent person present on the job site to inspect open excavations?"
      , [Isanadequatemeansofaccessandegresspresentintheexcavationevery25f] as "Is an adequate means of access and egress present in the excavation every 25 feet?"
      , [Areexcavationsgreaterthan5feetindepthbeingbenchedshoredprotected] as "Are excavations greater than 5 feet in depth being benched shored protected?"
      , [Isthespoilpilepulledbackatleast2feetfromtheedgeoftheexcavation] as "Is the spoil pile pulled back atleast 2 feet from the edge of the excavation?"
      , [Aretrenchboxesatleast18inchesabovesurfacegrade] as "Are trench boxes atleast 18 inches above surface grade?"
      , [Aretrenchboxesnotundercutbygreaterthan2feetatthebase] as "Are trench boxes not undercut by greater than 2 feet at the base?"
      , [Ifdeeperthan20feethastheexcavationbeenengineeredbyaprofessional] as "If deeper than 20 feet has the excavation been engineered by a professional?"
      , [Areanyopenexcavationsbeinginspecteddailyforchangingconditions] as "Are any open excavations being inspected daily for changing conditions?"
      , [Istheexcavationbeingevaluatedtodetermineifaconfinedspacehazardis] as "Is the excavation being evaluated to determine if a confined space hazard is?"
      , [Isscaffoldingonsoundfootingwithbaseplates] as "Is scaffolding on sound footing with base plates?"
      , [Isaladderorotheracceptablemeansofaccessandegressprovided] as "Is a ladder or other acceptable means of access and egress provided?"
      , [Isthescaffoldingsecuredandtiedintothestructureevery26inheightand] as "Is the scaffolding secured and tied into the structure every 26 in height and?"
      , [Arescaffoldingguardrailslocatedat423incheswithanintermediateinth] as "Are scaffolding guardrails located at 423 inches with an intermediate?"
      , [Isfallingobjectprotectionprovidedunderthescaffoldingtoeboardsorr] as "Is falling object protection provided under the scaffolding toe boards?"
      , [Aresuspensionropesoutriggersandcablesingoodconditiononswingstage] as "Are suspension ropes outriggers and cables in good condition on swing stage?"
      , [Isindependentlifelinefallprotectionbeingusedduringuseofswingstag] as "Is independent lifeline fall protection being used during use of swings?"
      , [Isfallprotectionbeingutilizedonscaffoldingwhenemployeesareover6f] as "Is fall protection being utilized on scaffolding when employees are over 6 feet?"
      , [Arewheelslockedonallrollingscaffolds] as "Are wheels locked on all rolling scaffolds?"
      , [Arerollingscaffoldsusingoutriggerswhengreaterthan4tiershigh3inCa] as "Are rolling scaffolds using outriggers when greater than 4 tiers high 3?"
      , [Isthescaffoldingworkingplatformatleast18inchesinwidth] as "Is the scaffolding working platform atleast 18 inches in width?"
      , [Arescaffoldplanksnotcrackedordamagedtoimpedeuse] as "Are scaffold planks not cracked or damaged to impede use?"
      , [Isthescaffoldworkingdeckfullyplankedtoblockpotentialfallhazards] as "Is the scaffold working deck fully planked to block potential fall hazards?"
      , [Doscaffoldplanksextendatleast6inchespastsupports] as "Do scaffold planks extend atleast 6 inches past supports?"
      , [Wasallscaffoldingerectedbyacertifiedscaffolderector] as "Was all scaffolding erected by a certified scaffold erect?"
      , [Areannualinspectionsuptodateandpostedonthecranehousing] as "Are annual inspections up to date and posted on the crane housing?"
      , [AreoperatorCCOsandriggersignalpersonqualificationsavailableonsit] as "Are operator c cos and rig ger signal person qualifications available on site?"
      , [IstheoperatorcompletingdailyinspectionsAreweeklyinspectionsbeing] as "Is the operator completing daily inspections are weekly inspections being?"
      , [Areoutriggersbeingproperlycribbedandsetonpadswhenrequired] as "Are outriggers being properly cribbed and seton pads when required?"
      , [Areallpowerlinesatleast20feetfromthecraneboomandrigging] as "Are all power lines atleast 20 feet from the crane boom and rigging?"
      , [IfnotisTableA19261408beingfollowed] as "If not is table a 19261408 being followed?"
      , [Iscranecabaffixedwithhandsignalchart] as "Is crane cab affixed with hand signal chart?"
      , [Arealarmsworkingandaudible] as "Are alarms working and audible?"
      , [Isthecraneswingradiusbeingadequatelyprotectedandorbarricaded] as "Is the cranes wing radius being adequately protected and or barricaded?"
      , [Arethecraneslingsandriggingingoodcondition] as "Are the crane slings and rigging in good condition?"
      , [Aretaglinesbeingusedtocontrolloadswhennecessary] as "Are taglines being used to control loads when necessary?"
      , [Isthecraneloadchartavailable] as "Is the crane load chart available?"
      , [Arebackupalarmsworkingandaudible] as "Are backup alarms working and audible?"
      , [Iffuelingstationsexistneartrafficaretheyprotectedwithbarricades] as "If fueling stations exist near traffic are they protected with barricades?"
      , [Arenoemployeesridingillegallyonequipment] as "Are no employees riding illegally on equipment?"
      , [Arevehiclestravelingatasaferateofspeed] as "Are vehicles traveling at a safe rate of speed?"
      , [Areseatbeltsbeingusedifrequired] as "Are seatbelts being used if required?"
      , [Areroadwaydropoffareasbeingmarkedorprotectedforoperators] as "Are roadway drop off areas being marked or protected for operators?"
      , [Areallforkliftdriverslicensedtooperatethemachine] as "Are all forklift drivers licensed to operate the machine?"
      , [Is100%fallprotectionbeingutilizedabove6feet] as "Is 100 fall protection being utilized above 6 feet?"
      , [IstheControlledDeckingZonemarkedwithcontrollines] as "Is the controlled decking zone marked with control lines?"
      , [Arecompressedgasregulatorsnotdamagedorcracked] as "Are compressed gas regulators not damaged or cracked?"
      , [Areweldingleadsfreeofcutsandpunctures] as "Are welding leads free of cuts and punctures?"
      , [Areflashbackarrestersinplaceoncompressedgashoses] as "Are flashback arrest ers in place on compressed gas hoses?"
      , [Aresafetyshieldsandweldingscreensinplacewhennecessary] as "Are safety shields and welding screens in place when necessary?"
      , [Arefireextinguisherspresentduringallweldingandcuttingactivities] as "Are fire extinguishers present during all welding and cutting activities?"
      , [Areharnessesandlanyardsbeingutilizedbyemployeesusingboomlifts] as "Are harnesses and lanyards being utilized by employees using boom lifts?"
      , [Isthedoorormidchainclosedattachedonscissorlifts] as "Is the door or mid chain closed attached on scissor lifts?"
      , [Isthegroundlevelandfreeofdebrisaroundtheaerialplatform] as "Is the ground level and free of debris around the aerial platform?"
      , [Arefloorholescolumncutoutsorobstructionsmovedoridentifiedfortheo] as "Are floor holes column cutouts or obstructions moved or identified for the?"
      , [Dooperatorsappeartobetrainedqualified] as "Do operators appear to be trained qualified?"
      , [Arenoemployeesusingtheliftsrailstoperformelevatedwork] as "Are no employees using the lifts rails to perform elevated work?"
      , [Areladdersingoodworkingconditionandnotpaintedtoinhibitinspection] as "Are ladders in good working condition and not painted to inhibit inspection?"
      , [Areladdersinusetiedoffandsecuredtopreventmovementandtipping] as "Are ladders in use tied off and secured to prevent movement and tipping?"
      , [Areladdersextendingatleast36inchesabovelanding] as "Are ladders extending atleast 36 inches above landing?"
      , [ArenoAframeladdersbeingleanedagainstwallforuse] as "Are no a frame ladders being leaned against wall for use?"
      , [Arenoextensionladdersbeingseparatedandusedinsections] as "Are no extension ladders being separated and used in sections?"
      , [Arerungsandcleatspacingnotover12”inchesOCforjobmadeladders] as "Are rungs and cleat spacing not over 12 inches oc for job made ladders?"
      , [Areladderrungsevenlyspacedonjobmadeladders] as "Are ladder rungs evenly spaced on job made ladders?"
      , [Arestepshavingmorethan3risersequippedwithtopandmidguardrails] as "Are steps having more than 3 risers equipped with top and mid guardrails?"
      , [Arestepsavailableforbreaksinelevationgreaterthan19inches] as "Are steps available for breaks in elevation greater than 19 inches?"
      , [Arestairwelllandingplatformsadequatelyequippedwithtopandmidrails] as "Are stairwell landing platforms adequately equipped with top and mid rails?"
      , [Isgeneralfallprotectionbeingobservedforemployeesworkingover6feet] as "Is general fall protection being observed for employees working over 6 feet?"
      , [Isapreliftmeetingbeingheldtodiscusspanelerectionsafety] as "Is a pre lift meeting being held to discuss panel erection safety?"
      , [Areconditionssafeinregardstowindandweathertoliftapanel] as "Are conditions safe in regards to wind and weather to lift a panel?"
      , [Arewallbracesareingoodconditionandfreeofdefectsanddamage] as "Are wall braces are in good condition and free of defects and damage?"
      , [Isthefloorslabanderectionareafreeofdebriswithobstaclesremoved] as "Is the floors lab and erection area free of debris with obstacles removed?"
      , [Areunauthorizedpersonnelremovedfromtheareapriortoanylifting] as "Are unauthorized personnel removed from the area prior to any lifting?"
      , [Isaqualifiedriggerinspectingequipmentandmethodspriortoliftingpan] as "Is a qualified rig ger inspecting equipment and methods prior to lifting?"
      , [Ifwalkingapanelareallobstaclesinthepathofcrewandcraneremoved] as "If walking a panel are all obstacles in the path of crew and crane removed?"
      , [Arenobracesremoveduntilallthestructuralconnectionsarecompleted] as "Are no braces removed until all the structural connections are completed?"
      , [Arebracesbeinginspecteddailypriortowork] as "Are braces being inspected daily prior to work?"
        FROM dbo.FastField_WeeklySelfInspection)  AS p
      UNPIVOT
        (result for question IN (
      "Are state and federal legal posters and safety signs mounted?",
      "Are safety meetings being held weekly and documented onsite?",
      "Are first aid kits stocked and emergency eye wash available?",
      "Are emergency telephone numbers posted?",
      "Are safety programs available from each subcontractor?",
      "Are hazard communication programs available with material safety data sheets?",
      "Have subcontractor employees gone through the arco safety orientation training?",
      "Is the job site marked with no trespassing signs?",
      "Is the superintendent phone number posted on the job site or in a window?",
      "Is emergency response equipment available on the job site rigging basket etc?",
      "Is handwashing available on projects where chemicals are used?",
      "Are debris chutes provided when material disposal is greater than 20 feet?",
      "Are floor holes greater than 2 inches being identified covered and marked?",
      "Is a potable drinkable water supply available?",
      "Are nails being removed or bent over in scrap lumber?",
      "Are walkways and working areas unobstructed by debris and trash?",
      "Are the job site barricades postings and warning signs being maintained?",
      "Are containers properly labeled to identify contents and hazards?",
      "Are potentially hazardous atmospheres being tested for gases or lack of oxygen?",
      "Is adequate lighting available throughout the job site where individuals?",
      "Is emergency egress from the job site unobstructed throughout the project?",
      "Are drop off areas greater than 4 feet being protected and or identified?",
      "Are reinforced caps being place on vertical rebar and impalement hazards?",
      "Are floor stub ups being identified a strip hazards and marked with visibility?",
      "Is the maximum travel distance to a fire extinguisher 100 feet or less where?",
      "Are all fire extinguishers tagged and compliant with inspection date?",
      "Are all fire extinguishers charged and ready for use?",
      "Are fire extinguishers located near hot work activities?",
      "Are fire extinguishers located near flammable liquid and gas storage?",
      "Are no smoking signs located near flammable liquid and gas storage?",
      "Are oxygen bottles stored atleast 20 feet away from acetylene bottles?",
      "Are protective valve caps in place on stored compressed gas cylinders?",
      "Are gas cylinders being stored in an upright position?",
      "Do above ground fueling tanks have dikes berms or catch basins available?",
      "Are all lpg bottles being stored outside of the building?",
      "Is clear access available to fire hydrants for emergency personnel?",
      "Are all flammable liquids being kept in approved flame resistant metal?",
      "Are hard hats available and being worn by all employees?",
      "Is adequate clothing being worn 4 inch sleeves leather shoes long pants?",
      "Is additional eye protection being worn during cutting chipping and grind?",
      "Are respirators being worn when required wall grinding block cutting etc?",
      "Is hearing protection available and being worn when required?",
      "Is all electrical equipment either properly grounded or double insulated?",
      "Are all temporary electrical outlets equipped with gfcis?",
      "Are terminal boxes affixed with covers are covers labeled and marked?",
      "A records and cables in good working condition including ground prongs?",
      "Are temporary electrical knockout boxes mounted securely off the ground?",
      "Are open panel circuits being protected by the use of s pacers?",
      "Are damaged or malfunctioning tools being removed from service?",
      "Are electrical power tools free of cracked casings and or cord damage?",
      "Is a competent person present on the job site to inspect open excavations?",
      "Is an adequate means of access and egress present in the excavation every 25 feet?",
      "Are excavations greater than 5 feet in depth being benched shored protected?",
      "Is the spoil pile pulled back atleast 2 feet from the edge of the excavation?",
      "Are trench boxes atleast 18 inches above surface grade?",
      "Are trench boxes not undercut by greater than 2 feet at the base?",
      "If deeper than 20 feet has the excavation been engineered by a professional?",
      "Are any open excavations being inspected daily for changing conditions?",
      "Is the excavation being evaluated to determine if a confined space hazard is?",
      "Is scaffolding on sound footing with base plates?",
      "Is a ladder or other acceptable means of access and egress provided?",
      "Is the scaffolding secured and tied into the structure every 26 in height and?",
      "Are scaffolding guardrails located at 423 inches with an intermediate?",
      "Is falling object protection provided under the scaffolding toe boards?",
      "Are suspension ropes outriggers and cables in good condition on swing stage?",
      "Is independent lifeline fall protection being used during use of swings?",
      "Is fall protection being utilized on scaffolding when employees are over 6 feet?",
      "Are wheels locked on all rolling scaffolds?",
      "Are rolling scaffolds using outriggers when greater than 4 tiers high 3?",
      "Is the scaffolding working platform atleast 18 inches in width?",
      "Are scaffold planks not cracked or damaged to impede use?",
      "Is the scaffold working deck fully planked to block potential fall hazards?",
      "Do scaffold planks extend atleast 6 inches past supports?",
      "Was all scaffolding erected by a certified scaffold erect?",
      "Are annual inspections up to date and posted on the crane housing?",
      "Are operator c cos and rig ger signal person qualifications available on site?",
      "Is the operator completing daily inspections are weekly inspections being?",
      "Are outriggers being properly cribbed and seton pads when required?",
      "Are all power lines atleast 20 feet from the crane boom and rigging?",
      "If not is table a 19261408 being followed?",
      "Is crane cab affixed with hand signal chart?",
      "Are alarms working and audible?",
      "Is the cranes wing radius being adequately protected and or barricaded?",
      "Are the crane slings and rigging in good condition?",
      "Are taglines being used to control loads when necessary?",
      "Is the crane load chart available?",
      "Are backup alarms working and audible?",
      "If fueling stations exist near traffic are they protected with barricades?",
      "Are no employees riding illegally on equipment?",
      "Are vehicles traveling at a safe rate of speed?",
      "Are seatbelts being used if required?",
      "Are roadway drop off areas being marked or protected for operators?",
      "Are all forklift drivers licensed to operate the machine?",
      "Is 100 fall protection being utilized above 6 feet?",
      "Is the controlled decking zone marked with control lines?",
      "Are compressed gas regulators not damaged or cracked?",
      "Are welding leads free of cuts and punctures?",
      "Are flashback arrest ers in place on compressed gas hoses?",
      "Are safety shields and welding screens in place when necessary?",
      "Are fire extinguishers present during all welding and cutting activities?",
      "Are harnesses and lanyards being utilized by employees using boom lifts?",
      "Is the door or mid chain closed attached on scissor lifts?",
      "Is the ground level and free of debris around the aerial platform?",
      "Are floor holes column cutouts or obstructions moved or identified for the?",
      "Do operators appear to be trained qualified?",
      "Are no employees using the lifts rails to perform elevated work?",
      "Are ladders in good working condition and not painted to inhibit inspection?",
      "Are ladders in use tied off and secured to prevent movement and tipping?",
      "Are ladders extending atleast 36 inches above landing?",
      "Are no a frame ladders being leaned against wall for use?",
      "Are no extension ladders being separated and used in sections?",
      "Are rungs and cleat spacing not over 12 inches oc for job made ladders?",
      "Are ladder rungs evenly spaced on job made ladders?",
      "Are steps having more than 3 risers equipped with top and mid guardrails?",
      "Are steps available for breaks in elevation greater than 19 inches?",
      "Are stairwell landing platforms adequately equipped with top and mid rails?",
      "Is general fall protection being observed for employees working over 6 feet?",
      "Is a pre lift meeting being held to discuss panel erection safety?",
      "Are conditions safe in regards to wind and weather to lift a panel?",
      "Are wall braces are in good condition and free of defects and damage?",
      "Is the floors lab and erection area free of debris with obstacles removed?",
      "Are unauthorized personnel removed from the area prior to any lifting?",
      "Is a qualified rig ger inspecting equipment and methods prior to lifting?",
      "If walking a panel are all obstacles in the path of crew and crane removed?",
      "Are no braces removed until all the structural connections are completed?",
      "Are braces being inspected daily prior to work?"
        ) ) as unpvt;;
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

  dimension: score {
    type: string
    case: {
      when: {
        label: "Safe"
        sql:  ${raw_score} = 1 ;;
      }
      when: {
        label: "Deficient"
        sql:  ${raw_score} =  -1 ;;
      }
      when: {
        label: "Neutral"
        sql:  ${raw_score} =  0 ;;
      }
      else: "N/A"
    }
  }

  measure: number_of_scores {
    type: count
  }

  measure: number_of_questions {
    type: count_distinct
    sql: ${question} ;;
  }

  measure: number_of_submissions {
    type: count_distinct
    sql: ${submission_id} ;;
  }

  measure: safe_scores {
    type: count
    filters: [score: "Safe"]
  }

  measure: neutral_scores {
    type: count
    filters: [score: "Neutral"]
  }

  measure: deficient_scores {
    type: count
    filters: [score: "Deficient"]
  }

  measure: na_scores {
    label: "N/A Scores"
    type: count
    filters: [score: "N/A"]
  }

}
