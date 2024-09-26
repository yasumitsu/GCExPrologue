{
	{
		Groups = false,
		LootTableIds = {
			"SmallContainer",
		},
		handle = 37511168,
		map = "H-9 - FleaMarket",
		name = 'InventoryItemSpawn#168 "Box"',
		path = "InventoryItemSpawn ",
		type = "InventoryItemSpawn",
	},
	{
		Groups = false,
		LootTableIds = {
			"LargeContainer",
		},
		handle = 608567296,
		map = "H-9 - FleaMarket",
		name = 'InventoryItemSpawn#296 "Fridge"',
		path = "InventoryItemSpawn ",
		type = "InventoryItemSpawn",
	},
	{
		Groups = false,
		LootTableIds = {
			"SmallContainer",
		},
		handle = 913063936,
		map = "H-9 - FleaMarket",
		name = 'InventoryItemSpawn#936 "CHEST"',
		path = "InventoryItemSpawn ",
		type = "InventoryItemSpawn",
	},
	{
		Groups = false,
		LootTableIds = {
			"LargeContainer",
		},
		handle = 960544768,
		map = "H-9 - FleaMarket",
		name = 'InventoryItemSpawn#768 "Shelf"',
		path = "InventoryItemSpawn ",
		type = "InventoryItemSpawn",
	},
	{
		BanterGroups = {
			"Banters_Civilians",
			"Banters_Local_Fleatown",
		},
		Groups = {
			"BossThugs",
		},
		handle = 1034930254,
		items = {},
		map = "H-9 - FleaMarket",
		name = "UnitMarker#254 (BossThugs)",
		path = "UnitMarker ",
		type = "UnitMarker",
	},
	{
		BanterGroups = {
			"Banters_Civilians",
			"Banters_Local_Fleatown",
		},
		Groups = {
			"BossThugs",
		},
		handle = 1037947684,
		items = {},
		map = "H-9 - FleaMarket",
		name = "UnitMarker#684 (BossThugs)",
		path = "UnitMarker ",
		type = "UnitMarker",
	},
	{
		BanterTriggerEffects = {
			PlaceObj('PlayBanterEffect', {
				Banters = {
					"Stall_Magazine",
				},
				banterSequentialWaitFor = "BanterStart",
				searchInMap = true,
				searchInMarker = false,
			}),
		},
		Groups = false,
		handle = 1042020611,
		items = {
			{
				editor_view_abridged = "Play banter(s): Stall_Magazine",
				filter_type = "banter",
				reference_id = "Stall_Magazine",
				type = "PlayBanterEffect",
			},
		},
		map = "H-9 - FleaMarket",
		name = 'CustomInteractable#611 "Examine"',
		path = "CustomInteractable ",
		type = "CustomInteractable",
	},
	{
		BanterGroups = {
			"Banters_Civilians",
			"Banters_Local_Fleatown",
		},
		Groups = false,
		handle = 1082119592,
		map = "H-9 - FleaMarket",
		name = "AmbientZone#592",
		path = "AmbientZone ",
		type = "AmbientZone",
	},
	{
		ApproachedBanters = {
			"Vendor_Weapons_1",
			"Vendor_Weapons_2",
			"Vendor_Weapons_3",
			"Vendor_Weapons_4",
		},
		BanterGroups = {
			"Banters_Vendors",
		},
		Groups = {
			"WeaponsVendor",
		},
		handle = 1093877822,
		items = {},
		map = "H-9 - FleaMarket",
		name = "UnitMarker#822 (WeaponsVendor)",
		path = "UnitMarker ",
		type = "UnitMarker",
	},
	{
		Groups = false,
		LootTableIds = {
			"SmallContainer",
		},
		handle = 1120382007,
		map = "H-9 - FleaMarket",
		name = 'InventoryItemSpawn#007 "CHEST"',
		path = "InventoryItemSpawn ",
		type = "InventoryItemSpawn",
	},
	{
		BanterGroups = {
			"Banters_Civilians",
			"Banters_Local_Fleatown",
		},
		Groups = false,
		handle = 1126655630,
		items = {},
		map = "H-9 - FleaMarket",
		name = "UnitMarker#630",
		path = "UnitMarker ",
		type = "UnitMarker",
	},
	{
		BanterTriggerEffects = {
			PlaceObj('PlayBanterEffect', {
				Banters = {
					"Stall_HiPower",
				},
				banterSequentialWaitFor = "BanterStart",
				searchInMap = true,
				searchInMarker = false,
			}),
		},
		Groups = false,
		handle = 1160910314,
		items = {
			{
				editor_view_abridged = "Play banter(s): Stall_HiPower",
				filter_type = "banter",
				reference_id = "Stall_HiPower",
				type = "PlayBanterEffect",
			},
		},
		map = "H-9 - FleaMarket",
		name = 'CustomInteractable#314 "Examine"',
		path = "CustomInteractable ",
		type = "CustomInteractable",
	},
	{
		BanterGroups = {
			"Banters_Civilians",
			"Banters_Local_Fleatown",
		},
		Groups = {
			"AL_QueueLocation",
		},
		handle = 1177456039,
		map = "H-9 - FleaMarket",
		name = "AmbientZone#039 (AL_QueueLocation)",
		path = "AmbientZone ",
		type = "AmbientZone",
	},
	{
		BanterTriggerEffects = {
			PlaceObj('BanterHasPlayed', {
				Banters = {
					"Stall_Meds",
				},
			}),
		},
		Groups = false,
		handle = 1235917918,
		items = {
			{
				editor_view_abridged = "if Vendor_GeneralOneDay_01_CD:VendorTracker has passed.",
				filter_type = "quest",
				reference_id = "VendorTracker",
				type = "QuestHasTimerPassed",
			},
			{
				editor_view_abridged = "Set quest timer in VendorTracker:Vendor_GeneralOneDay_01_CD for after 24 h",
				filter_type = "quest",
				reference_id = "VendorTracker",
				type = "QuestSetVariableTimer",
				var = "Vendor_GeneralOneDay_01_CD",
			},
			{
				editor_view_abridged = "If any of banter(s) played: Stall_Meds",
				filter_type = "banter",
				reference_id = "Stall_Meds",
				type = "BanterHasPlayed",
			},
		},
		map = "H-9 - FleaMarket",
		name = 'CustomInteractable#918 Stall_Meds "Buy Med Kit for $750"',
		path = "CustomInteractable Stall_Meds",
		type = "CustomInteractable",
	},
	{
		ApproachedBanters = {
			"Vendor_General_Approach",
		},
		BanterGroups = {
			"Banters_Vendors",
		},
		Groups = {
			"MedsSeller",
		},
		handle = 1238040892,
		items = {},
		map = "H-9 - FleaMarket",
		name = "UnitMarker#892 (MedsSeller)",
		path = "UnitMarker ",
		type = "UnitMarker",
	},
	{
		BanterTriggerEffects = {
			PlaceObj('PlayBanterEffect', {
				Banters = {
					"Stall_Scrap",
				},
				banterSequentialWaitFor = "BanterStart",
				searchInMap = true,
				searchInMarker = false,
			}),
		},
		Groups = false,
		handle = 1254737022,
		items = {
			{
				editor_view_abridged = "Play banter(s): Stall_Scrap",
				filter_type = "banter",
				reference_id = "Stall_Scrap",
				type = "PlayBanterEffect",
			},
		},
		map = "H-9 - FleaMarket",
		name = 'CustomInteractable#022 "Examine"',
		path = "CustomInteractable ",
		type = "CustomInteractable",
	},
	{
		BanterTriggerEffects = {
			PlaceObj('BanterHasPlayed', {
				Banters = {
					"BarrierCamp_GuardpostObjective_Poison",
				},
			}),
			PlaceObj('PlayBanterEffect', {
				Banters = {
					"BarrierCamp_GuardpostObjective_Poison_Success",
				},
				banterSequentialWaitFor = "BanterStart",
				searchInMap = true,
				searchInMarker = false,
			}),
			PlaceObj('PlayBanterEffect', {
				Banters = {
					"BarrierCamp_GuardpostObjective_Poison",
				},
				banterSequentialWaitFor = "BanterStart",
				searchInMap = true,
				searchInMarker = false,
			}),
		},
		Groups = false,
		handle = 1263075060,
		items = {
			{
				editor_view_abridged = "ShipmentPoisoned = true",
				filter_type = "quest",
				reference_id = "ReduceBarrierCampStrength",
				type = "QuestSetVariableBool",
				var = "ShipmentPoisoned",
			},
			{
				editor_view_abridged = "If any of banter(s) played: BarrierCamp_GuardpostObjective_Poison",
				filter_type = "banter",
				reference_id = "BarrierCamp_GuardpostObjective_Poison",
				type = "BanterHasPlayed",
			},
			{
				editor_view_abridged = "Play banter(s): BarrierCamp_GuardpostObjective_Poison_Success",
				filter_type = "banter",
				reference_id = "BarrierCamp_GuardpostObjective_Poison_Success",
				type = "PlayBanterEffect",
			},
			{
				editor_view_abridged = "Play banter(s): BarrierCamp_GuardpostObjective_Poison",
				filter_type = "banter",
				reference_id = "BarrierCamp_GuardpostObjective_Poison",
				type = "PlayBanterEffect",
			},
		},
		map = "H-9 - FleaMarket",
		name = 'CustomInteractable#060 "Examine"',
		path = "CustomInteractable ",
		type = "CustomInteractable",
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
		handle = 1267866788,
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
		map = "H-9 - FleaMarket",
		name = 'CustomInteractable#788 "Examine" (12Chairs_ChairMarker)',
		path = "CustomInteractable ",
		type = "CustomInteractable",
	},
	{
		BanterTriggerEffects = {
			PlaceObj('BanterHasPlayed', {
				Banters = {
					"Stall_Molotov",
				},
			}),
		},
		Groups = false,
		handle = 1280579203,
		items = {
			{
				editor_view_abridged = "if Vendor_Molotov_CD:VendorTracker has passed.",
				filter_type = "quest",
				reference_id = "VendorTracker",
				type = "QuestHasTimerPassed",
			},
			{
				editor_view_abridged = "Set quest timer in VendorTracker:Vendor_Molotov_CD for after 120 h",
				filter_type = "quest",
				reference_id = "VendorTracker",
				type = "QuestSetVariableTimer",
				var = "Vendor_Molotov_CD",
			},
			{
				editor_view_abridged = "If any of banter(s) played: Stall_Molotov",
				filter_type = "banter",
				reference_id = "Stall_Molotov",
				type = "BanterHasPlayed",
			},
		},
		map = "H-9 - FleaMarket",
		name = 'CustomInteractable#203 Stall_Molotov "Buy Molotov for $400"',
		path = "CustomInteractable Stall_Molotov",
		type = "CustomInteractable",
	},
	{
		ApproachedBanters = {
			"Vendor_Magazine_1",
			"Vendor_Magazine_2",
		},
		BanterGroups = {
			"Banters_Vendors",
		},
		Groups = {
			"MagazineVendor",
		},
		handle = 1289560707,
		items = {},
		map = "H-9 - FleaMarket",
		name = "UnitMarker#707 (MagazineVendor)",
		path = "UnitMarker ",
		type = "UnitMarker",
	},
	{
		BanterGroups = {
			"Banters_Civilians",
			"Banters_Local_Fleatown",
		},
		Groups = {
			"AL_Dock",
		},
		handle = 1302574739,
		map = "H-9 - FleaMarket",
		name = "AmbientZone#739 (AL_Dock)",
		path = "AmbientZone ",
		type = "AmbientZone",
	},
	{
		Groups = {
			"AbuserFlea_All",
		},
		handle = 1312646398,
		items = {
			{
				editor_view_abridged = "if BrothelAbusers",
				filter_type = "quest",
				reference_id = "PantagruelDramas",
				type = "QuestIsVariableBool",
				var = set( "BrothelAbusers" ),
			},
		},
		map = "H-9 - FleaMarket",
		name = "UnitMarker#398 (AbuserFlea_All)",
		path = "UnitMarker ",
		type = "UnitMarker",
	},
	{
		BanterTriggerEffects = {
			PlaceObj('PlayBanterEffect', {
				Banters = {
					"Stall_Knives",
				},
				banterSequentialWaitFor = "BanterStart",
				searchInMap = true,
				searchInMarker = false,
			}),
		},
		Groups = false,
		handle = 1323719671,
		items = {
			{
				editor_view_abridged = "Play banter(s): Stall_Knives",
				filter_type = "banter",
				reference_id = "Stall_Knives",
				type = "PlayBanterEffect",
			},
		},
		map = "H-9 - FleaMarket",
		name = 'CustomInteractable#671 "Examine"',
		path = "CustomInteractable ",
		type = "CustomInteractable",
	},
	{
		Groups = {
			"AbuserFlea_All",
		},
		handle = 1343981354,
		items = {
			{
				editor_view_abridged = "if BrothelAbusers",
				filter_type = "quest",
				reference_id = "PantagruelDramas",
				type = "QuestIsVariableBool",
				var = set( "BrothelAbusers" ),
			},
		},
		map = "H-9 - FleaMarket",
		name = "UnitMarker#354 (AbuserFlea_All)",
		path = "UnitMarker ",
		type = "UnitMarker",
	},
	{
		ApproachedBanters = {
			"BrokerApproach",
			"BrokerEnemiesInSector",
		},
		Groups = false,
		handle = 1345950937,
		items = {},
		map = "H-9 - FleaMarket",
		name = "UnitMarker#937",
		path = "UnitMarker ",
		type = "UnitMarker",
	},
	{
		BanterTriggerEffects = {
			PlaceObj('BanterHasPlayed', {
				Banters = {
					"Stall_Magazine",
				},
			}),
		},
		Groups = false,
		handle = 1350351893,
		items = {
			{
				editor_view_abridged = "if Vendor_Magazine_CD:VendorTracker has passed.",
				filter_type = "quest",
				reference_id = "VendorTracker",
				type = "QuestHasTimerPassed",
			},
			{
				editor_view_abridged = "Set quest timer in VendorTracker:Vendor_Magazine_CD for after 120 h",
				filter_type = "quest",
				reference_id = "VendorTracker",
				type = "QuestSetVariableTimer",
				var = "Vendor_Magazine_CD",
			},
			{
				editor_view_abridged = "If any of banter(s) played: Stall_Magazine",
				filter_type = "banter",
				reference_id = "Stall_Magazine",
				type = "BanterHasPlayed",
			},
		},
		map = "H-9 - FleaMarket",
		name = 'CustomInteractable#893 Stall_Magazines "Buy a magazine for $1,000"',
		path = "CustomInteractable Stall_Magazines",
		type = "CustomInteractable",
	},
	{
		BanterTriggerEffects = {
			PlaceObj('PlayBanterEffect', {
				Banters = {
					"Stall_Molotov",
				},
				banterSequentialWaitFor = "BanterStart",
				searchInMap = true,
				searchInMarker = false,
			}),
		},
		Groups = false,
		handle = 1352092853,
		items = {
			{
				editor_view_abridged = "Play banter(s): Stall_Molotov",
				filter_type = "banter",
				reference_id = "Stall_Molotov",
				type = "PlayBanterEffect",
			},
		},
		map = "H-9 - FleaMarket",
		name = 'CustomInteractable#853 "Examine"',
		path = "CustomInteractable ",
		type = "CustomInteractable",
	},
	{
		ApproachedBanters = {
			"Vendor_Scrap_1",
			"Vendor_Scrap_2",
		},
		BanterGroups = {
			"Banters_Vendors",
		},
		Groups = {
			"ScrapCollector",
		},
		handle = 1368095024,
		items = {},
		map = "H-9 - FleaMarket",
		name = "UnitMarker#024 (ScrapCollector)",
		path = "UnitMarker ",
		type = "UnitMarker",
	},
	{
		BanterGroups = {
			"Banters_Civilians",
			"Banters_Local_Fleatown",
		},
		Groups = {
			"BossThugs",
		},
		handle = 1387922936,
		items = {},
		map = "H-9 - FleaMarket",
		name = "UnitMarker#936 (BossThugs)",
		path = "UnitMarker ",
		type = "UnitMarker",
	},
	{
		BanterGroups = {
			"Banters_Civilians",
			"Banters_Local_Fleatown",
		},
		Groups = {
			"AL_QueueLocation",
		},
		handle = 1417311868,
		map = "H-9 - FleaMarket",
		name = "AmbientZone#868 (AL_QueueLocation)",
		path = "AmbientZone ",
		type = "AmbientZone",
	},
	{
		ApproachedBanters = {
			"Fleatown_Foreman01_Approach",
		},
		BanterTriggerEffects = {
			PlaceObj('PlayBanterEffect', {
				Banters = {
					"Fleatown_Foreman03_HaveDiamondRed_HireSuccess",
				},
				banterSequentialWaitFor = "BanterStart",
				searchInMap = true,
				searchInMarker = false,
			}),
			PlaceObj('PlayBanterEffect', {
				Banters = {
					"Fleatown_Foreman04_HaveDiamondRed_HireFailure",
				},
				banterSequentialWaitFor = "BanterStart",
				searchInMap = true,
				searchInMarker = false,
			}),
		},
		Groups = {
			"ThugForeman",
		},
		SpecificBanters = {
			"Fleatown_Foreman02_NoDiamondRed",
			"Fleatown_Foreman05_HaveDiamondRed_LoyaltyLow",
			"Fleatown_Foreman06_HaveDiamondRed_LoyaltyHigh",
			"Fleatown_Foreman07_HaveDiamondRed_LoyaltyHigh",
		},
		handle = 1417728896,
		items = {
			{
				editor_view_abridged = "if not FleatownSyndicate",
				filter_type = "quest",
				reference_id = "CorazonCaptureMine",
				type = "QuestIsVariableBool",
				var = set({
	FleatownSyndicate = false,
}),
			},
			{
				editor_view_abridged = "FleatownSyndicate = true",
				filter_type = "quest",
				reference_id = "CorazonCaptureMine",
				type = "QuestSetVariableBool",
				var = "FleatownSyndicate",
			},
			{
				editor_view_abridged = "Play banter(s): Fleatown_Foreman03_HaveDiamondRed_HireSuccess",
				filter_type = "banter",
				reference_id = "Fleatown_Foreman03_HaveDiamondRed_HireSuccess",
				type = "PlayBanterEffect",
			},
			{
				editor_view_abridged = "Play banter(s): Fleatown_Foreman04_HaveDiamondRed_HireFailure",
				filter_type = "banter",
				reference_id = "Fleatown_Foreman04_HaveDiamondRed_HireFailure",
				type = "PlayBanterEffect",
			},
		},
		map = "H-9 - FleaMarket",
		name = "UnitMarker#896 (ThugForeman)",
		path = "UnitMarker ",
		type = "UnitMarker",
	},
	{
		Groups = {
			"AbuserFlea_All",
			"AbuserFlea_Main",
			"AbuserMain",
		},
		SpecificBanters = {
			"AbuserFleatown",
		},
		handle = 1448234516,
		items = {
			{
				editor_view_abridged = "if BrothelAbusers",
				filter_type = "quest",
				reference_id = "PantagruelDramas",
				type = "QuestIsVariableBool",
				var = set( "BrothelAbusers" ),
			},
		},
		map = "H-9 - FleaMarket",
		name = "UnitMarker#516 (AbuserFlea_All, AbuserFlea_Main, AbuserMain)",
		path = "UnitMarker ",
		type = "UnitMarker",
	},
	{
		BanterGroups = {
			"SharedOverheard_Civilians",
		},
		Groups = {
			"Overheard_Civilian",
		},
		handle = 1463969533,
		map = "H-9 - FleaMarket",
		name = "Position#533 (Overheard_Civilian)",
		path = "Position ",
		type = "Position",
	},
	{
		BanterTriggerEffects = {
			PlaceObj('PlayBanterEffect', {
				Banters = {
					"Stall_Ammo",
				},
				banterSequentialWaitFor = "BanterStart",
				searchInMap = true,
				searchInMarker = false,
			}),
		},
		Groups = false,
		handle = 1499272683,
		items = {
			{
				editor_view_abridged = "Play banter(s): Stall_Ammo",
				filter_type = "banter",
				reference_id = "Stall_Ammo",
				type = "PlayBanterEffect",
			},
		},
		map = "H-9 - FleaMarket",
		name = 'CustomInteractable#683 "Examine"',
		path = "CustomInteractable ",
		type = "CustomInteractable",
	},
	{
		BanterTriggerEffects = {
			PlaceObj('PlayBanterEffect', {
				Banters = {
					"Stall_Auto5",
				},
				banterSequentialWaitFor = "BanterStart",
				searchInMap = true,
				searchInMarker = false,
			}),
		},
		Groups = false,
		handle = 1502961563,
		items = {
			{
				editor_view_abridged = "Play banter(s): Stall_Auto5",
				filter_type = "banter",
				reference_id = "Stall_Auto5",
				type = "PlayBanterEffect",
			},
		},
		map = "H-9 - FleaMarket",
		name = 'CustomInteractable#563 "Examine"',
		path = "CustomInteractable ",
		type = "CustomInteractable",
	},
	{
		BanterGroups = {
			"SharedOverheard_Enemies",
		},
		Groups = {
			"Overheard_Enemies",
		},
		handle = 1505278014,
		map = "H-9 - FleaMarket",
		name = "Position#014 (Overheard_Enemies)",
		path = "Position ",
		type = "Position",
	},
	{
		BanterGroups = {
			"SharedOverheard_Enemies",
		},
		Groups = {
			"Overheard_Enemies",
		},
		handle = 1514598387,
		map = "H-9 - FleaMarket",
		name = "Position#387 (Overheard_Enemies)",
		path = "Position ",
		type = "Position",
	},
	{
		ApproachedBanters = {
			"Vendor_Ammo_1",
			"Vendor_Ammo_2",
		},
		BanterGroups = {
			"Banters_Vendors",
		},
		Groups = {
			"AmmoVendor",
		},
		handle = 1522959767,
		items = {},
		map = "H-9 - FleaMarket",
		name = "UnitMarker#767 (AmmoVendor)",
		path = "UnitMarker ",
		type = "UnitMarker",
	},
	{
		BanterTriggerEffects = {
			PlaceObj('PlayBanterEffect', {
				Banters = {
					"Stall_Uzi",
				},
				banterSequentialWaitFor = "BanterStart",
				searchInMap = true,
				searchInMarker = false,
			}),
		},
		Groups = false,
		handle = 1528779729,
		items = {
			{
				editor_view_abridged = "Play banter(s): Stall_Uzi",
				filter_type = "banter",
				reference_id = "Stall_Uzi",
				type = "PlayBanterEffect",
			},
		},
		map = "H-9 - FleaMarket",
		name = 'CustomInteractable#729 "Examine"',
		path = "CustomInteractable ",
		type = "CustomInteractable",
	},
	{
		BanterTriggerEffects = {
			PlaceObj('BanterHasPlayed', {
				Banters = {
					"Stall_Auto5",
				},
			}),
		},
		Groups = false,
		handle = 1553363679,
		items = {
			{
				editor_view_abridged = "if Vendor_Auto5_CD:VendorTracker has passed.",
				filter_type = "quest",
				reference_id = "VendorTracker",
				type = "QuestHasTimerPassed",
			},
			{
				editor_view_abridged = "Set quest timer in VendorTracker:Vendor_Auto5_CD for after 240 h",
				filter_type = "quest",
				reference_id = "VendorTracker",
				type = "QuestSetVariableTimer",
				var = "Vendor_Auto5_CD",
			},
			{
				editor_view_abridged = "If any of banter(s) played: Stall_Auto5",
				filter_type = "banter",
				reference_id = "Stall_Auto5",
				type = "BanterHasPlayed",
			},
		},
		map = "H-9 - FleaMarket",
		name = 'CustomInteractable#679 Stall_Auto5 "Buy modified Auto-5 for $3,000"',
		path = "CustomInteractable Stall_Auto5",
		type = "CustomInteractable",
	},
	{
		ApproachedBanters = {
			"Vendor_Knives_1",
			"Vendor_Knives_2",
		},
		BanterGroups = {
			"Banters_Vendors",
		},
		Groups = {
			"KnifeVendor",
		},
		handle = 1565385601,
		items = {},
		map = "H-9 - FleaMarket",
		name = "UnitMarker#601 (KnifeVendor)",
		path = "UnitMarker ",
		type = "UnitMarker",
	},
	{
		BanterGroups = {
			"SharedOverheard_Civilians",
		},
		Groups = {
			"Overheard_Civilian",
		},
		handle = 1617081613,
		map = "H-9 - FleaMarket",
		name = "Position#613 (Overheard_Civilian)",
		path = "Position ",
		type = "Position",
	},
	{
		Groups = false,
		LootTableIds = {
			"SmallContainer",
		},
		handle = 1650611577,
		map = "H-9 - FleaMarket",
		name = 'InventoryItemSpawn#577 "PILE"',
		path = "InventoryItemSpawn ",
		type = "InventoryItemSpawn",
	},
	{
		BanterTriggerEffects = {
			PlaceObj('BanterHasPlayed', {
				Banters = {
					"Stall_Knives",
				},
			}),
		},
		Groups = false,
		handle = 1651986640,
		items = {
			{
				editor_view_abridged = "if Vendor_Knives_CD:VendorTracker has passed.",
				filter_type = "quest",
				reference_id = "VendorTracker",
				type = "QuestHasTimerPassed",
			},
			{
				editor_view_abridged = "Set quest timer in VendorTracker:Vendor_Knives_CD for after 24 h",
				filter_type = "quest",
				reference_id = "VendorTracker",
				type = "QuestSetVariableTimer",
				var = "Vendor_Knives_CD",
			},
			{
				editor_view_abridged = "If any of banter(s) played: Stall_Knives",
				filter_type = "banter",
				reference_id = "Stall_Knives",
				type = "BanterHasPlayed",
			},
		},
		map = "H-9 - FleaMarket",
		name = 'CustomInteractable#640 Stall_Knives "Buy Knives for $500"',
		path = "CustomInteractable Stall_Knives",
		type = "CustomInteractable",
	},
	{
		ApproachedBanters = {
			"Vendor_Molotov_1",
			"Vendor_Molotov_2",
		},
		BanterGroups = {
			"Banters_Vendors",
		},
		Groups = {
			"MolotovVendor",
		},
		handle = 1652826039,
		items = {},
		map = "H-9 - FleaMarket",
		name = "UnitMarker#039 (MolotovVendor)",
		path = "UnitMarker ",
		type = "UnitMarker",
	},
	{
		Groups = {
			"AbuserFlea_All",
			"AbuserSidekick",
		},
		handle = 1669997221,
		items = {
			{
				editor_view_abridged = "if BrothelAbusers",
				filter_type = "quest",
				reference_id = "PantagruelDramas",
				type = "QuestIsVariableBool",
				var = set( "BrothelAbusers" ),
			},
		},
		map = "H-9 - FleaMarket",
		name = "UnitMarker#221 (AbuserFlea_All, AbuserSidekick)",
		path = "UnitMarker ",
		type = "UnitMarker",
	},
	{
		BanterTriggerEffects = {
			PlaceObj('BanterHasPlayed', {
				Banters = {
					"Stall_Uzi",
				},
			}),
		},
		Groups = false,
		handle = 1703824293,
		items = {
			{
				editor_view_abridged = "if Vendor_Uzi_CD:VendorTracker has passed.",
				filter_type = "quest",
				reference_id = "VendorTracker",
				type = "QuestHasTimerPassed",
			},
			{
				editor_view_abridged = "Set quest timer in VendorTracker:Vendor_Uzi_CD for after 240 h",
				filter_type = "quest",
				reference_id = "VendorTracker",
				type = "QuestSetVariableTimer",
				var = "Vendor_Uzi_CD",
			},
			{
				editor_view_abridged = "If any of banter(s) played: Stall_Uzi",
				filter_type = "banter",
				reference_id = "Stall_Uzi",
				type = "BanterHasPlayed",
			},
		},
		map = "H-9 - FleaMarket",
		name = 'CustomInteractable#293 Stall_Uzi "Buy modified MP5K for $3,000"',
		path = "CustomInteractable Stall_Uzi",
		type = "CustomInteractable",
	},
	{
		Groups = {
			"AbuserFlea_All",
		},
		handle = 1721596333,
		items = {
			{
				editor_view_abridged = "if BrothelAbusers",
				filter_type = "quest",
				reference_id = "PantagruelDramas",
				type = "QuestIsVariableBool",
				var = set( "BrothelAbusers" ),
			},
		},
		map = "H-9 - FleaMarket",
		name = "UnitMarker#333 (AbuserFlea_All)",
		path = "UnitMarker ",
		type = "UnitMarker",
	},
	{
		BanterGroups = {
			"Banters_Civilians",
			"Banters_Local_Fleatown",
		},
		Groups = {
			"AL_NorthShacks",
		},
		handle = 1773486353,
		map = "H-9 - FleaMarket",
		name = "AmbientZone#353 (AL_NorthShacks)",
		path = "AmbientZone ",
		type = "AmbientZone",
	},
	{
		ApproachedBanters = {
			"BarrierCamp_GuardpostObjective_PoisonWorker01",
		},
		BanterGroups = {
			"Banters_Civilians",
			"Banters_Local_Fleatown",
		},
		Groups = {
			"GuardpostDockworker",
		},
		handle = 1788477294,
		items = {},
		map = "H-9 - FleaMarket",
		name = "UnitMarker#294 (GuardpostDockworker)",
		path = "UnitMarker ",
		type = "UnitMarker",
	},
	{
		BanterTriggerEffects = {
			PlaceObj('BanterHasPlayed', {
				Banters = {
					"Stall_HiPower",
				},
			}),
		},
		Groups = false,
		handle = 1800218491,
		items = {
			{
				editor_view_abridged = "if Vendor_HiPower_CD:VendorTracker has passed.",
				filter_type = "quest",
				reference_id = "VendorTracker",
				type = "QuestHasTimerPassed",
			},
			{
				editor_view_abridged = "Set quest timer in VendorTracker:Vendor_HiPower_CD for after 240 h",
				filter_type = "quest",
				reference_id = "VendorTracker",
				type = "QuestSetVariableTimer",
				var = "Vendor_HiPower_CD",
			},
			{
				editor_view_abridged = "If any of banter(s) played: Stall_HiPower",
				filter_type = "banter",
				reference_id = "Stall_HiPower",
				type = "BanterHasPlayed",
			},
		},
		map = "H-9 - FleaMarket",
		name = 'CustomInteractable#491 Stall_HiPower "Buy modified Glock 18 for $1,500"',
		path = "CustomInteractable Stall_HiPower",
		type = "CustomInteractable",
	},
	{
		BanterGroups = {
			"Banters_Civilians",
			"Banters_Local_Fleatown",
		},
		Groups = {
			"BossThugs",
		},
		handle = 1838728504,
		items = {},
		map = "H-9 - FleaMarket",
		name = "UnitMarker#504 (BossThugs)",
		path = "UnitMarker ",
		type = "UnitMarker",
	},
	{
		BanterGroups = {
			"SharedOverheard_Civilians",
		},
		Groups = {
			"Overheard_Civilian",
		},
		handle = 1843437178,
		map = "H-9 - FleaMarket",
		name = "Position#178 (Overheard_Civilian)",
		path = "Position ",
		type = "Position",
	},
	{
		BanterTriggerEffects = {
			PlaceObj('BanterHasPlayed', {
				Banters = {
					"Stall_Ammo",
				},
			}),
		},
		Groups = false,
		handle = 1847918860,
		items = {
			{
				editor_view_abridged = "if Vendor_Ammo_CD:VendorTracker has passed.",
				filter_type = "quest",
				reference_id = "VendorTracker",
				type = "QuestHasTimerPassed",
			},
			{
				editor_view_abridged = "Set quest timer in VendorTracker:Vendor_Ammo_CD for after 24 h",
				filter_type = "quest",
				reference_id = "VendorTracker",
				type = "QuestSetVariableTimer",
				var = "Vendor_Ammo_CD",
			},
			{
				editor_view_abridged = "If any of banter(s) played: Stall_Ammo",
				filter_type = "banter",
				reference_id = "Stall_Ammo",
				type = "BanterHasPlayed",
			},
		},
		map = "H-9 - FleaMarket",
		name = 'CustomInteractable#860 Stall_AmmoBuckets "Buy 7.62 mm WP HP ammo for $150"',
		path = "CustomInteractable Stall_AmmoBuckets",
		type = "CustomInteractable",
	},
	{
		BanterTriggerEffects = {
			PlaceObj('BanterHasPlayed', {
				Banters = {
					"Stall_Scrap",
				},
			}),
		},
		Groups = false,
		handle = 1849862338,
		items = {
			{
				editor_view_abridged = "if Vendor_Parts_CD:VendorTracker has passed.",
				filter_type = "quest",
				reference_id = "VendorTracker",
				type = "QuestHasTimerPassed",
			},
			{
				editor_view_abridged = "Set quest timer in VendorTracker:Vendor_Parts_CD for after 24 h",
				filter_type = "quest",
				reference_id = "VendorTracker",
				type = "QuestSetVariableTimer",
				var = "Vendor_Parts_CD",
			},
			{
				editor_view_abridged = "If any of banter(s) played: Stall_Scrap",
				filter_type = "banter",
				reference_id = "Stall_Scrap",
				type = "BanterHasPlayed",
			},
		},
		map = "H-9 - FleaMarket",
		name = 'CustomInteractable#338 Stall_Parts "Sell 30 Parts for $500"',
		path = "CustomInteractable Stall_Parts",
		type = "CustomInteractable",
	},
	{
		BanterTriggerEffects = {
			PlaceObj('PlayBanterEffect', {
				Banters = {
					"Stall_Meds",
				},
				banterSequentialWaitFor = "BanterStart",
				searchInMap = true,
				searchInMarker = false,
			}),
		},
		Groups = false,
		handle = 1857385929,
		items = {
			{
				editor_view_abridged = "Play banter(s): Stall_Meds",
				filter_type = "banter",
				reference_id = "Stall_Meds",
				type = "PlayBanterEffect",
			},
		},
		map = "H-9 - FleaMarket",
		name = 'CustomInteractable#929 "Examine"',
		path = "CustomInteractable ",
		type = "CustomInteractable",
	},
}