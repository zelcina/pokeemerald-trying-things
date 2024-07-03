EventfulCity_Mart_MapScripts::
	.byte 0

EventfulCity_Mart_EventScript_Clerk::
	lock
	faceplayer
	message gText_HowMayIServeYou
	waitmessage
	goto_if_set FLAG_EVENTFUL_MART_EXPANDED_ITEMS, EventfulCity_Mart_EventScript_ExpandedItems
	pokemart EventfulCity_Mart_Pokemart_Basic
	msgbox gText_PleaseComeAgain, MSGBOX_DEFAULT
	release
	end

	.align 2
EventfulCity_Mart_Pokemart_Basic:
	.2byte ITEM_POKE_BALL
	.2byte ITEM_POTION
	.2byte ITEM_ANTIDOTE
	.2byte ITEM_PARALYZE_HEAL
	.2byte ITEM_AWAKENING
	.2byte ITEM_ESCAPE_ROPE
	.2byte ITEM_REPEL
	.2byte ITEM_X_SPEED
	.2byte ITEM_X_ATTACK
	.2byte ITEM_X_DEFENSE
	.2byte ITEM_OUTFIT_BOX
	.2byte ITEM_NONE
	release
	end

EventfulCity_Mart_EventScript_ExpandedItems::
	pokemart EventfulCity_Mart_Pokemart_Expanded
	msgbox gText_PleaseComeAgain, MSGBOX_DEFAULT
	release
	end

	.align 2
EventfulCity_Mart_Pokemart_Expanded:
	.2byte ITEM_POKE_BALL
	.2byte ITEM_GREAT_BALL
	.2byte ITEM_POTION
	.2byte ITEM_SUPER_POTION
	.2byte ITEM_ANTIDOTE
	.2byte ITEM_PARALYZE_HEAL
	.2byte ITEM_AWAKENING
	.2byte ITEM_ESCAPE_ROPE
	.2byte ITEM_REPEL
	.2byte ITEM_X_SPEED
	.2byte ITEM_X_ATTACK
	.2byte ITEM_X_DEFENSE
	.2byte ITEM_OUTFIT_BOX
	.2byte ITEM_NONE
	release
	end

EventfulCity_Mart_EventScript_Woman::
	msgbox EventfulCity_Mart_Text_WeakWillGrowStronger, MSGBOX_NPC
	end

EventfulCity_Mart_EventScript_Boy::
	msgbox EventfulCity_Mart_Text_RepelIsUseful, MSGBOX_NPC
	end

EventfulCity_Mart_EventScript_Man::
	msgbox EventfulCity_Mart_Text_TakeSomeAntidotesWithYou, MSGBOX_NPC
	end

EventfulCity_Mart_Text_WeakWillGrowStronger:
	.string "Even if a POKéMON is weak now,\n"
	.string "it will grow stronger.\p"
	.string "The most important thing is love!\n"
	.string "Love for your POKéMON!$"

EventfulCity_Mart_Text_RepelIsUseful:
	.string "Do you use REPEL?\n"
	.string "It keeps POKéMON away, so it's\l"
	.string "useful when you're in a hurry.$"

EventfulCity_Mart_Text_TakeSomeAntidotesWithYou:
	.string "Do you have any ANTIDOTES with\n"
	.string "you?\p"
	.string "If you walk around with a poisoned\n"
	.string "POKéMON, it will lose HP until it faints.\l"
	.string "Take some ANTIDOTES with you.$"

