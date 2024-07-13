{
	{
		Groups = false,
		LootTableIds = {
			"Village_SecretStash",
		},
		handle = 692584448,
		items = {
			{
				editor_view_abridged = "if TriggerWorldFlip",
				filter_type = "quest",
				reference_id = "04_Betrayal",
				type = "QuestIsVariableBool",
				var = set( "TriggerWorldFlip" ),
			},
		},
		map = "T4W3sML",
		name = 'IntelInventoryItemSpawn#448 "SECRET STASH"',
		path = "IntelInventoryItemSpawn ",
		type = "IntelInventoryItemSpawn",
	},
	{
		Groups = false,
		LootTableIds = {
			"LargeContainer",
		},
		handle = 767148032,
		map = "T4W3sML",
		name = 'InventoryItemSpawn#032 "CONTAINER"',
		path = "InventoryItemSpawn ",
		type = "InventoryItemSpawn",
	},
	{
		Groups = false,
		LootTableIds = {
			"Village_Frigde",
		},
		handle = 954998784,
		map = "T4W3sML",
		name = 'InventoryItemSpawn#784 "Bag"',
		path = "InventoryItemSpawn ",
		type = "InventoryItemSpawn",
	},
	{
		Groups = {
			"ZombieEvent",
		},
		handle = 1423745901,
		items = {
			{
				editor_view_abridged = "Start conversation.",
				filter_type = "conversation",
				reference_id = "SmurgeZombieEvent_1",
				type = "UnitStartConversation",
			},
		},
		map = "T4W3sML",
		name = "UnitMarker#901 (ZombieEvent)",
		path = "UnitMarker ",
		type = "UnitMarker",
	},
}