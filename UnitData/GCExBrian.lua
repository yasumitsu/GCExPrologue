UndefineClass('GCExBrian')
DefineClass.GCExBrian = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	NameColor = 4283980868,
	object_class = "UnitData",
	Health = 69,
	Agility = 78,
	Dexterity = 83,
	Strength = 50,
	Wisdom = 50,
	Marksmanship = 78,
	Mechanical = 15,
	Explosives = 0,
	Medical = 15,
	Portrait = "Mod/GCExPrologue/Images/BrianFace",
	BigPortrait = "Mod/GCExPrologue/Images/IMG_8968",
	Name = T(862172338990, --[[ModItemUnitDataCompositeDef GCExBrian Name]] "Brian"),
	Randomization = true,
	Affiliation = "Civilian",
	ImportantNPC = true,
	neutral_retaliate = true,
	AIKeywords = {
		"Sniper",
	},
	role = "Marksman",
	CanManEmplacements = false,
	AlwaysUseOpeningAttack = true,
	OpeningAttackType = "PinDown",
	PinnedDownChance = 100,
	MaxAttacks = 2,
	RewardExperience = 0,
	MaxHitPoints = 60,
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "BrianNPC",
		}),
	},
	Equipment = {
		"HyenaNPC",
	},
	gender = "Male",
}

