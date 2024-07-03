EventfulCity_SpawnHouse_MapScripts::
	map_script MAP_SCRIPT_ON_FRAME_TABLE, EventfulCity_SpawnHouse_OnFrame
	.byte 0

EventfulCity_SpawnHouse_OnFrame:
	map_script_2 VAR_EVENTFUL_CITY_STATE, 4, EventfulCity_SpawnHouse_EventScript_GiveHMSurf
	.2byte 0

EventfulCity_SpawnHouse_EventScript_GiveHMSurf::
	lockall
	msgbox EventfulCity_SpawnHouse_Text_PleaseExcuseUs, MSGBOX_DEFAULT
	giveitem ITEM_HM_SURF
	setflag FLAG_RECEIVED_HM_SURF
	msgbox EventfulCity_SpawnHouse_Text_SurfGoAllSortsOfPlaces, MSGBOX_DEFAULT
	setvar VAR_EVENTFUL_CITY_STATE, 5
	releaseall
	end

EventfulCity_SpawnHouse_EventScript_WallysDad::
	lock
	faceplayer
	goto_if_set FLAG_DEFEATED_WALLY_VICTORY_ROAD, EventfulCity_SpawnHouse_EventScript_DefeatedWallyInVictoryRoad
	goto_if_set FLAG_RECEIVED_HM_SURF, EventfulCity_SpawnHouse_EventScript_ReceievedHMSurf
	goto_if_set FLAG_THANKED_FOR_PLAYING_WITH_WALLY, EventfulCity_SpawnHouse_EventScript_PlayedWithWally
	msgbox EventfulCity_SpawnHouse_Text_ThanksForPlayingWithWally, MSGBOX_DEFAULT
	setflag FLAG_THANKED_FOR_PLAYING_WITH_WALLY
	release
	end

EventfulCity_SpawnHouse_EventScript_ReceievedHMSurf::
	msgbox EventfulCity_SpawnHouse_Text_WallyIsComingHomeSoon, MSGBOX_DEFAULT
	release
	end

EventfulCity_SpawnHouse_EventScript_DefeatedWallyInVictoryRoad::
	msgbox EventfulCity_SpawnHouse_Text_YouMetWallyInEverGrandeCity, MSGBOX_DEFAULT
	release
	end

EventfulCity_SpawnHouse_EventScript_PlayedWithWally::
	msgbox EventfulCity_SpawnHouse_Text_WonderHowWallyIsDoing, MSGBOX_DEFAULT
	release
	end

EventfulCity_SpawnHouse_EventScript_StarterEvent::
	lock
	faceplayer
	goto_if_set FLAG_SYS_POKEMON_GET, EventfulCity_SpawnHouse_EventScript_YouDidIt
	msgbox EventfulCity_SpawnHouse_Text_PickStarter, MSGBOX_DEFAULT
	setflag FLAG_SYS_POKEMON_GET
	setflag FLAG_RESCUED_BIRCH
	special ChooseStarter
	waitstate
	setvar VAR_SPAWN_HOUSE_STATE, 1
	bufferleadmonspeciesname STR_VAR_1
	message EventfulCity_SpawnHouse_Text_LikeYouToHavePokemon
	waitmessage
	playfanfare MUS_OBTAIN_ITEM
	waitfanfare
	msgbox EventfulCity_SpawnHouse_Text_WhyNotGiveNicknameToMon, MSGBOX_YESNO
	goto_if_eq VAR_RESULT, YES, EventfulCity_SpawnHouse_EventScript_NicknameStarter
	goto_if_eq VAR_RESULT, NO, EventfulCity_SpawnHouse_EventScript_GoSeeRival
	end

EventfulCity_SpawnHouse_EventScript_NicknameStarter::
	setvar VAR_0x8004, 0
	call Common_EventScript_NameReceivedPartyMon
	goto EventfulCity_SpawnHouse_EventScript_GoSeeRival
	end

EventfulCity_SpawnHouse_EventScript_GoSeeRival::
	msgbox EventfulCity_SpawnHouse_Text_MightBeGoodIdeaToGoSeeRival, MSGBOX_DEFAULT
	releaseall
	end

EventfulCity_SpawnHouse_EventScript_YouDidIt:
	msgbox EventfulCity_SpawnHouse_Text_YouDidIt, MSGBOX_DEFAULT
	releaseall
	end

EventfulCity_SpawnHouse_Text_PickStarter:
	.string "PROF. BIRCH: Whew…\p"
	.string "I was in the tall grass studying wild\n"
	.string "POKéMON when I was jumped.\p"
	.string "You saved me.\n"
	.string "Thanks a lot!\p"
	.string "Oh?\p"
	.string "Hi, you're {PLAYER}{KUN}!\p"
	.string "This is not the place to chat, so come\n"
	.string "by my POKéMON LAB later, okay?$"

EventfulCity_SpawnHouse_Text_LikeYouToHavePokemon:
	.string "PROF. BIRCH: So, {PLAYER}{KUN}.\p"
	.string "I've heard so much about you from\n"
	.string "your father.\p"
	.string "I've heard that you don't have your\n"
	.string "own POKéMON yet.\p"
	.string "But the way you battled earlier,\n"
	.string "you pulled it off with aplomb!\p"
	.string "I guess you have your father's blood\n"
	.string "in your veins after all!\p"
	.string "Oh, yes. As thanks for rescuing me,\n"
	.string "I'd like you to have the POKéMON you\l"
	.string "used earlier.\p"
	.string "{PLAYER} received the {STR_VAR_1}!$"

EventfulCity_SpawnHouse_Text_WhyNotGiveNicknameToMon:
	.string "PROF. BIRCH: While you're at it, why not\n"
	.string "give a nickname to that {STR_VAR_1}?$"

EventfulCity_SpawnHouse_Text_MightBeGoodIdeaToGoSeeRival:
	.string "PROF. BIRCH: If you work at POKéMON\n"
	.string "and gain experience, I think you'll make\l"
	.string "an extremely good TRAINER.\p"
	.string "My kid, {RIVAL}, is also studying\n"
	.string "POKéMON while helping me out.\p"
	.string "{PLAYER}{KUN}, don't you think it might be\n"
	.string "a good idea to go see {RIVAL}?$"

EventfulCity_SpawnHouse_Text_YouDidIt:
	.string "You did it.$"

EventfulCity_SpawnHouse_Text_ThanksForPlayingWithWally:
	.string "You're…\n"
	.string "Ah, you must be {PLAYER}{KUN}, right?\p"
	.string "Thank you for playing with WALLY a\n"
	.string "little while ago.\p"
	.string "He's been frail and sickly ever\n"
	.string "since he was a baby.\p"
	.string "We've sent him to stay with my relatives\n"
	.string "in VERDANTURF TOWN for a while.\p"
	.string "The air is a lot cleaner there\n"
	.string "than it is here.\p"
	.string "What's that? Where's WALLY?\n"
	.string "He's already left, our WALLY.\p"
	.string "I wonder where he could have\n"
	.string "gotten by now?$"

EventfulCity_SpawnHouse_Text_WonderHowWallyIsDoing:
	.string "I wonder how our WALLY is doing?$"

EventfulCity_SpawnHouse_Text_PleaseExcuseUs:
	.string "{PLAYER}{KUN}! Please excuse us for\n"
	.string "dragging you here this way.\p"
	.string "But our WALLY's become very healthy\n"
	.string "since he went to VERDANTURF TOWN.\p"
	.string "We owe it all to you!\p"
	.string "When WALLY left town, you helped\n"
	.string "him catch a POKéMON, right?\p"
	.string "I think that made WALLY really\n"
	.string "happy.\p"
	.string "Actually, not just WALLY.\n"
	.string "It made me, his father, happy too.\p"
	.string "Happy that he's gained such a great\n"
	.string "friend as you.\p"
	.string "This isn't a bribe or anything, but\n"
	.string "I'd really like you to have this.$"

EventfulCity_SpawnHouse_Text_SurfGoAllSortsOfPlaces:
	.string "If your POKéMON can SURF, you'll be\n"
	.string "able to go to all sorts of places.$"

EventfulCity_SpawnHouse_Text_WallyIsComingHomeSoon:
	.string "WALLY's coming home soon.\n"
	.string "I'm looking forward to that.$"

EventfulCity_SpawnHouse_Text_YouMetWallyInEverGrandeCity:
	.string "Oh? You met WALLY in\n"
	.string "EVER GRANDE CITY?\p"
	.string "Oh, {PLAYER}{KUN}, don't be silly.\p"
	.string "He may have gotten healthy, but he\n"
	.string "can't go somewhere far away like\l"
	.string "that all by himself.$"

EventfulCity_SpawnHouse_Text_WallyWasReallyHappy:
	.string "WALLY was really happy when he told\n"
	.string "us that he caught a POKéMON.\p"
	.string "It's been ages since I've seen him\n"
	.string "smile like that.$"

EventfulCity_SpawnHouse_Text_WallyLeftWithoutTelling:
	.string "I want you to keep this a secret\n"
	.string "from my husband…\p"
	.string "But our WALLY left VERDANTURF TOWN\n"
	.string "without telling anyone.\p"
	.string "You know, WALLY is frail, but\n"
	.string "he's surprisingly strong-willed.\p"
	.string "I'm sure that he'll come back safe\n"
	.string "and sound one day!$"

