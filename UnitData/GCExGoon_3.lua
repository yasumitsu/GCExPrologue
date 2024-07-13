UndefineClass('GCExGoon_3')
DefineClass.GCExGoon_3 = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	NameColor = 4290132532,
	object_class = "UnitData",
	Health = 67,
	Agility = 44,
	Dexterity = 89,
	Strength = 41,
	Wisdom = 48,
	Leadership = 33,
	Marksmanship = 91,
	Mechanical = 0,
	Explosives = 0,
	Medical = 0,
	Portrait = "UI/EnemiesPortraits/RebelSniper",
	Name = T(781068932435, --[[ModItemUnitDataCompositeDef GCExGoon_3 Name]] "Raider"),
	Randomization = true,
	Affiliation = "Rebel",
	StartingLevel = 3,
	neutral_retaliate = true,
	AIKeywords = {
		"Sniper",
	},
	role = "Marksman",
	AlwaysUseOpeningAttack = true,
	OpeningAttackType = "PinDown",
	MaxAttacks = 1,
	MaxHitPoints = 50,
	StartingPerks = {
		"Deadeye",
		"MinFreeMove",
		"NightOps",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Goon4Pro",
		}),
	},
	Equipment = {
		"RebelSniper",
	},
	AdditionalGroups = {},
	pollyvoice = "Kendra",
	gender = "Female",
	VoiceResponseId = "AnneLeMitrailleur",
}

