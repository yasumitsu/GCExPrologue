UndefineClass('GCExZombie_M')
DefineClass.GCExZombie_M = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	NameColor = 4290132532,
	object_class = "UnitData",
	Health = 90,
	Agility = 95,
	Dexterity = 61,
	Strength = 97,
	Wisdom = 2,
	Leadership = 98,
	Marksmanship = 0,
	Mechanical = 0,
	Explosives = 0,
	Medical = 0,
	Portrait = "UI/EnemiesPortraits/InfectedMale01",
	BigPortrait = "UI/Enemies/LegionRaider",
	Name = T(693205787927, --[[ModItemUnitDataCompositeDef GCExZombie_M Name]] "Infected"),
	Randomization = true,
	Affiliation = "Beast",
	neutral_retaliate = true,
	archetype = "Brute",
	role = "Stormer",
	CanManEmplacements = false,
	PinnedDownChance = 100,
	MaxAttacks = 2,
	MaxHitPoints = 60,
	StartingPerks = {
		"Berserker",
		"ZombiePerk",
		"MinFreeMove",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Zombie2_M",
		}),
	},
	Equipment = {
		"Biolab_Infected_Equipment",
	},
	gender = "Male",
	infected = true,
}

