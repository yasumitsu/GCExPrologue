UndefineClass('GCExStephane')
DefineClass.GCExStephane = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	NameColor = 4283980868,
	object_class = "UnitData",
	Health = 50,
	Agility = 50,
	Strength = 40,
	Wisdom = 80,
	Leadership = 40,
	Marksmanship = 40,
	Mechanical = 40,
	Explosives = 0,
	Medical = 20,
	Portrait = "Mod/GCExPrologue/Images/StephaneHead",
	BigPortrait = "Mod/GCExPrologue/Images/IMG_8939",
	Name = T(996070173311, --[[ModItemUnitDataCompositeDef GCExStephane Name]] "Stephane"),
	Randomization = true,
	Affiliation = "Civilian",
	immortal = true,
	ImportantNPC = true,
	MaxAttacks = 2,
	RewardExperience = 0,
	MaxHitPoints = 50,
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "StephaneNPC",
		}),
	},
	pollyvoice = "Matthew",
	gender = "Male",
}

