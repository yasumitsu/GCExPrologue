UndefineClass('GCExStitches')
DefineClass.GCExStitches = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	NameColor = 4283980868,
	object_class = "UnitData",
	Health = 70,
	Agility = 80,
	Dexterity = 80,
	Strength = 70,
	Wisdom = 80,
	Marksmanship = 20,
	Mechanical = 0,
	Explosives = 0,
	Medical = 70,
	Portrait = "UI/NPCsPortraits/LamitheWitch",
	BigPortrait = "Mod/GCExPrologue/Images/BCPriestess",
	Name = T(153308792524, --[[ModItemUnitDataCompositeDef GCExStitches Name]] "Stitches"),
	Randomization = true,
	Affiliation = "Civilian",
	ImportantNPC = true,
	MaxAttacks = 2,
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Lami",
		}),
	},
	Equipment = {
		"Witch_Loot",
	},
	pollyvoice = "Nicole",
	gender = "Female",
	PersistentSessionId = "NPC_Witch",
}

