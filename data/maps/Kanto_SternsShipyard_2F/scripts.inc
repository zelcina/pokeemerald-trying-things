Kanto_SternsShipyard_2F_MapScripts::
	.byte 0

Kanto_SternsShipyard_2F_EventScript_Scientist1::
	msgbox Kanto_SternsShipyard_2F_Text_ShipDesignMoreLikeBuilding, MSGBOX_NPC
	end

Kanto_SternsShipyard_2F_EventScript_Scientist2::
	msgbox Kanto_SternsShipyard_2F_Text_FloatsBecauseBuoyancy, MSGBOX_NPC
	end

Kanto_SternsShipyard_2F_Text_ShipDesignMoreLikeBuilding:
	.string "Designing a large ship is more like\n"
	.string "making a big building than putting\l"
	.string "together a transportation vehicle.$"

Kanto_SternsShipyard_2F_Text_FloatsBecauseBuoyancy:
	.string "Don't you think it's strange that\n"
	.string "a ship made of heavy iron floats?\p"
	.string "It floats because of a principle\n"
	.string "called buoyancy.$"

