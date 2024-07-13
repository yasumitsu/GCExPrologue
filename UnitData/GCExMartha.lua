UndefineClass('GCExMartha')
DefineClass.GCExMartha = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	NameColor = 4283980868,
	object_class = "UnitData",
	Health = 50,
	Strength = 40,
	Wisdom = 40,
	Leadership = 50,
	Marksmanship = 30,
	Mechanical = 0,
	Explosives = 0,
	Medical = 10,
	Portrait = "UI/NPCsPortraits/Martha",
	BigPortrait = "UI/NPCs/Martha",
	Name = T(339879582713, --[[ModItemUnitDataCompositeDef GCExMartha Name]] "Martha"),
	Randomization = true,
	Affiliation = "Civilian",
	immortal = true,
	ImportantNPC = true,
	MaxAttacks = 1,
	RewardExperience = 0,
	MaxHitPoints = 60,
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "MarthaPro",
		}),
	},
	pollyvoice = "Kendra",
	gender = "Female",
	PersistentSessionId = "GCExMartha",
	FallbackMissingVR = "VillagerFemale",
}

