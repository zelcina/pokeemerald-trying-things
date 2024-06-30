Kanto_House_MapScripts::
	.byte 0

Kanto_House_EventScript_PokefanM::
	msgbox Kanto_House_Text_NatureToDoWithStatGains, MSGBOX_NPC
	end

Kanto_House_EventScript_Girl::
	msgbox Kanto_House_Text_MustBeGoingToBattleTent, MSGBOX_NPC
	end

Kanto_House_Text_NatureToDoWithStatGains:
	.string "My POKéMON has a HASTY nature.\p"
	.string "It has higher SPEED compared to\n"
	.string "my other POKéMON.\p"
	.string "Maybe their nature has something to\n"
	.string "do with the stat gains of POKéMON.$"

Kanto_House_Text_MustBeGoingToBattleTent:
	.string "You're a TRAINER, aren't you?\p"
	.string "Since you came to Kanto,\n"
	.string "you must be going to the BATTLE TENT.$"

