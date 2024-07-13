UndefineClass('GCExBastien')
DefineClass.GCExBastien = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	NameColor = 4283980868,
	object_class = "UnitData",
	Health = 79,
	Agility = 72,
	Dexterity = 81,
	Strength = 44,
	Wisdom = 24,
	Leadership = 10,
	Marksmanship = 76,
	Mechanical = 0,
	Explosives = 0,
	Medical = 0,
	Portrait = "UI/NPCsPortraits/Bastien",
	BigPortrait = "UI/NPCs/Bastien",
	Name = T(294499373266, --[[ModItemUnitDataCompositeDef GCExBastien Name]] "Bastien"),
	Randomization = true,
	Affiliation = "Legion",
	ImportantNPC = true,
	neutral_retaliate = true,
	AIKeywords = {
		"Explosives",
	},
	MaxAttacks = 2,
	MaxHitPoints = 50,
	StartingPerks = {
		"AutoWeapons",
		"MinFreeMove",
		"OpportunisticKiller",
		"BattleFocus",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "BastienPro",
		}),
	},
	Equipment = {
		"LegionRaiderBastien",
	},
	pollyvoice = "Geraint",
	gender = "Male",
	PersistentSessionId = "GCExBastien",
	VoiceResponseId = "LegionRaider_Jose",
}

