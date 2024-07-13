UndefineClass('GCExZombie_F')
DefineClass.GCExZombie_F = {
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
	Name = T(481219843237, --[[ModItemUnitDataCompositeDef GCExZombie_F Name]] "Infected"),
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
			'Preset', "Zombie1_F",
		}),
	},
	Equipment = {
		"Infected_Equipment",
	},
	gender = "Female",
	infected = true,
}

