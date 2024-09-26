{
	{
		Groups = {
			"MosesAll",
			"MosesBoss",
		},
		handle = 1113736207,
		items = {
			{
				editor_view_abridged = "if PaidToll or ThugsHostile",
				filter_type = "quest",
				reference_id = "FlagHillHostileTracker",
				type = "QuestIsVariableBool",
				var = set( "PaidToll", "ThugsHostile" ),
			},
			{
				editor_view_abridged = "if PaidToll and not ThugsHostile",
				filter_type = "quest",
				reference_id = "FlagHillHostileTracker",
				type = "QuestIsVariableBool",
				var = set({
	PaidToll = true,
	ThugsHostile = false,
}),
			},
			{
				editor_view_abridged = "Start conversation.",
				filter_type = "conversation",
				reference_id = "WeaponSale",
				type = "UnitStartConversation",
			},
		},
		map = "gfVhfD",
		name = "UnitMarker#207 (MosesAll, MosesBoss)",
		path = "UnitMarker ",
		type = "UnitMarker",
	},
	{
		BanterTriggerEffects = {
			PlaceObj('PlayBanterEffect', {
				Banters = {
					"Colonizer",
				},
			}),
		},
		Groups = {
			"ColonizerBanter",
		},
		handle = 1166170858,
		items = {
			{
				editor_view_abridged = "Play banter(s): Colonizer",
				filter_type = "banter",
				reference_id = "Colonizer",
				type = "PlayBanterEffect",
			},
		},
		map = "gfVhfD",
		name = 'CustomInteractable#858 "Examine" (ColonizerBanter)',
		path = "CustomInteractable ",
		type = "CustomInteractable",
	},
	{
		Groups = {
			"MosesAll",
		},
		handle = 1306169958,
		items = {
			{
				editor_view_abridged = "if PaidToll or ThugsHostile",
				filter_type = "quest",
				reference_id = "FlagHillHostileTracker",
				type = "QuestIsVariableBool",
				var = set( "PaidToll", "ThugsHostile" ),
			},
		},
		map = "gfVhfD",
		name = "UnitMarker#958 (MosesAll)",
		path = "UnitMarker ",
		type = "UnitMarker",
	},
	{
		Groups = {
			"BastienFlagHill",
		},
		handle = 1858265929,
		items = {
			{
				editor_view_abridged = "Start conversation.",
				filter_type = "conversation",
				reference_id = "GCExBastien",
				type = "UnitStartConversation",
			},
		},
		map = "gfVhfD",
		name = "UnitMarker#929 (BastienFlagHill)",
		path = "UnitMarker ",
		type = "UnitMarker",
	},
}