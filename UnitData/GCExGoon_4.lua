UndefineClass('GCExGoon_4')
DefineClass.GCExGoon_4 = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	NameColor = 4290132532,
	object_class = "UnitData",
	Health = 100,
	Agility = 70,
	Dexterity = 34,
	Strength = 70,
	Wisdom = 24,
	Leadership = 10,
	Marksmanship = 70,
	Mechanical = 0,
	Explosives = 0,
	Medical = 0,
	Portrait = "UI/EnemiesPortraits/LegionSoldier",
	BigPortrait = "UI/Enemies/LegionRaider",
	Name = T(544507340205, --[[ModItemUnitDataCompositeDef GCExGoon_4 Name]] "Marauder"),
	Randomization = true,
	Affiliation = "Legion",
	neutral_retaliate = true,
	AIKeywords = {
		"Soldier",
	},
	role = "Soldier",
	OpeningAttackType = "Overwatch",
	MaxAttacks = 2,
	MaxHitPoints = 50,
	StartingPerks = {
		"AutoWeapons",
		"MinFreeMove",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "GoonCommander",
		}),
	},
	Equipment = {
		"LegionRaiders",
	},
	AdditionalGroups = {},
	pollyvoice = "Joey",
	gender = "Male",
	VoiceResponseId = "LegionRaider",
}

