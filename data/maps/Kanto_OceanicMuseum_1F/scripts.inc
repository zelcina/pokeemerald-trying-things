.set LOCALID_FAMILIAR_GRUNT, 13

Kanto_OceanicMuseum_1F_MapScripts::
	.byte 0

Kanto_OceanicMuseum_1F_EventScript_EntranceAttendant::
	msgbox Kanto_OceanicMuseum_1F_Text_PleaseEnjoyYourself, MSGBOX_NPC
	end

Kanto_OceanicMuseum_1F_EventScript_PayEntranceFeeLeft::
	lockall
	applymovement OBJ_EVENT_ID_PLAYER, Common_Movement_WalkInPlaceFasterLeft
	waitmovement 0
	goto Kanto_OceanicMuseum_1F_EventScript_PayEntranceFee
	end

Kanto_OceanicMuseum_1F_EventScript_PayEntranceFeeRight::
	lockall
	applymovement OBJ_EVENT_ID_PLAYER, Common_Movement_WalkInPlaceFasterRight
	waitmovement 0
	goto Kanto_OceanicMuseum_1F_EventScript_PayEntranceFee
	end

Kanto_OceanicMuseum_1F_EventScript_PayEntranceFee::
	showmoneybox 0, 0
	msgbox Kanto_OceanicMuseum_1F_Text_WouldYouLikeToEnter, MSGBOX_YESNO
	goto_if_eq VAR_RESULT, YES, Kanto_OceanicMuseum_1F_EventScript_CheckMoneyForFee
	closemessage
	hidemoneybox
	applymovement OBJ_EVENT_ID_PLAYER, Kanto_OceanicMuseum_1F_Movement_PushPlayerBackFromCounter
	waitmovement 0
	releaseall
	end

Kanto_OceanicMuseum_1F_EventScript_CheckMoneyForFee::
	checkmoney 50
	goto_if_eq VAR_RESULT, FALSE, Kanto_OceanicMuseum_1F_EventScript_NotEnoughMoney
	playse SE_SHOP
	removemoney 50
	updatemoneybox
	msgbox Kanto_OceanicMuseum_1F_Text_PleaseEnjoyYourself, MSGBOX_DEFAULT
	setvar VAR_KANTO_MUSEUM_1F_STATE, 1
	hidemoneybox
	releaseall
	end

Kanto_OceanicMuseum_1F_EventScript_NotEnoughMoney::
	goto_if_unset FLAG_DELIVERED_DEVON_GOODS, Kanto_OceanicMuseum_1F_EventScript_AllowEntranceAnyway
	msgbox Kanto_OceanicMuseum_1F_Text_NotEnoughMoney, MSGBOX_DEFAULT
	closemessage
	hidemoneybox
	applymovement OBJ_EVENT_ID_PLAYER, Kanto_OceanicMuseum_1F_Movement_PushPlayerBackFromCounter
	waitmovement 0
	releaseall
	end

Kanto_OceanicMuseum_1F_EventScript_AllowEntranceAnyway::
	msgbox Kanto_OceanicMuseum_1F_Text_CatchUpWithYourGroup, MSGBOX_DEFAULT
	setvar VAR_KANTO_MUSEUM_1F_STATE, 1
	hidemoneybox
	releaseall
	end

Kanto_OceanicMuseum_1F_Movement_PushPlayerBackFromCounter:
	walk_down
	step_end

Kanto_OceanicMuseum_1F_EventScript_MuseumGrunt1::
	msgbox Kanto_OceanicMuseum_1F_Text_AquaExistForGoodOfAll, MSGBOX_NPC
	end

Kanto_OceanicMuseum_1F_EventScript_MuseumGrunt2::
	msgbox Kanto_OceanicMuseum_1F_Text_OurBossIsntHere, MSGBOX_NPC
	end

Kanto_OceanicMuseum_1F_EventScript_MuseumGrunt3::
	msgbox Kanto_OceanicMuseum_1F_Text_WouldStuffHereMakeMeRich, MSGBOX_NPC
	end

Kanto_OceanicMuseum_1F_EventScript_MuseumGrunt4::
	msgbox Kanto_OceanicMuseum_1F_Text_CanLearnForNefariousDeeds, MSGBOX_SIGN
	end

Kanto_OceanicMuseum_1F_EventScript_MuseumGrunt5::
	msgbox Kanto_OceanicMuseum_1F_Text_RustboroBungled, MSGBOX_NPC
	end

Kanto_OceanicMuseum_1F_EventScript_MuseumGrunt6::
	msgbox Kanto_OceanicMuseum_1F_Text_DidntHaveMoney, MSGBOX_NPC
	end

Kanto_OceanicMuseum_1F_EventScript_WhirlpoolExperiment::
	msgbox Kanto_OceanicMuseum_1F_Text_WhirlpoolExperiment, MSGBOX_SIGN
	end

Kanto_OceanicMuseum_1F_EventScript_WaterfallExperiment::
	msgbox Kanto_OceanicMuseum_1F_Text_WaterfallExperiment, MSGBOX_SIGN
	end

Kanto_OceanicMuseum_1F_EventScript_OceanSoilDisplay::
	msgbox Kanto_OceanicMuseum_1F_Text_OceanSoilDisplay, MSGBOX_SIGN
	end

Kanto_OceanicMuseum_1F_EventScript_BeachSandDisplay::
	msgbox Kanto_OceanicMuseum_1F_Text_BeachSandDisplay, MSGBOX_SIGN
	end

Kanto_OceanicMuseum_1F_EventScript_OceanicMinifact1::
	msgbox Kanto_OceanicMuseum_1F_Text_OceanicMinifact1, MSGBOX_SIGN
	end

Kanto_OceanicMuseum_1F_EventScript_OceanicMinifact2::
	msgbox Kanto_OceanicMuseum_1F_Text_OceanicMinifact2, MSGBOX_SIGN
	end

Kanto_OceanicMuseum_1F_EventScript_OceanicMinifact3::
	msgbox Kanto_OceanicMuseum_1F_Text_OceanicMinifact3, MSGBOX_SIGN
	end

Kanto_OceanicMuseum_1F_EventScript_FossilDisplay::
	msgbox Kanto_OceanicMuseum_1F_Text_FossilDisplay, MSGBOX_SIGN
	end

Kanto_OceanicMuseum_1F_EventScript_DepthMeasuringMachine::
	msgbox Kanto_OceanicMuseum_1F_Text_DepthMeasuringMachine, MSGBOX_SIGN
	end

Kanto_OceanicMuseum_1F_EventScript_MuseumPatron1::
	msgbox Kanto_OceanicMuseum_1F_Text_LearnAboutSeaForBattling, MSGBOX_NPC
	end

Kanto_OceanicMuseum_1F_EventScript_MuseumPatron2::
	msgbox Kanto_OceanicMuseum_1F_Text_SternIsRoleModel, MSGBOX_NPC
	end

Kanto_OceanicMuseum_1F_EventScript_MuseumPatron3::
	msgbox Kanto_OceanicMuseum_1F_Text_MustBePokemonWeDontKnow, MSGBOX_NPC
	end

Kanto_OceanicMuseum_1F_EventScript_MuseumPatron4::
	msgbox Kanto_OceanicMuseum_1F_Text_WantSeaPokemon, MSGBOX_NPC
	end

Kanto_OceanicMuseum_1F_EventScript_FamiliarGrunt::
	lock
	faceplayer
	delay 8
	playse SE_PIN
	applymovement LOCALID_FAMILIAR_GRUNT, Common_Movement_ExclamationMark
	waitmovement 0
	applymovement LOCALID_FAMILIAR_GRUNT, Common_Movement_Delay48
	waitmovement 0
	msgbox Kanto_OceanicMuseum_1F_Text_RememberMeTakeThis, MSGBOX_DEFAULT
	giveitem ITEM_TM_THIEF
	goto_if_eq VAR_RESULT, 0, Kanto_OceanicMuseum_1F_EventScript_NoRoomForThief
	setflag FLAG_RECEIVED_TM_THIEF
	msgbox Kanto_OceanicMuseum_1F_Text_HopeINeverSeeYouAgain, MSGBOX_DEFAULT
	closemessage
	goto_if_eq VAR_FACING, DIR_NORTH, Kanto_OceanicMuseum_1F_EventScript_FamiliarGruntExitNorth
	goto_if_eq VAR_FACING, DIR_SOUTH, Kanto_OceanicMuseum_1F_EventScript_FamiliarGruntExitSouth
	goto_if_eq VAR_FACING, DIR_WEST, Kanto_OceanicMuseum_1F_EventScript_FamiliarGruntExitWestEast
	goto_if_eq VAR_FACING, DIR_EAST, Kanto_OceanicMuseum_1F_EventScript_FamiliarGruntExitWestEast
	end

Kanto_OceanicMuseum_1F_EventScript_FamiliarGruntExitNorth::
	applymovement OBJ_EVENT_ID_PLAYER, Kanto_OceanicMuseum_1F_Movement_PlayerWatchGruntExitNorth
	applymovement LOCALID_FAMILIAR_GRUNT, Kanto_OceanicMuseum_1F_Movement_FamiliarGruntExitNorth
	waitmovement 0
	goto Kanto_OceanicMuseum_1F_EventScript_FamiliarGruntExited
	end

Kanto_OceanicMuseum_1F_EventScript_FamiliarGruntExitSouth::
	applymovement LOCALID_FAMILIAR_GRUNT, Kanto_OceanicMuseum_1F_Movement_FamiliarGruntExit
	waitmovement 0
	goto Kanto_OceanicMuseum_1F_EventScript_FamiliarGruntExited
	end

Kanto_OceanicMuseum_1F_EventScript_FamiliarGruntExitWestEast::
	applymovement OBJ_EVENT_ID_PLAYER, Kanto_OceanicMuseum_1F_Movement_PlayerWatchGruntExitWestEast
	applymovement LOCALID_FAMILIAR_GRUNT, Kanto_OceanicMuseum_1F_Movement_FamiliarGruntExit
	waitmovement 0
	goto Kanto_OceanicMuseum_1F_EventScript_FamiliarGruntExited
	end

Kanto_OceanicMuseum_1F_EventScript_FamiliarGruntExited::
	setflag FLAG_HIDE_KANTO_OCEANIC_MUSEUM_FAMILIAR_AQUA_GRUNT
	playse SE_EXIT
	removeobject LOCALID_FAMILIAR_GRUNT
	release
	end

Kanto_OceanicMuseum_1F_EventScript_NoRoomForThief::
	msgbox Kanto_OceanicMuseum_1F_Text_YouHaveToTakeThis, MSGBOX_DEFAULT
	release
	end

Kanto_OceanicMuseum_1F_Movement_PlayerWatchGruntExitNorth:
	delay_16
	delay_8
	delay_4
	walk_in_place_faster_down
	step_end

Kanto_OceanicMuseum_1F_Movement_PlayerWatchGruntExitWestEast:
	delay_16
	walk_in_place_faster_down
	step_end

Kanto_OceanicMuseum_1F_Movement_FamiliarGruntExit:
	face_down
	walk_fast_down
	walk_fast_down
	walk_fast_down
	walk_fast_down
	delay_8
	step_end

Kanto_OceanicMuseum_1F_Movement_FamiliarGruntExitNorth:
	walk_fast_right
	walk_fast_down
	walk_fast_down
	walk_fast_down
	walk_fast_down
	delay_8
	step_end

Kanto_OceanicMuseum_1F_Text_WouldYouLikeToEnter:
	.string "Welcome to the OCEANIC MUSEUM.\p"
	.string "The entrance fee is ¥50.\n"
	.string "Would you like to enter?$"

Kanto_OceanicMuseum_1F_Text_PleaseEnjoyYourself:
	.string "Please enjoy yourself.$"

Kanto_OceanicMuseum_1F_Text_NotEnoughMoney:
	.string "Oh? I'm sorry, but you don't seem to\n"
	.string "have enough money.$"

Kanto_OceanicMuseum_1F_Text_CatchUpWithYourGroup:
	.string "Oh? You're with that group that\n"
	.string "went in earlier?\p"
	.string "You're the only one who's late.\n"
	.string "You'd better go catch up to them!$"

Kanto_OceanicMuseum_1F_Text_AquaExistForGoodOfAll:
	.string "We, TEAM AQUA, exist for the good\n"
	.string "of all!$"

Kanto_OceanicMuseum_1F_Text_OurBossIsntHere:
	.string "We were told to assemble here,\n"
	.string "so we did, but…\p"
	.string "Our BOSS, the linchpin, isn't here.$"

Kanto_OceanicMuseum_1F_Text_WouldStuffHereMakeMeRich:
	.string "If I ripped off the stuff here,\n"
	.string "would it make me rich?$"

Kanto_OceanicMuseum_1F_Text_CanLearnForNefariousDeeds:
	.string "What I learn here, I can put to use on\n"
	.string "nefarious deeds…$"

Kanto_OceanicMuseum_1F_Text_RustboroBungled:
	.string "If our goons didn't bungle things\n"
	.string "in RUSTBORO, we wouldn't be here!$"

Kanto_OceanicMuseum_1F_Text_DidntHaveMoney:
	.string "I didn't have ¥50, so it took a long\n"
	.string "time getting by the receptionist.$"

Kanto_OceanicMuseum_1F_Text_LearnAboutSeaForBattling:
	.string "I want to learn about the sea and\n"
	.string "use that knowledge for battling.$"

Kanto_OceanicMuseum_1F_Text_SternIsRoleModel:
	.string "I get all giddy and gooey when\n"
	.string "I see the sea!\p"
	.string "For me, CAPT. STERN is the number\n"
	.string "one role model!$"

Kanto_OceanicMuseum_1F_Text_MustBePokemonWeDontKnow:
	.string "The sea is vast without end, and\n"
	.string "infinitely deep…\p"
	.string "There must be many POKéMON that\n"
	.string "we don't know about.$"

Kanto_OceanicMuseum_1F_Text_WantSeaPokemon:
	.string "I want a sea POKéMON.\p"
	.string "I think it would feel cool and nice\n"
	.string "to hug.$"

Kanto_OceanicMuseum_1F_Text_RememberMeTakeThis:
	.string "Aiyeeeh!\n"
	.string "What are you doing here?\p"
	.string "Me? I'm the TEAM AQUA member\n"
	.string "you thumped before, remember?\l"
	.string "Back in RUSTURF TUNNEL?\p"
	.string "Here, take this!\n"
	.string "You have to forgive me!$"

Kanto_OceanicMuseum_1F_Text_HopeINeverSeeYouAgain:
	.string "That TM, it suits you more than it\n"
	.string "does me.\p"
	.string "Hope I never see you again!\n"
	.string "Wahahaha!$"

Kanto_OceanicMuseum_1F_Text_YouHaveToTakeThis:
	.string "Awww, come on!\n"
	.string "You have to take this and let me go!$"

Kanto_OceanicMuseum_1F_Text_WhirlpoolExperiment:
	.string "A blue fluid is spiraling inside\n"
	.string "a glass vessel.\p"
	.string "“This is an experiment to create a\n"
	.string "WHIRLPOOL artificially using wind.”$"

Kanto_OceanicMuseum_1F_Text_WaterfallExperiment:
	.string "A red ball is bobbing up and down\n"
	.string "inside a glass vessel.\p"
	.string "“This is an experiment simulating a\n"
	.string "WATERFALL using the ball's buoyancy.”$"

Kanto_OceanicMuseum_1F_Text_OceanSoilDisplay:
	.string "It's a sample of soil from the ocean\n"
	.string "floor.\p"
	.string "“Over many years, the remains of\n"
	.string "life-forms settle at the bottom of\l"
	.string "the sea, making sedimentary layers.\p"
	.string "“By analyzing these layers, the\n"
	.string "ancient past is revealed.”$"

Kanto_OceanicMuseum_1F_Text_BeachSandDisplay:
	.string "It's a sample of beach sand.\p"
	.string "“Stones from mountains are washed\n"
	.string "down by rivers where they are\l"
	.string "chipped and ground down.\p"
	.string "“They are reduced to grains and end\n"
	.string "up as sand on beaches.”$"

Kanto_OceanicMuseum_1F_Text_OceanicMinifact1:
	.string "“OCEANIC MINIFACT 1\n"
	.string "Why is seawater blue?\p"
	.string "“Light is composed of many colors.\p"
	.string "“When light passes through water,\n"
	.string "most kinds of light lose color.\p"
	.string "“However, blue light retains its\n"
	.string "color, making the sea appear blue.”$"

Kanto_OceanicMuseum_1F_Text_OceanicMinifact2:
	.string "“OCEANIC MINIFACT 2\n"
	.string "Why is the sea salty?\p"
	.string "“Seawater contains dissolved salt in\n"
	.string "the form of sodium and chlorine ions.\p"
	.string "“These ions leech out of rocks\n"
	.string "and are carried out to sea by rain.\p"
	.string "“The concentration of dissolved salt\n"
	.string "makes the sea salty.”$"

Kanto_OceanicMuseum_1F_Text_OceanicMinifact3:
	.string "“OCEANIC MINIFACT 3\n"
	.string "Which is bigger? The sea or land?\p"
	.string "“The sea covers about 70% of\n"
	.string "the planet, and the rest is land.\p"
	.string "“The sea is therefore more than twice\n"
	.string "the size of land.”$"

Kanto_OceanicMuseum_1F_Text_FossilDisplay:
	.string "It's a fossil with wavy ridges on it.\p"
	.string "“Soil on the ocean floor gets scoured\n"
	.string "by the tide.\p"
	.string "“The flowing seawater marks the soil\n"
	.string "with small ridges and valleys.\p"
	.string "“If this soil becomes fossilized, it is\n"
	.string "called a ripple mark.”$"

Kanto_OceanicMuseum_1F_Text_DepthMeasuringMachine:
	.string "A strange machine is rotating under\n"
	.string "a glass dome.\p"
	.string "Maybe it's for measuring the depth\n"
	.string "of something…$"

