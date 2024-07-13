{
	{
		Groups = false,
		LootTableIds = {
			"FlagHill_Locked",
		},
		handle = 649125888,
		map = "I-1 - Flag Hill",
		name = 'InventoryItemSpawn#888 "CONTAINER"',
		path = "InventoryItemSpawn ",
		type = "InventoryItemSpawn",
	},
	{
		Groups = false,
		LootTableIds = {
			"FlagHill_Beach_Gun",
		},
		handle = 653246464,
		map = "I-1 - Flag Hill",
		name = 'InventoryItemSpawn#464 "Bag"',
		path = "InventoryItemSpawn ",
		type = "InventoryItemSpawn",
	},
	{
		Groups = false,
		handle = 891027456,
		items = {
			{
				editor_view_abridged = "if TriggerWorldFlip",
				filter_type = "quest",
				reference_id = "04_Betrayal",
				type = "QuestIsVariableBool",
				var = set( "TriggerWorldFlip" ),
			},
			{
				editor_view_abridged = "if TriggerWorldFlip",
				filter_type = "quest",
				reference_id = "04_Betrayal",
				type = "QuestIsVariableBool",
				var = set( "TriggerWorldFlip" ),
			},
		},
		map = "I-1 - Flag Hill",
		name = 'IntelInventoryItemSpawn#456 "CONTAINER"',
		path = "IntelInventoryItemSpawn ",
		type = "IntelInventoryItemSpawn",
	},
	{
		Groups = {
			"AmbushHouseSpawn",
		},
		handle = 1003461003,
		items = {
			{
				editor_view_abridged = "if TriggerWorldFlip",
				filter_type = "quest",
				reference_id = "04_Betrayal",
				type = "QuestIsVariableBool",
				var = set( "TriggerWorldFlip" ),
			},
		},
		map = "I-1 - Flag Hill",
		name = "Logic#003 (AmbushHouseSpawn)",
		path = "Logic ",
		type = "Logic",
	},
	{
		Groups = {
			"CorazonConvoTrigger",
		},
		handle = 1016381573,
		items = {
			{
				editor_view_abridged = "Start conversation.",
				filter_type = "conversation",
				reference_id = "FlagHill_Emma_1",
				type = "UnitStartConversation",
			},
		},
		map = "I-1 - Flag Hill",
		name = "Position#573 (CorazonConvoTrigger)",
		path = "Position ",
		type = "Position",
	},
	{
		Groups = false,
		handle = 1038154623,
		items = {
			{
				editor_view_abridged = "if not TriggerWorldFlip",
				filter_type = "quest",
				reference_id = "04_Betrayal",
				type = "QuestIsVariableBool",
				var = set({
	TriggerWorldFlip = false,
}),
			},
		},
		map = "I-1 - Flag Hill",
		name = "Defender#623",
		path = "Defender ",
		type = "Defender",
	},
	{
		Groups = false,
		handle = 1080876002,
		items = {
			{
				editor_view_abridged = "if WorldFlipDone",
				filter_type = "quest",
				reference_id = "04_Betrayal",
				type = "QuestIsVariableBool",
				var = set( "WorldFlipDone" ),
			},
			{
				editor_view_abridged = "if JoseKilledInFortress",
				filter_type = "quest",
				reference_id = "JoseFamily",
				type = "QuestIsVariableBool",
				var = set( "JoseKilledInFortress" ),
			},
		},
		map = "I-1 - Flag Hill",
		name = "UnitMarker#002",
		path = "UnitMarker ",
		type = "UnitMarker",
	},
	{
		BanterTriggerEffects = {
			PlaceObj('PlayBanterEffect', {
				Banters = {
					"FlagHill_Flag_EN",
				},
				banterSequentialWaitFor = "BanterStart",
				searchInMap = true,
				searchInMarker = false,
			}),
		},
		Groups = false,
		handle = 1091014574,
		items = {
			{
				editor_view_abridged = "Play banter(s): FlagHill_Flag_EN",
				filter_type = "banter",
				reference_id = "FlagHill_Flag_EN",
				type = "PlayBanterEffect",
			},
		},
		map = "I-1 - Flag Hill",
		name = 'CustomInteractable#574 FlagExamine "Examine"',
		path = "CustomInteractable FlagExamine",
		type = "CustomInteractable",
	},
	{
		ApproachedBanters = {
			"FlagHill_Goon_Male_00_InitialApproach",
		},
		BanterGroups = {
			"Banters_Local_Ernie",
		},
		Groups = {
			"Guards",
			"AdonisMale_1",
		},
		handle = 1140674771,
		items = {
			{
				editor_view_abridged = "if CorazonLeave",
				filter_type = "quest",
				reference_id = "05_TakeDownCorazon",
				type = "QuestIsVariableBool",
				var = set( "CorazonLeave" ),
			},
			{
				editor_view_abridged = "if WorldFlipDone",
				filter_type = "quest",
				reference_id = "04_Betrayal",
				type = "QuestIsVariableBool",
				var = set( "WorldFlipDone" ),
			},
		},
		map = "I-1 - Flag Hill",
		name = "UnitMarker#771 (Guards, AdonisMale_1)",
		path = "UnitMarker ",
		type = "UnitMarker",
	},
	{
		ApproachedBanters = {
			"FlagHill_Goon_Male_00_InitialApproach",
		},
		BanterGroups = {
			"Banters_Local_Ernie",
		},
		Groups = {
			"Guards",
			"AdonisMale_1",
		},
		handle = 1209835700,
		items = {
			{
				editor_view_abridged = "if CorazonLeave",
				filter_type = "quest",
				reference_id = "05_TakeDownCorazon",
				type = "QuestIsVariableBool",
				var = set( "CorazonLeave" ),
			},
			{
				editor_view_abridged = "if WorldFlipDone",
				filter_type = "quest",
				reference_id = "04_Betrayal",
				type = "QuestIsVariableBool",
				var = set( "WorldFlipDone" ),
			},
		},
		map = "I-1 - Flag Hill",
		name = "UnitMarker#700 (Guards, AdonisMale_1)",
		path = "UnitMarker ",
		type = "UnitMarker",
	},
	{
		Groups = {
			"Raiders",
			"AL_Raiders",
		},
		handle = 1221991466,
		items = {
			{
				editor_view_abridged = "if WorldFlipDone",
				filter_type = "quest",
				reference_id = "04_Betrayal",
				type = "QuestIsVariableBool",
				var = set( "WorldFlipDone" ),
			},
		},
		map = "I-1 - Flag Hill",
		name = "UnitMarker#466 (Raiders, AL_Raiders)",
		path = "UnitMarker ",
		type = "UnitMarker",
	},
	{
		Groups = {
			"Adonis",
			"AmbushWave2",
		},
		handle = 1222743772,
		items = {
			{
				editor_view_abridged = "if AdonisAmbushFlagHill and WorldFlipDone",
				filter_type = "quest",
				reference_id = "04_Betrayal",
				type = "QuestIsVariableBool",
				var = set( "AdonisAmbushFlagHill", "WorldFlipDone" ),
			},
		},
		map = "I-1 - Flag Hill",
		name = "UnitMarker#772 (Adonis, AmbushWave2)",
		path = "UnitMarker ",
		type = "UnitMarker",
	},
	{
		Groups = {
			"EmmaAndCorazon",
			"AL_Emma",
		},
		handle = 1252314335,
		items = {
			{
				editor_view_abridged = "if TCE_WorldFlipDone == done",
				filter_type = "quest",
				reference_id = "04_Betrayal",
				type = "QuestIsTCEState",
				var = "TCE_WorldFlipDone",
			},
			{
				editor_view_abridged = "if Completed",
				filter_type = "quest",
				reference_id = "02_LiberateErnie",
				type = "QuestIsVariableBool",
				var = set( "Completed" ),
			},
		},
		map = "I-1 - Flag Hill",
		name = "UnitMarker#335 (EmmaAndCorazon, AL_Emma)",
		path = "UnitMarker ",
		type = "UnitMarker",
	},
	{
		Groups = {
			"Adonis",
			"AmbushWave",
		},
		handle = 1265024361,
		items = {
			{
				editor_view_abridged = "if AdonisAmbushFlagHill and WorldFlipDone",
				filter_type = "quest",
				reference_id = "04_Betrayal",
				type = "QuestIsVariableBool",
				var = set( "AdonisAmbushFlagHill", "WorldFlipDone" ),
			},
		},
		map = "I-1 - Flag Hill",
		name = "UnitMarker#361 (Adonis, AmbushWave)",
		path = "UnitMarker ",
		type = "UnitMarker",
	},
	{
		Groups = {
			"Adonis",
			"AmbushWave",
		},
		handle = 1305740265,
		items = {
			{
				editor_view_abridged = "if AdonisAmbushFlagHill and WorldFlipDone",
				filter_type = "quest",
				reference_id = "04_Betrayal",
				type = "QuestIsVariableBool",
				var = set( "AdonisAmbushFlagHill", "WorldFlipDone" ),
			},
		},
		map = "I-1 - Flag Hill",
		name = "UnitMarker#265 (Adonis, AmbushWave)",
		path = "UnitMarker ",
		type = "UnitMarker",
	},
	{
		Groups = {
			"Adonis",
			"HouseAmbushers",
		},
		handle = 1307098143,
		items = {
			{
				editor_view_abridged = "if TCE_WorldFlipDone",
				filter_type = "quest",
				reference_id = "04_Betrayal",
				type = "QuestIsTCEState",
				var = "TCE_WorldFlipDone",
			},
		},
		map = "I-1 - Flag Hill",
		name = "UnitMarker#143 (Adonis, HouseAmbushers)",
		path = "UnitMarker ",
		type = "UnitMarker",
	},
	{
		Groups = {
			"Jose_Shack",
		},
		handle = 1310142438,
		items = {
			{
				editor_view_abridged = "if Given",
				filter_type = "quest",
				reference_id = "JoseFamily",
				type = "QuestIsVariableBool",
				var = set( "Given" ),
			},
		},
		map = "I-1 - Flag Hill",
		name = 'InventoryItemSpawn#438 Jose_Shack "Bag" (Jose_Shack)',
		path = "InventoryItemSpawn Jose_Shack",
		type = "InventoryItemSpawn",
	},
	{
		Groups = {
			"WorldFlip_AmbushWave2_Alert",
		},
		handle = 1315484498,
		items = {
			{
				editor_view_abridged = "if TriggerWorldFlip",
				filter_type = "quest",
				reference_id = "04_Betrayal",
				type = "QuestIsVariableBool",
				var = set( "TriggerWorldFlip" ),
			},
		},
		map = "I-1 - Flag Hill",
		name = "Logic#498 (WorldFlip_AmbushWave2_Alert)",
		path = "Logic ",
		type = "Logic",
	},
	{
		Groups = {
			"Adonis",
			"HouseAmbushers",
		},
		handle = 1330757504,
		items = {
			{
				editor_view_abridged = "if TCE_WorldFlipDone",
				filter_type = "quest",
				reference_id = "04_Betrayal",
				type = "QuestIsTCEState",
				var = "TCE_WorldFlipDone",
			},
		},
		map = "I-1 - Flag Hill",
		name = "UnitMarker#504 (Adonis, HouseAmbushers)",
		path = "UnitMarker ",
		type = "UnitMarker",
	},
	{
		Groups = {
			"Adonis",
			"AmbushWave2",
		},
		handle = 1380696054,
		items = {
			{
				editor_view_abridged = "if AdonisAmbushFlagHill and WorldFlipDone",
				filter_type = "quest",
				reference_id = "04_Betrayal",
				type = "QuestIsVariableBool",
				var = set( "AdonisAmbushFlagHill", "WorldFlipDone" ),
			},
		},
		map = "I-1 - Flag Hill",
		name = "UnitMarker#054 (Adonis, AmbushWave2)",
		path = "UnitMarker ",
		type = "UnitMarker",
	},
	{
		Groups = {
			"Adonis",
			"AmbushWave2",
		},
		handle = 1386347849,
		items = {
			{
				editor_view_abridged = "if AdonisAmbushFlagHill and WorldFlipDone",
				filter_type = "quest",
				reference_id = "04_Betrayal",
				type = "QuestIsVariableBool",
				var = set( "AdonisAmbushFlagHill", "WorldFlipDone" ),
			},
		},
		map = "I-1 - Flag Hill",
		name = "UnitMarker#849 (Adonis, AmbushWave2)",
		path = "UnitMarker ",
		type = "UnitMarker",
	},
	{
		Groups = {
			"DeadBody",
		},
		LootTableIds = {
			"FlagHill_Body",
		},
		handle = 1399792420,
		map = "I-1 - Flag Hill",
		name = 'InventoryItemSpawn#420 "DEAD BODY" (DeadBody)',
		path = "InventoryItemSpawn ",
		type = "InventoryItemSpawn",
	},
	{
		Groups = false,
		LootTableIds = {
			"FlagHill_Beach",
		},
		handle = 1402302059,
		map = "I-1 - Flag Hill",
		name = 'InventoryItemSpawn#059 "Bag"',
		path = "InventoryItemSpawn ",
		type = "InventoryItemSpawn",
	},
	{
		Groups = {
			"GameIntro",
		},
		handle = 1404402433,
		items = {
			{
				editor_view_abridged = "if not Completed",
				filter_type = "quest",
				reference_id = "01_Landing",
				type = "QuestIsVariableBool",
				var = set({
	Completed = false,
}),
			},
		},
		map = "I-1 - Flag Hill",
		name = "Defender#433 Start (GameIntro)",
		path = "Defender Start",
		type = "Defender",
	},
	{
		ApproachedBanters = {
			"FlagHill_Goon_Male_05_LeaveApproach",
		},
		BanterGroups = {
			"Banters_Local_Ernie",
		},
		Groups = {
			"GuardsCorazonLeave",
			"Guards",
			"AdonisMale_1",
		},
		handle = 1408449441,
		items = {
			{
				editor_view_abridged = "if CorazonLeave",
				filter_type = "quest",
				reference_id = "05_TakeDownCorazon",
				type = "QuestIsVariableBool",
				var = set( "CorazonLeave" ),
			},
			{
				editor_view_abridged = "if WorldFlipDone",
				filter_type = "quest",
				reference_id = "04_Betrayal",
				type = "QuestIsVariableBool",
				var = set( "WorldFlipDone" ),
			},
		},
		map = "I-1 - Flag Hill",
		name = "UnitMarker#441 (GuardsCorazonLeave, Guards, AdonisMale_1)",
		path = "UnitMarker ",
		type = "UnitMarker",
	},
	{
		Groups = {
			"AdonisAmbush",
		},
		handle = 1434248417,
		items = {
			{
				editor_view_abridged = "if WorldFlipDone",
				filter_type = "quest",
				reference_id = "04_Betrayal",
				type = "QuestIsVariableBool",
				var = set( "WorldFlipDone" ),
			},
			{
				editor_view_abridged = "AdonisAmbushFlagHill = true",
				filter_type = "quest",
				reference_id = "04_Betrayal",
				type = "QuestSetVariableBool",
				var = "AdonisAmbushFlagHill",
			},
			{
				editor_view_abridged = "if TriggerWorldFlip",
				filter_type = "quest",
				reference_id = "04_Betrayal",
				type = "QuestIsVariableBool",
				var = set( "TriggerWorldFlip" ),
			},
		},
		map = "I-1 - Flag Hill",
		name = "Logic#417 (AdonisAmbush)",
		path = "Logic ",
		type = "Logic",
	},
	{
		Groups = {
			"Adonis",
			"AmbushWave",
		},
		handle = 1439026582,
		items = {
			{
				editor_view_abridged = "if AdonisAmbushFlagHill and WorldFlipDone",
				filter_type = "quest",
				reference_id = "04_Betrayal",
				type = "QuestIsVariableBool",
				var = set( "AdonisAmbushFlagHill", "WorldFlipDone" ),
			},
		},
		map = "I-1 - Flag Hill",
		name = "UnitMarker#582 (Adonis, AmbushWave)",
		path = "UnitMarker ",
		type = "UnitMarker",
	},
	{
		Groups = {
			"EmmaAndCorazon",
			"AL_Corazon",
		},
		handle = 1460822802,
		items = {
			{
				editor_view_abridged = "if CorazonLeave",
				filter_type = "quest",
				reference_id = "05_TakeDownCorazon",
				type = "QuestIsVariableBool",
				var = set( "CorazonLeave" ),
			},
			{
				editor_view_abridged = "if WorldFlipDone",
				filter_type = "quest",
				reference_id = "04_Betrayal",
				type = "QuestIsVariableBool",
				var = set( "WorldFlipDone" ),
			},
		},
		map = "I-1 - Flag Hill",
		name = "UnitMarker#802 (EmmaAndCorazon, AL_Corazon)",
		path = "UnitMarker ",
		type = "UnitMarker",
	},
	{
		Groups = {
			"Adonis",
			"HouseAmbushers",
		},
		handle = 1474410152,
		items = {
			{
				editor_view_abridged = "if TCE_WorldFlipDone",
				filter_type = "quest",
				reference_id = "04_Betrayal",
				type = "QuestIsTCEState",
				var = "TCE_WorldFlipDone",
			},
		},
		map = "I-1 - Flag Hill",
		name = "UnitMarker#152 (Adonis, HouseAmbushers)",
		path = "UnitMarker ",
		type = "UnitMarker",
	},
	{
		Groups = {
			"DeadBody",
		},
		LootTableIds = {
			"FlagHill_Body_Armor",
		},
		handle = 1491400324,
		map = "I-1 - Flag Hill",
		name = 'InventoryItemSpawn#324 "DEAD BODY" (DeadBody)',
		path = "InventoryItemSpawn ",
		type = "InventoryItemSpawn",
	},
	{
		Groups = {
			"Raiders",
			"AL_Raiders",
		},
		handle = 1502237551,
		items = {
			{
				editor_view_abridged = "if WorldFlipDone",
				filter_type = "quest",
				reference_id = "04_Betrayal",
				type = "QuestIsVariableBool",
				var = set( "WorldFlipDone" ),
			},
		},
		map = "I-1 - Flag Hill",
		name = "UnitMarker#551 (Raiders, AL_Raiders)",
		path = "UnitMarker ",
		type = "UnitMarker",
	},
	{
		Groups = {
			"South",
		},
		handle = 1519745362,
		items = {
			{
				editor_view_abridged = "if Completed",
				filter_type = "quest",
				reference_id = "01_Landing",
				type = "QuestIsVariableBool",
				var = set( "Completed" ),
			},
		},
		map = "I-1 - Flag Hill",
		name = "Entrance#362 (South)",
		path = "Entrance ",
		type = "Entrance",
	},
	{
		ApproachedBanters = {
			"FlagHill_Goon_Male_05_LeaveApproach",
		},
		BanterGroups = {
			"Banters_Local_Ernie",
		},
		Groups = {
			"GuardsCorazonLeave",
			"Guards",
			"AdonisMale_1",
		},
		handle = 1539399821,
		items = {
			{
				editor_view_abridged = "if CorazonLeave",
				filter_type = "quest",
				reference_id = "05_TakeDownCorazon",
				type = "QuestIsVariableBool",
				var = set( "CorazonLeave" ),
			},
			{
				editor_view_abridged = "if WorldFlipDone",
				filter_type = "quest",
				reference_id = "04_Betrayal",
				type = "QuestIsVariableBool",
				var = set( "WorldFlipDone" ),
			},
		},
		map = "I-1 - Flag Hill",
		name = "UnitMarker#821 (GuardsCorazonLeave, Guards, AdonisMale_1)",
		path = "UnitMarker ",
		type = "UnitMarker",
	},
	{
		ApproachedBanters = {
			"FlagHill_Goon_Male_05_LeaveApproach",
		},
		BanterGroups = {
			"Banters_Local_Ernie",
		},
		Groups = {
			"GuardsCorazonLeave",
			"Guards",
			"AdonisMale_1",
		},
		handle = 1559630722,
		items = {
			{
				editor_view_abridged = "if CorazonLeave",
				filter_type = "quest",
				reference_id = "05_TakeDownCorazon",
				type = "QuestIsVariableBool",
				var = set( "CorazonLeave" ),
			},
			{
				editor_view_abridged = "if WorldFlipDone",
				filter_type = "quest",
				reference_id = "04_Betrayal",
				type = "QuestIsVariableBool",
				var = set( "WorldFlipDone" ),
			},
		},
		map = "I-1 - Flag Hill",
		name = "UnitMarker#722 (GuardsCorazonLeave, Guards, AdonisMale_1)",
		path = "UnitMarker ",
		type = "UnitMarker",
	},
	{
		Groups = false,
		handle = 1599858904,
		items = {
			{
				editor_view_abridged = "if FlagChanged",
				filter_type = "quest",
				reference_id = "LegionFlag",
				type = "QuestIsVariableBool",
				var = set( "FlagChanged" ),
			},
		},
		map = "I-1 - Flag Hill",
		name = "InventoryItemSpawn#904 spawnLegionFlag",
		path = "InventoryItemSpawn spawnLegionFlag",
		type = "InventoryItemSpawn",
	},
	{
		ApproachedBanters = {
			"FlagHill_Goon_Male_00_InitialApproach",
		},
		BanterGroups = {
			"Banters_Local_Ernie",
		},
		Groups = {
			"Guards",
			"AdonisMale_1",
		},
		handle = 1666316631,
		items = {
			{
				editor_view_abridged = "if CorazonLeave",
				filter_type = "quest",
				reference_id = "05_TakeDownCorazon",
				type = "QuestIsVariableBool",
				var = set( "CorazonLeave" ),
			},
			{
				editor_view_abridged = "if WorldFlipDone",
				filter_type = "quest",
				reference_id = "04_Betrayal",
				type = "QuestIsVariableBool",
				var = set( "WorldFlipDone" ),
			},
		},
		map = "I-1 - Flag Hill",
		name = "UnitMarker#631 (Guards, AdonisMale_1)",
		path = "UnitMarker ",
		type = "UnitMarker",
	},
	{
		Groups = {
			"Raiders",
			"AL_Raiders",
		},
		handle = 1723858106,
		items = {
			{
				editor_view_abridged = "if WorldFlipDone",
				filter_type = "quest",
				reference_id = "04_Betrayal",
				type = "QuestIsVariableBool",
				var = set( "WorldFlipDone" ),
			},
		},
		map = "I-1 - Flag Hill",
		name = "UnitMarker#106 (Raiders, AL_Raiders)",
		path = "UnitMarker ",
		type = "UnitMarker",
	},
	{
		Groups = {
			"South",
		},
		handle = 1727780384,
		items = {
			{
				editor_view_abridged = "if Completed",
				filter_type = "quest",
				reference_id = "01_Landing",
				type = "QuestIsVariableBool",
				var = set( "Completed" ),
			},
		},
		map = "I-1 - Flag Hill",
		name = "ExitZoneInteractable#384 (South)",
		path = "ExitZoneInteractable ",
		type = "ExitZoneInteractable",
	},
	{
		Groups = {
			"Adonis",
			"AmbushWave2",
		},
		handle = 1738142861,
		items = {
			{
				editor_view_abridged = "if AdonisAmbushFlagHill and WorldFlipDone",
				filter_type = "quest",
				reference_id = "04_Betrayal",
				type = "QuestIsVariableBool",
				var = set( "AdonisAmbushFlagHill", "WorldFlipDone" ),
			},
		},
		map = "I-1 - Flag Hill",
		name = "UnitMarker#861 (Adonis, AmbushWave2)",
		path = "UnitMarker ",
		type = "UnitMarker",
	},
	{
		Groups = false,
		handle = 1750901963,
		items = {
			{
				editor_view_abridged = "if FlagChanged",
				filter_type = "quest",
				reference_id = "LegionFlag",
				type = "QuestIsVariableBool",
				var = set( "FlagChanged" ),
			},
		},
		map = "I-1 - Flag Hill",
		name = "InventoryItemSpawn#963 despawnFrenchFlag",
		path = "InventoryItemSpawn despawnFrenchFlag",
		type = "InventoryItemSpawn",
	},
	{
		Groups = {
			"Adonis",
			"AmbushWave",
		},
		handle = 1756350796,
		items = {
			{
				editor_view_abridged = "if AdonisAmbushFlagHill and WorldFlipDone",
				filter_type = "quest",
				reference_id = "04_Betrayal",
				type = "QuestIsVariableBool",
				var = set( "AdonisAmbushFlagHill", "WorldFlipDone" ),
			},
		},
		map = "I-1 - Flag Hill",
		name = "UnitMarker#796 (Adonis, AmbushWave)",
		path = "UnitMarker ",
		type = "UnitMarker",
	},
	{
		Groups = {
			"WelcomingBarrage",
		},
		handle = 1760441469,
		items = {
			{
				editor_view_abridged = "if TriggerWorldFlip",
				filter_type = "quest",
				reference_id = "04_Betrayal",
				type = "QuestIsVariableBool",
				var = set( "TriggerWorldFlip" ),
			},
		},
		map = "I-1 - Flag Hill",
		name = "Logic#469 (WelcomingBarrage)",
		path = "Logic ",
		type = "Logic",
	},
	{
		Groups = false,
		LootTableIds = {
			"FlagHill_Case",
		},
		handle = 1767391579,
		map = "I-1 - Flag Hill",
		name = 'InventoryItemSpawn#579 "Bag"',
		path = "InventoryItemSpawn ",
		type = "InventoryItemSpawn",
	},
	{
		Groups = {
			"Adonis",
			"HouseAmbushers",
		},
		handle = 1772286645,
		items = {
			{
				editor_view_abridged = "if TCE_WorldFlipDone",
				filter_type = "quest",
				reference_id = "04_Betrayal",
				type = "QuestIsTCEState",
				var = "TCE_WorldFlipDone",
			},
		},
		map = "I-1 - Flag Hill",
		name = "UnitMarker#645 (Adonis, HouseAmbushers)",
		path = "UnitMarker ",
		type = "UnitMarker",
	},
	{
		Groups = {
			"DeadBody",
		},
		LootTableIds = {
			"FlagHill_Body",
		},
		handle = 1784587079,
		map = "I-1 - Flag Hill",
		name = 'InventoryItemSpawn#079 "DEAD BODY" (DeadBody)',
		path = "InventoryItemSpawn ",
		type = "InventoryItemSpawn",
	},
	{
		BanterTriggerEffects = {
			PlaceObj('PlayBanterEffect', {
				Banters = {
					"12Chairs_InteractNecklaceFound",
				},
			}),
			PlaceObj('PlayBanterEffect', {
				Banters = {
					"12Chairs_InteractQuestGiven",
				},
				banterSequentialWaitFor = "BanterStart",
			}),
			PlaceObj('PlayBanterEffect', {
				Banters = {
					"12Chairs_InteractQuestNotGiven",
				},
				banterSequentialWaitFor = "BanterLineStart",
				searchInMap = true,
				searchInMarker = false,
			}),
		},
		Groups = {
			"12Chairs_ChairMarker",
		},
		handle = 1800364174,
		items = {
			{
				editor_view_abridged = "NearChair = true",
				filter_type = "quest",
				reference_id = "TheTwelveChairs",
				type = "QuestSetVariableBool",
				var = "NearChair",
			},
			{
				editor_view_abridged = "NearChair = false",
				filter_type = "quest",
				reference_id = "TheTwelveChairs",
				type = "QuestSetVariableBool",
				var = "NearChair",
			},
			{
				editor_view_abridged = "if not ChairPicked and not Completed and not FoundNecklace",
				filter_type = "quest",
				reference_id = "TheTwelveChairs",
				type = "QuestIsVariableBool",
				var = {
					ChairPicked = false,
					Completed = false,
					FoundNecklace = false,
				},
			},
			{
				editor_view_abridged = "if NumberChairsFound(TheTwelveChairs) >= TargetChairs(TheTwelveChairs) ",
				filter_type = "quest",
				reference_id = "TheTwelveChairs",
				type = "QuestIsVariableNum",
				var = "NumberChairsFound",
				var2 = "TargetChairs",
			},
			{
				editor_view_abridged = "ChairPicked = true",
				filter_type = "quest",
				reference_id = "TheTwelveChairs",
				type = "QuestSetVariableBool",
				var = "ChairPicked",
			},
			{
				editor_view_abridged = "if Given",
				filter_type = "quest",
				reference_id = "TheTwelveChairs",
				type = "QuestIsVariableBool",
				var = set( "Given" ),
			},
			{
				editor_view_abridged = "Quest TheTwelveChairs:NumberChairsFound =  100% from (NumberChairsFound + 1)",
				filter_type = "quest",
				reference_id = "TheTwelveChairs",
				type = "QuestSetVariableNum",
				var = "NumberChairsFound",
			},
			{
				editor_view_abridged = "Play banter(s): 12Chairs_InteractNecklaceFound",
				filter_type = "banter",
				reference_id = "12Chairs_InteractNecklaceFound",
				type = "PlayBanterEffect",
			},
			{
				editor_view_abridged = "Play banter(s): 12Chairs_InteractQuestGiven",
				filter_type = "banter",
				reference_id = "12Chairs_InteractQuestGiven",
				type = "PlayBanterEffect",
			},
			{
				editor_view_abridged = "Play banter(s): 12Chairs_InteractQuestNotGiven",
				filter_type = "banter",
				reference_id = "12Chairs_InteractQuestNotGiven",
				type = "PlayBanterEffect",
			},
		},
		map = "I-1 - Flag Hill",
		name = 'CustomInteractable#174 "Examine" (12Chairs_ChairMarker)',
		path = "CustomInteractable ",
		type = "CustomInteractable",
	},
	{
		Groups = {
			"PostWorldFlip",
		},
		handle = 1827340444,
		items = {
			{
				editor_view_abridged = "if TriggerWorldFlip",
				filter_type = "quest",
				reference_id = "04_Betrayal",
				type = "QuestIsVariableBool",
				var = set( "TriggerWorldFlip" ),
			},
		},
		map = "I-1 - Flag Hill",
		name = "Defender#444 (PostWorldFlip)",
		path = "Defender ",
		type = "Defender",
	},
	{
		Groups = {
			"Adonis",
			"AmbushWave2",
		},
		handle = 1839121000,
		items = {
			{
				editor_view_abridged = "if AdonisAmbushFlagHill and WorldFlipDone",
				filter_type = "quest",
				reference_id = "04_Betrayal",
				type = "QuestIsVariableBool",
				var = set( "AdonisAmbushFlagHill", "WorldFlipDone" ),
			},
		},
		map = "I-1 - Flag Hill",
		name = "UnitMarker#000 (Adonis, AmbushWave2)",
		path = "UnitMarker ",
		type = "UnitMarker",
	},
	{
		Groups = {
			"DeadBody",
		},
		LootTableIds = {
			"FlagHill_Body",
		},
		handle = 1840564509,
		map = "I-1 - Flag Hill",
		name = 'InventoryItemSpawn#509 "DEAD SOLDIER" (DeadBody)',
		path = "InventoryItemSpawn ",
		type = "InventoryItemSpawn",
	},
	{
		ApproachedBanters = {
			"FlagHill_Goon_Male_05_LeaveApproach",
		},
		BanterGroups = {
			"Banters_Local_Ernie",
		},
		Groups = {
			"GuardsCorazonLeave",
			"Guards",
			"AdonisMale_1",
		},
		handle = 1872586423,
		items = {
			{
				editor_view_abridged = "if CorazonLeave",
				filter_type = "quest",
				reference_id = "05_TakeDownCorazon",
				type = "QuestIsVariableBool",
				var = set( "CorazonLeave" ),
			},
			{
				editor_view_abridged = "if WorldFlipDone",
				filter_type = "quest",
				reference_id = "04_Betrayal",
				type = "QuestIsVariableBool",
				var = set( "WorldFlipDone" ),
			},
		},
		map = "I-1 - Flag Hill",
		name = "UnitMarker#423 (GuardsCorazonLeave, Guards, AdonisMale_1)",
		path = "UnitMarker ",
		type = "UnitMarker",
	},
	{
		Groups = {
			"LegionFlag_Interactable",
		},
		handle = 1878814559,
		items = {
			{
				editor_view_abridged = "if Given",
				filter_type = "quest",
				reference_id = "LegionFlag",
				type = "QuestIsVariableBool",
				var = set( "Given" ),
			},
			{
				editor_view_abridged = "FlagChanged = true",
				filter_type = "quest",
				reference_id = "LegionFlag",
				type = "QuestSetVariableBool",
				var = "FlagChanged",
			},
		},
		map = "I-1 - Flag Hill",
		name = 'CustomInteractable#559 ChangeFlag "Change Flag" (LegionFlag_Interactable)',
		path = "CustomInteractable ChangeFlag",
		type = "CustomInteractable",
	},
	{
		Groups = {
			"Adonis",
			"AmbushWave",
		},
		handle = 1892899160,
		items = {
			{
				editor_view_abridged = "if AdonisAmbushFlagHill and WorldFlipDone",
				filter_type = "quest",
				reference_id = "04_Betrayal",
				type = "QuestIsVariableBool",
				var = set( "AdonisAmbushFlagHill", "WorldFlipDone" ),
			},
		},
		map = "I-1 - Flag Hill",
		name = "UnitMarker#160 (Adonis, AmbushWave)",
		path = "UnitMarker ",
		type = "UnitMarker",
	},
}