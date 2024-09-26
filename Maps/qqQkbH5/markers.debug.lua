{
	{
		Groups = {
			"ErnieLoot",
		},
		LootTableIds = {
			"Drop_12gauge_Buckshot",
		},
		handle = 59678720,
		map = "qqQkbH5",
		name = 'InventoryItemSpawn#720 "CONTAINER" (ErnieLoot)',
		path = "InventoryItemSpawn ",
		type = "InventoryItemSpawn",
	},
	{
		Groups = {
			"ErnieLoot",
		},
		LootTableIds = {
			"Drop_9mm_Basic",
		},
		handle = 434708480,
		map = "qqQkbH5",
		name = 'InventoryItemSpawn#480 "CONTAINER" (ErnieLoot)',
		path = "InventoryItemSpawn ",
		type = "InventoryItemSpawn",
	},
	{
		Groups = {
			"ErnieLoot",
		},
		LootTableIds = {
			"Drop_9mm_Basic",
		},
		handle = 745570304,
		map = "qqQkbH5",
		name = 'InventoryItemSpawn#304 "CONTAINER" (ErnieLoot)',
		path = "InventoryItemSpawn ",
		type = "InventoryItemSpawn",
	},
	{
		Groups = {
			"SantiagoMeet",
		},
		handle = 1016933516,
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
			{
				editor_view_abridged = "if Completed",
				filter_type = "quest",
				reference_id = "01_Landing",
				type = "QuestIsVariableBool",
				var = set( "Completed" ),
			},
		},
		map = "qqQkbH5",
		name = "UnitMarker#516 (SantiagoMeet)",
		path = "UnitMarker ",
		type = "UnitMarker",
	},
	{
		Groups = {
			"MERCNpcs",
		},
		handle = 1109704454,
		items = {
			{
				editor_view_abridged = "Start conversation.",
				filter_type = "conversation",
				reference_id = "GCExBarChat",
				type = "UnitStartConversation",
			},
		},
		map = "qqQkbH5",
		name = "UnitMarker#454 (MERCNpcs)",
		path = "UnitMarker ",
		type = "UnitMarker",
	},
	{
		Groups = {
			"MarthaBar",
		},
		handle = 1236894873,
		items = {},
		map = "qqQkbH5",
		name = "UnitMarker#873 (MarthaBar)",
		path = "UnitMarker ",
		type = "UnitMarker",
	},
	{
		Groups = {
			"North",
		},
		handle = 1280548680,
		items = {
			{
				editor_view_abridged = "if Completed",
				filter_type = "quest",
				reference_id = "GCEx_01_Landing",
				type = "QuestIsVariableBool",
				var = set( "Completed" ),
			},
			{
				editor_view_abridged = "if Completed",
				filter_type = "quest",
				reference_id = "GearUp",
				type = "QuestIsVariableBool",
				var = set( "Completed" ),
			},
		},
		map = "qqQkbH5",
		name = "ExitZoneInteractable#680 (North)",
		path = "ExitZoneInteractable ",
		type = "ExitZoneInteractable",
	},
	{
		Groups = {
			"MERCNpcs",
		},
		handle = 1336326262,
		items = {
			{
				editor_view_abridged = "Start conversation.",
				filter_type = "conversation",
				reference_id = "GCExBarChat",
				type = "UnitStartConversation",
			},
		},
		map = "qqQkbH5",
		name = "UnitMarker#262 (MERCNpcs)",
		path = "UnitMarker ",
		type = "UnitMarker",
	},
	{
		BanterTriggerEffects = {
			PlaceObj('PlayBanterEffect', {
				Banters = {
					"NewBanter_1",
				},
			}),
		},
		Groups = {
			"FloBanter",
		},
		handle = 1419355806,
		items = {
			{
				editor_view_abridged = "Play banter(s): NewBanter_1",
				filter_type = "banter",
				reference_id = "NewBanter_1",
				type = "PlayBanterEffect",
			},
		},
		map = "qqQkbH5",
		name = "Position#806 (FloBanter)",
		path = "Position ",
		type = "Position",
	},
	{
		BanterTriggerEffects = {
			PlaceObj('PlayBanterEffect', {
				Banters = {
					"Erny2",
				},
			}),
		},
		Groups = {
			"FlavourBanter",
		},
		handle = 1458534406,
		items = {
			{
				editor_view_abridged = "Play banter(s): Erny2",
				filter_type = "banter",
				reference_id = "Erny2",
				type = "PlayBanterEffect",
			},
		},
		map = "qqQkbH5",
		name = 'CustomInteractable#406 "Examine" (FlavourBanter)',
		path = "CustomInteractable ",
		type = "CustomInteractable",
	},
	{
		Groups = {
			"MERCNpcs",
		},
		handle = 1460227318,
		items = {
			{
				editor_view_abridged = "Start conversation.",
				filter_type = "conversation",
				reference_id = "GCExBarChat",
				type = "UnitStartConversation",
			},
		},
		map = "qqQkbH5",
		name = "UnitMarker#318 (MERCNpcs)",
		path = "UnitMarker ",
		type = "UnitMarker",
	},
	{
		Groups = {
			"BiffWait",
		},
		handle = 1465758111,
		items = {
			{
				editor_view_abridged = "if Completed",
				filter_type = "quest",
				reference_id = "GearUp",
				type = "QuestIsVariableBool",
				var = set( "Completed" ),
			},
			{
				editor_view_abridged = "if Given",
				filter_type = "quest",
				reference_id = "TropicalHeat",
				type = "QuestIsVariableBool",
				var = set( "Given" ),
			},
		},
		map = "qqQkbH5",
		name = "UnitMarker#111 (BiffWait)",
		path = "UnitMarker ",
		type = "UnitMarker",
	},
	{
		Groups = {
			"SantiagoMeet",
		},
		handle = 1472537697,
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
			{
				editor_view_abridged = "if Completed",
				filter_type = "quest",
				reference_id = "01_Landing",
				type = "QuestIsVariableBool",
				var = set( "Completed" ),
			},
			{
				editor_view_abridged = "Start conversation.",
				filter_type = "conversation",
				reference_id = "GCExBiff",
				type = "UnitStartConversation",
			},
		},
		map = "qqQkbH5",
		name = "UnitMarker#697 (SantiagoMeet)",
		path = "UnitMarker ",
		type = "UnitMarker",
	},
	{
		Groups = {
			"BiffWait",
		},
		handle = 1529900802,
		items = {
			{
				editor_view_abridged = "if Completed",
				filter_type = "quest",
				reference_id = "GearUp",
				type = "QuestIsVariableBool",
				var = set( "Completed" ),
			},
			{
				editor_view_abridged = "if Given",
				filter_type = "quest",
				reference_id = "TropicalHeat",
				type = "QuestIsVariableBool",
				var = set( "Given" ),
			},
		},
		map = "qqQkbH5",
		name = "UnitMarker#802 (BiffWait)",
		path = "UnitMarker ",
		type = "UnitMarker",
	},
	{
		Groups = {
			"SmileyFlirt",
		},
		handle = 1570716600,
		items = {},
		map = "qqQkbH5",
		name = "UnitMarker#600 (SmileyFlirt)",
		path = "UnitMarker ",
		type = "UnitMarker",
	},
	{
		BanterTriggerEffects = {
			PlaceObj('PlayBanterEffect', {
				Banters = {
					"Erny1",
				},
			}),
		},
		Groups = {
			"FlavourBanter",
		},
		handle = 1661106637,
		items = {
			{
				editor_view_abridged = "Play banter(s): Erny1",
				filter_type = "banter",
				reference_id = "Erny1",
				type = "PlayBanterEffect",
			},
		},
		map = "qqQkbH5",
		name = 'CustomInteractable#637 "Examine" (FlavourBanter)',
		path = "CustomInteractable ",
		type = "CustomInteractable",
	},
	{
		Groups = {
			"MERCNpcs",
		},
		handle = 1682564405,
		items = {
			{
				editor_view_abridged = "Start conversation.",
				filter_type = "conversation",
				reference_id = "GCExBarChat",
				type = "UnitStartConversation",
			},
		},
		map = "qqQkbH5",
		name = "UnitMarker#405 (MERCNpcs)",
		path = "UnitMarker ",
		type = "UnitMarker",
	},
	{
		Groups = {
			"MERCNpcs",
		},
		handle = 1721239780,
		items = {
			{
				editor_view_abridged = "Start conversation.",
				filter_type = "conversation",
				reference_id = "GCExBarChat",
				type = "UnitStartConversation",
			},
		},
		map = "qqQkbH5",
		name = "UnitMarker#780 (MERCNpcs)",
		path = "UnitMarker ",
		type = "UnitMarker",
	},
	{
		Groups = {
			"Ambient_Playfield",
		},
		handle = 1739308606,
		items = {
			{
				editor_view_abridged = "if not Completed",
				filter_type = "quest",
				reference_id = "GCEx_01_Landing",
				type = "QuestIsVariableBool",
				var = set({
	Completed = false,
}),
			},
		},
		map = "qqQkbH5",
		name = "AmbientZone#606 (Ambient_Playfield)",
		path = "AmbientZone ",
		type = "AmbientZone",
	},
	{
		Groups = {
			"MarthaBar",
		},
		handle = 1804719207,
		items = {
			{
				editor_view_abridged = "Start conversation.",
				filter_type = "conversation",
				reference_id = "GCExMartha",
				type = "UnitStartConversation",
			},
		},
		map = "qqQkbH5",
		name = "UnitMarker#207 (MarthaBar)",
		path = "UnitMarker ",
		type = "UnitMarker",
	},
	{
		Groups = {
			"BiffWait",
		},
		handle = 1838998970,
		items = {
			{
				editor_view_abridged = "if Completed",
				filter_type = "quest",
				reference_id = "GearUp",
				type = "QuestIsVariableBool",
				var = set( "Completed" ),
			},
			{
				editor_view_abridged = "if Given",
				filter_type = "quest",
				reference_id = "TropicalHeat",
				type = "QuestIsVariableBool",
				var = set( "Given" ),
			},
			{
				editor_view_abridged = "Start conversation.",
				filter_type = "conversation",
				reference_id = "GCExBiff",
				type = "UnitStartConversation",
			},
		},
		map = "qqQkbH5",
		name = "UnitMarker#970 (BiffWait)",
		path = "UnitMarker ",
		type = "UnitMarker",
	},
}