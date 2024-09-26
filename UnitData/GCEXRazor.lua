UndefineClass('GCExRazor')
DefineClass.GCExRazor = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	NameColor = 4282219161,
	object_class = "UnitData",
	Health = 73,
	Agility = 88,
	Dexterity = 91,
	Strength = 86,
	Wisdom = 53,
	Leadership = 4,
	Marksmanship = 50,
	Mechanical = 8,
	Explosives = 2,
	Medical = 12,
	Portrait = "Mod/GCExPrologue/Images/RazorPortrait",
	BigPortrait = "Mod/GCExPrologue/Images/Razor",
	Name = T(606315709304, --[[ModItemUnitDataCompositeDef GCExRazor Name]] 'Bill "Razor" Lamont'),
	Nick = T(593891680732, --[[ModItemUnitDataCompositeDef GCExRazor Nick]] "Razor"),
	AllCapsNick = T(889936330375, --[[ModItemUnitDataCompositeDef GCExRazor AllCapsNick]] "RAZOR"),
	Affiliation = "Other",
	Bio = T(124927936237, --[[ModItemUnitDataCompositeDef GCExRazor Bio]] "Razor's attention to detail and finesse with the blade saved him from being nicknamed \"The Butcher\". Ask him why he prefers a knife to a gun and every time he'll say \"so much noise, so little challenge!\" He takes pride in his ability to carve the alphabet -- or at least the vowels -- into his victims before they bleed to death.\n\nAdditional Info: Razor Lamont has occasionally been called certifiable. And he is indeed certified -- certified in killing!"),
	Nationality = "USA",
	Title = T(602866699222, --[[ModItemUnitDataCompositeDef GCExRazor Title]] "The Butcher"),
	snype_nick = T(702813232330, --[[ModItemUnitDataCompositeDef GCExRazor snype_nick]] "bill.lamont"),
	Refusals = {},
	Haggles = {},
	Mitigations = {},
	ExtraPartingWords = {},
	Offline = {},
	GreetingAndOffer = {},
	ConversationRestart = {},
	IdleLine = {},
	PartingWords = {},
	RehireIntro = {},
	RehireOutro = {},
	MedicalDeposit = "none",
	StartingSalary = 470,
	SalaryIncrease = 280,
	SalaryLv1 = 100,
	SalaryMaxLv = 4100,
	LegacyNotes = '"Razor\'s attention to detail and finesse with the blade saved him from being nicknamed "The Butcher". Ask him why he prefers a knife to a gun and every time he\'ll say "so much noise, so little challenge!" He takes pride in his ability to carve the alphabet -- or at least the vowels -- into his victims before they bleed to death.\n\nAdditional Info: Razor Lamont has occasionally been called certifiable. And he is indeed certified -- certified in killing!" - M.E.R.C. Dossier',
	StartingLevel = 2,
	immortal = true,
	MaxHitPoints = 82,
	Likes = {
		"GCEXHaywire",
		"Fidel",
	},
	StartingPerks = {
		"Psycho",
		"MartialArts",
		"Throwing",
		"BreachAndClear",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Razor-Appearance",
		}),
	},
	Specialization = "AllRounder",
	gender = "Male",
	blocked_spots = set( "Weaponls", "Weaponrs" ),
	PersistentSessionId = "GCEXRazor",
}

