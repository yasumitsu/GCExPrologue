UndefineClass('GCExSmurge')
DefineClass.GCExSmurge = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	NameColor = 4283980868,
	object_class = "UnitData",
	Health = 75,
	Agility = 72,
	Dexterity = 80,
	Strength = 61,
	Wisdom = 82,
	Leadership = 0,
	Marksmanship = 80,
	Mechanical = 0,
	Explosives = 0,
	Medical = 49,
	Portrait = "Mod/GCExPrologue/Images/Smurge",
	BigPortrait = "Mod/GCExPrologue/Images/IMG_8962",
	Name = T(790241824755, --[[ModItemUnitDataCompositeDef GCExSmurge Name]] "Smurge"),
	Randomization = true,
	Affiliation = "Other",
	StartingLevel = 5,
	ImportantNPC = true,
	neutral_retaliate = true,
	AIKeywords = {
		"Soldier",
	},
	MaxAttacks = 2,
	RewardExperience = 0,
	MaxHitPoints = 60,
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Bounce",
		}),
	},
	Equipment = {
		"LegionRaider_Stronger_Elite",
	},
	pollyvoice = "Joey",
	gender = "Male",
	VoiceResponseId = "Bounce",
}

