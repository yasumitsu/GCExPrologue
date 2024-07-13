UndefineClass('GCExGoon_2')
DefineClass.GCExGoon_2 = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	NameColor = 4290132532,
	object_class = "UnitData",
	Health = 73,
	Agility = 79,
	Dexterity = 73,
	Strength = 48,
	Wisdom = 71,
	Leadership = 29,
	Marksmanship = 58,
	Mechanical = 0,
	Explosives = 0,
	Medical = 0,
	Portrait = "UI/EnemiesPortraits/LegionRecon",
	BigPortrait = "UI/Enemies/LegionRaider",
	Name = T(669282205183, --[[ModItemUnitDataCompositeDef GCExGoon_2 Name]] "Scout"),
	Randomization = true,
	Affiliation = "Legion",
	StartingLevel = 2,
	neutral_retaliate = true,
	AIKeywords = {
		"Flank",
		"RunAndGun",
	},
	archetype = "Skirmisher",
	role = "Recon",
	OpeningAttackType = "Overwatch",
	MaxAttacks = 2,
	MaxHitPoints = 50,
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Goon2Pro",
		}),
	},
	Equipment = {
		"LegionScout",
	},
	AdditionalGroups = {},
	pollyvoice = "Joey",
	gender = "Male",
	VoiceResponseId = "LegionRaider",
}

