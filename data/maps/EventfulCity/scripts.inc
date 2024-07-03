.set LOCALID_GAMEBOY, 5
.set LOCALID_MAN, 3

EventfulCity_MapScripts::
	map_script MAP_SCRIPT_ON_TRANSITION, EventfulCity_OnTransition
	.byte 0

EventfulCity_OnTransition:
	setflag FLAG_VISITED_EVENTFUL_CITY
	call_if_eq VAR_EVENTFUL_CITY_STATE, 1, EventfulCity_EventScript_UnlockKanto
	call_if_eq VAR_EVENTFUL_CITY_STATE, 2, EventfulCity_EventScript_UnlockJohto
	call_if_eq VAR_EVENTFUL_CITY_STATE, 3, EventfulCity_EventScript_UnlockHoenn
	call_if_eq VAR_EVENTFUL_CITY_STATE, 4, EventfulCity_EventScript_UnlockSinnoh
	call_if_eq VAR_EVENTFUL_CITY_STATE, 5, EventfulCity_EventScript_UnlockUnova
	call_if_eq VAR_EVENTFUL_CITY_STATE, 6, EventfulCity_EventScript_UnlockKalos
	call_if_eq VAR_EVENTFUL_CITY_STATE, 7, EventfulCity_EventScript_UnlockAlola
	call_if_eq VAR_EVENTFUL_CITY_STATE, 8, EventfulCity_EventScript_UnlockGalar
	call_if_eq VAR_EVENTFUL_CITY_STATE, 9, EventfulCity_EventScript_UnlockPaldea
	end

EventfulCity_EventScript_UnlockKanto::
	setobjectxyperm LOCALID_GAMEBOY, 7, 6
	return

EventfulCity_EventScript_UnlockJohto::
	return

EventfulCity_EventScript_UnlockHoenn::
	return

EventfulCity_EventScript_UnlockSinnoh::
	return

EventfulCity_EventScript_UnlockUnova::
	return

EventfulCity_EventScript_UnlockKalos::
	return

EventfulCity_EventScript_UnlockAlola::
	return

EventfulCity_EventScript_UnlockGalar::
	return

EventfulCity_EventScript_UnlockPaldea::
	return

EventfulCity_EventScript_GivePokedex::
	lock
	faceplayer
	goto_if_set FLAG_SYS_B_DASH, EventfulCity_EventScript_YouDidIt
	msgbox EventfulCity_Text_GetPokedex, MSGBOX_DEFAULT
	playfanfare MUS_OBTAIN_ITEM
	message EventfulCity_Text_ReceivedPokedex
	waitfanfare
	setflag FLAG_SYS_POKEDEX_GET
	special SetUnlockedPokedexFlags
	setflag FLAG_RECEIVED_POKEDEX_FROM_BIRCH
	setvar VAR_CABLE_CLUB_TUTORIAL_STATE, 1
	msgbox EventfulCity_Text_ExplainPokedex, MSGBOX_DEFAULT
	closemessage
	checkplayergender
	call_if_eq VAR_RESULT, MALE, EventfulCity_EventScript_MalePokedexMessage
	call_if_eq VAR_RESULT, FEMALE, EventfulCity_EventScript_FemalePokedexMessage
	setflag FLAG_ADVENTURE_STARTED
	closemessage
	delay 30
	applymovement LOCALID_MAN, Common_Movement_ExclamationMark
	msgbox EventfulCity_Text_WearTheseRunningShoes, MSGBOX_DEFAULT
	playfanfare MUS_OBTAIN_ITEM
	message EventfulCity_Text_SwitchShoesWithRunningShoes
	waitfanfare
	setflag FLAG_RECEIVED_RUNNING_SHOES
	msgbox EventfulCity_Text_ExplainRunningShoes, MSGBOX_DEFAULT
	closemessage
	setvar VAR_EVENTFUL_CITY_STATE, 1
	setflag FLAG_SYS_B_DASH
	releaseall
	end

EventfulCity_EventScript_MalePokedexMessage::
	msgbox EventfulCity_Text_MalePokeballs, MSGBOX_DEFAULT
	giveitem ITEM_POKE_BALL, 5
	call_if_eq VAR_RESULT, FALSE, EventfulCity_EventScript_NoRoomForPokeBalls
	msgbox EventfulCity_Text_MaleEnd, MSGBOX_DEFAULT
	setvar VAR_RESULT, 0
	return

EventfulCity_EventScript_FemalePokedexMessage::
	msgbox EventfulCity_Text_FemalePokeballs, MSGBOX_DEFAULT
	giveitem ITEM_POKE_BALL, 5
	call_if_eq VAR_RESULT, FALSE, EventfulCity_EventScript_NoRoomForPokeBalls
	msgbox EventfulCity_Text_FemaleEnd, MSGBOX_DEFAULT
	setvar VAR_RESULT, 1
	return

EventfulCity_EventScript_NoRoomForPokeBalls::
	msgbox EventfulCity_Text_OhYourBagsFull, MSGBOX_DEFAULT
	return

EventfulCity_EventScript_YouDidIt:
	msgbox EventfulCity_Text_YouDidIt, MSGBOX_DEFAULT
	releaseall
	end

EventfulCity_EventScript_Boy::
	lock
	faceplayer
	msgbox EventfulCity_Text_WaterReflection, MSGBOX_DEFAULT
	closemessage
	applymovement LOCALID_BOY, Common_Movement_FaceOriginalDirection
	waitmovement 0
	release
	end

EventfulCity_EventScript_WallysMom::
	setvar VAR_0x8000, MUGSHOT_TEST
	callnative DrawMugshot
	msgbox EventfulCity_Text_WhereIsWally, MSGBOX_NPC
	callnative ClearMugshot
	end

EventfulCity_EventScript_GymSign::
	msgbox EventfulCity_Text_GymSign, MSGBOX_SIGN
	end

EventfulCity_EventScript_CitySign::
	msgbox EventfulCity_Text_CitySign, MSGBOX_SIGN
	end

EventfulCity_EventScript_Gentleman::
	msgbox EventfulCity_Text_FullPartyExplanation, MSGBOX_NPC
	end

EventfulCity_EventScript_WallyHouseSign::
	msgbox EventfulCity_Text_WallyHouseSign, MSGBOX_SIGN
	end

EventfulCity_EventScript_GymBoy::
	msgbox EventfulCity_Text_AreYouRookieTrainer, MSGBOX_NPC
	end

EventfulCity_Text_GetPokedex:
	.string "PROF. BIRCH: Oh, hi, {PLAYER}{KUN}!\p"
	.string "I heard you beat {RIVAL} on\n"
	.string "your first try. That's excellent!\p"
	.string "{RIVAL}'s been helping with my research\n"
	.string "for a long time.\p"
	.string "{RIVAL} has an extensive history as\n"
	.string "a TRAINER already.\p"
	.string "Here, {PLAYER}{KUN}, I ordered this for my\n"
	.string "research, but I think you should have\l"
	.string "this Pokédex.$"

EventfulCity_Text_ReceivedPokedex:
	.string "I received the Pokédex!$"

EventfulCity_Text_ExplainPokedex:
	.string "PROF. BIRCH: The Pokédex is a high-tech\n"
	.string "tool that automatically makes a record\l"
	.string "of any POKéMON you meet or catch.\p"
	.string "My kid, {RIVAL}, goes everywhere\n"
	.string "with it.\p"
	.string "Whenever my kid catches a rare POKéMON\n"
	.string "and records its data in the Pokédex,\l"
	.string "why, {RIVAL} looks for me while I'm out\l"
	.string "doing fieldwork, and shows me.$"

EventfulCity_Text_WearTheseRunningShoes:
	.string "MOM: {PLAYER}! {PLAYER}! Did you\n"
	.string "introduce yourself to PROF. BIRCH?\p"
	.string "Oh! What an adorable POKéMON!\n"
	.string "You got it from PROF. BIRCH. How nice!\p"
	.string "You're your father's child, all right.\n"
	.string "You look good together with POKéMON!\p"
	.string "Here, honey! If you're going out on an\n"
	.string "adventure, wear these RUNNING SHOES.\p"
	.string "They'll put a zip in your step!$"

EventfulCity_Text_SwitchShoesWithRunningShoes:
	.string "{PLAYER} switched shoes with the\n"
	.string "RUNNING SHOES.$"

EventfulCity_Text_ExplainRunningShoes:
	.string "MOM: {PLAYER}, those shoes came with\n"
	.string "instructions.\p"
	.string "“Press the B Button while wearing these\n"
	.string "RUNNING SHOES to run extra-fast!\p"
	.string "“Slip on these RUNNING SHOES and race\n"
	.string "in the great outdoors!”$"
	
	EventfulCity_Text_MalePokeballs:
	.string "MAY: Oh, wow, {PLAYER}{KUN}!\n"
	.string "You got a Pokédex, too!\p"
	.string "That's great! Just like me!\n"
	.string "I've got something for you, too!$"

EventfulCity_Text_MaleEnd:
	.string "MAY: It's fun if you can get a lot of\n"
	.string "POKéMON!\p"
	.string "I'm going to look all over the place\n"
	.string "because I want different POKéMON.\p"
	.string "If I find any cute POKéMON, I'll catch\n"
	.string "them with POKé BALLS!$"

EventfulCity_Text_FemalePokeballs:
	.string "BRENDAN: Huh…\n"
	.string "So you got a Pokédex, too.\p"
	.string "Well then, here.\n"
	.string "I'll give you these.$"

EventfulCity_Text_FemaleEnd:
	.string "BRENDAN: You know it's more fun to\n"
	.string "have a whole bunch of POKéMON.\p"
	.string "I'm going to explore all over the place\n"
	.string "to find different POKéMON.\p"
	.string "If I find any cool POKéMON, you bet\n"
	.string "I'll try to get them with POKé BALLS.$"

EventfulCity_Text_OhYourBagsFull:
	.string "Oh? Your bag's full.$"

EventfulCity_Text_YouDidIt:
	.string "You did it. :)$"

EventfulCity_Text_WhereIsWally:
	.string "Where has our WALLY gone?\p"
	.string "We have to leave for VERDANTURF TOWN\n"
	.string "very soon…$"

EventfulCity_Text_AreYouRookieTrainer:
	.string "Hiya! Are you maybe…\n"
	.string "A rookie TRAINER?\p"
	.string "Do you know what POKéMON TRAINERS\n"
	.string "do when they reach a new town?\p"
	.string "They first check what kind of GYM\n"
	.string "is in the town.$"

EventfulCity_Text_WaterReflection:
	.string "My face is reflected in the water.\p"
	.string "It's a shining grin full of hope…\p"
	.string "Or it could be a look of somber silence\n"
	.string "struggling with fear…\p"
	.string "What do you see reflected in your face?$"

EventfulCity_Text_FullPartyExplanation:
	.string "Let's say you have six POKéMON.\n"
	.string "If you catch another one…\p"
	.string "It is automatically sent to a STORAGE\n"
	.string "BOX over a PC connection.$"

EventfulCity_Text_GymSign:
	.string "EVENTFUL CITY POKéMON GYM\n"
	.string "LEADER: NORMAN\l"
	.string "“A man in pursuit of power!”$"

EventfulCity_Text_CitySign:
	.string "Hello, this silly little city is\n"
	.string "where people come to test their skills.\p"
	.string "In these houses you will find warps to\n"
	.string "new and custom events made by me.\p"
	.string "This is all just a way to practice\n"
	.string "decomp. Hope you enjoy.$"

EventfulCity_Text_WallyHouseSign:
	.string "WALLY'S HOUSE$"

