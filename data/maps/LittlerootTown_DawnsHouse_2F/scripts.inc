.set LOCALID_RIVAL, 1

LittlerootTown_DawnsHouse_2F_MapScripts::
	map_script MAP_SCRIPT_ON_TRANSITION, LittlerootTown_DawnsHouse_2F_OnTransition
	map_script MAP_SCRIPT_ON_WARP_INTO_MAP_TABLE, LittlerootTown_DawnsHouse_2F_OnWarp
	.byte 0

LittlerootTown_DawnsHouse_2F_OnTransition:
	call_if_lt VAR_LITTLEROOT_RIVAL_STATE, 2, LittlerootTown_DawnsHouse_2F_EventScript_CheckSetReadyToMeetDawn
	call_if_ge VAR_LITTLEROOT_RIVAL_STATE, 3, LittlerootTown_DawnsHouse_2F_EventScript_CheckShouldUpdateDawnPos
	call_if_eq VAR_LITTLEROOT_INTRO_STATE, 4, PlayersHouse_2F_EventScript_BlockStairsUntilClockIsSet
	call SecretBase_EventScript_SetDecorationFlags
	setvar VAR_SECRET_BASE_INITIALIZED, 0
	end

LittlerootTown_DawnsHouse_2F_EventScript_CheckShouldUpdateDawnPos::
	goto_if_set FLAG_MET_RIVAL_LILYCOVE, LittlerootTown_DawnsHouse_2F_EventScript_TryUpdateDawnPos
	goto_if_ge VAR_BIRCH_LAB_STATE, 2, LittlerootTown_DawnsHouse_2F_EventScript_Ret
	goto LittlerootTown_DawnsHouse_2F_EventScript_TryUpdateDawnPos

LittlerootTown_DawnsHouse_2F_EventScript_TryUpdateDawnPos::
	checkplayergender
	goto_if_eq VAR_RESULT, MALE, LittlerootTown_DawnsHouse_2F_EventScript_Ret
	@ Odd that the MaysHouse equivalent was used below instead
	goto_if_ge VAR_DEX_UPGRADE_JOHTO_STARTER_STATE, 2, LittlerootTown_MaysHouse_2F_EventScript_Ret
	setobjectxyperm LOCALID_RIVAL, 0, 2
	setobjectmovementtype LOCALID_RIVAL, MOVEMENT_TYPE_FACE_UP
	return

LittlerootTown_DawnsHouse_2F_EventScript_Ret::
	return

LittlerootTown_DawnsHouse_2F_EventScript_CheckSetReadyToMeetDawn::
	checkplayergender
	goto_if_eq VAR_RESULT, FEMALE, LittlerootTown_DawnsHouse_2F_EventScript_SetReadyToMeetDawn
	return

LittlerootTown_DawnsHouse_2F_EventScript_SetReadyToMeetDawn::
	setvar VAR_LITTLEROOT_RIVAL_STATE, 2
	return

LittlerootTown_DawnsHouse_2F_OnWarp:
	map_script_2 VAR_SECRET_BASE_INITIALIZED, 0, LittlerootTown_DawnsHouse_2F_EventScript_CheckInitDecor
	.2byte 0

LittlerootTown_DawnsHouse_2F_EventScript_CheckInitDecor::
	checkplayergender
	goto_if_eq VAR_RESULT, MALE, SecretBase_EventScript_InitDecorations
	end

LittlerootTown_DawnsHouse_2F_EventScript_RivalsPokeBall::
	lockall
	goto_if_eq VAR_LITTLEROOT_RIVAL_STATE, 2, LittlerootTown_DawnsHouse_2F_EventScript_MeetDawn
	msgbox RivalsHouse_2F_Text_ItsRivalsPokeBall, MSGBOX_DEFAULT
	releaseall
	end

LittlerootTown_DawnsHouse_2F_EventScript_MeetDawn::
	delay 10
	addobject LOCALID_RIVAL
	applymovement LOCALID_RIVAL, LittlerootTown_DawnsHouse_2F_Movement_DawnEnters
	waitmovement 0
	playse SE_PIN
	applymovement LOCALID_RIVAL, Common_Movement_ExclamationMark
	waitmovement 0
	applymovement LOCALID_RIVAL, Common_Movement_Delay48
	waitmovement 0
	delay 10
	playbgm MUS_ENCOUNTER_DAWN, TRUE
	call_if_eq VAR_FACING, DIR_NORTH, LittlerootTown_DawnsHouse_2F_EventScript_MeetDawnNorth
	call_if_eq VAR_FACING, DIR_SOUTH, LittlerootTown_DawnsHouse_2F_EventScript_MeetDawnSouth
	call_if_eq VAR_FACING, DIR_WEST, LittlerootTown_DawnsHouse_2F_EventScript_MeetDawnWest
	call_if_eq VAR_FACING, DIR_EAST, LittlerootTown_DawnsHouse_2F_EventScript_MeetDawnEast
	setvar VAR_LITTLEROOT_RIVAL_STATE, 3
	setflag FLAG_HIDE_LITTLEROOT_TOWN_DAWNS_HOUSE_2F_POKE_BALL
	clearflag FLAG_HIDE_LITTLEROOT_TOWN_DAWNS_HOUSE_RIVAL_BEDROOM
	setvar VAR_LITTLEROOT_TOWN_STATE, 1
	savebgm MUS_DUMMY
	fadedefaultbgm
	releaseall
	end

LittlerootTown_DawnsHouse_2F_EventScript_MeetDawnNorth::
	applymovement LOCALID_RIVAL, LittlerootTown_DawnsHouse_2F_Movement_DawnApproachPlayerNorth
	waitmovement 0
	applymovement OBJ_EVENT_ID_PLAYER, Common_Movement_WalkInPlaceFasterRight
	waitmovement 0
	msgbox RivalsHouse_2F_Text_DawnWhoAreYou, MSGBOX_DEFAULT
	closemessage
	applymovement OBJ_EVENT_ID_PLAYER, LittlerootTown_DawnsHouse_2F_Movement_PlayerWatchDawnNorth
	applymovement LOCALID_RIVAL, LittlerootTown_DawnsHouse_2F_Movement_DawnWalkToPCNorth
	waitmovement 0
	return

LittlerootTown_DawnsHouse_2F_EventScript_MeetDawnSouth::
	applymovement LOCALID_RIVAL, LittlerootTown_DawnsHouse_2F_Movement_DawnApproachPlayerSouth
	waitmovement 0
	applymovement OBJ_EVENT_ID_PLAYER, Common_Movement_WalkInPlaceFasterRight
	waitmovement 0
	msgbox RivalsHouse_2F_Text_DawnWhoAreYou, MSGBOX_DEFAULT
	closemessage
	applymovement OBJ_EVENT_ID_PLAYER, LittlerootTown_DawnsHouse_2F_Movement_PlayerWatchDawnSouth
	applymovement LOCALID_RIVAL, LittlerootTown_DawnsHouse_2F_Movement_DawnWalkToPCSouth
	waitmovement 0
	return

LittlerootTown_DawnsHouse_2F_EventScript_MeetDawnWest::
	applymovement LOCALID_RIVAL, LittlerootTown_DawnsHouse_2F_Movement_DawnApproachPlayerWest
	waitmovement 0
	applymovement OBJ_EVENT_ID_PLAYER, Common_Movement_WalkInPlaceFasterRight
	waitmovement 0
	msgbox RivalsHouse_2F_Text_DawnWhoAreYou, MSGBOX_DEFAULT
	closemessage
	applymovement OBJ_EVENT_ID_PLAYER, LittlerootTown_DawnsHouse_2F_Movement_PlayerWatchDawnWest
	applymovement LOCALID_RIVAL, LittlerootTown_DawnsHouse_2F_Movement_DawnWalkToPCWest
	waitmovement 0
	return

LittlerootTown_DawnsHouse_2F_EventScript_MeetDawnEast::
	applymovement LOCALID_RIVAL, LittlerootTown_DawnsHouse_2F_Movement_DawnApproachPlayerEast
	waitmovement 0
	applymovement OBJ_EVENT_ID_PLAYER, Common_Movement_WalkInPlaceFasterUp
	waitmovement 0
	msgbox RivalsHouse_2F_Text_DawnWhoAreYou, MSGBOX_DEFAULT
	closemessage
	applymovement LOCALID_RIVAL, LittlerootTown_DawnsHouse_2F_Movement_DawnWalkToPCEast
	waitmovement 0
	return

LittlerootTown_DawnsHouse_2F_Movement_DawnEnters:
	walk_down
	walk_down
	walk_in_place_faster_left
	step_end

LittlerootTown_DawnsHouse_2F_Movement_DawnApproachPlayerNorth:
	walk_left
	walk_left
	walk_down
	walk_down
	walk_left
	step_end

LittlerootTown_DawnsHouse_2F_Movement_DawnWalkToPCNorth:
	walk_up
	walk_up
	walk_up
	walk_left
	walk_left
	walk_left
	walk_left
	walk_in_place_faster_up
	step_end

LittlerootTown_DawnsHouse_2F_Movement_PlayerWatchDawnNorth:
	delay_16
	walk_in_place_faster_up
	delay_16
	delay_16
	delay_16
	delay_16
	walk_in_place_faster_left
	step_end

LittlerootTown_DawnsHouse_2F_Movement_DawnApproachPlayerSouth:
	walk_left
	walk_left
	walk_left
	step_end

LittlerootTown_DawnsHouse_2F_Movement_DawnWalkToPCSouth:
	walk_up
	walk_left
	walk_left
	walk_left
	walk_left
	walk_in_place_faster_up
	step_end

LittlerootTown_DawnsHouse_2F_Movement_PlayerWatchDawnSouth:
	delay_16
	walk_in_place_faster_up
	delay_16
	delay_16
	walk_in_place_faster_left
	step_end

LittlerootTown_DawnsHouse_2F_Movement_DawnApproachPlayerWest:
	walk_left
	walk_left
	walk_down
	walk_in_place_faster_left
	step_end

LittlerootTown_DawnsHouse_2F_Movement_DawnWalkToPCWest:
	walk_up
	walk_up
	walk_left
	walk_left
	walk_left
	walk_left
	walk_left
	walk_in_place_faster_up
	step_end

LittlerootTown_DawnsHouse_2F_Movement_PlayerWatchDawnWest:
	delay_8
	delay_16
	walk_in_place_faster_up
	delay_16
	delay_16
	walk_in_place_faster_left
	step_end

LittlerootTown_DawnsHouse_2F_Movement_DawnApproachPlayerEast:
	walk_left
	walk_left
	walk_left
	walk_left
	walk_left
	walk_in_place_faster_down
	step_end

LittlerootTown_DawnsHouse_2F_Movement_DawnWalkToPCEast:
	walk_up
	walk_left
	walk_left
	walk_in_place_faster_up
	step_end

@ Unused, the player is already facing this direction so its unneeded
LittlerootTown_DawnsHouse_2F_Movement_PlayerWatchDawnEast:
	delay_16
	delay_16
	walk_in_place_faster_left
	step_end

LittlerootTown_DawnsHouse_2F_EventScript_PC::
	lockall
	checkplayergender
	goto_if_eq VAR_RESULT, MALE, LittlerootTown_DawnsHouse_2F_EventScript_CheckPlayersPC
	goto_if_eq VAR_RESULT, FEMALE, LittlerootTown_DawnsHouse_2F_EventScript_CheckRivalsPC
	end

LittlerootTown_DawnsHouse_2F_EventScript_CheckPlayersPC::
	setvar VAR_0x8004, PC_LOCATION_DAWNS_HOUSE
	special DoPCTurnOnEffect
	playse SE_PC_ON
	msgbox gText_PlayerHouseBootPC, MSGBOX_DEFAULT
	special BedroomPC
	waitstate
	releaseall
	end

LittlerootTown_DawnsHouse_2F_EventScript_TurnOffPlayerPC::
	setvar VAR_0x8004, PC_LOCATION_DAWNS_HOUSE
	playse SE_PC_OFF
	special DoPCTurnOffEffect
	releaseall
	end

LittlerootTown_DawnsHouse_2F_EventScript_CheckRivalsPC::
	msgbox gText_PokemonTrainerSchoolEmail, MSGBOX_DEFAULT
	releaseall
	end

PlayersHouse_2F_EventScript_Notebook::
	msgbox PlayersHouse_2F_Text_Notebook, MSGBOX_SIGN
	end

PlayersHouse_2F_EventScript_GameCube::
	msgbox PlayersHouse_2F_Text_ItsAGameCube, MSGBOX_SIGN
	end

PlayersHouse_2F_Text_ClockIsStopped:
	.string "The clock is stopped…\p"
	.string "Better set it and start it!$"

PlayersHouse_2F_Text_HowDoYouLikeYourRoom:
	.string "MOM: {PLAYER}, how do you like your\n"
	.string "new room?\p"
	.string "Good! Everything's put away neatly!\p"
	.string "They finished moving everything in\n"
	.string "downstairs, too.\p"
	.string "POKéMON movers are so convenient!\p"
	.string "Oh, you should make sure that\n"
	.string "everything's all there on your desk.$"

PlayersHouse_2F_Text_Notebook:
	.string "{PLAYER} flipped open the notebook.\p"
	.string "ADVENTURE RULE NO. 1\n"
	.string "Open the MENU with START.\p"
	.string "ADVENTURE RULE NO. 2\n"
	.string "Record your progress with SAVE.\p"
	.string "The remaining pages are blank…$"

Common_Text_LookCloserAtMap:
	.string "{PLAYER} took a closer look at the\n"
	.string "HOENN region map.$"

PlayersHouse_2F_Text_ItsAGameCube:
	.string "It's a Nintendo GameCube.\p"
	.string "A Game Boy Advance is connected to\n"
	.string "serve as the Controller.$"
