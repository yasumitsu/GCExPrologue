UndefineClass('GCExGoon_1')
DefineClass.GCExGoon_1 = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	NameColor = 4290132532,
	object_class = "UnitData",
	Health = 62,
	Agility = 80,
	Dexterity = 30,
	Strength = 39,
	Wisdom = 30,
	Leadership = 20,
	Marksmanship = 55,
	Mechanical = 0,
	Explosives = 0,
	Medical = 0,
	Portrait = "UI/EnemiesPortraits/LegionRecon",
	BigPortrait = "UI/Enemies/LegionRaider",
	Name = T(834781691255, --[[ModItemUnitDataCompositeDef GCExGoon_1 Name]] "Goon"),
	Randomization = true,
	Affiliation = "Legion",
	neutral_retaliate = true,
	AIKeywords = {
		"MobileShot",
	},
	archetype = "Skirmisher",
	role = "Recon",
	MaxAttacks = 2,
	MaxHitPoints = 50,
	StartingPerks = {
		"MinFreeMove",
		"Hotblood",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Goon1Pro",
		}),
	},
	Equipment = {
		"LegionGoon",
	},
	AdditionalGroups = {},
	pollyvoice = "Joey",
	gender = "Male",
	VoiceResponseId = "LegionRaider",
}

