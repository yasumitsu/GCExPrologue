UndefineClass('GCExBiff')
DefineClass.GCExBiff = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	NameColor = 4282219161,
	object_class = "UnitData",
	Health = 73,
	Agility = 74,
	Dexterity = 71,
	Strength = 41,
	Wisdom = 58,
	Leadership = 13,
	Marksmanship = 57,
	Mechanical = 0,
	Explosives = 4,
	Medical = 24,
	Portrait = "UI/NPCsPortraits/Biff",
	BigPortrait = "UI/NPCs/Biff",
	Name = T(174901927062, --[[ModItemUnitDataCompositeDef GCExBiff Name]] "Biff Apscott"),
	Nick = T(137488486663, --[[ModItemUnitDataCompositeDef GCExBiff Nick]] "Biff"),
	AllCapsNick = T(349220379003, --[[ModItemUnitDataCompositeDef GCExBiff AllCapsNick]] "BIFF"),
	Affiliation = "Other",
	StartingLevel = 3,
	immortal = true,
	ImportantNPC = true,
	AIKeywords = {
		"Soldier",
	},
	MaxAttacks = 2,
	RewardExperience = 0,
	MaxHitPoints = 69,
	StartingPerks = {
		"Teacher",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Biff",
		}),
	},
	Equipment = {
		"Biff",
	},
	Specialization = "ExplosiveExpert",
	gender = "Male",
	PersistentSessionId = "GCExBiff",
	VoiceResponseId = "BiffNPC",
}

