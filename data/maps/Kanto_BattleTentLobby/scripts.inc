.set LOCALID_ATTENDANT, 1

Kanto_BattleTentLobby_MapScripts::
	map_script MAP_SCRIPT_ON_FRAME_TABLE, Kanto_BattleTentLobby_OnFrame
	map_script MAP_SCRIPT_ON_WARP_INTO_MAP_TABLE, Kanto_BattleTentLobby_OnWarp
	.byte 0

Kanto_BattleTentLobby_OnWarp:
	map_script_2 VAR_TEMP_1, 0, Kanto_BattleTentLobby_EventScript_TurnPlayerNorth
	.2byte 0

Kanto_BattleTentLobby_EventScript_TurnPlayerNorth::
	setvar VAR_TEMP_1, 1
	turnobject OBJ_EVENT_ID_PLAYER, DIR_NORTH
	end

Kanto_BattleTentLobby_OnFrame:
	map_script_2 VAR_TEMP_CHALLENGE_STATUS, 0, Kanto_BattleTentLobby_EventScript_GetChallengeStatus
	map_script_2 VAR_TEMP_CHALLENGE_STATUS, CHALLENGE_STATUS_SAVING, Kanto_BattleTentLobby_EventScript_QuitWithoutSaving
	map_script_2 VAR_TEMP_CHALLENGE_STATUS, CHALLENGE_STATUS_PAUSED, Kanto_BattleTentLobby_EventScript_ResumeChallenge
	map_script_2 VAR_TEMP_CHALLENGE_STATUS, CHALLENGE_STATUS_WON, Kanto_BattleTentLobby_EventScript_WonChallenge
	map_script_2 VAR_TEMP_CHALLENGE_STATUS, CHALLENGE_STATUS_LOST, Kanto_BattleTentLobby_EventScript_LostChallenge
	.2byte 0

Kanto_BattleTentLobby_EventScript_GetChallengeStatus::
	frontier_getstatus
	end

Kanto_BattleTentLobby_EventScript_QuitWithoutSaving::
	lockall
	msgbox Kanto_BattleTentLobby_Text_DidntSaveBeforeQuitting, MSGBOX_DEFAULT
	closemessage
	frontier_set FRONTIER_DATA_CHALLENGE_STATUS, 0
	setvar VAR_TEMP_CHALLENGE_STATUS, 255
	frontier_set FRONTIER_DATA_LVL_MODE, FRONTIER_LVL_50
	releaseall
	end

Kanto_BattleTentLobby_EventScript_WonChallenge::
	lockall
	message Kanto_BattleTentLobby_Text_WonThreeMatchesReturnMons
	waitmessage
	slateporttent_setrandomprize
	frontier_set FRONTIER_DATA_LVL_MODE, FRONTIER_LVL_50
	slateporttent_save 0
	playse SE_SAVE
	waitse
Kanto_BattleTentLobby_EventScript_GivePrize::
	msgbox Kanto_BattleTentLobby_Text_AwardYouThisPrize, MSGBOX_DEFAULT
	slateporttent_giveprize
	switch VAR_RESULT
	case FALSE, Kanto_BattleTentLobby_EventScript_NoRoomForPrize
	frontier_set FRONTIER_DATA_CHALLENGE_STATUS, 0
	message BattleFrontier_BattleTowerLobby_Text_ReceivedPrize  @ Odd that it uses Tower's instead of Factory's or its own
	waitmessage
	playfanfare MUS_OBTAIN_ITEM
	waitfanfare
	goto Kanto_BattleTentLobby_EventScript_EndGivePrize

Kanto_BattleTentLobby_EventScript_NoRoomForPrize::
	msgbox Kanto_BattleTentLobby_Text_NoRoomInBagMakeRoom, MSGBOX_DEFAULT
	goto Kanto_BattleTentLobby_EventScript_EndGivePrize

Kanto_BattleTentLobby_EventScript_LostChallenge::
	lockall
	message Kanto_BattleTentLobby_Text_ReturnRentalMonsSaveResults
	waitmessage
	frontier_set FRONTIER_DATA_LVL_MODE, FRONTIER_LVL_50
	slateporttent_save 0
	playse SE_SAVE
	waitse

Kanto_BattleTentLobby_EventScript_EndGivePrize::
	msgbox Kanto_BattleTentLobby_Text_LookForwardToNextVisit, MSGBOX_DEFAULT
	closemessage
	setvar VAR_TEMP_CHALLENGE_STATUS, 255
	releaseall
	end

Kanto_BattleTentLobby_EventScript_ResumeChallenge::
	lockall
	message Kanto_BattleTentLobby_Text_BeenWaitingForYou
	waitmessage
	slateporttent_save CHALLENGE_STATUS_SAVING
	playse SE_SAVE
	waitse
	frontier_set FRONTIER_DATA_PAUSED, FALSE
	setvar VAR_TEMP_CHALLENGE_STATUS, 255
	setvar VAR_0x8006, 2
	goto Kanto_BattleTentLobby_EventScript_EnterChallenge

Kanto_BattleTentLobby_EventScript_Attendant::
	lock
	faceplayer
	slateporttent_getprize
	goto_if_ne VAR_RESULT, ITEM_NONE, Kanto_BattleTentLobby_EventScript_GivePrize
	special SavePlayerParty
	msgbox Kanto_BattleTentLobby_Text_WelcomeToBattleTent, MSGBOX_DEFAULT
Kanto_BattleTentLobby_EventScript_AskEnterChallenge::
	message Kanto_BattleTentLobby_Text_TakeChallenge
	waitmessage
	multichoice 17, 6, MULTI_CHALLENGEINFO, FALSE
	switch VAR_RESULT
	case 0, Kanto_BattleTentLobby_EventScript_TryEnterChallenge
	case 1, Kanto_BattleTentLobby_EventScript_ExplainChallenge
	case 2, Kanto_BattleTentLobby_EventScript_CancelChallenge
	case MULTI_B_PRESSED, Kanto_BattleTentLobby_EventScript_CancelChallenge

Kanto_BattleTentLobby_EventScript_TryEnterChallenge::
	setvar VAR_FRONTIER_FACILITY, FRONTIER_FACILITY_FACTORY
	setvar VAR_FRONTIER_BATTLE_MODE, FRONTIER_MODE_SINGLES
	frontier_set FRONTIER_DATA_LVL_MODE, FRONTIER_LVL_TENT
	msgbox Kanto_BattleTentLobby_Text_SaveBeforeChallenge, MSGBOX_YESNO
	switch VAR_RESULT
	case NO, Kanto_BattleTentLobby_EventScript_LoadPartyCancelChallenge
	case YES, Kanto_BattleTentLobby_EventScript_SaveBeforeChallenge
	case MULTI_B_PRESSED, Kanto_BattleTentLobby_EventScript_LoadPartyCancelChallenge

Kanto_BattleTentLobby_EventScript_SaveBeforeChallenge::
	setvar VAR_TEMP_CHALLENGE_STATUS, 0
	frontier_set FRONTIER_DATA_SELECTED_MON_ORDER
	slateporttent_init
	frontier_set FRONTIER_DATA_CHALLENGE_STATUS, CHALLENGE_STATUS_SAVING
	frontier_set FRONTIER_DATA_PAUSED, FALSE
	closemessage
	delay 2
	call Common_EventScript_SaveGame
	setvar VAR_TEMP_CHALLENGE_STATUS, 255
	goto_if_eq VAR_RESULT, 0, Kanto_BattleTentLobby_EventScript_CancelChallengeSaveFailed
	setvar VAR_0x8006, 0
Kanto_BattleTentLobby_EventScript_EnterChallenge::
	msgbox Kanto_BattleTentLobby_Text_StepThisWay, MSGBOX_DEFAULT
	closemessage
	call Kanto_BattleTentLobby_EventScript_WalkToDoor
	warp MAP_KANTO_BATTLE_TENT_CORRIDOR, 2, 7
	setvar VAR_TEMP_CHALLENGE_STATUS, 0
	waitstate
	end

Kanto_BattleTentLobby_EventScript_WalkToDoor::
	applymovement LOCALID_ATTENDANT, Kanto_BattleTentLobby_Movement_AttendantWalkToDoor
	applymovement OBJ_EVENT_ID_PLAYER, Kanto_BattleTentLobby_Movement_PlayerWalkToDoor
	waitmovement 0
	opendoor 6, 1
	waitdooranim
	applymovement LOCALID_ATTENDANT, Kanto_BattleTentLobby_Movement_AttendantEnterDoor
	applymovement OBJ_EVENT_ID_PLAYER, Kanto_BattleTentLobby_Movement_PlayerEnterDoor
	waitmovement 0
	closedoor 6, 1
	waitdooranim
	return

Kanto_BattleTentLobby_Movement_AttendantWalkToDoor:
	walk_up
	walk_up
	walk_up
	step_end

Kanto_BattleTentLobby_Movement_AttendantEnterDoor:
	walk_up
	set_invisible
	step_end

Kanto_BattleTentLobby_Movement_PlayerWalkToDoor:
	walk_up
	walk_up
	walk_up
	step_end

Kanto_BattleTentLobby_Movement_PlayerEnterDoor:
	walk_up
	walk_up
	set_invisible
	step_end

Kanto_BattleTentLobby_EventScript_ExplainChallenge::
	msgbox Kanto_BattleTentLobby_Text_ExplainKantoTent, MSGBOX_DEFAULT
	goto Kanto_BattleTentLobby_EventScript_AskEnterChallenge

Kanto_BattleTentLobby_EventScript_CancelChallengeSaveFailed::
	frontier_set FRONTIER_DATA_CHALLENGE_STATUS, 0
	goto Kanto_BattleTentLobby_EventScript_CancelChallenge

Kanto_BattleTentLobby_EventScript_LoadPartyCancelChallenge::
	special LoadPlayerParty
Kanto_BattleTentLobby_EventScript_CancelChallenge::
	msgbox Kanto_BattleTentLobby_Text_LookForwardToNextVisit, MSGBOX_DEFAULT
	release
	end

@ Unused
Kanto_BattleTentLobby_Movement_UnusedEnterDoor::
	walk_up
	walk_up
	walk_up
	set_invisible
	step_end

Kanto_BattleTentLobby_EventScript_TormentGiver::
	lock
	faceplayer
	goto_if_set FLAG_RECEIVED_TM_TORMENT, Kanto_BattleTentLobby_EventScript_ReceivedTorment
	msgbox Kanto_BattleTentLobby_Text_CouldntFindMonForMe, MSGBOX_DEFAULT
	giveitem ITEM_TM_TORMENT
	goto_if_eq VAR_RESULT, FALSE, Common_EventScript_ShowBagIsFull
	setflag FLAG_RECEIVED_TM_TORMENT
	msgbox Kanto_BattleTentLobby_Text_ExplainTorment, MSGBOX_DEFAULT
	release
	end

Kanto_BattleTentLobby_EventScript_ReceivedTorment::
	msgbox Kanto_BattleTentLobby_Text_ExplainTorment, MSGBOX_DEFAULT
	release
	end

Kanto_BattleTentLobby_EventScript_Man::
	msgbox Kanto_BattleTentLobby_Text_IllTryUsingBugMons, MSGBOX_NPC
	end

Kanto_BattleTentLobby_EventScript_Girl::
	msgbox Kanto_BattleTentLobby_Text_BattleEvenWithoutToughMons, MSGBOX_NPC
	end

Kanto_BattleTentLobby_EventScript_Woman::
	msgbox Kanto_BattleTentLobby_Text_NiceIfMoreSelection, MSGBOX_NPC
	end

Kanto_BattleTentLobby_EventScript_RulesBoard::
	lockall
	msgbox BattleFrontier_BattleFactoryLobby_Text_RulesAreListed, MSGBOX_DEFAULT
	goto Kanto_BattleTentLobby_EventScript_ReadRulesBoard
	end

Kanto_BattleTentLobby_EventScript_ReadRulesBoard::
	message BattleFrontier_BattleFactoryLobby_Text_ReadWhichHeading
	waitmessage
	multichoice 17, 0, MULTI_KANTO_TENT_RULES, FALSE
	switch VAR_RESULT
	case 0, Kanto_BattleTentLobby_EventScript_RulesBasics
	case 1, Kanto_BattleTentLobby_EventScript_RulesSwapPartner
	case 2, Kanto_BattleTentLobby_EventScript_RulesSwapNumber
	case 3, Kanto_BattleTentLobby_EventScript_RulesSwapNotes
	case 4, Kanto_BattleTentLobby_EventScript_RulesMons
	case 5, Kanto_BattleTentLobby_EventScript_ExitRules
	case MULTI_B_PRESSED, Kanto_BattleTentLobby_EventScript_ExitRules
	end

Kanto_BattleTentLobby_EventScript_RulesBasics::
	msgbox Kanto_BattleTentLobby_Text_ExplainBasicRules, MSGBOX_DEFAULT
	goto Kanto_BattleTentLobby_EventScript_ReadRulesBoard
	end

Kanto_BattleTentLobby_EventScript_RulesSwapPartner::
	msgbox Kanto_BattleTentLobby_Text_ExplainSwapPartnerRules, MSGBOX_DEFAULT
	goto Kanto_BattleTentLobby_EventScript_ReadRulesBoard
	end

Kanto_BattleTentLobby_EventScript_RulesSwapNumber::
	msgbox Kanto_BattleTentLobby_Text_ExplainSwapNumberRules, MSGBOX_DEFAULT
	goto Kanto_BattleTentLobby_EventScript_ReadRulesBoard
	end

Kanto_BattleTentLobby_EventScript_RulesSwapNotes::
	msgbox Kanto_BattleTentLobby_Text_ExplainSwapNotes, MSGBOX_DEFAULT
	goto Kanto_BattleTentLobby_EventScript_ReadRulesBoard
	end

Kanto_BattleTentLobby_EventScript_RulesMons::
	msgbox Kanto_BattleTentLobby_Text_ExplainMonRules, MSGBOX_DEFAULT
	goto Kanto_BattleTentLobby_EventScript_ReadRulesBoard
	end

Kanto_BattleTentLobby_EventScript_ExitRules::
	releaseall
	end

Kanto_BattleTentLobby_Text_CouldntFindMonForMe:
	.string "So, like, I couldn't find myself any\n"
	.string "POKéMON that were, like, for me.\p"
	.string "So, I figured, like, hey, I should file\n"
	.string "a complaint to the guy there?\p"
	.string "And he wouldn't hear me out, like, hey!\n"
	.string "So, like, total bummer, man!\p"
	.string "Hey, like, you! Zip it, you know?\n"
	.string "Just, you know, take this!$"

Kanto_BattleTentLobby_Text_ExplainTorment:
	.string "That's, like, TM41, you know?\n"
	.string "Hey, it's TORMENT, you hearing me?\p"
	.string "Like, it won't let the other guy\n"
	.string "use the same move twice in a row, see?\p"
	.string "Hey, now, you listen here, like,\n"
	.string "I'm not laying a torment on you!$"

Kanto_BattleTentLobby_Text_IllTryUsingBugMons:
	.string "I don't really like BUG POKéMON,\n"
	.string "but maybe I'll try using some for\l"
	.string "a change of pace.\p"
	.string "Who knows, I might even get to like\n"
	.string "them!$"

Kanto_BattleTentLobby_Text_BattleEvenWithoutToughMons:
	.string "You can battle all you want here even\n"
	.string "if you don't have any tough POKéMON.$"

Kanto_BattleTentLobby_Text_NiceIfMoreSelection:
	.string "Wouldn't it be nice if they had more of\n"
	.string "a selection?$"

