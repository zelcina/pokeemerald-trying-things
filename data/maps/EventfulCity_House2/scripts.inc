EventfulCity_House2_MapScripts::
	.byte 0

EventfulCity_House2_EventScript_Woman::
	msgbox EventfulCity_House2_Text_NormanBecameGymLeader, MSGBOX_NPC
	end

EventfulCity_House2_EventScript_SchoolKid::
	msgbox EventfulCity_House2_Text_BattledNormanOnce, MSGBOX_NPC
	end

EventfulCity_House2_Text_NormanBecameGymLeader:
	.string "NORMAN became our town's new\n"
	.string "GYM LEADER.\p"
	.string "I think he called his family over from\n"
	.string "somewhere far away.$"

EventfulCity_House2_Text_BattledNormanOnce:
	.string "I battled NORMAN once, but, whew,\n"
	.string "he was way too strong.\p"
	.string "How would I put it?\p"
	.string "I just got the feeling that he\n"
	.string "lives for POKéMON.$"

