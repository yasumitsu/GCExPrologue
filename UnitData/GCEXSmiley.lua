UndefineClass('GCExSmiley')
DefineClass.GCExSmiley = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	NameColor = 4282219161,
	object_class = "UnitData",
	Health = 82,
	Agility = 78,
	Dexterity = 56,
	Strength = 73,
	Wisdom = 55,
	Leadership = 54,
	Marksmanship = 77,
	Mechanical = 5,
	Explosives = 5,
	Medical = 36,
	Portrait = "UI/MercsPortraits/Smiley",
	BigPortrait = "UI/Mercs/Smiley",
	Name = T(146892548768, --[[ModItemUnitDataCompositeDef GCExSmiley Name]] 'Alejandro "Smiley" Diaz'),
	Nick = T(646379074328, --[[ModItemUnitDataCompositeDef GCExSmiley Nick]] "Smiley"),
	AllCapsNick = T(985437449047, --[[ModItemUnitDataCompositeDef GCExSmiley AllCapsNick]] "SMILEY"),
	Affiliation = "Other",
	HireStatus = "NotMet",
	Bio = T(601739530861, --[[ModItemUnitDataCompositeDef GCExSmiley Bio]] 'Alejandro "Smiley" Diaz came to Grand Chien as mercenary serving some unknown small group - which got totally obliterated by the Major a few weeks before your encounter with him. An Arulco native, he is eager to join up with you, as A.I.M. is held in great regard in the new order back at his home country.'),
	Nationality = "Arulco",
	Title = T(966721153892, --[[ModItemUnitDataCompositeDef GCExSmiley Title]] "Romeo in Combat Fatigues"),
	SalaryLv1 = 0,
	SalaryMaxLv = 0,
	StartingLevel = 2,
	immortal = true,
	CustomEquipGear = function (self, items)
		self:TryEquip(items, "Handheld A", "SubmachineGun")
		self:TryEquip(items, "Handheld B", "SniperRifle")
	end,
	MaxHitPoints = 85,
	LearnToLike = {
		"Kalyna",
		"Fox",
		"Buns",
	},
	StartingPerks = {
		"AutoWeapons",
		"Optimist",
		"RecklessAssault",
		"BeefedUp",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Smiley",
		}),
	},
	Equipment = {
		"Smiley",
	},
	AdditionalGroups = {},
	Specialization = "AllRounder",
	gender = "Male",
	PersistentSessionId = "GCEXSmiley",
	VoiceResponseId = "Smiley",
}

