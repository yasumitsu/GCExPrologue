UndefineClass('GCExHerman')
DefineClass.GCExHerman = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	NameColor = 4283980868,
	object_class = "UnitData",
	Agility = 50,
	Wisdom = 20,
	Leadership = 0,
	Marksmanship = 50,
	Mechanical = 10,
	Explosives = 0,
	Medical = 10,
	Portrait = "UI/NPCsPortraits/Herman",
	BigPortrait = "UI/NPCs/Herman",
	Name = T(850689362732, --[[ModItemUnitDataCompositeDef GCExHerman Name]] "Herman"),
	Randomization = true,
	Affiliation = "Civilian",
	immortal = true,
	ImportantNPC = true,
	MaxAttacks = 2,
	RewardExperience = 0,
	MaxHitPoints = 60,
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "HermanPro",
		}),
	},
	gender = "Male",
	PersistentSessionId = "GCExHerman",
}

