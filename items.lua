return {
	PlaceObj('ModItemFolder', {
		'name', "Change Property",
	}, {
		PlaceObj('ModItemChangeProp', {
			'name', "NormalDif",
			'TargetClass', "GameDifficultyDef",
			'TargetId', "Normal",
			'TargetProp', "display_name",
			'TargetValue', T(535588036580, "Morianthi"),
		}),
		PlaceObj('ModItemChangeProp', {
			'name', "HardDif",
			'TargetClass', "GameDifficultyDef",
			'TargetId', "Hard",
			'TargetProp', "display_name",
			'TargetValue', T(312132029934, "cockadoodledoo"),
		}),
		PlaceObj('ModItemChangeProp', {
			'name', "VeryHardDif",
			'TargetClass', "GameDifficultyDef",
			'TargetId', "VeryHard",
			'TargetProp', "display_name",
			'TargetValue', T(501006798329, "Sir Ni"),
		}),
		}),
	PlaceObj('ModItemCode', {
		'CodeFileName', "Code/Script.lua",
	}),
	PlaceObj('ModItemCampaignPreset', {
		Description = T(216617159958, --[[ModItemCampaignPreset GCEXPrologue Description]] "Grand Chien Expanded: Prologue"),
		DisclaimerOnStart = T(320413019193, --[[ModItemCampaignPreset GCEXPrologue DisclaimerOnStart]] "In July 14 we commemorate 1 year of Jagged Alliance 3, A worthy successor for our beloved series. To celebrate a small group of modders decided to bring this small gift for our community."),
		DisplayName = T(936379103162, --[[ModItemCampaignPreset GCEXPrologue DisplayName]] "Grand Chien Expanded: Prologue"),
		FirstRunInterface = function (self, interfaceType)
			if interfaceType == "QuickStart" then
				TutorialHintsState.LandingPageShown = true
				Game.CampaignTime = Game.CampaignTimeStart + const.Satellite.MercArrivalTime / 2
				SetUILCustomTime(Game.CampaignTime)
				return
			end
			
			function GetTestCampaignSquad()
				local starting_parties = { "GCEXNumb", "GCEXGumpy", "GCEXGasket",
				"GCEXStogie", "GCEXCougar", "GCEXGaston" }
				return starting_parties
			end
			local init_sector = "J5"
			--	SectorLoadingScreenOpen("idLoadingScreen", "new game", init_sector)
				MapForEach("map", "Unit", DoneObject)
				--Game.Money = const.Satellite.StartingMoneyQuickStart
				--Game.isDev = not new_game_params or not new_game_params.testModGame
				local unit_ids = GetTestCampaignSquad()
				CreateNewSatelliteSquad({Side = "player1", CurrentSector = init_sector, 
				Name = SquadName:GetNewSquadName("player1")}, unit_ids, 14, 1234567)
				for _, unitId in ipairs(unit_ids) do
					Msg("MercHired", unitId, 1234, 14)
					gv_UnitData[unitId]:CallReactions("OnMercHired", 1234, 14)
					SetMercStateFlag(unitId, "CurrentDailySalary", DivRound(1234, 14))
				end
			SetCampaignSpeed(0, "UI")
			g_PDALoadingFlavor = false
			gv_InitialHiringDone = true
			EnterFirstSector(init_sector)
			g_PDALoadingFlavor = true
		end,
		InitialSector = "J5",
		Sectors = {
			PlaceObj('SatelliteSector', {
				'Id', "A1",
				'Side', "neutral",
				'StickySide', true,
				'TerrainType', "Water",
				'Passability', "Water",
				'Intel', false,
				'image', "UI/SatelliteView/SectorImages/_Sea",
				'MusicCombat', "Battle_Normal",
				'MusicConflict', "Cursed_Conflict",
				'MusicExploration', "Cursed_Exploration",
			}),
			PlaceObj('SatelliteSector', {
				'Id', "A2",
				'Side', "neutral",
				'StickySide', true,
				'TerrainType', "Water",
				'Passability', "Water",
				'Intel', false,
				'image', "UI/SatelliteView/SectorImages/_Sea",
				'MusicCombat', "Battle_Normal",
				'MusicConflict', "Cursed_Conflict",
				'MusicExploration', "Cursed_Exploration",
			}),
			PlaceObj('SatelliteSector', {
				'Id', "A3",
				'Side', "neutral",
				'StickySide', true,
				'TerrainType', "Water",
				'Passability', "Water",
				'Intel', false,
				'image', "UI/SatelliteView/SectorImages/_Sea",
				'MusicCombat', "Battle_Normal",
				'MusicConflict', "Cursed_Conflict",
				'MusicExploration', "Cursed_Exploration",
			}),
			PlaceObj('SatelliteSector', {
				'Id', "A4",
				'Side', "neutral",
				'StickySide', true,
				'TerrainType', "Water",
				'Passability', "Water",
				'Intel', false,
				'image', "UI/SatelliteView/SectorImages/_Sea",
				'MusicCombat', "Battle_Normal",
				'MusicConflict', "Cursed_Conflict",
				'MusicExploration', "Cursed_Exploration",
			}),
			PlaceObj('SatelliteSector', {
				'Id', "B1",
				'Side', "neutral",
				'StickySide', true,
				'TerrainType', "Water",
				'Passability', "Water",
				'Intel', false,
				'image', "UI/SatelliteView/SectorImages/_Sea",
				'MusicCombat', "Battle_Normal",
				'MusicConflict', "Cursed_Conflict",
				'MusicExploration', "Cursed_Exploration",
			}),
			PlaceObj('SatelliteSector', {
				'Id', "B2",
				'Side', "neutral",
				'StickySide', true,
				'TerrainType', "Water",
				'Passability', "Water",
				'Intel', false,
				'image', "UI/SatelliteView/SectorImages/_Sea",
				'MusicCombat', "Battle_Normal",
				'MusicConflict', "Cursed_Conflict",
				'MusicExploration', "Cursed_Exploration",
			}),
			PlaceObj('SatelliteSector', {
				'Id', "B3",
				'Map', "gribVwV",
				'MapTier', 20,
				'modId', "GCExPrologue",
				'RunLoyaltyLogic', false,
				'display_name', T(103725956697, --[[ModItemCampaignPreset GCEXPrologue display_name Sector name for B3]] "Old Research Facility"),
				'TerrainType', "Jungle",
				'WeatherZone', "SouthJungle",
				'MinFlareCarriers', 0,
				'MaxFlareCarriers', 0,
				'RepairShop', true,
				'bidirectionalRoadApply', true,
				'ImpassableForDiamonds', true,
				'bidirectionalBlockApply', true,
				'BlockTravel', set({
	East = false,
	North = false,
	South = false,
	West = false,
}),
				'image', "UI/SatelliteView/SectorImages/I18.dds",
				'awareness_sequence', "Skip Setpiece",
				'MusicCombat', "Outpost_Conflict",
				'MusicConflict', "Outpost_Conflict",
				'MusicExploration', "Swamp_Exploration",
			}),
			PlaceObj('SatelliteSector', {
				'Id', "B4",
				'Map', "q5Smwah",
				'MapTier', 20,
				'modId', "GCExPrologue",
				'RunLoyaltyLogic', false,
				'display_name', T(599917389756, --[[ModItemCampaignPreset GCEXPrologue display_name Sector name for B4]] "Old Military Airport"),
				'TerrainType', "Urban",
				'WeatherZone', "SouthJungle",
				'MinFlareCarriers', 0,
				'MaxFlareCarriers', 0,
				'bidirectionalRoadApply', true,
				'ImpassableForDiamonds', true,
				'bidirectionalBlockApply', true,
				'BlockTravel', set({
	East = true,
	North = true,
	South = false,
	West = false,
}),
				'image', "UI/SatelliteView/SectorImages/D13.dds",
				'awareness_sequence', "Skip Setpiece",
				'MusicCombat', "Battle_Normal",
				'MusicConflict', "Swamp_Conflict",
				'MusicExploration', "Outpost_Exploration",
			}),
			PlaceObj('SatelliteSector', {
				'Id', "B5",
				'Side', "neutral",
				'StickySide', true,
				'TerrainType', "Water",
				'Passability', "Water",
				'Intel', false,
				'image', "UI/SatelliteView/SectorImages/_Sea",
				'MusicCombat', "Battle_Normal",
				'MusicConflict', "Cursed_Conflict",
				'MusicExploration', "Cursed_Exploration",
			}),
			PlaceObj('SatelliteSector', {
				'Id', "C1",
				'Side', "neutral",
				'StickySide', true,
				'TerrainType', "Water",
				'Passability', "Water",
				'Intel', false,
				'image', "UI/SatelliteView/SectorImages/_Sea",
				'MusicCombat', "Battle_Normal",
				'MusicConflict', "Cursed_Conflict",
				'MusicExploration', "Cursed_Exploration",
			}),
			PlaceObj('SatelliteSector', {
				'Id', "C2",
				'Side', "neutral",
				'StickySide', true,
				'TerrainType', "Water",
				'Passability', "Water",
				'Intel', false,
				'image', "UI/SatelliteView/SectorImages/_Sea",
				'MusicCombat', "Battle_Normal",
				'MusicConflict', "Cursed_Conflict",
				'MusicExploration', "Cursed_Exploration",
			}),
			PlaceObj('SatelliteSector', {
				'Id', "C3",
				'Map', "T4W3sML",
				'MapTier', 20,
				'modId', "GCExPrologue",
				'RunLoyaltyLogic', false,
				'display_name', T(857250597405, --[[ModItemCampaignPreset GCEXPrologue display_name Sector name for C3]] "Inner Forest"),
				'TerrainType', "Jungle",
				'WeatherZone', "Erny",
				'MinFlareCarriers', 0,
				'MaxFlareCarriers', 0,
				'RAndRAllowed', true,
				'bidirectionalRoadApply', true,
				'Roads', set({
	East = false,
	North = false,
}),
				'ImpassableForDiamonds', true,
				'bidirectionalBlockApply', true,
				'BlockTravel', set({
	East = false,
	North = false,
	South = true,
	West = true,
}),
				'image', "UI/SatelliteView/SectorImages/D19.dds",
				'MusicCombat', "Town_Conflict",
				'MusicConflict', "Town_Conflict",
				'MusicExploration', "Swamp_Exploration",
			}),
			PlaceObj('SatelliteSector', {
				'Id', "C4",
				'Map', "rigmhkd",
				'MapTier', 20,
				'modId', "GCExPrologue",
				'RunLoyaltyLogic', false,
				'display_name', T(845956605616, --[[ModItemCampaignPreset GCEXPrologue display_name Sector name for C4]] "Abandoned Village"),
				'TerrainType', "Jungle",
				'WeatherZone', "CursedForest",
				'MinFlareCarriers', 0,
				'MaxFlareCarriers', 0,
				'bidirectionalRoadApply', true,
				'ImpassableForDiamonds', true,
				'bidirectionalBlockApply', true,
				'image', "UI/SatelliteView/SectorImages/E14.dds",
				'awareness_sequence', "Skip Setpiece",
				'MusicCombat', "Battle_Tough",
				'MusicConflict', "Cursed_Conflict",
				'MusicExploration', "SpecificSpooky_Exploration",
			}),
			PlaceObj('SatelliteSector', {
				'Id', "C4_Underground",
				'Map', "pwSHwww",
				'MapTier', 30,
				'modId', "GCExPrologue",
				'GroundSector', "C4",
				'display_name', T(472770159405, --[[ModItemCampaignPreset GCEXPrologue display_name Sector name for C4_Underground]] "Unknown Location"),
				'TerrainType', "",
				'Passability', "Blocked",
				'bidirectionalRoadApply', true,
				'bidirectionalBlockApply', true,
				'image', "UI/SatelliteView/SectorImages/C20U.dds",
			}),
			PlaceObj('SatelliteSector', {
				'Id', "C5",
				'Map', "g5jmezY",
				'MapTier', 20,
				'modId', "GCExPrologue",
				'RunLoyaltyLogic', false,
				'display_name', T(738448180148, --[[ModItemCampaignPreset GCEXPrologue display_name Sector name for C5]] "Seagul Port"),
				'Side', "player1",
				'TerrainType', "Urban",
				'WeatherZone', "Erny",
				'Passability', "Land and Water",
				'MinFlareCarriers', 0,
				'MaxFlareCarriers', 0,
				'bidirectionalRoadApply', true,
				'bidirectionalBlockApply', true,
				'BlockTravel', set({
	South = false,
	West = false,
}),
				'image', "UI/SatelliteView/SectorImages/E11.dds",
				'Port', true,
				'PricePerTile', 20,
				'awareness_sequence', "Skip Setpiece",
			}),
			PlaceObj('SatelliteSector', {
				'Id', "C6",
				'Side', "neutral",
				'StickySide', true,
				'TerrainType', "Water",
				'Passability', "Water",
				'Intel', false,
				'image', "UI/SatelliteView/SectorImages/_Sea",
				'MusicCombat', "Battle_Normal",
				'MusicConflict', "Cursed_Conflict",
				'MusicExploration', "Cursed_Exploration",
			}),
			PlaceObj('SatelliteSector', {
				'Id', "D1",
				'Side', "neutral",
				'StickySide', true,
				'TerrainType', "Water",
				'Passability', "Water",
				'Intel', false,
				'image', "UI/SatelliteView/SectorImages/_Sea",
				'MusicCombat', "Battle_Normal",
				'MusicConflict', "Cursed_Conflict",
				'MusicExploration', "Cursed_Exploration",
			}),
			PlaceObj('SatelliteSector', {
				'Id', "D2",
				'Side', "neutral",
				'StickySide', true,
				'TerrainType', "Water",
				'Passability', "Water",
				'Intel', false,
				'image', "UI/SatelliteView/SectorImages/_Sea",
				'MusicCombat', "Battle_Normal",
				'MusicConflict', "Cursed_Conflict",
				'MusicExploration', "Cursed_Exploration",
			}),
			PlaceObj('SatelliteSector', {
				'Id', "D3",
				'Side', "neutral",
				'StickySide', true,
				'TerrainType', "Water",
				'Passability', "Water",
				'Intel', false,
				'image', "UI/SatelliteView/SectorImages/_Sea",
				'MusicCombat', "Battle_Normal",
				'MusicConflict', "Cursed_Conflict",
				'MusicExploration', "Cursed_Exploration",
			}),
			PlaceObj('SatelliteSector', {
				'Id', "D4",
				'Map', "ehvTmk7",
				'MapTier', 20,
				'modId', "GCExPrologue",
				'RunLoyaltyLogic', false,
				'display_name', T(306215995940, --[[ModItemCampaignPreset GCEXPrologue display_name Sector name for D4]] "Smugler's Camp"),
				'Side', "neutral",
				'TerrainType', "Jungle",
				'WeatherZone', "Erny",
				'MinFlareCarriers', 0,
				'MaxFlareCarriers', 0,
				'bidirectionalRoadApply', true,
				'ImpassableForDiamonds', true,
				'bidirectionalBlockApply', true,
				'BlockTravel', set({
	East = true,
	North = false,
	South = true,
	West = true,
}),
				'image', "UI/SatelliteView/SectorImages/D18.dds",
				'MusicCombat', "Jungle_Conflict",
				'MusicConflict', "Jungle_Conflict",
				'MusicExploration', "Exploration_Beach",
			}),
			PlaceObj('SatelliteSector', {
				'Id', "D5",
				'Map', "gJ4VFV6",
				'MapTier', 20,
				'modId', "GCExPrologue",
				'RunLoyaltyLogic', false,
				'display_name', T(509702098662, --[[ModItemCampaignPreset GCEXPrologue display_name Sector name for D5]] "Abandoned Bunker"),
				'TerrainType', "Jungle",
				'WeatherZone', "Erny",
				'MinFlareCarriers', 0,
				'MaxFlareCarriers', 0,
				'bidirectionalRoadApply', true,
				'ImpassableForDiamonds', true,
				'bidirectionalBlockApply', true,
				'BlockTravel', set({
	East = true,
	North = false,
	South = true,
	West = true,
}),
				'image', "UI/SatelliteView/SectorImages/E13.dds",
				'awareness_sequence', "Skip Setpiece",
			}),
			PlaceObj('SatelliteSector', {
				'Id', "D6",
				'Side', "neutral",
				'StickySide', true,
				'TerrainType', "Water",
				'Passability', "Water",
				'Intel', false,
				'image', "UI/SatelliteView/SectorImages/_Sea",
				'MusicCombat', "Battle_Normal",
				'MusicConflict', "Cursed_Conflict",
				'MusicExploration', "Cursed_Exploration",
			}),
			PlaceObj('SatelliteSector', {
				'Id', "E1",
				'Side', "neutral",
				'StickySide', true,
				'TerrainType', "Water",
				'Passability', "Water",
				'Intel', false,
				'image', "UI/SatelliteView/SectorImages/_Sea",
				'MusicCombat', "Battle_Normal",
				'MusicConflict', "Cursed_Conflict",
				'MusicExploration', "Cursed_Exploration",
			}),
			PlaceObj('SatelliteSector', {
				'Id', "E2",
				'Side', "neutral",
				'StickySide', true,
				'TerrainType', "Water",
				'Passability', "Water",
				'Intel', false,
				'image', "UI/SatelliteView/SectorImages/_Sea",
				'MusicCombat', "Battle_Normal",
				'MusicConflict', "Cursed_Conflict",
				'MusicExploration', "Cursed_Exploration",
			}),
			PlaceObj('SatelliteSector', {
				'Id', "E4",
				'Side', "neutral",
				'StickySide', true,
				'TerrainType', "Water",
				'Passability', "Water",
				'Intel', false,
				'image', "UI/SatelliteView/SectorImages/_Sea",
				'MusicCombat', "Battle_Normal",
				'MusicConflict', "Cursed_Conflict",
				'MusicExploration', "Cursed_Exploration",
			}),
			PlaceObj('SatelliteSector', {
				'Id', "E5",
				'Side', "neutral",
				'StickySide', true,
				'TerrainType', "Water",
				'Passability', "Water",
				'Intel', false,
				'image', "UI/SatelliteView/SectorImages/_Sea",
				'MusicCombat', "Battle_Normal",
				'MusicConflict', "Cursed_Conflict",
				'MusicExploration', "Cursed_Exploration",
			}),
			PlaceObj('SatelliteSector', {
				'Id', "E6",
				'Side', "neutral",
				'StickySide', true,
				'TerrainType', "Water",
				'Passability', "Water",
				'Intel', false,
				'image', "UI/SatelliteView/SectorImages/_Sea",
				'MusicCombat', "Battle_Normal",
				'MusicConflict', "Cursed_Conflict",
				'MusicExploration', "Cursed_Exploration",
			}),
			PlaceObj('SatelliteSector', {
				'Id', "F1",
				'Side', "neutral",
				'StickySide', true,
				'TerrainType', "Water",
				'Passability', "Water",
				'Intel', false,
				'image', "UI/SatelliteView/SectorImages/_Sea",
				'MusicCombat', "Battle_Normal",
				'MusicConflict', "Cursed_Conflict",
				'MusicExploration', "Cursed_Exploration",
			}),
			PlaceObj('SatelliteSector', {
				'Id', "F2",
				'Side', "neutral",
				'StickySide', true,
				'TerrainType', "Water",
				'Passability', "Water",
				'Intel', false,
				'image', "UI/SatelliteView/SectorImages/_Sea",
				'MusicCombat', "Battle_Normal",
				'MusicConflict', "Cursed_Conflict",
				'MusicExploration', "Cursed_Exploration",
			}),
			PlaceObj('SatelliteSector', {
				'Id', "F3",
				'Side', "neutral",
				'StickySide', true,
				'TerrainType', "Water",
				'Passability', "Water",
				'Intel', false,
				'image', "UI/SatelliteView/SectorImages/_Sea",
				'MusicCombat', "Battle_Normal",
				'MusicConflict', "Cursed_Conflict",
				'MusicExploration', "Cursed_Exploration",
			}),
			PlaceObj('SatelliteSector', {
				'Id', "F4",
				'Label1', "Blocked",
				'Side', "neutral",
				'StickySide', true,
				'TerrainType', "Water",
				'Passability', "Water",
				'Intel', false,
				'image', "UI/SatelliteView/SectorImages/_Sea",
				'MusicCombat', "Battle_Normal",
				'MusicConflict', "Cursed_Conflict",
				'MusicExploration', "Cursed_Exploration",
			}),
			PlaceObj('SatelliteSector', {
				'Id', "F5",
				'Side', "neutral",
				'StickySide', true,
				'TerrainType', "Water",
				'Passability', "Water",
				'Intel', false,
				'image', "UI/SatelliteView/SectorImages/_Sea",
				'MusicCombat', "Battle_Normal",
				'MusicConflict', "Cursed_Conflict",
				'MusicExploration', "Cursed_Exploration",
			}),
			PlaceObj('SatelliteSector', {
				'Id', "F6",
				'Side', "neutral",
				'StickySide', true,
				'TerrainType', "Water",
				'Passability', "Water",
				'Intel', false,
				'image', "UI/SatelliteView/SectorImages/_Sea",
				'MusicCombat', "Battle_Normal",
				'MusicConflict', "Cursed_Conflict",
				'MusicExploration', "Cursed_Exploration",
			}),
			PlaceObj('SatelliteSector', {
				'Id', "G1",
				'Side', "neutral",
				'StickySide', true,
				'TerrainType', "Water",
				'Passability', "Water",
				'Intel', false,
				'image', "UI/SatelliteView/SectorImages/_Sea",
				'MusicCombat', "Battle_Normal",
				'MusicConflict', "Cursed_Conflict",
				'MusicExploration', "Cursed_Exploration",
			}),
			PlaceObj('SatelliteSector', {
				'Id', "G2",
				'Side', "neutral",
				'StickySide', true,
				'TerrainType', "Water",
				'Passability', "Water",
				'Intel', false,
				'image', "UI/SatelliteView/SectorImages/_Sea",
				'MusicCombat', "Battle_Normal",
				'MusicConflict', "Cursed_Conflict",
				'MusicExploration', "Cursed_Exploration",
			}),
			PlaceObj('SatelliteSector', {
				'Id', "G3",
				'Side', "neutral",
				'StickySide', true,
				'TerrainType', "Water",
				'Passability', "Water",
				'Intel', false,
				'image', "UI/SatelliteView/SectorImages/_Sea",
				'MusicCombat', "Battle_Normal",
				'MusicConflict', "Cursed_Conflict",
				'MusicExploration', "Cursed_Exploration",
			}),
			PlaceObj('SatelliteSector', {
				'Id', "G4",
				'Side', "neutral",
				'StickySide', true,
				'TerrainType', "Water",
				'Passability', "Water",
				'Intel', false,
				'image', "UI/SatelliteView/SectorImages/_Sea",
				'MusicCombat', "Battle_Normal",
				'MusicConflict', "Cursed_Conflict",
				'MusicExploration', "Cursed_Exploration",
			}),
			PlaceObj('SatelliteSector', {
				'Id', "G5",
				'Side', "neutral",
				'StickySide', true,
				'TerrainType', "Water",
				'Passability', "Water",
				'Intel', false,
				'image', "UI/SatelliteView/SectorImages/_Sea",
				'MusicCombat', "Battle_Normal",
				'MusicConflict', "Cursed_Conflict",
				'MusicExploration', "Cursed_Exploration",
			}),
			PlaceObj('SatelliteSector', {
				'Id', "G6",
				'Side', "neutral",
				'StickySide', true,
				'TerrainType', "Water",
				'Passability', "Water",
				'Intel', false,
				'image', "UI/SatelliteView/SectorImages/_Sea",
				'MusicCombat', "Battle_Normal",
				'MusicConflict', "Cursed_Conflict",
				'MusicExploration', "Cursed_Exploration",
			}),
			PlaceObj('SatelliteSector', {
				'Id', "G7",
				'Side', "neutral",
				'StickySide', true,
				'TerrainType', "Water",
				'Passability', "Water",
				'Intel', false,
				'image', "UI/SatelliteView/SectorImages/_Sea",
				'MusicCombat', "Battle_Normal",
				'MusicConflict', "Cursed_Conflict",
				'MusicExploration', "Cursed_Exploration",
			}),
			PlaceObj('SatelliteSector', {
				'Id', "H1",
				'Side', "neutral",
				'StickySide', true,
				'TerrainType', "Water",
				'Passability', "Water",
				'Intel', false,
				'image', "UI/SatelliteView/SectorImages/_Sea",
				'MusicCombat', "Battle_Normal",
				'MusicConflict', "Cursed_Conflict",
				'MusicExploration', "Cursed_Exploration",
			}),
			PlaceObj('SatelliteSector', {
				'Id', "H2",
				'Side', "neutral",
				'StickySide', true,
				'TerrainType', "Water",
				'Passability', "Water",
				'Intel', false,
				'image', "UI/SatelliteView/SectorImages/_Sea",
				'MusicCombat', "Battle_Normal",
				'MusicConflict', "Cursed_Conflict",
				'MusicExploration', "Cursed_Exploration",
			}),
			PlaceObj('SatelliteSector', {
				'Id', "H3",
				'Side', "neutral",
				'StickySide', true,
				'TerrainType', "Water",
				'Passability', "Water",
				'Intel', false,
				'image', "UI/SatelliteView/SectorImages/_Sea",
				'MusicCombat', "Battle_Normal",
				'MusicConflict', "Cursed_Conflict",
				'MusicExploration', "Cursed_Exploration",
			}),
			PlaceObj('SatelliteSector', {
				'Id', "H4",
				'Side', "neutral",
				'StickySide', true,
				'TerrainType', "Water",
				'Passability', "Water",
				'Intel', false,
				'image', "UI/SatelliteView/SectorImages/_Sea",
				'MusicCombat', "Battle_Normal",
				'MusicConflict', "Cursed_Conflict",
				'MusicExploration', "Cursed_Exploration",
			}),
			PlaceObj('SatelliteSector', {
				'Id', "H5",
				'Side', "neutral",
				'StickySide', true,
				'TerrainType', "Water",
				'Passability', "Water",
				'Intel', false,
				'image', "UI/SatelliteView/SectorImages/_Sea",
				'MusicCombat', "Battle_Normal",
				'MusicConflict', "Cursed_Conflict",
				'MusicExploration', "Cursed_Exploration",
			}),
			PlaceObj('SatelliteSector', {
				'Id', "H6",
				'Side', "neutral",
				'StickySide', true,
				'TerrainType', "Water",
				'Passability', "Water",
				'Intel', false,
				'image', "UI/SatelliteView/SectorImages/_Sea",
				'MusicCombat', "Battle_Normal",
				'MusicConflict', "Cursed_Conflict",
				'MusicExploration', "Cursed_Exploration",
			}),
			PlaceObj('SatelliteSector', {
				'Id', "H7",
				'Side', "neutral",
				'StickySide', true,
				'TerrainType', "Water",
				'Passability', "Water",
				'Intel', false,
				'image', "UI/SatelliteView/SectorImages/_Sea",
				'MusicCombat', "Battle_Normal",
				'MusicConflict', "Cursed_Conflict",
				'MusicExploration', "Cursed_Exploration",
			}),
			PlaceObj('SatelliteSector', {
				'Id', "I1",
				'Label1', "Blocked",
				'Side', "neutral",
				'StickySide', true,
				'TerrainType', "Water",
				'Passability', "Water",
				'Intel', false,
				'image', "UI/SatelliteView/SectorImages/_Sea",
				'MusicCombat', "Battle_Normal",
				'MusicConflict', "Cursed_Conflict",
				'MusicExploration', "Cursed_Exploration",
			}),
			PlaceObj('SatelliteSector', {
				'Id', "I2",
				'Side', "neutral",
				'StickySide', true,
				'TerrainType', "Water",
				'Passability', "Water",
				'Intel', false,
				'image', "UI/SatelliteView/SectorImages/_Sea",
				'MusicCombat', "Battle_Normal",
				'MusicConflict', "Cursed_Conflict",
				'MusicExploration', "Cursed_Exploration",
			}),
			PlaceObj('SatelliteSector', {
				'Id', "I3",
				'Side', "neutral",
				'StickySide', true,
				'TerrainType', "Water",
				'Passability', "Water",
				'Intel', false,
				'image', "UI/SatelliteView/SectorImages/_Sea",
				'MusicCombat', "Battle_Normal",
				'MusicConflict', "Cursed_Conflict",
				'MusicExploration', "Cursed_Exploration",
			}),
			PlaceObj('SatelliteSector', {
				'Id', "I4",
				'Side', "neutral",
				'StickySide', true,
				'TerrainType', "Water",
				'Passability', "Water",
				'Intel', false,
				'image', "UI/SatelliteView/SectorImages/_Sea",
				'MusicCombat', "Battle_Normal",
				'MusicConflict', "Cursed_Conflict",
				'MusicExploration', "Cursed_Exploration",
			}),
			PlaceObj('SatelliteSector', {
				'Id', "I5",
				'Label1', "Blocked",
				'Side', "neutral",
				'StickySide', true,
				'TerrainType', "Water",
				'Passability', "Water",
				'Intel', false,
				'image', "UI/SatelliteView/SectorImages/_Sea",
				'MusicCombat', "Battle_Normal",
				'MusicConflict', "Cursed_Conflict",
				'MusicExploration', "Cursed_Exploration",
			}),
			PlaceObj('SatelliteSector', {
				'Id', "I6",
				'Side', "neutral",
				'StickySide', true,
				'TerrainType', "Water",
				'Passability', "Water",
				'Intel', false,
				'BlockTravel', set( "South" ),
				'image', "UI/SatelliteView/SectorImages/_Sea",
				'MusicCombat', "Battle_Normal",
				'MusicConflict', "Cursed_Conflict",
				'MusicExploration', "Cursed_Exploration",
			}),
			PlaceObj('SatelliteSector', {
				'Id', "I7",
				'Side', "neutral",
				'StickySide', true,
				'TerrainType', "Water",
				'Passability', "Water",
				'Intel', false,
				'image', "UI/SatelliteView/SectorImages/_Sea",
				'MusicCombat', "Battle_Normal",
				'MusicConflict', "Cursed_Conflict",
				'MusicExploration', "Cursed_Exploration",
			}),
			PlaceObj('SatelliteSector', {
				'Id', "J1",
				'Side', "neutral",
				'StickySide', true,
				'TerrainType', "Water",
				'Passability', "Water",
				'Intel', false,
				'image', "UI/SatelliteView/SectorImages/_Sea",
				'MusicCombat', "Battle_Normal",
				'MusicConflict', "Cursed_Conflict",
				'MusicExploration', "Cursed_Exploration",
			}),
			PlaceObj('SatelliteSector', {
				'Id', "J2",
				'Side', "neutral",
				'StickySide', true,
				'TerrainType', "Water",
				'Passability', "Water",
				'Intel', false,
				'image', "UI/SatelliteView/SectorImages/_Sea",
				'MusicCombat', "Battle_Normal",
				'MusicConflict', "Cursed_Conflict",
				'MusicExploration', "Cursed_Exploration",
			}),
			PlaceObj('SatelliteSector', {
				'Id', "J3",
				'Side', "neutral",
				'StickySide', true,
				'TerrainType', "Water",
				'Passability', "Water",
				'Intel', false,
				'image', "UI/SatelliteView/SectorImages/_Sea",
				'MusicCombat', "Battle_Normal",
				'MusicConflict', "Cursed_Conflict",
				'MusicExploration', "Cursed_Exploration",
			}),
			PlaceObj('SatelliteSector', {
				'Id', "J4",
				'Side', "neutral",
				'StickySide', true,
				'TerrainType', "Water",
				'Passability', "Water",
				'Intel', false,
				'image', "UI/SatelliteView/SectorImages/_Sea",
				'MusicCombat', "Battle_Normal",
				'MusicConflict', "Cursed_Conflict",
				'MusicExploration', "Cursed_Exploration",
			}),
			PlaceObj('SatelliteSector', {
				'Id', "J5",
				'Map', "qqQkbH5",
				'MapTier', 10,
				'modId', "GCExPrologue",
				'display_name', T(608522453837, --[[ModItemCampaignPreset GCEXPrologue display_name Sector name for J5]] "Ernie Village"),
				'Side', "player1",
				'StickySide', true,
				'TerrainType', "Urban",
				'WeatherZone', "Erny",
				'Passability', "Land and Water",
				'RAndRAllowed', true,
				'RepairShop', true,
				'ImpassableForDiamonds', true,
				'bidirectionalBlockApply', true,
				'BlockTravel', set({
	East = false,
	South = false,
	West = true,
}),
				'BlockTravelRiver', set( "East", "North", "South" ),
				'image', "UI/SatelliteView/SectorImages/H02.dds",
				'Events', {
					PlaceObj('SE_OnEnterMapVisual', {
						'SequentialEffects', true,
						'Effects', {
							PlaceObj('StartDeploymentInCurrentSector', {}),
							PlaceObj('GroupSetBehaviorAdvanceTo', {
								MarkerGroup = "MarthaBar",
								TargetUnit = "MERCNpcs",
							}),
							PlaceObj('QuestSetVariableBool', {
								Prop = "NotStarted",
								QuestId = "GCEx_01_Landing",
							}),
						},
					}),
				},
				'Port', true,
				'PortLocked', true,
				'CanBeUsedForArrival', true,
				'MusicCombat', "Combat_Cerebral_Easy",
				'MusicExploration', "Town_Complete",
			}),
			PlaceObj('SatelliteSector', {
				'Id', "J6",
				'Map', "QcNU7NV",
				'MapTier', 10,
				'modId', "GCExPrologue",
				'RunLoyaltyLogic', false,
				'display_name', T(128416808925, --[[ModItemCampaignPreset GCEXPrologue display_name Sector name for J6]] "The Rust"),
				'Side', "player1",
				'StickySide', true,
				'WeatherZone', "Erny",
				'MinFlareCarriers', 0,
				'MaxFlareCarriers', 0,
				'bidirectionalRoadApply', true,
				'Roads', set({
	East = false,
	South = false,
	West = true,
}),
				'ImpassableForDiamonds', true,
				'bidirectionalBlockApply', true,
				'BlockTravel', set({
	East = true,
	North = true,
	South = false,
	West = false,
}),
				'BlockTravelRiver', set( "South", "West" ),
				'image', "UI/SatelliteView/SectorImages/H03.dds",
			}),
			PlaceObj('SatelliteSector', {
				'Id', "J7",
				'Map', "XWAgNVG",
				'modId', "GCExPrologue",
				'RunLoyaltyLogic', false,
				'Side', "player1",
				'StickySide', true,
				'TerrainType', "Urban",
				'WeatherZone', "Erny",
				'Passability', "Blocked",
				'MinFlareCarriers', 0,
				'MaxFlareCarriers', 0,
				'bidirectionalRoadApply', true,
				'ImpassableForEnemies', true,
				'ImpassableForDiamonds', true,
				'bidirectionalBlockApply', true,
				'BlockTravel', set( "East", "North", "South", "West" ),
			}),
			PlaceObj('SatelliteSector', {
				'Id', "K1",
				'Side', "neutral",
				'StickySide', true,
				'TerrainType', "Water",
				'Passability', "Water",
				'Intel', false,
				'image', "UI/SatelliteView/SectorImages/_Sea",
				'MusicCombat', "Battle_Normal",
				'MusicConflict', "Cursed_Conflict",
				'MusicExploration', "Cursed_Exploration",
			}),
			PlaceObj('SatelliteSector', {
				'Id', "K2",
				'Side', "neutral",
				'StickySide', true,
				'TerrainType', "Water",
				'Passability', "Water",
				'Intel', false,
				'image', "UI/SatelliteView/SectorImages/_Sea",
				'MusicCombat', "Battle_Normal",
				'MusicConflict', "Cursed_Conflict",
				'MusicExploration', "Cursed_Exploration",
			}),
			PlaceObj('SatelliteSector', {
				'Id', "K3",
				'Side', "neutral",
				'StickySide', true,
				'TerrainType', "Water",
				'Passability', "Water",
				'Intel', false,
				'image', "UI/SatelliteView/SectorImages/_Sea",
				'MusicCombat', "Battle_Normal",
				'MusicConflict', "Cursed_Conflict",
				'MusicExploration', "Cursed_Exploration",
			}),
			PlaceObj('SatelliteSector', {
				'Id', "K4",
				'Map', "gfVhfD",
				'MapTier', 10,
				'modId', "GCExPrologue",
				'RunLoyaltyLogic', false,
				'display_name', T(842006143436, --[[ModItemCampaignPreset GCEXPrologue display_name Sector name for K4]] "Flag Hill"),
				'Side', "player1",
				'StickySide', true,
				'WeatherZone', "Erny",
				'MinFlareCarriers', 0,
				'MaxFlareCarriers', 0,
				'bidirectionalRoadApply', true,
				'Roads', set({
	East = false,
}),
				'ImpassableForDiamonds', true,
				'bidirectionalBlockApply', true,
				'BlockTravel', set({
	East = false,
	North = true,
	South = true,
	West = true,
}),
				'BlockTravelRiver', set( "East" ),
				'image', "UI/SatelliteView/SectorImages/I01.dds",
			}),
			PlaceObj('SatelliteSector', {
				'Id', "K5",
				'Map', "AygWRur",
				'MapTier', 10,
				'modId', "GCExPrologue",
				'RunLoyaltyLogic', false,
				'display_name', T(507855526912, --[[ModItemCampaignPreset GCEXPrologue display_name Sector name for K5]] "Outlook"),
				'Side', "player1",
				'StickySide', true,
				'WeatherZone', "Erny",
				'MinFlareCarriers', 0,
				'MaxFlareCarriers', 0,
				'bidirectionalRoadApply', true,
				'ImpassableForDiamonds', true,
				'bidirectionalBlockApply', true,
				'BlockTravel', set({
	East = false,
	North = false,
	South = true,
	West = false,
}),
				'BlockTravelRiver', set( "East", "North", "West" ),
				'image', "UI/SatelliteView/SectorImages/I02.dds",
			}),
			PlaceObj('SatelliteSector', {
				'Id', "K6",
				'Map', "YTPoSVg",
				'MapTier', 10,
				'modId', "GCExPrologue",
				'RunLoyaltyLogic', false,
				'display_name', T(759089235125, --[[ModItemCampaignPreset GCEXPrologue display_name Sector name for K6]] "Emerald Coast"),
				'Side', "player1",
				'StickySide', true,
				'WeatherZone', "Erny",
				'MinFlareCarriers', 0,
				'MaxFlareCarriers', 0,
				'bidirectionalRoadApply', true,
				'ImpassableForDiamonds', true,
				'bidirectionalBlockApply', true,
				'BlockTravel', set({
	East = true,
	North = false,
	South = true,
	West = false,
}),
				'BlockTravelRiver', set( "North", "West" ),
				'image', "UI/SatelliteView/SectorImages/I03.dds",
			}),
			PlaceObj('SatelliteSector', {
				'Id', "K7",
				'Side', "neutral",
				'StickySide', true,
				'TerrainType', "Water",
				'Passability', "Water",
				'Intel', false,
				'image', "UI/SatelliteView/SectorImages/_Sea",
				'MusicCombat', "Battle_Normal",
				'MusicConflict', "Cursed_Conflict",
				'MusicExploration', "Cursed_Exploration",
			}),
		},
		group = "Default",
		id = "GCEXPrologue",
		map_file = "Mod/GCExPrologue/Images/Seagulla5.png",
		map_size = point(1500, 2047),
		sector_bottomright = "K7",
		starting_month = 10,
		starting_timestamp = 970354800,
		starting_year = 2000,
	}),
	PlaceObj('ModItemFolder', {
		'name', "Quests",
	}, {
		PlaceObj('ModItemFolder', {
			'name', "System/Utility",
		}, {
			PlaceObj('ModItemQuestsDef', {
				Chapter = "GCExUtility",
				DevNotes = 'For tracking "once per campaign" popups',
				TCEs = {
					PlaceObj('TriggeredConditionalEvent', {
						Conditions = {
							PlaceObj('CheckSatelliteTimeRange', {
								StartPoint = "WithinDay",
								TimeMaxH = 24,
								TimeMinH = 23,
							}),
						},
						Effects = {
							PlaceObj('QuestSetVariableNum', {
								Amount = 1,
								Prop = "days",
								QuestId = "DayTracker",
							}),
						},
						ParamId = "TCE_daycounter",
						QuestId = "DayTracker",
					}),
					PlaceObj('TriggeredConditionalEvent', {
						Conditions = {
							PlaceObj('QuestIsVariableNum', {
								Amount = 1,
								Prop = "days",
								QuestId = "DayTracker",
							}),
						},
						Effects = {
							PlaceObj('PlayerGrantMoney', {}),
						},
						ParamId = "TCE_day1",
						QuestId = "DayTracker",
					}),
					PlaceObj('TriggeredConditionalEvent', {
						Conditions = {
							PlaceObj('QuestIsVariableNum', {
								Amount = 2,
								Prop = "days",
								QuestId = "DayTracker",
							}),
						},
						Effects = {
							PlaceObj('PlayerGrantMoney', {}),
						},
						ParamId = "TCE_day2",
						QuestId = "DayTracker",
					}),
					PlaceObj('TriggeredConditionalEvent', {
						Conditions = {
							PlaceObj('QuestIsVariableNum', {
								Amount = 3,
								Prop = "days",
								QuestId = "DayTracker",
							}),
						},
						Effects = {
							PlaceObj('PlayerGrantMoney', {}),
						},
						ParamId = "TCE_day3",
						QuestId = "DayTracker",
					}),
					PlaceObj('TriggeredConditionalEvent', {
						Conditions = {
							PlaceObj('QuestIsVariableNum', {
								Amount = 4,
								Prop = "days",
								QuestId = "DayTracker",
							}),
						},
						Effects = {
							PlaceObj('PlayerGrantMoney', {}),
						},
						ParamId = "TCE_day4",
						QuestId = "DayTracker",
					}),
					PlaceObj('TriggeredConditionalEvent', {
						Conditions = {
							PlaceObj('QuestIsVariableNum', {
								Amount = 5,
								Prop = "days",
								QuestId = "DayTracker",
							}),
						},
						Effects = {
							PlaceObj('PlayerGrantMoney', {}),
						},
						ParamId = "TCE_day5",
						QuestId = "DayTracker",
					}),
				},
				Variables = {
					PlaceObj('QuestVarBool', {
						Name = "Completed",
					}),
					PlaceObj('QuestVarBool', {
						Name = "Given",
					}),
					PlaceObj('QuestVarBool', {
						Name = "Failed",
					}),
					PlaceObj('QuestVarBool', {
						Name = "NotStarted",
						Value = true,
					}),
					PlaceObj('QuestVarNum', {
						Name = "days",
					}),
					PlaceObj('QuestVarTCEState', {
						Name = "TCE_daycounter",
					}),
					PlaceObj('QuestVarTCEState', {
						Name = "TCE_day1",
					}),
					PlaceObj('QuestVarTCEState', {
						Name = "TCE_day2",
					}),
					PlaceObj('QuestVarTCEState', {
						Name = "TCE_day3",
					}),
					PlaceObj('QuestVarTCEState', {
						Name = "TCE_day4",
					}),
					PlaceObj('QuestVarTCEState', {
						Name = "TCE_day5",
					}),
				},
				campaign = "GCEXPrologue",
				group = "GCExUtility",
				id = "DayTracker",
			}),
			PlaceObj('ModItemQuestsDef', {
				Chapter = "GCExUtility",
				Hidden = true,
				KillTCEsConditions = {
					PlaceObj('QuestKillTCEsOnCompleted', {}),
				},
				QuestId = "Emails",
				TCEs = {
					PlaceObj('TriggeredConditionalEvent', {
						Conditions = {
							PlaceObj('CheckSatelliteTimeRange', {
								StartPoint = "WithinDay",
								TimeMaxH = 20,
								TimeMinH = 10,
							}),
						},
						Effects = {
							PlaceObj('ConditionalEffect', {
								'Conditions', {
									PlaceObj('QuestIsVariableNum', {
										Condition = ">",
										Prop = "spam_mail_to_send",
										QuestId = "Emails",
									}),
								},
								'Effects', {
									PlaceObj('QuestSetVariableNum', {
										Amount = -1,
										Operation = "set",
										Prop = "spam_mail_to_send",
										QuestId = "Emails",
									}),
								},
							}),
							PlaceObj('ConditionalEffect', {
								'Conditions', {
									PlaceObj('QuestIsVariableNum', {
										Amount = 50,
										Condition = "<",
										Prop = "spam_chance",
										QuestId = "Emails",
									}),
								},
								'Effects', {
									PlaceObj('QuestSetVariableNum', {
										Amount = 1,
										Prop = "spam_chance",
										QuestId = "Emails",
										RandomRangeMax = 2,
									}),
								},
							}),
							PlaceObj('ConditionalEffect', {
								'Conditions', {
									PlaceObj('CheckExpression', {
										Expression = function (self, obj) return InteractionRand(100, "CheckRandom") < (obj.spam_chance or 0) end,
									}),
								},
								'Effects', {
									PlaceObj('QuestSetVariableNum', {
										Amount = 1,
										Operation = "set",
										Prop = "spam_mail_to_send",
										QuestId = "Emails",
										RandomRangeMax = 14,
									}),
									PlaceObj('QuestSetVariableNum', {
										Operation = "set",
										Prop = "spam_chance",
										QuestId = "Emails",
									}),
								},
							}),
						},
						ParamId = "Spam_mails",
						QuestId = "Emails",
					}),
					PlaceObj('TriggeredConditionalEvent', {
						Conditions = {
							PlaceObj('QuestIsVariableNum', {
								Condition = ">",
								Prop = "newsletter_delay",
								QuestId = "Emails",
							}),
							PlaceObj('CheckSatelliteTimeRange', {
								StartPoint = "WithinDay",
								TimeMaxH = 12,
								TimeMinH = 10,
							}),
						},
						Effects = {
							PlaceObj('QuestSetVariableNum', {
								Amount = -1,
								Prop = "newsletter_delay",
								QuestId = "Emails",
							}),
						},
						ParamId = "Newsletter_sending",
						QuestId = "Emails",
					}),
					PlaceObj('TriggeredConditionalEvent', {
						Conditions = {
							PlaceObj('QuestIsVariableNum', {
								Condition = ">",
								Prop = "other_delay",
								QuestId = "Emails",
							}),
							PlaceObj('CheckSatelliteTimeRange', {
								StartPoint = "WithinDay",
								TimeMaxH = 12,
								TimeMinH = 10,
							}),
						},
						Effects = {
							PlaceObj('QuestSetVariableNum', {
								Amount = -1,
								Prop = "other_delay",
								QuestId = "Emails",
							}),
						},
						ParamId = "Other_sending",
						QuestId = "Emails",
					}),
					PlaceObj('TriggeredConditionalEvent', {
						Conditions = {
							PlaceObj('QuestIsVariableBool', {
								QuestId = "02_LiberateErnie",
								Vars = set( "Completed" ),
								__eval = function ()
									local quest = gv_Quests['02_LiberateErnie'] or QuestGetState('02_LiberateErnie')
									return quest.Completed
								end,
							}),
							PlaceObj('QuestIsVariableNum', {
								Condition = "==",
								Prop = "other_delay",
								QuestId = "Emails",
							}),
						},
						Effects = {
							PlaceObj('QuestSetVariableNum', {
								Amount = 2,
								Prop = "other_delay",
								QuestId = "Emails",
							}),
						},
						Once = true,
						ParamId = "Other_IMP1",
						QuestId = "Emails",
					}),
				},
				Variables = {
					PlaceObj('QuestVarBool', {
						Name = "Completed",
					}),
					PlaceObj('QuestVarBool', {
						Name = "Given",
					}),
					PlaceObj('QuestVarBool', {
						Name = "Failed",
					}),
					PlaceObj('QuestVarBool', {
						Name = "NotStarted",
						Value = true,
					}),
					PlaceObj('QuestVarTCEState', {
						Name = "Spam_mails",
					}),
					PlaceObj('QuestVarNum', {
						Name = "spam_chance",
					}),
					PlaceObj('QuestVarNum', {
						Name = "spam_mail_to_send",
						Value = -1,
					}),
					PlaceObj('QuestVarTCEState', {
						Name = "Newsletter_sending",
					}),
					PlaceObj('QuestVarNum', {
						Name = "newsletter_delay",
					}),
					PlaceObj('QuestVarTCEState', {
						Name = "Other_sending",
					}),
					PlaceObj('QuestVarNum', {
						Name = "other_delay",
					}),
					PlaceObj('QuestVarTCEState', {
						Name = "Other_IMP1",
					}),
				},
				campaign = "GCEXPrologue",
				group = "GCExUtility",
				id = "Emails",
			}),
			PlaceObj('ModItemQuestsDef', {
				Chapter = "GCExUtility",
				KillTCEsConditions = {
					PlaceObj('QuestKillTCEsOnCompleted', {}),
				},
				QuestId = "Emails",
				Variables = {
					PlaceObj('QuestVarBool', {
						Name = "Completed",
					}),
					PlaceObj('QuestVarBool', {
						Name = "Given",
					}),
					PlaceObj('QuestVarBool', {
						Name = "Failed",
					}),
					PlaceObj('QuestVarBool', {
						Name = "NotStarted",
						Value = true,
					}),
				},
				campaign = "GCEXPrologue",
				group = "GCExUtility",
				id = "FailedQuests",
			}),
			PlaceObj('ModItemQuestsDef', {
				Chapter = "GCExUtility",
				DevNotes = "For tracking events during a merc's contract, or ones that affect merc chats",
				QuestId = "Emails",
				Variables = {
					PlaceObj('QuestVarBool', {
						Name = "Completed",
					}),
					PlaceObj('QuestVarBool', {
						Name = "Given",
					}),
					PlaceObj('QuestVarBool', {
						Name = "Failed",
					}),
					PlaceObj('QuestVarBool', {
						Name = "NotStarted",
						Value = true,
					}),
				},
				campaign = "GCEXPrologue",
				group = "GCExUtility",
				id = "MercStateTracker",
			}),
			PlaceObj('ModItemQuestsDef', {
				Chapter = "GCExUtility",
				DevNotes = 'For tracking "once per campaign" popups',
				QuestId = "Emails",
				Variables = {
					PlaceObj('QuestVarBool', {
						Name = "Completed",
					}),
					PlaceObj('QuestVarBool', {
						Name = "Given",
					}),
					PlaceObj('QuestVarBool', {
						Name = "Failed",
					}),
					PlaceObj('QuestVarBool', {
						Name = "NotStarted",
						Value = true,
					}),
				},
				campaign = "GCEXPrologue",
				group = "GCExUtility",
				id = "PopupTracker",
			}),
			PlaceObj('ModItemQuestsDef', {
				Chapter = "GCExUtility",
				DevNotes = "Needs to also lock the sector into conflict when the timer starts but that will be done when used somewhere.",
				KillTCEsConditions = {
					PlaceObj('QuestKillTCEsOnCompleted', {}),
				},
				QuestId = "Emails",
				TCEs = {
					PlaceObj('TriggeredConditionalEvent', {
						Conditions = {
							PlaceObj('QuestIsVariableBool', {
								QuestId = "TimedTrap",
								Vars = set( "InitialInteractionDone" ),
								__eval = function ()
									local quest = gv_Quests['TimedTrap'] or QuestGetState('TimedTrap')
									return quest.InitialInteractionDone
								end,
							}),
						},
						Effects = {
							PlaceObj('QuestSetVariableBool', {
								Prop = "Given",
								QuestId = "TimedTrap",
							}),
							PlaceObj('SetTimer', {
								Label = T(347555575361, --[[ModItemQuestsDef TimedTrap Label]] "It's A Trap!"),
								Name = "TimedBomb",
							}),
							PlaceObj('Explosion', {
								AppliedEffect = "IncreaseTiredness",
								AreaOfEffect = 6,
								Damage = 70,
								ExplosionType = "FragGrenade",
								LocationGroup = "TimmedTrap_Initial",
							}),
						},
						Once = true,
						ParamId = "TCE_StartTimer",
						QuestId = "TimedTrap",
					}),
					PlaceObj('TriggeredConditionalEvent', {
						Conditions = {
							PlaceObj('QuestIsVariableBool', {
								QuestId = "TimedTrap",
								Vars = set( "InitialInteractionDone", "SkillCheckSuccess" ),
								__eval = function ()
									local quest = gv_Quests['TimedTrap'] or QuestGetState('TimedTrap')
									return quest.InitialInteractionDone and quest.SkillCheckSuccess
								end,
							}),
						},
						Effects = {
							PlaceObj('KillTimer', {
								Name = "TimedBomb",
								StopTCE = true,
							}),
						},
						Once = true,
						ParamId = "TCE_KillTimer",
						QuestId = "TimedTrap",
					}),
				},
				Variables = {
					PlaceObj('QuestVarBool', {
						Name = "Completed",
					}),
					PlaceObj('QuestVarBool', {
						Name = "Given",
					}),
					PlaceObj('QuestVarBool', {
						Name = "Failed",
					}),
					PlaceObj('QuestVarBool', {
						Name = "NotStarted",
						Value = true,
					}),
					PlaceObj('QuestVarBool', {
						Name = "InitialInteractionDone",
					}),
					PlaceObj('QuestVarBool', {
						Name = "SkillCheckSuccess",
					}),
					PlaceObj('QuestVarTCEState', {
						Name = "TCE_StartTimer",
					}),
					PlaceObj('QuestVarTCEState', {
						Name = "TCE_KillTimer",
					}),
				},
				campaign = "GCEXPrologue",
				group = "GCExUtility",
				id = "TimedTrap",
			}),
			}),
		PlaceObj('ModItemQuestsDef', {
			Chapter = "GCExAct1",
			DevNotes = "Starting main quest. Resolved when you talk to  Corazone.",
			DisplayName = T(135309888552, --[[ModItemQuestsDef GCEx_01_Landing DisplayName]] "Good Morning Grand Chien!"),
			EffectOnChangeVarValue = {
				PlaceObj('QuestEffectOnStatus', {
					Prop = "Completed",
				}),
			},
			Main = true,
			NoteDefs = {
				LastNoteIdx = 1,
				PlaceObj('QuestNote', {
					HideConditions = {
						PlaceObj('CheckOR', {
							Conditions = {
								PlaceObj('PlayerIsInSectors', {
									Sectors = {
										"J5",
									},
								}),
								PlaceObj('QuestIsVariableBool', {
									QuestId = "GCEx_01_Landing",
									Vars = set( "Completed" ),
									__eval = function ()
										local quest = gv_Quests['01_Landing'] or QuestGetState('01_Landing')
										return quest.Completed
									end,
								}),
							},
						}),
					},
					Idx = 6,
					ShowConditions = {
						PlaceObj('QuestIsVariableBool', {
							QuestId = "GCEx_01_Landing",
							Vars = set( "Given" ),
							__eval = function ()
								local quest = gv_Quests['01_Landing'] or QuestGetState('01_Landing')
								return quest.Given
							end,
						}),
					},
					Text = T(383240213604, --[[ModItemQuestsDef GCEx_01_Landing Text]] "<color EmStyle>Biff </color>will meet the client in <color EmStyle>Flag Hill</color>"),
				}),
				PlaceObj('QuestNote', {
					Badges = {
						PlaceObj('QuestBadgePlacement', {
							BadgeUnit = "GCExSantiago",
							Sector = "J5",
						}),
					},
					HideConditions = {
						PlaceObj('QuestIsVariableBool', {
							QuestId = "GCEx_01_Landing",
							Vars = set( "Completed" ),
							__eval = function ()
								local quest = gv_Quests['01_Landing'] or QuestGetState('01_Landing')
								return quest.Completed
							end,
						}),
					},
					Idx = 4,
					ShowConditions = {
						PlaceObj('PlayerIsInSectors', {
							Sectors = {
								"J5",
							},
						}),
					},
					Text = T(363809867922, --[[ModItemQuestsDef GCEx_01_Landing Text]] "<color EmStyle>We should </color>talk to the team at <color EmStyle>Martha's Bar</color>"),
				}),
				PlaceObj('QuestNote', {
					Badges = {
						PlaceObj('QuestBadgePlacement', {
							BadgeUnit = "SantiagoMeet",
							PlaceOnAllOfGroup = true,
							Sector = "J5",
						}),
					},
					HideConditions = {
						PlaceObj('QuestIsVariableBool', {
							QuestId = "GCEx_01_Landing",
							Vars = set( "Completed" ),
							__eval = function ()
								local quest = gv_Quests['01_Landing'] or QuestGetState('01_Landing')
								return quest.Completed
							end,
						}),
					},
					ShowConditions = {
						PlaceObj('QuestIsVariableBool', {
							QuestId = "GCEx_01_Landing",
							Vars = set({
	Completed = false,
}),
						}),
					},
					Text = T(873990999505, --[[ModItemQuestsDef GCEx_01_Landing Text]] "<color EmStyle>We should</color> check on the Boss <color EmStyle>nearby East exit</color>"),
				}),
				PlaceObj('QuestNote', {
					AddInHistory = true,
					Badges = {
						PlaceObj('QuestBadgePlacement', {
							Sector = "J5",
						}),
					},
					CompletionConditions = {
						PlaceObj('QuestIsVariableBool', {
							QuestId = "GCEx_01_Landing",
							Vars = set( "Completed" ),
							__eval = function ()
								local quest = gv_Quests['01_Landing'] or QuestGetState('01_Landing')
								return quest.Completed
							end,
						}),
					},
					Idx = 5,
					ShowConditions = {
						PlaceObj('QuestIsVariableBool', {
							QuestId = "GCEx_01_Landing",
							Vars = set( "Completed" ),
							__eval = function ()
								local quest = gv_Quests['01_Landing'] or QuestGetState('01_Landing')
								return quest.Completed
							end,
						}),
					},
					ShowWhenCompleted = true,
					Text = T(560664788018, --[[ModItemQuestsDef GCEx_01_Landing Text]] "<color EmStyle>Outcome:</color> Biff met with <color EmStyle>Corazon Santiago</color>"),
				}),
			},
			QuestGroup = "GCExAct1",
			Variables = {
				PlaceObj('QuestVarBool', {
					Name = "Completed",
				}),
				PlaceObj('QuestVarBool', {
					Name = "Given",
					Value = true,
				}),
				PlaceObj('QuestVarBool', {
					Name = "Failed",
				}),
				PlaceObj('QuestVarBool', {
					Name = "NotStarted",
					Value = true,
				}),
			},
			campaign = "GCEXPrologue",
			group = "GCExMain",
			id = "GCEx_01_Landing",
		}),
		PlaceObj('ModItemQuestsDef', {
			Chapter = "GCExAct1",
			DevNotes = "The TCE triggers once we have looted all stashes and sets a new boolean. Biffs convo (to be done in conversation) can check for that Boolean and such complete the quest. I suggest that the booleans for each stash will be set by interacting with the actual stahes on the respective map (to be done in map files).",
			DisplayName = T(547880762079, --[[ModItemQuestsDef GearUp DisplayName]] "Gear up, guys!"),
			KillTCEsConditions = {
				PlaceObj('QuestIsVariableBool', {
					QuestId = "GearUp",
					Vars = set( "LootedStash1", "LootedStash2", "LootedStash3", "LootedStash4", "LootedStash5" ),
					__eval = function ()
						local quest = gv_Quests['HunterHunted'] or QuestGetState('HunterHunted')
						return quest.Completed
					end,
				}),
				PlaceObj('QuestIsVariableBool', {
					Condition = "or",
					QuestId = "GearUp",
					Vars = set( "Completed" ),
					__eval = function ()
						local quest = gv_Quests['HunterHunted'] or QuestGetState('HunterHunted')
						return quest.Completed
					end,
				}),
			},
			LastNoteIdx = 4,
			Main = true,
			NoteDefs = {
				PlaceObj('QuestNote', {
					HideConditions = {
						PlaceObj('QuestIsVariableBool', {
							Condition = "or",
							QuestId = "GearUp",
							Vars = set( "Completed" ),
							__eval = function ()
								local quest = gv_Quests['HunterHunted'] or QuestGetState('HunterHunted')
								return quest.Failed or quest.FlayCampCombat_Flay or quest.FlayDead or quest.FlayHunting or quest.FlayPacified or quest.FlayRecruited
							end,
						}),
					},
					Idx = 3,
					QuestId = "GearUp",
					ShowConditions = {
						PlaceObj('QuestIsVariableBool', {
							QuestId = "GearUp",
							Vars = set( "Given" ),
							__eval = function ()
								local quest = gv_Quests['HunterHunted'] or QuestGetState('HunterHunted')
								return quest.Given
							end,
						}),
					},
					Text = T(800199614144, --[[ModItemQuestsDef GearUp Text]] "Biff wants us to gear up by looting five (5) stashes on the island."),
				}),
				PlaceObj('QuestNote', {
					AddInHistory = true,
					CompletionConditions = {
						PlaceObj('QuestIsVariableBool', {
							QuestId = "GearUp",
							Vars = set( "Completed" ),
							__eval = function ()
								local quest = gv_Quests['HunterHunted'] or QuestGetState('HunterHunted')
								return quest.FlayPacified
							end,
						}),
					},
					Idx = 4,
					QuestId = "GearUp",
					ShowConditions = {
						PlaceObj('QuestIsVariableBool', {
							QuestId = "GearUp",
							Vars = set( "Completed", "TCE_LootedStashes" ),
							__eval = function ()
								local quest = gv_Quests['HunterHunted'] or QuestGetState('HunterHunted')
								return quest.FlayPacified
							end,
						}),
					},
					ShowWhenCompleted = true,
					Text = T(867240799827, --[[ModItemQuestsDef GearUp Text]] "Looted all the stashes to gear up for the mission."),
				}),
			},
			QuestGroup = "GCExAct1",
			QuestId = "GearUp",
			TCEs = {
				PlaceObj('TriggeredConditionalEvent', {
					Conditions = {
						PlaceObj('QuestIsVariableBool', {
							QuestId = "GearUp",
							Vars = set( "LootedStash1", "LootedStash2", "LootedStash3", "LootedStash4", "LootedStash5" ),
						}),
					},
					Effects = {
						PlaceObj('QuestSetVariableBool', {
							Prop = "LootedAll",
							QuestId = "GearUp",
						}),
					},
					ParamId = "TCE_LootedStashes",
					QuestId = "GearUp",
				}),
			},
			Variables = {
				PlaceObj('QuestVarBool', {
					Name = "BiffDead",
					QuestId = "GearUp",
				}),
				PlaceObj('QuestVarBool', {
					Name = "PresentFlag",
					QuestId = "GearUp",
				}),
				PlaceObj('QuestVarBool', {
					Name = "LootedStash1",
					QuestId = "GearUp",
				}),
				PlaceObj('QuestVarBool', {
					Name = "LootedStash2",
					QuestId = "GearUp",
				}),
				PlaceObj('QuestVarBool', {
					Name = "LootedStash3",
					QuestId = "GearUp",
				}),
				PlaceObj('QuestVarBool', {
					Name = "LootedStash4",
					QuestId = "GearUp",
				}),
				PlaceObj('QuestVarBool', {
					Name = "LootedStash5",
					QuestId = "GearUp",
				}),
				PlaceObj('QuestVarBool', {
					Name = "LootedAll",
					QuestId = "GearUp",
				}),
				PlaceObj('QuestVarTCEState', {
					Name = "TCE_LootedStashes",
					QuestId = "GearUp",
				}),
				PlaceObj('QuestVarBool', {
					Name = "Completed",
					QuestId = "GearUp",
				}),
				PlaceObj('QuestVarBool', {
					Name = "Given",
					QuestId = "GearUp",
				}),
				PlaceObj('QuestVarBool', {
					Name = "QuestLead",
					QuestId = "GearUp",
				}),
				PlaceObj('QuestVarBool', {
					Name = "Failed",
					QuestId = "GearUp",
				}),
				PlaceObj('QuestVarBool', {
					Name = "NotStarted",
					QuestId = "GearUp",
					Value = true,
				}),
			},
			campaign = "GCEXPrologue",
			group = "GCExMain",
			id = "GearUp",
		}),
		PlaceObj('ModItemQuestsDef', {
			Chapter = "GCExAct1",
			DevNotes = "Quest is unclea rin design doc. What completes it and what fails it?",
			DisplayName = T(922967157325, --[[ModItemQuestsDef ReadyForRailings DisplayName]] "Ready for the Railings"),
			LastNoteIdx = 6,
			Main = true,
			NoteDefs = {
				PlaceObj('QuestNote', {
					HideConditions = {
						PlaceObj('QuestIsVariableBool', {
							Condition = "or",
							QuestId = "ReadyForRailings",
							Vars = set( "Completed" ),
							__eval = function ()
								local quest = gv_Quests['HunterHunted'] or QuestGetState('HunterHunted')
								return quest.Failed or quest.FlayCampCombat_Flay or quest.FlayDead or quest.FlayHunting or quest.FlayPacified or quest.FlayRecruited
							end,
						}),
					},
					Idx = 5,
					QuestId = "GearUp",
					ShowConditions = {
						PlaceObj('QuestIsVariableBool', {
							QuestId = "ReadyForRailings",
							Vars = set( "Given" ),
							__eval = function ()
								local quest = gv_Quests['HunterHunted'] or QuestGetState('HunterHunted')
								return quest.Given
							end,
						}),
					},
					Text = T(152767491086, --[[ModItemQuestsDef ReadyForRailings Text]] "Biff wants us to attack Diamond Red."),
				}),
				PlaceObj('QuestNote', {
					AddInHistory = true,
					CompletionConditions = {
						PlaceObj('QuestIsVariableBool', {
							QuestId = "ReadyForRailings",
							Vars = set( "Completed" ),
							__eval = function ()
								local quest = gv_Quests['HunterHunted'] or QuestGetState('HunterHunted')
								return quest.FlayPacified
							end,
						}),
					},
					Idx = 6,
					QuestId = "GearUp",
					ShowConditions = {
						PlaceObj('QuestIsVariableBool', {
							QuestId = "ReadyForRailings",
							Vars = set( "Given" ),
							__eval = function ()
								local quest = gv_Quests['HunterHunted'] or QuestGetState('HunterHunted')
								return quest.FlayPacified
							end,
						}),
					},
					ShowWhenCompleted = true,
					Text = T(533469105013, --[[ModItemQuestsDef ReadyForRailings Text]] "Went to Diamond Red."),
				}),
			},
			QuestGroup = "GCExAct1",
			QuestId = "GearUp",
			Variables = {
				PlaceObj('QuestVarBool', {
					Name = "BiffDead",
					QuestId = "GearUp",
				}),
				PlaceObj('QuestVarBool', {
					Name = "DiamondRedAttackPlan",
					QuestId = "GearUp",
				}),
				PlaceObj('QuestVarBool', {
					Name = "Completed",
					QuestId = "GearUp",
				}),
				PlaceObj('QuestVarBool', {
					Name = "Given",
					QuestId = "GearUp",
				}),
				PlaceObj('QuestVarBool', {
					Name = "QuestLead",
					QuestId = "GearUp",
				}),
				PlaceObj('QuestVarBool', {
					Name = "Failed",
					QuestId = "GearUp",
				}),
				PlaceObj('QuestVarBool', {
					Name = "NotStarted",
					QuestId = "GearUp",
					Value = true,
				}),
			},
			campaign = "GCEXPrologue",
			group = "GCExMain",
			id = "ReadyForRailings",
		}),
		PlaceObj('ModItemQuestsDef', {
			KillTCEsConditions = {
				PlaceObj('QuestKillTCEsOnCompleted', {}),
			},
			NoteDefs = {
				LastNoteIdx = 4,
				PlaceObj('QuestNote', {
					CompletionConditions = {
						PlaceObj('QuestIsVariableBool', {
							QuestId = "BriansFuel",
							Vars = set( "BrianCompleted" ),
						}),
					},
					HideConditions = {
						PlaceObj('QuestIsVariableBool', {
							QuestId = "BriansFuel",
							Vars = set({
	Given = false,
}),
						}),
					},
					Idx = 3,
					ShowConditions = {
						PlaceObj('QuestIsVariableBool', {
							QuestId = "BriansFuel",
							Vars = set( "Given" ),
						}),
					},
					Text = T(567748918757, --[[ModItemQuestsDef BriansFuel Text]] "Find Brian's missing Fuel!"),
				}),
				PlaceObj('QuestNote', {
					CompletionConditions = {
						PlaceObj('QuestIsVariableBool', {
							QuestId = "BriansFuel",
							Vars = set( "Completed" ),
						}),
					},
					Idx = 4,
					ShowConditions = {
						PlaceObj('QuestIsVariableBool', {
							QuestId = "BriansFuel",
							Vars = set( "Completed" ),
						}),
					},
					Text = T(313584653673, --[[ModItemQuestsDef BriansFuel Text]] "You found Brian's Fuel."),
				}),
			},
			TCEs = {
				PlaceObj('TriggeredConditionalEvent', {
					Conditions = {
						PlaceObj('BanterHasPlayed', {
							Banters = {
								"FuelFound",
							},
						}),
					},
					Effects = {
						PlaceObj('QuestSetVariableBool', {
							Prop = "Completed",
							QuestId = "BriansFuel",
						}),
					},
					ParamId = "BrianCompleted",
					QuestId = "BriansFuel",
				}),
			},
			Variables = {
				PlaceObj('QuestVarBool', {
					Name = "Completed",
				}),
				PlaceObj('QuestVarBool', {
					Name = "Given",
				}),
				PlaceObj('QuestVarBool', {
					Name = "Failed",
				}),
				PlaceObj('QuestVarBool', {
					Name = "NotStarted",
					Value = true,
				}),
				PlaceObj('QuestVarTCEState', {
					Name = "BrianCompleted",
				}),
			},
			campaign = "GCEXPrologue",
			group = "BNBrian",
			id = "BriansFuel",
		}),
		PlaceObj('ModItemQuestsDef', {
			Chapter = "GCExAct2",
			DevNotes = "The only thing the quest must do is check for alive squad members?",
			DisplayName = T(842383797713, --[[ModItemQuestsDef TropicalHeat DisplayName]] "Tropical Heat"),
			LastNoteIdx = 10,
			NoteDefs = {
				PlaceObj('QuestNote', {
					HideConditions = {
						PlaceObj('QuestIsVariableBool', {
							Condition = "or",
							QuestId = "TropicalHeat",
							Vars = set( "Completed" ),
							__eval = function ()
								local quest = gv_Quests['HunterHunted'] or QuestGetState('HunterHunted')
								return quest.Failed or quest.FlayCampCombat_Flay or quest.FlayDead or quest.FlayHunting or quest.FlayPacified or quest.FlayRecruited
							end,
						}),
					},
					Idx = 9,
					QuestId = "GearUp",
					ShowConditions = {
						PlaceObj('QuestIsVariableBool', {
							QuestId = "TropicalHeat",
							Vars = set( "Given" ),
							__eval = function ()
								local quest = gv_Quests['HunterHunted'] or QuestGetState('HunterHunted')
								return quest.Given
							end,
						}),
					},
					Text = T(208573492159, --[[ModItemQuestsDef TropicalHeat Text]] "All members of the squad must survive!."),
				}),
				PlaceObj('QuestNote', {
					AddInHistory = true,
					CompletionConditions = {
						PlaceObj('QuestIsVariableBool', {
							QuestId = "TropicalHeat",
							Vars = set( "Completed" ),
							__eval = function ()
								local quest = gv_Quests['HunterHunted'] or QuestGetState('HunterHunted')
								return quest.FlayPacified
							end,
						}),
					},
					Idx = 10,
					QuestId = "GearUp",
					ShowConditions = {
						PlaceObj('QuestIsVariableBool', {
							QuestId = "ReadyForRailings",
							Vars = set( "Completed" ),
							__eval = function ()
								local quest = gv_Quests['HunterHunted'] or QuestGetState('HunterHunted')
								return quest.FlayPacified
							end,
						}),
					},
					ShowWhenCompleted = true,
					Text = T(451831777966, --[[ModItemQuestsDef TropicalHeat Text]] "All members of the squad are stayin' alive, ha-ha-ha-ha stayin' alive!"),
				}),
			},
			QuestGroup = "GCExAct2",
			QuestId = "GearUp",
			Variables = {
				PlaceObj('QuestVarBool', {
					Name = "BiffDead",
					QuestId = "GearUp",
				}),
				PlaceObj('QuestVarBool', {
					Name = "Completed",
					QuestId = "GearUp",
				}),
				PlaceObj('QuestVarBool', {
					Name = "Given",
					QuestId = "GearUp",
				}),
				PlaceObj('QuestVarBool', {
					Name = "QuestLead",
					QuestId = "GearUp",
				}),
				PlaceObj('QuestVarBool', {
					Name = "Failed",
					QuestId = "GearUp",
				}),
				PlaceObj('QuestVarBool', {
					Name = "NotStarted",
					QuestId = "GearUp",
					Value = true,
				}),
			},
			campaign = "GCEXPrologue",
			group = "GCExMain",
			id = "TropicalHeat",
		}),
		PlaceObj('ModItemQuestsDef', {
			Chapter = "GCExAct2",
			DevNotes = "Quest is unclear in the design doc. Fighting the voodoo people fails it, but what to do to complete it? option 2 is not in design doc.",
			DisplayName = T(111229430937, --[[ModItemQuestsDef ChurchOfBlood DisplayName]] "The Church of Blood"),
			LastNoteIdx = 12,
			NoteDefs = {
				LastNoteIdx = 1,
				PlaceObj('QuestNote', {
					HideConditions = {
						PlaceObj('QuestIsVariableBool', {
							Condition = "or",
							QuestId = "TropicalHeat",
							Vars = set( "Completed" ),
							__eval = function ()
								local quest = gv_Quests['HunterHunted'] or QuestGetState('HunterHunted')
								return quest.Failed or quest.FlayCampCombat_Flay or quest.FlayDead or quest.FlayHunting or quest.FlayPacified or quest.FlayRecruited
							end,
						}),
					},
					Idx = 11,
					QuestId = "GearUp",
					ShowConditions = {
						PlaceObj('QuestIsVariableBool', {
							QuestId = "TropicalHeat",
							Vars = set( "Given" ),
							__eval = function ()
								local quest = gv_Quests['HunterHunted'] or QuestGetState('HunterHunted')
								return quest.Given
							end,
						}),
					},
					Text = T(236496326025, --[[ModItemQuestsDef ChurchOfBlood Text]] "Follow Stitches to her flock!"),
				}),
				PlaceObj('QuestNote', {
					AddInHistory = true,
					CompletionConditions = {
						PlaceObj('QuestIsVariableBool', {
							QuestId = "ChurchOfBlood",
							Vars = set( "Completed" ),
							__eval = function ()
								local quest = gv_Quests['HunterHunted'] or QuestGetState('HunterHunted')
								return quest.FlayPacified
							end,
						}),
					},
					Idx = 12,
					QuestId = "GearUp",
					ShowConditions = {
						PlaceObj('QuestIsVariableBool', {
							QuestId = "ReadyForRailings",
							Vars = set( "Completed" ),
							__eval = function ()
								local quest = gv_Quests['HunterHunted'] or QuestGetState('HunterHunted')
								return quest.FlayPacified
							end,
						}),
					},
					ShowWhenCompleted = true,
					Text = T(697307621761, --[[ModItemQuestsDef ChurchOfBlood Text]] "The Chuch of blood is no more.!"),
				}),
			},
			QuestGroup = "GCExAct2",
			QuestId = "GearUp",
			Variables = {
				PlaceObj('QuestVarBool', {
					Name = "BiffDead",
					QuestId = "GearUp",
				}),
				PlaceObj('QuestVarBool', {
					Name = "LiveSubjectAsked",
					QuestId = "GearUp",
				}),
				PlaceObj('QuestVarBool', {
					Name = "LiveSubjectGiven",
					QuestId = "GearUp",
				}),
				PlaceObj('QuestVarBool', {
					Name = "BloodDemandMoreBloodCompleted",
					QuestId = "GearUp",
				}),
				PlaceObj('QuestVarBool', {
					Name = "Completed",
					QuestId = "GearUp",
				}),
				PlaceObj('QuestVarBool', {
					Name = "Given",
					QuestId = "GearUp",
				}),
				PlaceObj('QuestVarBool', {
					Name = "QuestLead",
					QuestId = "GearUp",
				}),
				PlaceObj('QuestVarBool', {
					Name = "Failed",
					QuestId = "GearUp",
				}),
				PlaceObj('QuestVarBool', {
					Name = "NotStarted",
					QuestId = "GearUp",
					Value = true,
				}),
			},
			campaign = "GCEXPrologue",
			group = "GCExMain",
			id = "ChurchOfBlood",
		}),
		}),
	PlaceObj('ModItemFolder', {
		'name', "Camera/setpiece",
	}, {
		PlaceObj('ModItemSetpiecePrg', {
			CameraMode = "Show all",
			Map = "qqQkbH5",
			Params = {
				"TriggerUnits",
				"Merc1",
				"Merc2",
				"Merc3",
				"Merc4",
				"Merc5",
				"Merc6",
			},
			RestoreCamera = true,
			affected_grids = {},
			compacted_obj_boxes = {
				box(125710, 157490, 126720, 157990),
			},
			group = "GCExPrologue",
			hidden_actors = false,
			id = "GCExLanding",
			mapName = "NewSetpiece_pwswuST",
			obj_hashes = {
				4447785688015705984,
				6126657730859857524,
			},
			PlaceObj('SetpieceFadeOut', {
				FadeOutTime = 0,
			}),
			PlaceObj('SetpieceAssignFromSquad', {
				AssignTo = "Merc1",
			}),
			PlaceObj('SetpieceAssignFromExistingActor', {
				Actors = "Merc2",
				AssignTo = "Merc2",
			}),
			PlaceObj('SetpieceAssignFromGroup', {
				AssignTo = "Merc1",
				Group = "GCEXCougar",
			}),
			PlaceObj('SetpieceAssignFromParam', {
				AssignTo = "Merc3",
				Parameter = "Merc3",
			}),
			PlaceObj('SetpieceAssignFromSquad', {
				AssignTo = "Merc2",
				Unit = 2,
			}),
			PlaceObj('SetpieceAssignFromSquad', {
				AssignTo = "Merc3",
				Unit = 3,
			}),
			PlaceObj('SetpieceAssignFromSquad', {
				AssignTo = "Merc4",
				Unit = 4,
			}),
			PlaceObj('SetpieceAssignFromSquad', {
				AssignTo = "Merc5",
				Unit = 5,
			}),
			PlaceObj('SetpieceAssignFromSquad', {
				AssignTo = "Merc6",
				Unit = 6,
			}),
			PlaceObj('SetpieceSetStance', {
				Actors = "Merc2",
			}),
			PlaceObj('SetpieceSetStance', {
				Actors = "Merc4",
			}),
			PlaceObj('SetpieceSetStance', {
				Actors = "Merc5",
			}),
			PlaceObj('SetpieceSetStance', {
				Actors = "Merc6",
			}),
			PlaceObj('SetpieceTeleport', {
				Actors = "Merc1",
				AssignTo = "SP_Merc1_Start",
				Marker = "GCExSP_Merc1_Start",
			}),
			PlaceObj('SetpieceTeleport', {
				Actors = "Merc2",
				AssignTo = "SP_Merc1_Start",
				Marker = "GCExSP_Merc2_Start",
			}),
			PlaceObj('SetpieceTeleport', {
				Actors = "Merc3",
				AssignTo = "SP_Merc1_Start",
				Marker = "GCExSP_Merc3_Start",
			}),
			PlaceObj('SetpieceTeleport', {
				Actors = "Merc4",
				AssignTo = "SP_Merc1_Start",
				Marker = "GCExSP_Merc4_Start",
			}),
			PlaceObj('SetpieceTeleport', {
				Actors = "Merc5",
				AssignTo = "SP_Merc1_Start",
				Marker = "GCExSP_Merc5_Start",
			}),
			PlaceObj('SetpieceTeleport', {
				Actors = "Merc6",
				AssignTo = "SP_Merc1_Start",
				Marker = "GCExSP_Merc6_Start",
			}),
			PlaceObj('SetpieceGotoPosition', {
				Actors = "Merc1",
				Marker = "GCExSP_Merc3_GoTo",
				Stance = "Standing",
				StraightLine = true,
				UseRun = false,
				Wait = false,
				animated_rotation = true,
			}),
			PlaceObj('SetpieceGotoPosition', {
				Actors = "Merc3",
				Marker = "GCExSP_Merc3_GoTo",
				Stance = "Standing",
				StraightLine = true,
				UseRun = false,
				Wait = false,
				animated_rotation = true,
			}),
			PlaceObj('SetpieceCamera', {
				Duration = 0,
				LookAt1 = point(191569, 98363, 12039),
				Pos1 = point(193834, 94419, 14116),
				Wait = false,
			}),
			PlaceObj('SetpieceFadeIn', {
				FadeInDelay = 0,
				FadeInTime = 2000,
				Wait = false,
			}),
			PlaceObj('SetpieceCamera', {
				Duration = 8000,
				LookAt1 = point(193174, 101618, 9567),
				LookAt2 = point(188612, 105716, 12523),
				Movement = "decelerated",
				Pos1 = point(195006, 99243, 9559),
				Pos2 = point(189644, 102936, 12986),
			}),
			PlaceObj('SetpieceFadeOut', {
				FadeOutTime = 1700,
			}),
			PlaceObj('SetpieceCamera', {
				CamProps = {
					floor = 0,
				},
				CamType = "Tac",
				Duration = 0,
				LookAt1 = point(181252, 123610, 6678),
				Pos1 = point(188060, 109452, 17678),
				Zoom = 1300,
			}),
		}),
		PlaceObj('ModItemCamera', {
			cam_dest_lookat = point(199770, 136936, 21684),
			cam_dest_pos = point(201900, 141252, 23037),
			cam_lookat = point(113008, 165782, 20564),
			cam_pos = point(110875, 169501, 23136),
			group = "GCExPrologue",
			id = "GCExErnie",
			lightmodel = "Wet_Jungle_Sunset",
			map = "qqQkbH5",
			order = 115,
		}),
		}),
	PlaceObj('ModItemFolder', {
		'name', "UI",
	}, {
		PlaceObj('ModItemXTemplate', {
			__is_kind_of = "XDialog",
			group = "Zulu PDA",
			id = "PDAAIMBrowser",
			PlaceObj('XTemplateWindow', {
				'comment', "Full page",
				'__context', function (parent, context) return IMPErrorTexts[GetDialog(parent).mode_param] or IMPErrorTexts["Error404"] end,
				'__class', "XDialog",
				'Id', "PDABrowserError",
				'LayoutMethod', "VList",
				'MouseCursor', "UI/Cursors/Pda_Cursor.tga",
			}, {
				PlaceObj('XTemplateWindow', {
					'comment', "Background",
					'__class', "XImage",
					'Dock', "box",
					'Image', "UI/PDA/browser_panel",
					'ImageFit', "largest",
				}),
				PlaceObj('XTemplateTemplate', {
					'__condition', function (parent, context) return not InitialConflictNotStarted() end,
					'__template', "PDAStartButton",
					'Dock', "box",
					'VAlign', "bottom",
					'MinWidth', 200,
				}, {
					PlaceObj('XTemplateFunc', {
						'name', "SetOutsideScale(self, scale)",
						'func', function (self, scale)
							local dlg = GetDialog("PDADialog")
							local screen = dlg.idPDAScreen
							XWindow.SetOutsideScale(self, screen.scale)
						end,
					}),
					}),
				PlaceObj('XTemplateTemplate', {
					'__condition', function (parent, context) return not InitialConflictNotStarted() end,
					'__template', "PDABrowserBanners",
					'Visible', false,
				}),
				PlaceObj('XTemplateWindow', {
					'comment', "PageSpecific",
					'Margins', box(110, 30, 0, 0),
					'Dock', "box",
					'HAlign', "left",
					'VAlign', "top",
					'HandleKeyboard', false,
				}, {
					PlaceObj('XTemplateWindow', {
						'__class', "XText",
						'Id', "ErrorTitle",
						'Dock', "top",
						'HAlign', "left",
						'TextStyle', "PDABrowserErrorTitle",
						'Translate', true,
						'Text', T(206082439908, --[[ModItemXTemplate PDAAIMBrowser Text]] "<title>"),
					}),
					PlaceObj('XTemplateWindow', {
						'__class', "XText",
						'Id', "ErrorDescription",
						'Margins', box(0, 20, 0, 0),
						'Dock', "top",
						'HAlign', "left",
						'TextStyle', "PDABrowserErrorText",
						'Translate', true,
						'Text', T(798144121066, --[[ModItemXTemplate PDAAIMBrowser Text]] "<text>"),
					}),
					PlaceObj('XTemplateWindow', {
						'__context', function (parent, context) return IMPErrorTexts["Error404"] end,
						'Margins', box(0, 15, 0, 5),
						'Dock', "top",
						'HAlign', "center",
						'VAlign', "center",
						'MinWidth', 946,
						'MinHeight', 2,
						'MaxWidth', 946,
						'MaxHeight', 2,
						'BorderColor', RGBA(0, 0, 0, 0),
						'Background', RGBA(130, 128, 120, 139),
					}),
					PlaceObj('XTemplateWindow', {
						'__context', function (parent, context)
							return context
						end,
						'__class', "XText",
						'Id', "IP Text",
						'Dock', "top",
						'HAlign', "left",
						'TextStyle', "PDABrowserErrorIP",
						'Text', "OAK 3.5.49 Server at staging.mt-oak.domain.com Port 80",
					}),
					PlaceObj('XTemplateWindow', {
						'__class', "XText",
						'Id', "Back Text",
						'Margins', box(0, 20, 0, 0),
						'Padding', box(0, 0, 0, 0),
						'Background', RGBA(255, 0, 0, 0),
						'MouseCursor', "UI/Cursors/Pda_Hand.tga",
						'TextStyle', "PDABrowserErrorBackNormal",
						'Translate', true,
						'Text', T(680375461387, --[[ModItemXTemplate PDAAIMBrowser Text]] "<underline>Back</underline>"),
					}, {
						PlaceObj('XTemplateFunc', {
							'name', "Open",
							'func', function (self, ...)
								XText.Open(self, ...)
								local pdaBrowser = GetPDABrowserDialog()
								self:SetTextStyle(HyperlinkVisited(pdaBrowser, "PDABrowserErrorBack") and "PDABrowserErrorBackVisited" or "PDABrowserErrorBackNormal")
							end,
						}),
						PlaceObj('XTemplateFunc', {
							'name', "OnMouseButtonDown(self, pos, button)",
							'func', function (self, pos, button)
								XText.OnMouseButtonDown(self, pos, button)
								if  button=="L" then
									if not self.parent:GetEnabled() then
										return 
									end
									local pdaBrowser = GetPDABrowserDialog()
									VisitHyperlink(pdaBrowser, "PDABrowserErrorBack")
									pdaBrowser:SetMode(pdaBrowser:GetProperty("LastModeBeforeError"), pdaBrowser:GetProperty("LastModeParamBeforeError"))
								end
							end,
						}),
						}),
					}),
				}),
		}),
		PlaceObj('ModItemXTemplate', {
			__is_kind_of = "XDialog",
			group = "Zulu PDA",
			id = "PDAImpDialog",
			PlaceObj('XTemplateWindow', {
				'comment', "Full page",
				'__context', function (parent, context) return IMPErrorTexts[GetDialog(parent).mode_param] or IMPErrorTexts["Error404"] end,
				'__class', "XDialog",
				'Id', "PDABrowserError",
				'LayoutMethod', "VList",
				'MouseCursor', "UI/Cursors/Pda_Cursor.tga",
			}, {
				PlaceObj('XTemplateWindow', {
					'comment', "Background",
					'__class', "XImage",
					'Dock', "box",
					'Image', "UI/PDA/browser_panel",
					'ImageFit', "largest",
				}),
				PlaceObj('XTemplateTemplate', {
					'__condition', function (parent, context) return not InitialConflictNotStarted() end,
					'__template', "PDAStartButton",
					'Dock', "box",
					'VAlign', "bottom",
					'MinWidth', 200,
				}, {
					PlaceObj('XTemplateFunc', {
						'name', "SetOutsideScale(self, scale)",
						'func', function (self, scale)
							local dlg = GetDialog("PDADialog")
							local screen = dlg.idPDAScreen
							XWindow.SetOutsideScale(self, screen.scale)
						end,
					}),
					}),
				PlaceObj('XTemplateTemplate', {
					'__condition', function (parent, context) return not InitialConflictNotStarted() end,
					'__template', "PDABrowserBanners",
					'Visible', false,
				}),
				PlaceObj('XTemplateWindow', {
					'comment', "PageSpecific",
					'Margins', box(110, 30, 0, 0),
					'Dock', "box",
					'HAlign', "left",
					'VAlign', "top",
					'HandleKeyboard', false,
				}, {
					PlaceObj('XTemplateWindow', {
						'__class', "XText",
						'Id', "ErrorTitle",
						'Dock', "top",
						'HAlign', "left",
						'TextStyle', "PDABrowserErrorTitle",
						'Translate', true,
						'Text', T(819690499285, --[[ModItemXTemplate PDAImpDialog Text]] "<title>"),
					}),
					PlaceObj('XTemplateWindow', {
						'__class', "XText",
						'Id', "ErrorDescription",
						'Margins', box(0, 20, 0, 0),
						'Dock', "top",
						'HAlign', "left",
						'TextStyle', "PDABrowserErrorText",
						'Translate', true,
						'Text', T(389496340851, --[[ModItemXTemplate PDAImpDialog Text]] "<text>"),
					}),
					PlaceObj('XTemplateWindow', {
						'__context', function (parent, context) return IMPErrorTexts["Error404"] end,
						'Margins', box(0, 15, 0, 5),
						'Dock', "top",
						'HAlign', "center",
						'VAlign', "center",
						'MinWidth', 946,
						'MinHeight', 2,
						'MaxWidth', 946,
						'MaxHeight', 2,
						'BorderColor', RGBA(0, 0, 0, 0),
						'Background', RGBA(130, 128, 120, 139),
					}),
					PlaceObj('XTemplateWindow', {
						'__context', function (parent, context)
							return context
						end,
						'__class', "XText",
						'Id', "IP Text",
						'Dock', "top",
						'HAlign', "left",
						'TextStyle', "PDABrowserErrorIP",
						'Text', "OAK 3.5.49 Server at staging.mt-oak.domain.com Port 80",
					}),
					PlaceObj('XTemplateWindow', {
						'__class', "XText",
						'Id', "Back Text",
						'Margins', box(0, 20, 0, 0),
						'Padding', box(0, 0, 0, 0),
						'Background', RGBA(255, 0, 0, 0),
						'MouseCursor', "UI/Cursors/Pda_Hand.tga",
						'TextStyle', "PDABrowserErrorBackNormal",
						'Translate', true,
						'Text', T(581954179626, --[[ModItemXTemplate PDAImpDialog Text]] "<underline>Back</underline>"),
					}, {
						PlaceObj('XTemplateFunc', {
							'name', "Open",
							'func', function (self, ...)
								XText.Open(self, ...)
								local pdaBrowser = GetPDABrowserDialog()
								self:SetTextStyle(HyperlinkVisited(pdaBrowser, "PDABrowserErrorBack") and "PDABrowserErrorBackVisited" or "PDABrowserErrorBackNormal")
							end,
						}),
						PlaceObj('XTemplateFunc', {
							'name', "OnMouseButtonDown(self, pos, button)",
							'func', function (self, pos, button)
								XText.OnMouseButtonDown(self, pos, button)
								if  button=="L" then
									if not self.parent:GetEnabled() then
										return 
									end
									local pdaBrowser = GetPDABrowserDialog()
									VisitHyperlink(pdaBrowser, "PDABrowserErrorBack")
									pdaBrowser:SetMode(pdaBrowser:GetProperty("LastModeBeforeError"), pdaBrowser:GetProperty("LastModeParamBeforeError"))
								end
							end,
						}),
						}),
					}),
				}),
		}),
		}),
	PlaceObj('ModItemFolder', {
		'name', "Character Effect",
	}, {
		PlaceObj('ModItemCharacterEffectCompositeDef', {
			'Group', "Perk-Personal",
			'Id', "Gasket",
			'Parameters', {
				PlaceObj('PresetParamNumber', {
					'Name', "baseDamageBonus",
					'Value', 7,
					'Tag', "<baseDamageBonus>",
				}),
				PlaceObj('PresetParamPercent', {
					'Name', "critChanceBonus",
					'Value', 15,
					'Tag', "<critChanceBonus>%",
				}),
				PlaceObj('PresetParamNumber', {
					'Name', "conditionPerHour",
					'Value', 1,
					'Tag', "<conditionPerHour>",
				}),
			},
			'object_class', "Perk",
			'unit_reactions', {
				PlaceObj('UnitReaction', {
					Event = "OnCalcBaseDamage",
					Handler = function (self, target, weapon, attack_target, data)
						if IsKindOf(weapon, "Firearm") and not weapon:IsFullyModified() then
							local value = self:ResolveValue("baseDamageBonus")
							data.base_damage = data.base_damage + value
							data.breakdown[#data.breakdown + 1] = { name = self.DisplayName, value = value }
						end
					end,
					param_bindings = false,
				}),
				PlaceObj('UnitReaction', {
					Event = "OnCalcCritChance",
					Handler = function (self, target, attacker, attack_target, action, weapon, data)
						if IsKindOf(weapon, "Firearm") and not weapon:IsFullyModified() then
							data.crit_chance = data.crit_chance + self:ResolveValue("critChanceBonus")
						end
					end,
					param_bindings = false,
				}),
			},
			'DisplayName', T(705074527278, --[[ModItemCharacterEffectCompositeDef Gasket DisplayName]] "Not Caring"),
			'Description', T(853579610940, --[[ModItemCharacterEffectCompositeDef Gasket Description]] "Due to his innate ability to not give a fuck, Haywire is immune to Panicked or Suppressed."),
			'OnAdded', function (self, obj)  end,
			'OnRemoved', function (self, obj)  end,
			'Icon', "Mod/GCExPrologue/Images/PerkGASKETBlu 2.png",
			'Tier', "Personal",
		}),
		PlaceObj('ModItemCharacterEffectCompositeDef', {
			'Group', "Perk-Personal",
			'Id', "NumbTalk",
			'Parameters', {},
			'object_class', "Perk",
			'msg_reactions', {},
			'unit_reactions', {
				PlaceObj('UnitReaction', {
					Event = "OnDamageDone",
					Handler = function (self, target, attack_target, dmg, hit_descr)
						if not IsMerc(target) and not HasPerk(attack_target, "NumbTalk") then
							target:AddStatusEffect("Berserk")
						end
					end,
					param_bindings = false,
				}),
			},
			'DisplayName', T(910302453241, --[[ModItemCharacterEffectCompositeDef NumbTalk DisplayName]] "Taunt the pussies"),
			'Description', T(302553154193, --[[ModItemCharacterEffectCompositeDef NumbTalk Description]] "Numb can taunt hand hit the nerves of anyone he can see."),
			'OnAdded', function (self, obj)  end,
			'OnRemoved', function (self, obj)  end,
			'Icon', "Mod/GCExPrologue/Images/PerkNUMBBlu 2.png",
			'Tier', "Personal",
		}),
		PlaceObj('ModItemCharacterEffectCompositeDef', {
			'Group', "Perk-Personal",
			'Id', "Gaston",
			'Parameters', {},
			'object_class', "Perk",
			'unit_reactions', {
				PlaceObj('UnitReaction', {
					Event = "OnCalcSightModifier",
					Handler = function (self, target, value, observer, other, step_pos, darkness)
						if HasPerk(target, self) and other then
							target:AddStatusEffect("Hidden")
						end
					end,
					param_bindings = false,
				}),
			},
			'DisplayName', T(337078449531, --[[ModItemCharacterEffectCompositeDef Gaston DisplayName]] "Taunt the pussies"),
			'Description', T(730181381461, --[[ModItemCharacterEffectCompositeDef Gaston Description]] "Razor likes playing with it's targets, melee attacks also applies slow to the target."),
			'OnAdded', function (self, obj)  end,
			'OnRemoved', function (self, obj)  end,
			'Icon', "Mod/GCExPrologue/Images/PerkRAZORBlu 2.png",
			'Tier', "Personal",
		}),
		PlaceObj('ModItemCharacterEffectCompositeDef', {
			'Group', "Perk-Personal",
			'Id', "GumpySpecialPineapple",
			'Parameters', {},
			'object_class', "Perk",
			'unit_reactions', {
				PlaceObj('UnitReaction', {
					Event = "OnCalcDamageAndEffects",
					Handler = function (self, target, attacker, attack_target, action, weapon, attack_args, hit, data)
						if target == attacker and target.team ~= attack_target.team then
							if IsKindOf(weapon, "ExplosiveProperties") then
								target:AddStatusEffect("Bleeding")
							elseif IsKindOf(weapon, "GrenadeGas") then
								target:AddStatusEffect("Slow")
							end
						end
						
						-- GrenadeGas
					end,
					param_bindings = false,
				}),
			},
			'DisplayName', T(353051786879, --[[ModItemCharacterEffectCompositeDef GumpySpecialPineapple DisplayName]] "Taunt the pussies"),
			'Description', T(937824707742, --[[ModItemCharacterEffectCompositeDef GumpySpecialPineapple Description]] "Gumpy can apply additional effects whenever he uses explosives."),
			'OnAdded', function (self, obj)  end,
			'OnRemoved', function (self, obj)  end,
			'Icon', "Mod/GCExPrologue/Images/PerkGUMPYBlu 2.png",
			'Tier', "Personal",
		}),
		PlaceObj('ModItemCharacterEffectCompositeDef', {
			'Group', "Perk-Personal",
			'Id', "GruntForce",
			'Parameters', {
				PlaceObj('PresetParamPercent', {
					'Name', "minHp",
					'Value', 50,
					'Tag', "<minHp>%",
				}),
			},
			'object_class', "Perk",
			'msg_reactions', {},
			'unit_reactions', {
				PlaceObj('UnitReaction', {
					Event = "OnDamageTaken",
					Handler = function (self, target, attacker, dmg, hit_descr)
						if target ~= attacker then 
							--local maxHp = target:GetInitialMaxHitPoints()
							local minHp = MulDivRound(target:GetInitialMaxHitPoints(), self:ResolveValue("minHp"), 100)
							if target.HitPoints <= minHp then
								target:AddStatusEffect("Heroic")
							end
						end
					end,
					param_bindings = false,
				}),
			},
			'DisplayName', T(250195279118, --[[ModItemCharacterEffectCompositeDef GruntForce DisplayName]] "Grunt Force"),
			'Description', T(216030389932, --[[ModItemCharacterEffectCompositeDef GruntForce Description]] "Gumpy can apply additional effects whenever he uses explosives."),
			'OnAdded', function (self, obj)  end,
			'OnRemoved', function (self, obj)  end,
			'Icon', "Mod/GCExPrologue/Images/PerkSTOGIEBlu 2.png",
			'Tier', "Personal",
		}),
		PlaceObj('ModItemCharacterEffectCompositeDef', {
			'Group', "Perk-Personal",
			'Id', "ByTheBook",
			'Parameters', {},
			'object_class', "Perk",
			'msg_reactions', {},
			'unit_reactions', {
				PlaceObj('UnitReaction', {
					Event = "OnBeginTurn",
					Handler = function (self, target)
						-- from MMOcenaries Standalone_ Custom Perks
						
						local target_side = target and target.team and target.team.side or ''
						local target_pos = target:GetPos() or false
						local allycount = 0
						local squad = gv_Squads[target.Squad]
						local level = target:GetLevel()
						
						for _, id in ipairs(squad.units) do
							local unit = g_Units[id]
							if unit ~= target then
								local side = unit and unit.team and unit.team.side or ''
								if target_side ~= '' and side == target_side then
									local unit_pos = unit:GetPos() or false
									if target_pos and unit_pos then
										local dist = target_pos:Dist(unit_pos)
										if dist <= level * const.SlabSizeX then
											--allycount = allycount +1
											--print(unit)
											unit:ApplyTempHitPoints(level)
										end
									end
								end
							end
						end
					end,
					param_bindings = false,
				}),
			},
			'DisplayName', T(824460473306, --[[ModItemCharacterEffectCompositeDef ByTheBook DisplayName]] "Grunt Force"),
			'Description', T(953669658099, --[[ModItemCharacterEffectCompositeDef ByTheBook Description]] "Gumpy can apply additional effects whenever he uses explosives."),
			'OnAdded', function (self, obj)  end,
			'OnRemoved', function (self, obj)  end,
			'Icon', "Mod/GCExPrologue/Images/PerkCOUGARBlu 2.png",
			'Tier', "Personal",
		}),
		}),
	PlaceObj('ModItemFolder', {
		'name', "Sector Operations",
		'NameColor', RGBA(61, 122, 153, 255),
	}, {
		PlaceObj('ModItemSectorOperation', {
			Custom = false,
			GetOperationCost = function (self, merc, profession, idx)
				local sector = merc:GetSector()
				local loyalty = sector and GetCityLoyalty(sector.City) or 100
				local money_cost = self:ResolveValue("MoneyCostBase")
				if HasPerk(merc, "Negotiator") then
					local discount = CharacterEffectDefs.Negotiator:ResolveValue("discountPercent")
					money_cost = money_cost - MulDivRound(money_cost, discount, 100)
				end
				if loyalty>50 then
					money_cost = money_cost -  MulDivRound(money_cost,(loyalty-50) , 100)	
				end
				return {[1] = {value = money_cost, resource = "Money"}}
			end,
			GetSectorSlots = function (self, prof, sector)
				return 1
			end,
			HasOperation = function (self, sector)
				return false
			end,
			IsEnabled = function (self, sector)
				local mercs_available = GetAvailableMercs(sector, self)
				local prof = self.Professions[1]
				local mercs_current = GetOperationProfessionals(sector.Id, self.id, prof.id)
				if #mercs_available == 0 and #mercs_current == 0 then	
					return false, T{776447291880, "No <name> available", name = prof.display_name}
				end
				
				return true
			end,
			OnRemoveOperation = function (self, merc)
				local sector = merc:GetSector()
				local tbl = SetCraftOperationQueueTable(sector, self.id, {})
				SectorOperationValidateItemsToCraft(sector.Id, self.id, merc)
				ObjModified(tbl)
				sector.custom_operations[self.id] = nil
				if sector.started_operations and sector.started_operations[self.id] then
					NetSyncEvent("InterruptSectorOperation", sector.Id,self.id)				
				end
				SectorOperation_UpdateOnStop(self,{merc}, sector)
			end,
			OnSetOperation = function (self, merc, arg)
				local sector = merc:GetSector()
				local tbl = SetCraftOperationQueueTable(sector, self.id, {})
				SectorOperationValidateItemsToCraft(sector.Id, self.id, merc)
				SectorOperation_CraftTotalTime(sector.Id, self.id)
				ObjModified(tbl )
			end,
			Parameters = {
				PlaceObj('PresetParamNumber', {
					'Name', "PerTickProgress",
					'Value', 250,
					'Tag', "<PerTickProgress>",
				}),
				PlaceObj('PresetParamNumber', {
					'Name', "MoneyCostBase",
					'Value', 300,
					'Tag', "<MoneyCostBase>",
				}),
			},
			ProgressCompleteThreshold = function (self, merc, sector, prediction)
				if not merc then
					local mercs = GetOperationProfessionals(sector.Id, self.id)
					merc = mercs[1]
				end
				if not merc then return 0 end
				local stat = merc[self.related_stat]
				local calced_time = sector.custom_operations and sector.custom_operations[self.id] and sector.custom_operations[self.id].total_time or 0
				return calced_time
			end,
			ProgressCurrent = function (self, merc, sector, prediction)
				return  sector.custom_operations and sector.custom_operations[self.id] and sector.custom_operations[self.id].progress or -1
			end,
			ProgressPerTick = function (self, merc, prediction)
				if not merc then
					local mercs = GetOperationProfessionals(sector.Id, self.id)
					merc = mercs[1]
				end
				if not merc then return 0 end
				local progressPerTick = self:ResolveValue("PerTickProgress")
				if merc and HasPerk(merc, "JackOfAllTrades") then
					local mod = CharacterEffectDefs.JackOfAllTrades:ResolveValue("activityDurationMod")
					progressPerTick = progressPerTick + MulDivRound(progressPerTick, mod, 100)
				end
				if CheatEnabled("FastActivity") then
					progressPerTick = progressPerTick*100
				end
				
				return progressPerTick
			end,
			RequiredResources = {
				"Money",
			},
			SectorOperationStats = function (self, sector, check_only)
				local lines = {}				
				if self.min_requirement_stat and self.min_requirement_stat_value then
					local prop = table.find_value(UnitPropertiesStats:GetProperties(), "id", self.min_requirement_stat)
					if check_only then return true end
					lines[#lines + 1] = {text = T{300232421689, "Min Required <name>", name = prop.name}, value = T{139355455984, "<min_requirement_stat_value>",self}}					
				end
				return lines
			end,
			SortKey = 60,
			Tick = function (self, merc)
				local sector = merc:GetSector()
				local progress_per_tick = self:ProgressPerTick(merc)
				sector.custom_operations = sector.custom_operations or {}
				sector.custom_operations[self.id] = sector.custom_operations[self.id] or {}
				local prev_progress = (sector.custom_operations[self.id].progress or 0)
				sector.custom_operations[self.id].progress = prev_progress + progress_per_tick
				local cur_progress = sector.custom_operations[self.id].progress
				local queue = SectorOperationItems_GetItemsQueue(sector.Id, self.id) 
				local item_data
				local rem_progress 
				repeat
					if next(queue) then
						item_data = queue[1]
					end
					if not item_data then	
						self:Complete(sector)
						return
					end
					local mercs = gv_Squads[merc.Squad].units
					local recipe = CraftOperationsRecipes[item_data.recipe]
					local cur = sector.custom_operations[self.id].item_id
					if not cur or cur~=item_data.item_id then
						sector.custom_operations[self.id].item_id = item_data.item_id
						sector.custom_operations[self.id].item_id_start = rem_progress and rem_progress>0 and rem_progress or prev_progress
						rem_progress = 0
						-- get items
						for _, ingrd in ipairs(recipe.Ingredients) do
							--local result, results = InventoryFindItemInMercs(mercs, ingrd.item, ingrd.amount)
							local rem = TakeItemFromMercs(mercs, ingrd.item, ingrd.amount)
							if rem>0 then
								sector.custom_operations[self.id].item_id = false
								sector.custom_operations[self.id].item_id_start = 0
								CombatLog("important", T{788054483744, "Not enough parts to continue <em><activity></em> Operation in sector <SectorName(sector)>.", sector = sector, activity = self.display_name})
								self:Complete(sector)
								merc:SetCurrentOperation("Idle")
								return
							end
						end
					end	
					local cur_item_time =  SectorOperation_CraftItemTime(sector.Id,self.id,item_data.recipe )	
					if sector.custom_operations[self.id].item_id_start and cur_progress>=sector.custom_operations[self.id].item_id_start + cur_item_time then
						local used_time = sector.custom_operations[self.id].item_id_start + cur_item_time
						sector.custom_operations[self.id].item_id_start = 0
						sector.custom_operations[self.id].item_id = false
						local item = PlaceInventoryItem(recipe.ResultItem.item)
						if IsKindOf(item,"InventoryStack") then
							item.Amount = recipe.ResultItem.amount
						end	
						local items =  {item}
						AddItemsToSquadBag(merc.Squad, items)
						for idx, m in ipairs(mercs) do
							if #items<=0 then break end
							local unit = gv_UnitData[m]
							unit:AddItemsToInventory(items)
						end
						-- update queue
						rem_progress = used_time
						local tbl = GetCraftOperationQueueTable(gv_Sectors[sector.Id], self.id)
						table.remove(tbl, 1)			
						SetCraftOperationQueueTable(gv_Sectors[sector.Id], self.id, tbl)
						--SectorOperation_ItemsUpdateItemLists()
					end		
				until not next(queue) or (not rem_progress or rem_progress<=0)		
				self:CheckCompleted(merc, sector)
			end,
			campaign = "GCEXPrologue",
			group = "Default",
			icon = "UI/SectorOperations/T_Icon_Activity_Repair",
			id = "GCExProCraftCommonBase",
			image = "UI/Messages/Operations/craft_ammo",
			min_requirement_stat = "Explosives",
			min_requirement_stat_value = 50,
			related_stat = "Explosives",
		}),
		PlaceObj('ModItemSectorOperation', {
			Custom = false,
			GetOperationCost = function (self, merc, profession, idx)
				return SectorOperations["CraftCommonBase"].GetOperationCost(self, merc,profession, idx)
			end,
			GetSectorSlots = function (self, prof, sector)
				return 1
			end,
			HasOperation = function (self, sector)
				return sector.RepairShop
			end,
			IsEnabled = function (self, sector)
				return SectorOperations["CraftCommonBase"].IsEnabled(self, sector)
			end,
			OnRemoveOperation = function (self, merc)
				SectorOperations["CraftCommonBase"].OnRemoveOperation(self, merc)
			end,
			OnSetOperation = function (self, merc, arg)
				SectorOperations["CraftCommonBase"].OnSetOperation(self, merc, arg)
			end,
			Parameters = {
				PlaceObj('PresetParamNumber', {
					'Name', "PerTickProgress",
					'Value', 250,
					'Tag', "<PerTickProgress>",
				}),
				PlaceObj('PresetParamNumber', {
					'Name', "MoneyCostBase",
					'Value', 300,
					'Tag', "<MoneyCostBase>",
				}),
			},
			Professions = {
				PlaceObj('SectorOperationProfession', {
					'id', "Crafter",
					'display_name', T(476271350035, --[[ModItemSectorOperation GCExProCraftAmmo display_name]] "Crafter"),
					'display_name_all_caps', T(204369306027, --[[ModItemSectorOperation GCExProCraftAmmo display_name_all_caps]] "CRAFTER"),
					'display_name_plural', T(160767550234, --[[ModItemSectorOperation GCExProCraftAmmo display_name_plural]] "Crafters"),
					'display_name_plural_all_caps', T(103820866572, --[[ModItemSectorOperation GCExProCraftAmmo display_name_plural_all_caps]] "CRAFTERS"),
				}),
			},
			ProgressCompleteThreshold = function (self, merc, sector, prediction)
				return SectorOperations["CraftCommonBase"].ProgressCompleteThreshold(self, merc,sector, prediction)
			end,
			ProgressCurrent = function (self, merc, sector, prediction)
				return SectorOperations["CraftCommonBase"].ProgressCurrent(self, merc,sector, prediction)
			end,
			ProgressPerTick = function (self, merc, prediction)
				return SectorOperations["CraftCommonBase"].ProgressPerTick(self, merc, prediction)
			end,
			RequiredResources = {
				"Money",
				"Parts",
			},
			SectorOperationStats = function (self, sector, check_only)
				return SectorOperations["CraftCommonBase"].SectorOperationStats(self, sector, check_only)
			end,
			SortKey = 53,
			Tick = function (self, merc)
				return SectorOperations["CraftCommonBase"].Tick(self, merc)
			end,
			campaign = "GCEXPrologue",
			description = T(853934283251, --[[ModItemSectorOperation GCExProCraftAmmo description]] "Use mechanical Parts and other components to craft different types of ammo. High <color EmStyle>Explosives</color> stat will increase crafting speed."),
			display_name = T(703794691056, --[[ModItemSectorOperation GCExProCraftAmmo display_name]] "Craft Ammo"),
			group = "Default",
			icon = "UI/SectorOperations/T_Icon_Activity_Craft_Ammo",
			id = "GCExProCraftAmmo",
			image = "UI/Messages/Operations/craft_ammo",
			min_requirement_stat = "Explosives",
			min_requirement_stat_value = 50,
			related_stat = "Explosives",
			short_name = T(645910907844, --[[ModItemSectorOperation GCExProCraftAmmo short_name]] "Craft"),
		}),
		PlaceObj('ModItemSectorOperation', {
			Custom = false,
			GetOperationCost = function (self, merc, profession, idx)
				return SectorOperations["CraftCommonBase"].GetOperationCost(self, merc,profession, idx)
			end,
			GetSectorSlots = function (self, prof, sector)
				return 1
			end,
			HasOperation = function (self, sector)
				return sector.RepairShop
			end,
			IsEnabled = function (self, sector)
				return SectorOperations["CraftCommonBase"].IsEnabled(self, sector)
			end,
			OnRemoveOperation = function (self, merc)
				SectorOperations["CraftCommonBase"].OnRemoveOperation(self, merc)
			end,
			OnSetOperation = function (self, merc, arg)
				SectorOperations["CraftCommonBase"].OnSetOperation(self, merc, arg)
			end,
			Parameters = {
				PlaceObj('PresetParamNumber', {
					'Name', "PerTickProgress",
					'Value', 250,
					'Tag', "<PerTickProgress>",
				}),
				PlaceObj('PresetParamNumber', {
					'Name', "MoneyCostBase",
					'Value', 300,
					'Tag', "<MoneyCostBase>",
				}),
			},
			Professions = {
				PlaceObj('SectorOperationProfession', {
					'id', "Crafter",
					'display_name', T(715175559308, --[[ModItemSectorOperation GCExProCraftExplosives display_name]] "Crafter"),
					'display_name_all_caps', T(110846364488, --[[ModItemSectorOperation GCExProCraftExplosives display_name_all_caps]] "CRAFTER"),
					'display_name_plural', T(202437187213, --[[ModItemSectorOperation GCExProCraftExplosives display_name_plural]] "Crafters"),
					'display_name_plural_all_caps', T(694173670614, --[[ModItemSectorOperation GCExProCraftExplosives display_name_plural_all_caps]] "CRAFTERS"),
				}),
			},
			ProgressCompleteThreshold = function (self, merc, sector, prediction)
				return SectorOperations["CraftCommonBase"].ProgressCompleteThreshold(self, merc,sector, prediction)
			end,
			ProgressCurrent = function (self, merc, sector, prediction)
				return SectorOperations["CraftCommonBase"].ProgressCurrent(self, merc,sector, prediction)
			end,
			ProgressPerTick = function (self, merc, prediction)
				return SectorOperations["CraftCommonBase"].ProgressPerTick(self, merc, prediction)
			end,
			RequiredResources = {
				"Money",
				"Parts",
			},
			SectorOperationStats = function (self, sector, check_only)
				return SectorOperations["CraftCommonBase"].SectorOperationStats(self, sector, check_only)
			end,
			SortKey = 56,
			Tick = function (self, merc)
				return SectorOperations["CraftCommonBase"].Tick(self, merc)
			end,
			campaign = "GCEXPrologue",
			description = T(855436930088, --[[ModItemSectorOperation GCExProCraftExplosives description]] "Use mechanical Parts and other components to craft different types of explosives. High <color EmStyle>Explosives</color> stat will increase crafting speed."),
			display_name = T(874990136899, --[[ModItemSectorOperation GCExProCraftExplosives display_name]] "Craft Explosives"),
			group = "Default",
			icon = "UI/SectorOperations/T_Icon_Activity_Craft_Explosives",
			id = "GCExProCraftExplosives",
			image = "UI/Messages/Operations/craft_explosives",
			min_requirement_stat = "Explosives",
			min_requirement_stat_value = 50,
			related_stat = "Explosives",
			short_name = T(995930810902, --[[ModItemSectorOperation GCExProCraftExplosives short_name]] "Craft"),
		}),
		PlaceObj('ModItemSectorOperation', {
			CanPerformOperation = function (self, merc, profession)
				local sector = merc:GetSector()
				local context = {activity = self.display_name}
				if #GetAvailableIntelSectors(sector.Id) == 0 then
					return "OperationNoIntelItems", context
				else
					return	self:CanPerformOperationBase(merc)
				end	
			end,
			Custom = false,
			GetDescription = function (self, merc)
				local squad = gv_Squads[merc.Squad]
				local sector_id = squad and squad.CurrentSector
				return T{self.description}
			end,
			GetSectorSlots = function (self, prof, sector)
				return 2
			end,
			GetTimelineEventDescription = function (self, sector_id, eventcontext)
				local mercs
				local professionId = self.Professions and self.Professions[1] and self.Professions[1].id
				if eventcontext.mercs then
					mercs = table.map(eventcontext.mercs, function(id) return gv_UnitData[id].Nick end)
				else
					mercs = GetOperationProfessionalsGroupedByProfession(sector_id, self.id)
					mercs = table.map(professionId and mercs[professionId] or mercs, "Nick")
				end
				mercs = ConcatListWithAnd(mercs)
				return T{104423723687, "<em><mercs></em> will gather intel for a nearby sector.", mercs = mercs}
			end,
			IsEnabled = function (self, sector)
				if #GetAvailableIntelSectors(sector.Id) == 0 then
					return false,  T(232903998446, "No intel to be gathered.")
				end
				return true
			end,
			OnComplete = function (self, sector, mercs)
				local text = HandleGatherIntelCompleted(sector.Id, mercs)
				sector.intel_progress = 0
				local popup = true
				if InteractionRand(100, "EventOutcome") <= self:ResolveValue("outcome_chance") then
					-- get outcome
					local weights = {}
					for id,event in sorted_pairs(EventOperationsOutcomes) do
						if event:Condition(self.Id, sector,  mercs) then
							weights[#weights+1] = {event:GetWeight(self.Id, sector,  mercs), event}
						end
					end
					local event = GetWeightedRandom(weights, InteractionRand(nil, "EventOutcome"))
					if event then
						ShowPopupNotification(event.PopupId, SubContext(event,{base_activity_info = text or ""}))
						popup = false
						event:Effect(self.Id, sector,  mercs)
					end	
				end
				if popup and text then
					ShowPopupNotification("GatherIntelBase", {base_activity_info = text or ""})
				end
			end,
			Parameters = {
				PlaceObj('PresetParamNumber', {
					'Name', "threshold_per_sector",
					'Value', 1500,
					'Tag', "<threshold_per_sector>",
				}),
				PlaceObj('PresetParamNumber', {
					'Name', "base_progress_per_tick",
					'Value', 75,
					'Tag', "<base_progress_per_tick>",
				}),
				PlaceObj('PresetParamPercent', {
					'Name', "outcome_chance",
					'Value', 60,
					'Tag', "<outcome_chance>%",
				}),
			},
			Professions = {
				PlaceObj('SectorOperationProfession', {
					'id', "Spy",
					'display_name', T(277546803161, --[[ModItemSectorOperation GCExProGatherIntel display_name]] "Scout"),
					'description', T(541624543931, --[[ModItemSectorOperation GCExProGatherIntel description]] "The Scout will gather Intel about the surrounding Sectors."),
					'display_name_all_caps', T(335240102195, --[[ModItemSectorOperation GCExProGatherIntel display_name_all_caps]] "SCOUT"),
					'display_name_plural', T(734735372421, --[[ModItemSectorOperation GCExProGatherIntel display_name_plural]] "Scouts"),
					'display_name_plural_all_caps', T(907630808443, --[[ModItemSectorOperation GCExProGatherIntel display_name_plural_all_caps]] "SCOUTS"),
				}),
			},
			ProgressCompleteThreshold = function (self, merc, sector)
				return self:ResolveValue("threshold_per_sector") * #GetAvailableIntelSectors(sector.Id)
			end,
			ProgressCurrent = function (self, merc, sector)
				return sector.intel_progress or 0
			end,
			ProgressPerTick = function (self, merc, prediction)
				local perTick = self:ResolveValue("base_progress_per_tick") * (100 + Max(0,(merc.Wisdom-50)*2))/100
				if HasPerk(merc, "JackOfAllTrades") then
					local mod = CharacterEffectDefs.JackOfAllTrades:ResolveValue("activityDurationMod")
					perTick = perTick + MulDivRound(perTick, mod, 100)
				end
				return perTick
			end,
			ShowPauseProgress = true,
			SortKey = 20,
			Tick = function (self, merc)
				local sector = merc:GetSector()
				local progress_per_tick = self:ProgressPerTick(merc)
				if CheatEnabled("FastActivity") then
					progress_per_tick = progress_per_tick*100
				end
				sector.intel_progress = sector.intel_progress + progress_per_tick
				self:CheckCompleted(merc, sector)
			end,
			campaign = "GCEXPrologue",
			description = T(857225263264, --[[ModItemSectorOperation GCExProGatherIntel description]] "Scout the area within two sectors range and contact the locals to gather <color EmStyle>Intel</color> about nearby sectors. Assigning mercs with high <color EmStyle>Wisdom</color> increases the speed of the Operation."),
			display_name = T(717584663373, --[[ModItemSectorOperation GCExProGatherIntel display_name]] "Scout Area"),
			error_msg = T(898302966948, --[[ModItemSectorOperation GCExProGatherIntel error_msg]] "<color FlavorStyle>There is no new Intel in this area.</color>"),
			group = "Default",
			icon = "UI/SectorOperations/T_Icon_Activity_Scouting",
			id = "GCExProGatherIntel",
			image = "UI/Messages/Operations/scout",
			log_msg_start = T(967947944374, --[[ModItemSectorOperation GCExProGatherIntel log_msg_start]] "<color EmStyle><mercs></color> started <color EmStyle>Scouting</color> in "),
			related_stat = "Wisdom",
			short_name = T(673801412309, --[[ModItemSectorOperation GCExProGatherIntel short_name]] "Scouting"),
			sub_title = T(192416342694, --[[ModItemSectorOperation GCExProGatherIntel sub_title]] "Gather Intel for nearby sectors"),
		}),
		PlaceObj('ModItemSectorOperation', {
			Custom = false,
			GetTimelineEventDescription = function (self, sector_id, eventcontext)
				return T(300844268409, "<em><Nick></em> will finish resting.")
			end,
			HasOperation = function (self, merc)
				return false
			end,
			OnRemoveOperation = function (self, merc)
				merc.wounds_being_treated = 0
				if merc.RestTimer>0 and (Game.CampaignTime - merc.RestTimer) >= const.Satellite.UnitTirednessRestTime then				
						merc:SetTired(merc.Tiredness>0 and Max(merc.Tiredness-1, 0) or merc.Tiredness)
						merc.TravelTimerStart = 0
						merc.TravelTime = 0
						merc.WarnTired = true
				end
				merc.RestTimer = 0
			end,
			OnSetOperation = function (self, merc, arg)
				NetUpdateHash("OnSetOperation", self.id, merc.session_id)
				merc.wounds_being_treated = arg or PatientGetWoundedStacks(merc)
				merc.TravelTimerStart = 0
				if merc.RestTimer==0 then
					merc.RestTimer = Game.CampaignTime
				end
			end,
			Parameters = {
				PlaceObj('PresetParamNumber', {
					'Name', "HealPerTickBase",
					'Value', 10,
					'Tag', "<HealPerTickBase>",
				}),
				PlaceObj('PresetParamNumber', {
					'Name', "HealWoundThreshold",
					'Value', 1000,
					'Tag', "<HealWoundThreshold>",
				}),
			},
			ProgressCurrent = function (self, merc, sector)
				return merc.heal_wound_progress or 0
			end,
			ProgressPerTick = function (self, merc, prediction)
				if merc.wounds_being_treated >0 then
					return self:ResolveValue("HealPerTickBase")
				end
				return 0
			end,
			SectorMercsTick = function (self, merc)
				local busy = (g_ActiveBanters and #g_ActiveBanters > 0) or IsSetpiecePlaying() or GetDialog("ConversationDialog")
				local time = (Game.CampaignTime - merc.RestTimer)
				if not busy and (time % const.Satellite.UnitIdleTime) < 50 then
					local mercs = GetOperationProfessionals(merc:GetSector().Id, self.id)
					local actor = table.interaction_rand(mercs,"IdleVR")
					if actor then
						PlayVoiceResponse(actor, "Idle")
					end
				end
			end,
			ShowInCombatBadge = false,
			Tick = function (self, merc)
				UnitHealPerTick(merc, self:ProgressPerTick(merc), self:ResolveValue("HealWoundThreshold"))
			end,
			campaign = "GCEXPrologue",
			description = T(525959940629, --[[ModItemSectorOperation GCExProIdle description]] "Resting allows the merc to recover from Exhausted and Tired status effects while also restoring wounds and HP slowly."),
			display_name = T(584601935267, --[[ModItemSectorOperation GCExProIdle display_name]] "Resting"),
			group = "Default",
			icon = "UI/SectorOperations/T_Icon_Activity_Resting",
			id = "GCExProIdle",
			operation_type = set( "Healing" ),
			short_name = T(394919713487, --[[ModItemSectorOperation GCExProIdle short_name]] "Resting"),
			sub_title = T(436326444090, --[[ModItemSectorOperation GCExProIdle sub_title]] "No current tasks"),
		}),
		PlaceObj('ModItemSectorOperation', {
			CheckCompleted = function (self, merc, sector)
				if self:ProgressCurrent(merc[1], sector) >= self:ProgressCompleteThreshold(merc[1], sector) then
					local mercs = merc--GetOperationProfessionals(sector.Id, self.id)
					self:OnComplete(sector, mercs)
					local merc_names = {}
					-- move the merc that completed the operation last, because of the interrupt logic
					local count = #mercs
					for i=count,1, -1 do
						local m =  mercs[i]
					  	if self:ProgressCurrent(m, sector) >= self:ProgressCompleteThreshold(m, sector) then
								table.remove(mercs, i)
								table.insert(mercs, m)
							end
				    end
					for _, merc in ipairs(mercs) do
						merc_names[#merc_names + 1] = merc.Nick
						merc:SetCurrentOperation("Idle")
					end			
					if next(merc_names) then
						CombatLog("important", T{701411441832, "<em><mercs></em> finished <em>relaxing</em> in <SectorName(sector)>", mercs = ConcatListWithAnd(merc_names), sector = sector})
					end
					Msg("OperationCompleted", self, mercs, sector)
				end
			end,
			Complete = function (self, sector)
				local mercs = GetOperationProfessionals(sector.Id, self.id)
				local merc_names = {}
				for _, merc in ipairs(mercs) do
					merc_names[#merc_names + 1] = merc.Nick
					merc:SetCurrentOperation("Idle")
				end
				self:OnComplete(sector, mercs)
				if next(merc_names) then
					CombatLog("important", T{701411441832, "<em><mercs></em> finished <em>relaxing</em> in <SectorName(sector)>", mercs = ConcatListWithAnd(merc_names), sector = sector})
				end
				Msg("OperationCompleted", self, mercs, sector)
			end,
			Custom = false,
			GetOperationCost = function (self, merc, profession, idx)
				local sector = merc:GetSector()
				local loyalty = sector and GetCityLoyalty(sector.City) or 100
				local money_cost = self:ResolveValue("MoneyCostBase")
				if HasPerk(merc, "Negotiator") then
					local discount = CharacterEffectDefs.Negotiator:ResolveValue("discountPercent")
					money_cost = money_cost - MulDivRound(money_cost, discount, 100)
				end
				local money_cost_reduce = self:ResolveValue("MoneyCostLoyaltyReduce")
				local cost = money_cost -  MulDivRound(money_cost_reduce, loyalty, 100)
				return {[1] = {value = cost, resource = "Money"}}
			end,
			GetSectorSlots = function (self, prof, sector)
				return -1
			end,
			GetTimelineEventDescription = function (self, sector_id, eventcontext)
				if eventcontext.uId then
					return T(300844268409, "<em><Nick></em> will finish resting.")
				end	
				local mercs
				if eventcontext.mercs then
					mercs = table.map(eventcontext.mercs, function(id) return gv_UnitData[id].Nick end)
				else
					local professionId = self.Professions and self.Professions[1] and self.Professions[1].id
					mercs = GetOperationProfessionals(sector_id, self.id)
					mercs = table.map(professionId and mercs[professionId] or mercs, "Nick")
				end
				mercs = ConcatListWithAnd(mercs)
				return T{451827023939, "<em><mercs></em> will finish resting.", mercs = mercs}
			end,
			HasOperation = function (self, sector)
				return sector.RAndRAllowed
			end,
			OnComplete = function (self, sector, mercs)
				local scale = 4*self:ResolveValue("PerTickProgress") 
				for _,merc in ipairs(mercs) do	
					local progress = merc.randr_activity_progress
					if progress>=self:ResolveValue("ActivityDurationInHoursFull")*scale then
						merc:SetTired(const.utWellRested)
					elseif progress>=self:ResolveValue("ActivityDurationInHoursReduced")*scale then	
						merc:SetTired(Min(merc.Tiredness,0))
					elseif progress>=self:ResolveValue("ActivityDurationInHoursMin")*scale then	
						merc:SetTired(merc.Tiredness>0 and Max(merc.Tiredness-1, 0) or merc.Tiredness)
					end	
				end
			end,
			OnRemoveOperation = function (self, merc)
				self:OnComplete(merc:GetSector(), {merc})
				merc.randr_activity_progress = 0
				merc.wounds_being_treated = 0
			end,
			OnSetOperation = function (self, merc, arg)
				merc.randr_activity_progress = 0
				merc.wounds_being_treated = arg or PatientGetWoundedStacks(merc)
			end,
			Parameters = {
				PlaceObj('PresetParamNumber', {
					'Name', "HealPerTickBase",
					'Value', 14,
					'Tag', "<HealPerTickBase>",
				}),
				PlaceObj('PresetParamNumber', {
					'Name', "HealWoundThreshold",
					'Value', 900,
					'Tag', "<HealWoundThreshold>",
				}),
				PlaceObj('PresetParamNumber', {
					'Name', "MoneyCostBase",
					'Value', 250,
					'Tag', "<MoneyCostBase>",
				}),
				PlaceObj('PresetParamNumber', {
					'Name', "MoneyCostLoyaltyReduce",
					'Value', 200,
					'Tag', "<MoneyCostLoyaltyReduce>",
				}),
				PlaceObj('PresetParamNumber', {
					'Name', "ActivityDurationInHoursReduced",
					'Value', 8,
					'Tag', "<ActivityDurationInHoursReduced>",
				}),
				PlaceObj('PresetParamNumber', {
					'Name', "ActivityDurationInHoursMin",
					'Value', 6,
					'Tag', "<ActivityDurationInHoursMin>",
				}),
				PlaceObj('PresetParamNumber', {
					'Name', "ActivityDurationInHoursFull",
					'Value', 18,
					'Tag', "<ActivityDurationInHoursFull>",
				}),
				PlaceObj('PresetParamNumber', {
					'Name', "PerTickProgress",
					'Value', 800,
					'Tag', "<PerTickProgress>",
				}),
			},
			Professions = {
				PlaceObj('SectorOperationProfession', {
					'id', "Restman",
					'display_name', T(269293854596, --[[ModItemSectorOperation GCExProRandR display_name]] "Resting merc"),
					'description', T(326184103736, --[[ModItemSectorOperation GCExProRandR description]] "The Resting Mercs are actively resting restoring their strength for the coming fights."),
					'display_name_all_caps', T(729675102822, --[[ModItemSectorOperation GCExProRandR display_name_all_caps]] "RESTING MERC"),
					'display_name_plural', T(454220869487, --[[ModItemSectorOperation GCExProRandR display_name_plural]] "Resting mercs"),
					'display_name_plural_all_caps', T(364464259757, --[[ModItemSectorOperation GCExProRandR display_name_plural_all_caps]] "RESTING MERCS"),
				}),
			},
			ProgressCompleteThreshold = function (self, merc, sector, prediction)
				--8h,each tick is in 15min => 8*4 and scale 1000
				return self:ResolveValue("ActivityDurationInHoursFull")*4*self:ResolveValue("PerTickProgress")
			end,
			ProgressCurrent = function (self, merc, sector)
				return merc and merc.randr_activity_progress or 0
			end,
			ProgressPerTick = function (self, merc, prediction)
				local perTick = self:ResolveValue("PerTickProgress")
				if HasPerk(merc, "JackOfAllTrades") then
					local mod = CharacterEffectDefs.JackOfAllTrades:ResolveValue("activityDurationMod")
					perTick = perTick + MulDivRound(perTick, mod, 100)
				end
				return perTick
			end,
			RequiredResources = {
				"Money",
			},
			SectorMercsTick = function (self, merc)
				local sector = merc:GetSector()
				local mercs = GetOperationProfessionals(sector.Id, self.id)
				table.insert_unique(mercs, merc)
				
				local completed  = {}
				for _, m in ipairs( mercs) do
					UnitHealPerTick(m,self:ResolveValue("HealPerTickBase"), self:ResolveValue("HealWoundThreshold"))
					local progress_per_tick = self:ProgressPerTick(m)
					if CheatEnabled("FastActivity") then
						progress_per_tick = progress_per_tick*100
					end
					m.randr_activity_progress = m.randr_activity_progress + progress_per_tick
					if self:ProgressCurrent(m, sector) >= self:ProgressCompleteThreshold(m, sector) then
						completed[#completed +1] = m
					end
				end
				if next(completed) then	
					self:CheckCompleted(completed, sector)	
				end
			end,
			SortKey = 45,
			Tick = function (self, merc)
				return
			end,
			campaign = "GCEXPrologue",
			description = T(348182701224, --[[ModItemSectorOperation GCExProRandR description]] "Spend some time for active rest and entertainment. HP are restored faster, Wounds naturally heal faster, and all exhaustion effects are removed."),
			display_name = T(740662305604, --[[ModItemSectorOperation GCExProRandR display_name]] "R&R"),
			group = "Default",
			icon = "UI/SectorOperations/T_Icon_Activity_R_R",
			id = "GCExProRandR",
			image = "UI/Messages/Operations/r&r",
			log_msg_start = T(990796613771, --[[ModItemSectorOperation GCExProRandR log_msg_start]] "<color EmStyle><mercs></color> started <color EmStyle>relaxing</color> in "),
			operation_type = set( "Healing" ),
			short_name = T(435879402326, --[[ModItemSectorOperation GCExProRandR short_name]] "R&R"),
			sub_title = T(193779721710, --[[ModItemSectorOperation GCExProRandR sub_title]] "Rest and Recreation"),
		}),
		PlaceObj('ModItemSectorOperation', {
			CanPerformOperation = function (self, merc)
				local context = {activity = self.display_name}
				if merc.Mechanical == 0 then
					return "OperationMechanicalStatError", context
				else
					return self:CanPerformOperationBase(merc)
				end	
			end,
			Complete = function (self, sector)
				local mercs = GetOperationProfessionals(sector.Id, self.id)
				local merc_names = {}
				for _, merc in ipairs(mercs) do
					merc_names[#merc_names + 1] = merc.Nick
					merc:SetCurrentOperation("Idle")
				end
				self:OnComplete(sector, mercs)
				if next(merc_names) then
					CombatLog("important", T{258083168009, "<em><mercs></em> completed <em><activity></em> in <SectorName(sector)>", mercs = ConcatListWithAnd(merc_names),activity = self.display_name, sector = sector})
				end
				Msg("OperationCompleted", self, mercs, sector)
			end,
			Custom = false,
			GetSectorSlots = function (self, prof, sector)
				return 2
			end,
			GetTimelineEventDescription = function (self, sector_id, eventcontext)
				local mercs
				local professionId = self.Professions and self.Professions[1] and self.Professions[1].id
				if eventcontext.mercs then
					mercs = table.map(eventcontext.mercs, function(id) return gv_UnitData[id].Nick end)
				else
					mercs = GetOperationProfessionalsGroupedByProfession(sector_id, self.id)
					mercs = table.map(professionId and mercs[professionId] or mercs, "Nick")
				end
				mercs = ConcatListWithAnd(mercs)
				return T{177263993197, "<em><mercs></em> will finish repairing all items.", mercs = mercs}
			end,
			HasOperation = function (self, sector)
				return true
			end,
			IsEnabled = function (self, sector)
				local merc_ids=GetPlayerMercsInSector(sector.Id)
				local mercs = {}
				for _, id in ipairs(merc_ids) do
					mercs[#mercs+1] = gv_UnitData[id]
				end
				local to_repair= SectorOperationFillItemsToRepair(sector.Id,mercs,"checks")
				if not to_repair then
					return to_repair, T(348922386675, "No items that need repair")
				end
				return true
			end,
			OnRemoveOperation = function (self, merc)
				local sector = merc:GetSector()
				local mercs = GetOperationProfessionals(sector.Id, self.id,false, merc.session_id)
				-- reset items
				if #mercs<=0 then
					sector.sector_repair_items_queued = {}
					SectorOperationFillItemsToRepair(sector.Id,mercs)
					ObjModified(sector.sector_repair_items_queued)
					if sector.started_operations and sector.started_operations.RepairItems then
						NetSyncEvent("InterruptSectorOperation", sector.Id,"RepairItems")				
					end
					
					Msg("OperationCompleted", self, mercs, sector)
				end
			end,
			OnSetOperation = function (self, merc, arg)
				local sector = merc:GetSector()
				local mercs = GetOperationProfessionals(sector.Id, self.id)
				-- reset items
				sector.sector_repair_items_queued = {}
				SectorOperationFillItemsToRepair(sector.Id,mercs)
				ObjModified(sector.sector_repair_items_queued)
			end,
			Parameters = {
				PlaceObj('PresetParamNumber', {
					'Name', "restore_condition_per_Part",
					'Value', 20,
					'Tag', "<restore_condition_per_Part>",
				}),
				PlaceObj('PresetParamNumber', {
					'Name', "free_repair",
					'Value', 20,
					'Tag', "<free_repair>",
				}),
				PlaceObj('PresetParamNumber', {
					'Name', "min_time",
					'Value', 6,
					'Tag', "<min_time>",
				}),
				PlaceObj('PresetParamNumber', {
					'Name', "parts_per_step",
					'Value', 1,
					'Tag', "<parts_per_step>",
				}),
				PlaceObj('PresetParamNumber', {
					'Name', "stat_multiplier",
					'Value', 200,
					'Tag', "<stat_multiplier>",
				}),
			},
			Professions = {
				PlaceObj('SectorOperationProfession', {
					'id', "Repair",
					'display_name', T(696048306798, --[[ModItemSectorOperation GCExProRepairItems display_name]] "Mechanic"),
					'description', T(722220182190, --[[ModItemSectorOperation GCExProRepairItems description]] "The Mechanic will repair the selected items."),
					'display_name_all_caps', T(383438709954, --[[ModItemSectorOperation GCExProRepairItems display_name_all_caps]] "MECHANICS"),
					'display_name_plural', T(767677837809, --[[ModItemSectorOperation GCExProRepairItems display_name_plural]] "Mechanic"),
					'display_name_plural_all_caps', T(793168646095, --[[ModItemSectorOperation GCExProRepairItems display_name_plural_all_caps]] "MECHANICS"),
				}),
			},
			ProgressCompleteThreshold = function (self, merc, sector, prediction)
				local item, data = SectorOperationItemToRepair(sector.Id, prediction)
				if not item then return 0 end
				local queue = SectorOperationItems_GetItemsQueue(sector.Id,"RepairItems")
				
				local max = 0
				for _, data in ipairs(queue) do
					local item = SectorOperationRepairItems_GetItemFromData(data)
					if item then
						local max_condition = item:GetMaxCondition()			
						max = max + max_condition*item.RepairCost
					end
				end
				return max
			end,
			ProgressCurrent = function (self, merc, sector, prediction)
				local item, dta = SectorOperationItemToRepair(sector.Id, prediction)
				if not item then return 0 end
				local queue = SectorOperationItems_GetItemsQueue(sector.Id, "RepairItems")
				local max = 0
				for _, data in ipairs(queue) do
					local item =  SectorOperationRepairItems_GetItemFromData(data)
					if item then
						local prev_cond = item.Condition
						max = max + prev_cond*item.RepairCost + item.repair_progress
						if not prediction then
							NetUpdateHash("RepairItem_ProgressCurrent", item.id, item.class, item.Condition, item.repair_progress)
						end
					end
				end
				return max
			end,
			ProgressPerTick = function (self, merc, prediction)
				if not merc then return 0 end
				local sector = merc:GetSector()
				local mercs = GetOperationProfessionals(sector.Id, self.id)
				table.insert_unique(mercs, merc)
				
				local item, data = SectorOperationItemToRepair(sector.Id, prediction)
				if not item then
					return 0
				end
				-- add progress
				local sum_stat = GetSumOperationStats(mercs, "Mechanical", self:ResolveValue("stat_multiplier"))			
				return  sum_stat
			end,
			RequiredResources = {
				"Parts",
			},
			SectorMercsTick = function (self, merc)
				local sector = merc:GetSector()
				local start_time = sector.started_operations[self.id]
				local min_time = self:ResolveValue("min_time")
				local timediff =  (Game.CampaignTime - start_time)
				local min_h = (min_time*const.Scale.h)
				local ticks_left = 1 
				if timediff<min_h then
					-- does not progress first 6 (min_time) hours
					 return	
				elseif timediff==min_h then
					-- add all progress for the first 6(min_time) hours
					ticks_left = min_time*4
				end
				
				local mercs = GetOperationProfessionals(sector.Id, self.id)
				table.insert_unique(mercs, merc)
				
				for i=1,ticks_left do
					local item, data = SectorOperationItemToRepair(sector.Id)
					if not item then
						assert(not next(sector.sector_reapir_items_queued))
						self:Complete(sector)
						return
					end
					-- add progress
					local sum_stat = GetSumOperationStats(mercs, "Mechanical", self:ResolveValue("stat_multiplier"))
					local prev_cond = item.Condition
					local prev_progress = item.repair_progress
					local max_condition = item:GetMaxCondition()
					local to_repair = max_condition - prev_cond
					AddScaledProgress(item, "repair_progress", "Condition", sum_stat,max_condition, item.RepairCost)
					
					local repaired = item.Condition - prev_cond
					
					--use parts
					if repaired > 0 then
						if to_repair <= self:ResolveValue("free_repair") then
						else
							-- get one part
							local border = 0
							while border<max_condition do
								border = border + self:ResolveValue("restore_condition_per_Part")
								if item.Condition<border then
									break
								end	
								if prev_cond<border and item.Condition>=border then
									-- pay parts
									local parts, m, mbag, slot_name
									for _, merc in ipairs(mercs) do
										parts = merc:GetItem("Parts")			
										if parts then
											m = merc			
											slot_name = merc:GetItemSlot(item)
											break
										else	
											local bag = merc.Squad and GetSquadBagInventory(merc.Squad)
											if bag then
												parts = bag:GetItem("Parts")
												if parts then
													mbag = bag
													slot_name = "Inventory"
												end	
												break
											end
										end
									end
									if parts then							
										parts.Amount = parts.Amount - self:ResolveValue("parts_per_step") 
										if parts.Amount<=0 then
											if m then
												m:RemoveItem(slot_name, parts)
												DoneObject(parts)
												ObjModified(m)
											end	
											if mbag then
												mbag:RemoveItem(slot_name,parts)
												DoneObject(parts)
												ObjModified(mbag)
											end
											parts = false
										end
										InventoryUIRespawn()
									else
										item.Condition = prev_cond
										item.repair_progress = prev_progress
										CombatLog("important", T{788054483744, "Not enough parts to continue <em><activity></em> Operation in sector <SectorName(sector)>.", sector = sector, activity = self.display_name})
										self:Complete(sector)
										gv_Sectors[sector.Id].sector_repair_items_queued = {}
										local queue = gv_Sectors[sector.Id].sector_repair_items_queued
										ObjModified(queue)
									end
									break
								end
							end
						end
					end
					-- unjam jammed weapon
					if item:IsWeapon() and item.jammed then
						item:RepairJammed(item.Condition, data and data.unit and gv_UnitData[data.unit])
					end
				end
			end,
			SortKey = 50,
			Tick = function (self, merc)
				return
			end,
			campaign = "GCEXPrologue",
			description = T(158979149578, --[[ModItemSectorOperation GCExProRepairItems description]] "Use mechanical parts to repair damaged equipment. High <color EmStyle>Mechanical</color> stat will increase repair speed."),
			display_name = T(368495816255, --[[ModItemSectorOperation GCExProRepairItems display_name]] "Repair Items"),
			group = "Default",
			icon = "UI/SectorOperations/T_Icon_Activity_Repair",
			id = "GCExProRepairItems",
			image = "UI/Messages/Operations/repair_item",
			min_requirement_stat = "Mechanical",
			min_requirement_stat_value = 20,
			related_stat = "Mechanical",
			short_name = T(971433212423, --[[ModItemSectorOperation GCExProRepairItems short_name]] "Repair"),
			sub_title = T(106120146602, --[[ModItemSectorOperation GCExProRepairItems sub_title]] "Equipment needs repairs"),
		}),
		PlaceObj('ModItemSectorOperation', {
			Complete = function (self, sector)
				local stat = sector.training_stat
				local prop_meta = table.find_value(UnitPropertiesStats:GetProperties(), "id", stat)
				local stat_name = prop_meta.name	
				
				local mercs = GetOperationProfessionals(sector.Id, self.id, "Student")
				
				local merc_names = {}		
				for _, merc in ipairs(mercs) do	
					if merc.stat_learning then
						local learning_data = merc.stat_learning[stat] or empty_table
						local up_levels  = learning_data.up_levels or 0
						local progress = learning_data.progress or 0
						merc_names[up_levels] = merc_names[up_levels] or  {} 
						table.insert(merc_names[up_levels],merc.Nick)	
						if merc.stat_learning[stat] then
							merc.stat_learning[stat].up_levels = 0
						end
					end
				end
				
				local mercs = GetOperationProfessionals(sector.Id, self.id)
				for _, merc in ipairs(mercs) do
					merc:SetCurrentOperation("Idle")			
				end
				self:OnComplete(sector, mercs)
				if next (merc_names) then
					CombatLog("important", T{449926986206, "<stat_name> Training (<sector_id>) finished.",stat_name = stat_name, sector_id = GetSectorName(sector)})
					for up_levels, names in sorted_pairs(merc_names) do
						if up_levels == 0 then
							CombatLog("important", T{964788160766, "<merc_names> improved but not enough to gain a stat increase.", merc_names = ConcatListWithAnd(names) })
						else
							CombatLog("important", T{124938068325, "<em><unit></em> gained +<amount> <em><stat></em>",stat = stat_name, amount = Untranslated(up_levels), unit = ConcatListWithAnd(names)})
						end
					end					
				end
				Msg("OperationCompleted", self, mercs, sector)
			end,
			Custom = false,
			FilterAvailable = function (self, merc, profession)
				local sector = merc:GetSector()
				local stat = sector.training_stat
				if stat and profession == "Student" then
					if HasPerk(merc, "OldDog") then return false end
					local teachers = GetOperationProfessionals(sector.Id, self.id, "Teacher")
					local teacher = teachers[1]
					local solo = not teacher
					--if not teacher then return false end
					local max_learned_stat = self:ResolveValue("max_learned_stat")
					local teacher_stat = teacher and teacher[stat] or  self:ResolveValue("SoloTrainingStat")
					return  teacher_stat>merc[stat] and merc[stat]<=max_learned_stat
				else-- teacher
					local students = GetOperationProfessionals(sector.Id, self.id, "Student")
					for i_, st in ipairs(students) do
						if stat and st[stat] and merc[stat] and st[stat]>=merc[stat] then
							return false
						end	
					end
					return stat and  merc[stat] >= self.min_requirement_stat_value
				end
			end,
			GetRelatedStat = function (self, merc)
				local sector =  merc:GetSector()
				local stat = sector.training_stat
				if stat then
					return stat, merc[stat]
				end
			end,
			GetSectorSlots = function (self, prof, sector)
				if prof == "Student" then
					return  -1
				end
				return 1
			end,
			GetTimelineEventDescription = function (self, sector_id, eventcontext)
				local teachers, students
				local evmercs, prof
				if eventcontext.mercs then
					evmercs = table.map(eventcontext.mercs, function(id) return gv_UnitData[id].Nick end)
					prof = eventcontext.profession
				end
				local mercs = GetOperationProfessionalsGroupedByProfession(sector_id, self.id)
				local solo = not  next(mercs["Teacher"] )
				if prof then
					if prof=="Teacher" then
						teachers = evmercs 
						students = mercs["Student"]
						students = table.map(students, "Nick")
					else
						teachers = mercs["Teacher"]
						teachers = table.map(teachers, "Nick")
						students = evmercs
					end
				else
					students = mercs["Student"]
					students = table.map(students, "Nick")
					teachers = mercs["Teacher"]
					teachers = table.map(teachers, "Nick")
				end
				students = ConcatListWithAnd(students or empty_table)
				teachers = ConcatListWithAnd(teachers or empty_table)
				if solo then
					return T{178030548891, " <em><students></em> will finish training.", students = students}
				else
					return T{793160161691, "<em><teachers></em> will finish training <em><students></em>.", teachers = teachers, students = students}
				end
			end,
			HasOperation = function (self, sector)
				return true
			end,
			IsEnabled = function (self, sector)
				return true
			end,
			OnRemoveOperation = function (self, merc)
				merc.training_activity_progress = 0
			end,
			OnSetOperation = function (self, merc, arg)
				merc.training_activity_progress = 0
				if merc.OperationProfession=="Student" then
					local sector = merc:GetSector()
					local stat = sector.training_stat
					if merc.stat_learning and merc.stat_learning[stat] then
						merc.stat_learning[stat].up_levels = 0
					end
					return  merc.stat_learning and merc.stat_learning[stat] and merc.stat_learning[stat].progress or 0
				end
				RecalcOperationETAs(merc:GetSector(), "TrainMercs")		
			end,
			Parameters = {
				PlaceObj('PresetParamNumber', {
					'Name', "ActivityDurationInHoursFull",
					'Value', 48,
					'Tag', "<ActivityDurationInHoursFull>",
				}),
				PlaceObj('PresetParamNumber', {
					'Name', "PerTickProgress",
					'Value', 400,
					'Tag', "<PerTickProgress>",
				}),
				PlaceObj('PresetParamNumber', {
					'Name', "learning_speed",
					'Value', 250,
					'Tag', "<learning_speed>",
				}),
				PlaceObj('PresetParamNumber', {
					'Name', "wisdow_weight",
					'Value', 50,
					'Tag', "<wisdow_weight>",
				}),
				PlaceObj('PresetParamNumber', {
					'Name', "learning_base_bonus",
					'Value', 25,
					'Tag', "<learning_base_bonus>",
				}),
				PlaceObj('PresetParamNumber', {
					'Name', "max_learned_stat",
					'Value', 90,
					'Tag', "<max_learned_stat>",
				}),
				PlaceObj('PresetParamNumber', {
					'Name', "SoloTrainingStat",
					'Value', 80,
					'Tag', "<SoloTrainingStat>",
				}),
				PlaceObj('PresetParamPercent', {
					'Name', "SoloTrainingSpeedModifier",
					'Value', 300,
					'Tag', "<SoloTrainingSpeedModifier>%",
				}),
			},
			Professions = {
				PlaceObj('SectorOperationProfession', {
					'id', "Teacher",
					'display_name', T(934631536784, --[[ModItemSectorOperation GCExProTrainMercs display_name]] "Teacher"),
					'description', T(677120209402, --[[ModItemSectorOperation GCExProTrainMercs description]] "The Teacher will help the Students learn the selected skill."),
					'display_name_all_caps', T(603384179817, --[[ModItemSectorOperation GCExProTrainMercs display_name_all_caps]] "TEACHER"),
					'display_name_plural', T(546553319374, --[[ModItemSectorOperation GCExProTrainMercs display_name_plural]] "Teachers"),
					'display_name_plural_all_caps', T(428585506134, --[[ModItemSectorOperation GCExProTrainMercs display_name_plural_all_caps]] "TEACHERS"),
				}),
				PlaceObj('SectorOperationProfession', {
					'id', "Student",
					'display_name', T(815971753801, --[[ModItemSectorOperation GCExProTrainMercs display_name]] "Student"),
					'description', T(438214419402, --[[ModItemSectorOperation GCExProTrainMercs description]] "Students train a selected attribute over time. The higher the attribute the more time it takes to increase it."),
					'display_name_all_caps', T(749835744066, --[[ModItemSectorOperation GCExProTrainMercs display_name_all_caps]] "STUDENT"),
					'display_name_plural', T(550246650107, --[[ModItemSectorOperation GCExProTrainMercs display_name_plural]] "Students"),
					'display_name_plural_all_caps', T(104083815004, --[[ModItemSectorOperation GCExProTrainMercs display_name_plural_all_caps]] "STUDENTS"),
				}),
			},
			ProgressCompleteThreshold = function (self, merc, sector, prediction)
				--2 days,each tick is in 15min => 48*4 and scale 1000
				return self:ResolveValue("ActivityDurationInHoursFull")*4*self:ResolveValue("PerTickProgress")
			end,
			ProgressCurrent = function (self, merc, sector, prediction)
				if not merc then
					local mercs = GetOperationProfessionals(sector.Id, self.id, "Teacher") or GetOperationProfessionals(sector.Id, self.id, "Student")
					merc = mercs[1]	
				end	
				return merc and merc.training_activity_progress or 0
			end,
			ProgressPerTick = function (self, merc, prediction)
				local progressPerTick = self:ResolveValue("PerTickProgress")
				if merc and HasPerk(merc, "JackOfAllTrades") then
					local mod = CharacterEffectDefs.JackOfAllTrades:ResolveValue("activityDurationMod")
					progressPerTick = progressPerTick + MulDivRound(progressPerTick, mod, 100)
				end
				if CheatEnabled("FastActivity") then
					progressPerTick = progressPerTick*100
				end
				
				return progressPerTick
			end,
			SectorMercsTick = function (self, merc)
				local sector = merc:GetSector()
				local teacher = GetOperationProfessionals(sector.Id, self.id, "Teacher")
				local solo = not teacher
				local progress_per_tick = self:ProgressPerTick(teacher and teacher[1])
				local to_complete 
				merc.training_activity_progress = merc.training_activity_progress + progress_per_tick
				to_complete = self:ProgressCurrent(merc, sector) >= self:ProgressCompleteThreshold(merc, sector)
				merc.training_activity_progress = merc.training_activity_progress - progress_per_tick
				
				-- solo trianing
				--[[
				if not to_complete then
					local teachers = GetOperationProfessionals(sector.Id, self.id, "Teacher")
					if  not next(teachers) then
						to_complete = true 
					end
				end
				--]]
				if not to_complete then
					local students = GetOperationProfessionals(sector.Id, self.id, "Student")
					if not next(students) then
						to_complete = true
					end
				end
				-- call all mercs tick and complete after that		
				local mercs = GetOperationProfessionals(sector.Id, self.id)
				table.insert_unique(mercs, merc)
				for _, m in ipairs( mercs) do
					if to_complete then
						self:Tick(m)
					end
					m.training_activity_progress = m.training_activity_progress + progress_per_tick
				end
				if to_complete then
					self:Complete(sector)
				end
			end,
			SortKey = 40,
			Tick = function (self, merc)
				--Learning speed parameter defines the treshold of how much must be gained to gain 1 in a stat. Bigger number means slower.
				
				local sector = merc:GetSector()
				local stat = sector.training_stat
				if self:ProgressCurrent(merc, sector) >= self:ProgressCompleteThreshold(merc, sector) then
					return 
				end	
				local max_learned_stat = self:ResolveValue("max_learned_stat")
				local solo = false
				if merc.OperationProfession=="Student" then
					local teachers = GetOperationProfessionals(sector.Id, self.id, "Teacher")
					local teacher = teachers[1]
					solo = not  teacher
					local teacher_stat = teacher and teacher[stat] or  self:ResolveValue("SoloTrainingStat")
					local is_learned_max = merc[stat]>=teacher_stat or merc[stat]>max_learned_stat
					if is_learned_max then
						merc:SetCurrentOperation("Idle")
						return
					end
				end
				local solo_student =  solo and merc.OperationProfession=="Student"
				if merc.OperationProfession=="Teacher" or solo_student then
					-- teacher
					local students = GetOperationProfessionals(sector.Id, self.id, "Student")
					local t_stat = merc[stat] 
					if solo_student  then
						t_stat = self:ResolveValue("SoloTrainingStat")
						students = {merc}
					end
					for _, student in ipairs(students) do
						local is_learned_max = student[stat]>=t_stat or student[stat]>max_learned_stat
						if not is_learned_max then
							student.stat_learning = student.stat_learning or {}
							local progressPerTick = MulDivRound(t_stat,100 + merc.Leadership, 100) + self:ResolveValue("learning_base_bonus") 
							if HasPerk(merc, "Teacher") then
								local bonusPercent = CharacterEffectDefs.Teacher:ResolveValue("MercTrainingBonus")
								progressPerTick = progressPerTick + MulDivRound(progressPerTick, bonusPercent, 100)
							end			
							if solo_student then
								progressPerTick = MulDivRound(progressPerTick ,100, self:ResolveValue("SoloTrainingSpeedModifier"))--  training speed for solo practice should be 300% slower (3 times slower) 
							end
							if IsGameRuleActive("HardLessons") then
								progressPerTick = progressPerTick - MulDivRound(progressPerTick,GameRuleDefs.HardLessons:ResolveValue("TrainMercModifier"), 100)--  slow the attribute increase from training operation by 40%. 
							end
							student.stat_learning[stat] = student.stat_learning[stat] or {progress = 0, up_levels = 0}
							local learning_progress = student.stat_learning[stat].progress
							learning_progress = learning_progress + progressPerTick
							
							local progress_threshold = self:ResolveValue("learning_speed")*student[stat]*(100+self:ResolveValue("wisdow_weight") - Max(0,(student.Wisdom-50)*2))/100 
							if learning_progress >= progress_threshold then
								local gainAmount = 1
								local modId = string.format("StatTraining-%s-%s-%d", stat, student.session_id, GetPreciseTicks())
								GainStat(student, stat, gainAmount, modId, "Training")
					
								PlayVoiceResponse(student, "TrainingReceived")
								--CombatLog("important",T{424323552240, "<merc_nickname> gained +1 <stat_name> from training in <sector_id>", stat_name = stat_name, merc_nickname  =  student.Nick, sector_id = Untranslated(sector.Id)})
								learning_progress = 0
								student.stat_learning[stat].up_levels = student.stat_learning[stat].up_levels + 1
							end
							student.stat_learning[stat].progress = learning_progress
						end
					end
				end
				local students = GetOperationProfessionals(sector.Id, self.id, "Student")
				if not next(students) then
				--	self:Complete(sector)
					return
				end
			end,
			campaign = "GCEXPrologue",
			description = T(604611147214, --[[ModItemSectorOperation GCExProTrainMercs description]] "Assign a Trainer to improve the stats of the other mercs. The trainer must have a higher stat than the trained mercs. Practicing without a teacher is considerably slower and can't improve stats beyond a certain point."),
			display_name = T(653322783062, --[[ModItemSectorOperation GCExProTrainMercs display_name]] "Train mercs"),
			group = "Default",
			icon = "UI/SectorOperations/T_Icon_Activity_TrainingMercs_Teacher",
			id = "GCExProTrainMercs",
			image = "UI/Messages/Operations/train_merc",
			min_requirement_stat_value = 50,
			short_name = T(179935989899, --[[ModItemSectorOperation GCExProTrainMercs short_name]] "Training"),
			sub_title = T(439751957451, --[[ModItemSectorOperation GCExProTrainMercs sub_title]] "Spend some time to improve merc stats"),
		}),
		PlaceObj('ModItemSectorOperation', {
			BoostProgress = function (self, perc, sector)
				return 0
			end,
			CheckCompleted = function (self, merc, sector)
				if #GetOperationProfessionals(sector.Id, self.id, "Patient") == 0 then
					self:Complete(sector)
				end
			end,
			Complete = function (self, sector)
				local mercs = GetOperationProfessionals(sector.Id, self.id)
				local merc_names = {}
				local merc_doctors = table.map(GetOperationProfessionals(sector.Id, self.id,"Doctor"), function (o) return o.Nick end)
				
				for _, merc in ipairs(mercs) do
					merc_names[#merc_names + 1] = merc.Nick
					merc:SetCurrentOperation("Idle")
				end
				self:OnComplete(sector, mercs)
				if next(merc_doctors) then
					CombatLog("short",T{270791010368, "<em><doctors></em> finished treating wounds in <SectorName(sector)>",doctors = ConcatListWithAnd(merc_doctors), sector = sector})
				end
				Msg("OperationCompleted", self, mercs, sector)
			end,
			Custom = false,
			FilterAvailable = function (self, merc, profession)
				if profession == "Patient" then
					return merc:HasStatusEffect("Wounded")
				else
					return not self.min_requirement_stat or merc[self.min_requirement_stat] >= self.min_requirement_stat_value
				end
			end,
			GetOperationCost = function (self, merc, profession)
				if profession == "Patient" then
					return  {[1] = {value = self:ResolveValue("MedicalCostPerWound") * PatientGetWoundsBeingTreated(merc), resource = "Meds"}}
				else
					return {}
				end
			end,
			GetSectorSlots = function (self, prof, sector)
				if prof == "Patient" then
					return #GetOperationProfessionals(sector.Id, self.id, "Doctor") * self:ResolveValue("PatientSlotsPerDoctor")
				end
				return -1
			end,
			GetTimelineEventDescription = function (self, sector_id, eventcontext)
				local doctors, patients
				local evmercs, prof
				if eventcontext.mercs then
					evmercs = table.map(eventcontext.mercs, function(id) return gv_UnitData[id].Nick end)
					prof = eventcontext.profession
				end
				local mercs = GetOperationProfessionalsGroupedByProfession(sector_id, self.id)
				if prof then
					if prof=="Doctor" then
						doctors = evmercs 
						patients = mercs["Patient"]
						patients = table.map(patients, "Nick")
					else
						doctors = mercs["Doctor"]
						doctors = table.map(doctors, "Nick")
						patients = evmercs
					end
				else
					patients = mercs["Patient"]
					patients = table.map(patients, "Nick")
					doctors = mercs["Doctor"]
					doctors = table.map(doctors, "Nick")
				end
				patients = ConcatListWithAnd(patients)
				doctors = ConcatListWithAnd(doctors)
				return T{622566473650, "<em><doctors></em> will finish treating <em><patients></em>.", doctors = doctors, patients = patients}
			end,
			HasOperation = function (self, sector)
				return true
			end,
			IsEnabled = function (self, sector)
				local mercs_available = GetAvailableMercs(sector, self, "Doctor")
				local mercs_current = GetOperationProfessionals(sector.Id,"Doctor")
				if #mercs_available == 0 and #mercs_current == 0 then
					return false, T(449205258912, "No doctors available")
				end
				
				local mercs = GetPlayerMercsInSector(sector.Id)
				local wounded, wounded_unavailable
				for _, id in ipairs(mercs) do
					local unit = gv_UnitData[id]
					if unit:HasStatusEffect("Wounded") then
						if unit.Operation=="Idle" then
							wounded = true
						else
							wounded_unavailable = true
						end	
					end
				end
				if not wounded and  wounded_unavailable then
					return false, T(457589824008, "Wounded mercs are busy with another operation")
				elseif not wounded then
					return false, T(709401245024, "No wounded mercs")
				end
				
				return true
			end,
			OnRemoveOperation = function (self, merc)
				if IsPatient(merc) then
					merc.wounds_being_treated = 0
				end	
			end,
			OnSetOperation = function (self, merc, arg)
				if IsPatient(merc) then
					merc.wounds_being_treated = arg or PatientGetWoundedStacks(merc)
				end
				RecalcOperationETAs(merc:GetSector(), "TreatWounds")
			end,
			Parameters = {
				PlaceObj('PresetParamNumber', {
					'Name', "MedicalCostPerWound",
					'Value', 5,
					'Tag', "<MedicalCostPerWound>",
				}),
				PlaceObj('PresetParamNumber', {
					'Name', "HealPerTickBase",
					'Value', 15,
					'Tag', "<HealPerTickBase>",
				}),
				PlaceObj('PresetParamNumber', {
					'Name', "HealWoundThreshold",
					'Value', 1500,
					'Tag', "<HealWoundThreshold>",
				}),
				PlaceObj('PresetParamNumber', {
					'Name', "PatientSlotsPerDoctor",
					'Value', 3,
					'Tag', "<PatientSlotsPerDoctor>",
				}),
			},
			Professions = {
				PlaceObj('SectorOperationProfession', {
					'id', "Doctor",
					'display_name', T(520861552434, --[[ModItemSectorOperation GCExProTreatWounds display_name]] "Doctor"),
					'description', T(926238579191, --[[ModItemSectorOperation GCExProTreatWounds description]] "The Doctor will gradually heal all wounds afflicting the Patients."),
					'display_name_all_caps', T(767306261393, --[[ModItemSectorOperation GCExProTreatWounds display_name_all_caps]] "DOCTOR"),
					'display_name_plural', T(262954304860, --[[ModItemSectorOperation GCExProTreatWounds display_name_plural]] "Doctors"),
					'display_name_plural_all_caps', T(955848336200, --[[ModItemSectorOperation GCExProTreatWounds display_name_plural_all_caps]] "DOCTORS"),
				}),
				PlaceObj('SectorOperationProfession', {
					'id', "Patient",
					'display_name', T(140826675040, --[[ModItemSectorOperation GCExProTreatWounds display_name]] "Patient"),
					'display_name_all_caps', T(220576833136, --[[ModItemSectorOperation GCExProTreatWounds display_name_all_caps]] "PATIENT"),
					'display_name_plural', T(526048490363, --[[ModItemSectorOperation GCExProTreatWounds display_name_plural]] "Patients"),
					'display_name_plural_all_caps', T(644428064045, --[[ModItemSectorOperation GCExProTreatWounds display_name_plural_all_caps]] "PATIENTS"),
				}),
			},
			ProgressCompleteThreshold = function (self, merc, sector, prediction)
				if not merc or prediction~="Patient" then
					local slowest = 0
					for _, merc in ipairs(GetOperationProfessionals(sector.Id, self.id, "Patient")) do
						slowest = Max(slowest, PatientGetWoundsBeingTreated(merc) * self:ResolveValue("HealWoundThreshold"))
					end
					return slowest
				end
				
				return (IsPatient(merc) or prediction=="Patient") and PatientGetWoundsBeingTreated(merc) * self:ResolveValue("HealWoundThreshold") or 0
			end,
			ProgressCurrent = function (self, merc, sector, prediction)
				if not merc or prediction~="Patient"  then
					local slowest = 0
					for _, merc in ipairs(GetOperationProfessionals(sector.Id, self.id, "Patient")) do
						slowest = Max(slowest, merc.heal_wound_progress)
					end
					return slowest
				end
				return (IsPatient(merc) or prediction=="Patient") and merc.heal_wound_progress or 0
			end,
			ProgressPerTick = function (self, merc, prediction)
				if IsPatient(merc) or prediction == "Patient" then
					local bonus = GetHealingBonus(merc:GetSector(), self.id)
					local perTick = MulDivRound(self:ResolveValue("HealPerTickBase"), bonus, 100)
					if HasPerk(merc, "JackOfAllTrades") then
						local mod = CharacterEffectDefs.JackOfAllTrades:ResolveValue("activityDurationMod")
						perTick = perTick + MulDivRound(perTick, mod, 100)
					end
					return perTick
				end
				return 0
			end,
			RequiredResources = {
				"Meds",
			},
			SectorOperationStats = function (self, sector, check_only)
				if check_only then return true end
				local lines = {}
				if self.min_requirement_stat and self.min_requirement_stat_value then
					local prop = table.find_value(UnitPropertiesStats:GetProperties(), "id", self.min_requirement_stat)
					lines[#lines + 1] = {text =  T{300232421689, "Min Required <name>", name = prop.name},value= T{139355455984, "<min_requirement_stat_value>", self}}
				end
				local factor = GetHealingBonus(sector, self.id)
				if factor<=100 then
					lines[#lines + 1] = {text = T(517619818105, "Healing Factor"), value = T{881588660903, "<percent(factor)>", factor = factor}}
				else
					lines[#lines + 1] = {text = T(517619818105, "Healing Factor"), value = T{985654435134, "<FormatAsFloat(factor, 100,1)>x", factor = factor}}
				end
				return lines, false
			end,
			SortKey = 10,
			Tick = function (self, merc)
				local sector = merc:GetSector()
				if IsPatient(merc) then
					UnitHealPerTick(merc, self:ProgressPerTick(merc),self:ResolveValue("HealWoundThreshold"))
					local doctors = GetOperationProfessionals(sector.Id, self.id,"Doctor")
					if IsPatientReady(merc) or #doctors<=0 then
						if merc.OperationProfessions and merc.OperationProfessions.Doctor then
							merc.OperationProfession = "Doctor"	
							merc:RemoveOperationProfession("Patient")					
						else
							if PatientGetWoundedStacks(merc)==0 then
								CombatLog("important", T{730468857355, "<merc_name> has been <em>cured of all wounds</em>", merc_name = merc.Nick})
							end
							merc:SetCurrentOperation("Idle")
						end
					end
				end
				if IsDoctor(merc) then
					self:CheckCompleted(merc, sector)
				end
			end,
			campaign = "GCEXPrologue",
			description = T(662181340156, --[[ModItemSectorOperation GCExProTreatWounds description]] "Mercs with high <color EmStyle>Medical</color> skill can treat the wounds of other mercs and themselves at the cost of <color EmStyle>Meds</color>."),
			display_name = T(864024291133, --[[ModItemSectorOperation GCExProTreatWounds display_name]] "Treat Wounds"),
			group = "Default",
			icon = "UI/SectorOperations/T_Icon_Activity_Healing",
			id = "GCExProTreatWounds",
			image = "UI/Messages/Operations/treat_wounds",
			min_requirement_stat = "Medical",
			min_requirement_stat_value = 30,
			operation_type = {
				Healing = true,
			},
			related_stat = "Medical",
			short_name = T(201164433337, --[[ModItemSectorOperation GCExProTreatWounds short_name]] "Healing"),
			sub_title = T(586495221710, --[[ModItemSectorOperation GCExProTreatWounds sub_title]] "Spend Meds to heal wounded mercs"),
		}),
		PlaceObj('ModItemSectorOperation', {
			BoostProgress = function (self, perc, sector)
				-- nop
			end,
			CheckCompleted = function (self, merc, sector)
				if self:ProgressCurrent(merc, sector) >= self:ProgressCompleteThreshold(merc, sector) then
					self:Complete(merc)
				end
			end,
			Comment = "New mercs are placed here.",
			Complete = function (self, merc)
				if  merc then -- is actually the merc
					merc:SetMessengerOnline(true)
					HiredMercArrived( merc)
					Msg("OperationCompleted", self,  merc, merc:GetSector())
				end
			end,
			Custom = false,
			GetTimelineEventDescription = function (self, sector_id, eventcontext)
				return T(392158132768, "<em><Nick></em> will arrive in Grand Chien at <em><SectorName(sector)></em>.")
			end,
			HasOperation = function (self, sector)
				return false
			end,
			IsEnabled = function (self, sector)
				return true
			end,
			ModifyProgress = function (self, value, sector)
				merc.arriving_progress = value
			end,
			OnComplete = function (self, sector, mercs)
				-- todo
			end,
			OnSetOperation = function (self, merc, arg)
				merc.arriving_progress = 0
				merc:SetMessengerOnline(false)
			end,
			ProgressCompleteThreshold = function (self, merc, sector, prediction)
				return GetMercArrivalTime()
			end,
			ProgressCurrent = function (self, merc, sector)
				return merc and merc.arriving_progress or 0
			end,
			ProgressPerTick = function (self, merc, prediction)
				return const.Satellite.Tick
			end,
			SortKey = 7,
			Tick = function (self, merc)
				local sector = merc:GetSector()
				local progress_per_tick = self:ProgressPerTick(merc)
				if CheatEnabled("FastActivity") then
					progress_per_tick = progress_per_tick*100
				end
				merc.arriving_progress = merc.arriving_progress + progress_per_tick
				self:CheckCompleted(merc, sector)
			end,
			campaign = "GCEXPrologue",
			display_name = T(584057475971, --[[ModItemSectorOperation GCExProArriving display_name]] "Arriving in Grand Chien"),
			group = "System Operations",
			icon = "UI/SectorOperations/T_Icon_Activity_Arriving",
			id = "GCExProArriving",
		}),
		PlaceObj('ModItemSectorOperation', {
			BoostProgress = function (self, perc, sector)
				-- nop
			end,
			CanPerformOperationBase = function (self, merc, profession)
				return
			end,
			CheckCompleted = function (self, merc, sector)
				if self:ProgressCurrent(merc, sector) >= self:ProgressCompleteThreshold(merc, sector) then
					self:Complete(merc)
				end
			end,
			Comment = "System operation for units moving on the map",
			Complete = function (self, sector)
				return
			end,
			Custom = false,
			GetAssignMessage = function (self, nameCombination, costTexts)
				return ""
			end,
			GetDescription = function (self, merc)
				local s = merc.Squad
				local squad = gv_Squads[s]
				local sector = squad.CurrentSector
				local destId = GetSquadFinalDestination(sector, squad.route)
				local destS = gv_Sectors[destId]
				return T{self.description, destination = destS and GetSectorName(destS)}
			end,
			HasOperation = function (self, sector)
				return false
			end,
			IsEnabled = function (self, sector)
				return true
			end,
			ModifyProgress = function (self, value, sector)
				merc.traveling_progress = value
			end,
			OnComplete = function (self, sector, mercs)
				-- todo
			end,
			OnRemoveOperation = function (self, merc)
				local squad = merc.Squad
				squad = squad and gv_Squads[squad]
				
				-- heal in easy mode or when on a boat
				if IsGameRuleActive("ForgivingMode") or IsSquadWaterTravelling(squad) then
					merc.wounds_being_treated = 0
				end
			end,
			OnSetOperation = function (self, merc, arg)
				merc.traveling_progress = 0
				
				local squad = merc.Squad
				squad = squad and gv_Squads[squad]
				
				-- heal in easy mode or when on a boat
				if IsGameRuleActive("ForgivingMode") or IsSquadWaterTravelling(squad) then
					merc.wounds_being_treated = arg or PatientGetWoundedStacks(merc)
				end
			end,
			Parameters = {
				PlaceObj('PresetParamNumber', {
					'Name', "HealPerTickBase",
					'Value', 10,
					'Tag', "<HealPerTickBase>",
				}),
				PlaceObj('PresetParamNumber', {
					'Name', "HealWoundThreshold",
					'Value', 1000,
					'Tag', "<HealWoundThreshold>",
				}),
			},
			ProgressCompleteThreshold = function (self, merc, sector, prediction)
				return merc.OperationInitialETA or GetOperationTimerInitialETA(merc) or 0
			end,
			ProgressCurrent = function (self, merc, sector, prediction)
				return merc and merc.traveling_progress or 0
			end,
			ProgressPerTick = function (self, merc, prediction)
				return const.Satellite.Tick
			end,
			SectorOperationStats = function (self, sector)
				return false, false
			end,
			ShowInCombatBadge = false,
			SortKey = 7,
			Tick = function (self, merc)
				local sector = merc:GetSector()
				
				local squad = merc.Squad
				squad = squad and gv_Squads[squad]
				
				-- heal in easy mode or when on a boat
				if IsGameRuleActive("ForgivingMode") or IsSquadWaterTravelling(squad) then
					UnitHealPerTick(merc,self:ResolveValue("HealPerTickBase"), self:ResolveValue("HealWoundThreshold"))
				end
				
				local progress_per_tick = self:ProgressPerTick(merc)
				if CheatEnabled("FastActivity") then
					progress_per_tick = progress_per_tick*100
				end
				merc.traveling_progress = merc.traveling_progress + progress_per_tick
				self:CheckCompleted(merc, sector)
			end,
			campaign = "GCEXPrologue",
			description = T(616062847614, --[[ModItemSectorOperation GCExProTravelling description]] "Traveling to <destination>"),
			display_name = T(354332336243, --[[ModItemSectorOperation GCExProTravelling display_name]] "Traveling"),
			group = "System Operations",
			icon = "UI/SectorOperations/T_Icon_Activity_Traveling",
			id = "GCExProTravelling",
			operation_type = set( "Healing" ),
		}),
		}),
	PlaceObj('ModItemFolder', {
		'name', "Sectors",
	}, {
		PlaceObj('ModItemFolder', {
			'name', "Seagul Island",
			'NameColor', RGBA(120, 200, 43, 255),
		}, {
			PlaceObj('ModItemSector', {
				'comment', "Old Research Facility",
				'mapName', "gribVwV",
				'campaignId', "GCEXPrologue",
				'sectorId', "B3",
				'SatelliteSectorObj', PlaceObj('SatelliteSector', {
					'Id', "B3",
					'Map', "gribVwV",
					'MapTier', 20,
					'modId', "GCExPrologue",
					'RunLoyaltyLogic', false,
					'display_name', T(103725956697, --[[ModItemCampaignPreset GCEXPrologue display_name Sector name for B3]] "Old Research Facility"),
					'TerrainType', "Jungle",
					'WeatherZone', "SouthJungle",
					'MinFlareCarriers', 0,
					'MaxFlareCarriers', 0,
					'RepairShop', true,
					'bidirectionalRoadApply', true,
					'ImpassableForDiamonds', true,
					'bidirectionalBlockApply', true,
					'BlockTravel', set({
	East = false,
	North = false,
	South = false,
	West = false,
}),
					'image', "UI/SatelliteView/SectorImages/I18.dds",
					'awareness_sequence', "Skip Setpiece",
					'MusicCombat', "Outpost_Conflict",
					'MusicConflict', "Outpost_Conflict",
					'MusicExploration', "Swamp_Exploration",
				}),
			}),
			PlaceObj('ModItemSector', {
				'comment', "Old Military Airport",
				'mapName', "q5Smwah",
				'campaignId', "GCEXPrologue",
				'sectorId', "B4",
				'SatelliteSectorObj', PlaceObj('SatelliteSector', {
					'Id', "B4",
					'Map', "q5Smwah",
					'MapTier', 20,
					'modId', "GCExPrologue",
					'RunLoyaltyLogic', false,
					'display_name', T(599917389756, --[[ModItemCampaignPreset GCEXPrologue display_name Sector name for B4]] "Old Military Airport"),
					'TerrainType', "Urban",
					'WeatherZone', "SouthJungle",
					'MinFlareCarriers', 0,
					'MaxFlareCarriers', 0,
					'bidirectionalRoadApply', true,
					'ImpassableForDiamonds', true,
					'bidirectionalBlockApply', true,
					'BlockTravel', set({
	East = true,
	North = true,
	South = false,
	West = false,
}),
					'image', "UI/SatelliteView/SectorImages/D13.dds",
					'awareness_sequence', "Skip Setpiece",
					'MusicCombat', "Battle_Normal",
					'MusicConflict', "Swamp_Conflict",
					'MusicExploration', "Outpost_Exploration",
				}),
			}),
			PlaceObj('ModItemSector', {
				'comment', "OldForest",
				'mapName', "T4W3sML",
				'campaignId', "GCEXPrologue",
				'sectorId', "C3",
				'SatelliteSectorObj', PlaceObj('SatelliteSector', {
					'Id', "C3",
					'Map', "T4W3sML",
					'MapTier', 20,
					'modId', "GCExPrologue",
					'RunLoyaltyLogic', false,
					'display_name', T(857250597405, --[[ModItemCampaignPreset GCEXPrologue display_name Sector name for C3]] "Inner Forest"),
					'TerrainType', "Jungle",
					'WeatherZone', "Erny",
					'MinFlareCarriers', 0,
					'MaxFlareCarriers', 0,
					'RAndRAllowed', true,
					'bidirectionalRoadApply', true,
					'Roads', set({
	East = false,
	North = false,
}),
					'ImpassableForDiamonds', true,
					'bidirectionalBlockApply', true,
					'BlockTravel', set({
	East = false,
	North = false,
	South = true,
	West = true,
}),
					'image', "UI/SatelliteView/SectorImages/D19.dds",
					'MusicCombat', "Town_Conflict",
					'MusicConflict', "Town_Conflict",
					'MusicExploration', "Swamp_Exploration",
				}),
			}),
			PlaceObj('ModItemSector', {
				'mapName', "rigmhkd",
				'campaignId', "GCEXPrologue",
				'sectorId', "C4",
				'SatelliteSectorObj', PlaceObj('SatelliteSector', {
					'Id', "C4",
					'Map', "rigmhkd",
					'MapTier', 20,
					'modId', "GCExPrologue",
					'RunLoyaltyLogic', false,
					'display_name', T(845956605616, --[[ModItemCampaignPreset GCEXPrologue display_name Sector name for C4]] "Abandoned Village"),
					'TerrainType', "Jungle",
					'WeatherZone', "CursedForest",
					'MinFlareCarriers', 0,
					'MaxFlareCarriers', 0,
					'bidirectionalRoadApply', true,
					'ImpassableForDiamonds', true,
					'bidirectionalBlockApply', true,
					'image', "UI/SatelliteView/SectorImages/E14.dds",
					'awareness_sequence', "Skip Setpiece",
					'MusicCombat', "Battle_Tough",
					'MusicConflict', "Cursed_Conflict",
					'MusicExploration', "SpecificSpooky_Exploration",
				}),
			}),
			PlaceObj('ModItemSector', {
				'mapName', "pwSHwww",
				'campaignId', "GCEXPrologue",
				'sectorId', "C4_Underground",
				'SatelliteSectorObj', PlaceObj('SatelliteSector', {
					'Id', "C4_Underground",
					'Map', "pwSHwww",
					'MapTier', 30,
					'modId', "GCExPrologue",
					'GroundSector', "C4",
					'display_name', T(472770159405, --[[ModItemCampaignPreset GCEXPrologue display_name Sector name for C4_Underground]] "Unknown Location"),
					'TerrainType', "",
					'Passability', "Blocked",
					'bidirectionalRoadApply', true,
					'bidirectionalBlockApply', true,
					'image', "UI/SatelliteView/SectorImages/C20U.dds",
				}),
			}),
			PlaceObj('ModItemSector', {
				'comment', "Seagul Port",
				'mapName', "g5jmezY",
				'campaignId', "GCEXPrologue",
				'sectorId', "C5",
				'SatelliteSectorObj', PlaceObj('SatelliteSector', {
					'Id', "C5",
					'Map', "g5jmezY",
					'MapTier', 20,
					'modId', "GCExPrologue",
					'RunLoyaltyLogic', false,
					'display_name', T(738448180148, --[[ModItemCampaignPreset GCEXPrologue display_name Sector name for C5]] "Seagul Port"),
					'Side', "player1",
					'TerrainType', "Urban",
					'WeatherZone', "Erny",
					'Passability', "Land and Water",
					'MinFlareCarriers', 0,
					'MaxFlareCarriers', 0,
					'bidirectionalRoadApply', true,
					'bidirectionalBlockApply', true,
					'BlockTravel', set({
	South = false,
	West = false,
}),
					'image', "UI/SatelliteView/SectorImages/E11.dds",
					'Port', true,
					'PricePerTile', 20,
					'awareness_sequence', "Skip Setpiece",
				}),
			}),
			PlaceObj('ModItemSector', {
				'mapName', "ehvTmk7",
				'campaignId', "GCEXPrologue",
				'sectorId', "D4",
				'SatelliteSectorObj', PlaceObj('SatelliteSector', {
					'Id', "D4",
					'Map', "ehvTmk7",
					'MapTier', 20,
					'modId', "GCExPrologue",
					'RunLoyaltyLogic', false,
					'display_name', T(306215995940, --[[ModItemCampaignPreset GCEXPrologue display_name Sector name for D4]] "Smugler's Camp"),
					'Side', "neutral",
					'TerrainType', "Jungle",
					'WeatherZone', "Erny",
					'MinFlareCarriers', 0,
					'MaxFlareCarriers', 0,
					'bidirectionalRoadApply', true,
					'ImpassableForDiamonds', true,
					'bidirectionalBlockApply', true,
					'BlockTravel', set({
	East = true,
	North = false,
	South = true,
	West = true,
}),
					'image', "UI/SatelliteView/SectorImages/D18.dds",
					'MusicCombat', "Jungle_Conflict",
					'MusicConflict', "Jungle_Conflict",
					'MusicExploration', "Exploration_Beach",
				}),
			}),
			PlaceObj('ModItemSector', {
				'mapName', "gJ4VFV6",
				'campaignId', "GCEXPrologue",
				'sectorId', "D5",
				'SatelliteSectorObj', PlaceObj('SatelliteSector', {
					'Id', "D5",
					'Map', "gJ4VFV6",
					'MapTier', 20,
					'modId', "GCExPrologue",
					'RunLoyaltyLogic', false,
					'display_name', T(509702098662, --[[ModItemCampaignPreset GCEXPrologue display_name Sector name for D5]] "Abandoned Bunker"),
					'TerrainType', "Jungle",
					'WeatherZone', "Erny",
					'MinFlareCarriers', 0,
					'MaxFlareCarriers', 0,
					'bidirectionalRoadApply', true,
					'ImpassableForDiamonds', true,
					'bidirectionalBlockApply', true,
					'BlockTravel', set({
	East = true,
	North = false,
	South = true,
	West = true,
}),
					'image', "UI/SatelliteView/SectorImages/E13.dds",
					'awareness_sequence', "Skip Setpiece",
				}),
			}),
			}),
		PlaceObj('ModItemFolder', {
			'name', "Ernie Island",
			'NameColor', RGBA(120, 200, 43, 255),
		}, {
			PlaceObj('ModItemSector', {
				'comment', "FlagHill",
				'mapName', "gfVhfD",
				'campaignId', "GCEXPrologue",
				'sectorId', "K4",
				'SatelliteSectorObj', PlaceObj('SatelliteSector', {
					'Id', "K4",
					'Map', "gfVhfD",
					'MapTier', 10,
					'modId', "GCExPrologue",
					'RunLoyaltyLogic', false,
					'display_name', T(842006143436, --[[ModItemCampaignPreset GCEXPrologue display_name Sector name for K4]] "Flag Hill"),
					'Side', "player1",
					'StickySide', true,
					'WeatherZone', "Erny",
					'MinFlareCarriers', 0,
					'MaxFlareCarriers', 0,
					'bidirectionalRoadApply', true,
					'Roads', set({
	East = false,
}),
					'ImpassableForDiamonds', true,
					'bidirectionalBlockApply', true,
					'BlockTravel', set({
	East = false,
	North = true,
	South = true,
	West = true,
}),
					'BlockTravelRiver', set( "East" ),
					'image', "UI/SatelliteView/SectorImages/I01.dds",
				}),
			}),
			PlaceObj('ModItemSector', {
				'comment', "Outlook",
				'mapName', "AygWRur",
				'campaignId', "GCEXPrologue",
				'sectorId', "K5",
				'SatelliteSectorObj', PlaceObj('SatelliteSector', {
					'Id', "K5",
					'Map', "AygWRur",
					'MapTier', 10,
					'modId', "GCExPrologue",
					'RunLoyaltyLogic', false,
					'display_name', T(507855526912, --[[ModItemCampaignPreset GCEXPrologue display_name Sector name for K5]] "Outlook"),
					'Side', "player1",
					'StickySide', true,
					'WeatherZone', "Erny",
					'MinFlareCarriers', 0,
					'MaxFlareCarriers', 0,
					'bidirectionalRoadApply', true,
					'ImpassableForDiamonds', true,
					'bidirectionalBlockApply', true,
					'BlockTravel', set({
	East = false,
	North = false,
	South = true,
	West = false,
}),
					'BlockTravelRiver', set( "East", "North", "West" ),
					'image', "UI/SatelliteView/SectorImages/I02.dds",
				}),
			}),
			PlaceObj('ModItemSector', {
				'comment', "Emerald",
				'mapName', "YTPoSVg",
				'campaignId', "GCEXPrologue",
				'sectorId', "K6",
				'SatelliteSectorObj', PlaceObj('SatelliteSector', {
					'Id', "K6",
					'Map', "YTPoSVg",
					'MapTier', 10,
					'modId', "GCExPrologue",
					'RunLoyaltyLogic', false,
					'display_name', T(759089235125, --[[ModItemCampaignPreset GCEXPrologue display_name Sector name for K6]] "Emerald Coast"),
					'Side', "player1",
					'StickySide', true,
					'WeatherZone', "Erny",
					'MinFlareCarriers', 0,
					'MaxFlareCarriers', 0,
					'bidirectionalRoadApply', true,
					'ImpassableForDiamonds', true,
					'bidirectionalBlockApply', true,
					'BlockTravel', set({
	East = true,
	North = false,
	South = true,
	West = false,
}),
					'BlockTravelRiver', set( "North", "West" ),
					'image', "UI/SatelliteView/SectorImages/I03.dds",
				}),
			}),
			PlaceObj('ModItemSector', {
				'comment', "Rust",
				'mapName', "QcNU7NV",
				'campaignId', "GCEXPrologue",
				'sectorId', "J6",
				'SatelliteSectorObj', PlaceObj('SatelliteSector', {
					'Id', "J6",
					'Map', "QcNU7NV",
					'MapTier', 10,
					'modId', "GCExPrologue",
					'RunLoyaltyLogic', false,
					'display_name', T(128416808925, --[[ModItemCampaignPreset GCEXPrologue display_name Sector name for J6]] "The Rust"),
					'Side', "player1",
					'StickySide', true,
					'WeatherZone', "Erny",
					'MinFlareCarriers', 0,
					'MaxFlareCarriers', 0,
					'bidirectionalRoadApply', true,
					'Roads', set({
	East = false,
	South = false,
	West = true,
}),
					'ImpassableForDiamonds', true,
					'bidirectionalBlockApply', true,
					'BlockTravel', set({
	East = true,
	North = true,
	South = false,
	West = false,
}),
					'BlockTravelRiver', set( "South", "West" ),
					'image', "UI/SatelliteView/SectorImages/H03.dds",
				}),
			}),
			PlaceObj('ModItemSector', {
				'mapName', "qqQkbH5",
				'campaignId', "GCEXPrologue",
				'sectorId', "J5",
				'SatelliteSectorObj', PlaceObj('SatelliteSector', {
					'Id', "J5",
					'Map', "qqQkbH5",
					'MapTier', 10,
					'modId', "GCExPrologue",
					'display_name', T(608522453837, --[[ModItemCampaignPreset GCEXPrologue display_name Sector name for J5]] "Ernie Village"),
					'Side', "player1",
					'StickySide', true,
					'TerrainType', "Urban",
					'WeatherZone', "Erny",
					'Passability', "Land and Water",
					'RAndRAllowed', true,
					'RepairShop', true,
					'ImpassableForDiamonds', true,
					'bidirectionalBlockApply', true,
					'BlockTravel', set({
	East = false,
	South = false,
	West = true,
}),
					'BlockTravelRiver', set( "East", "North", "South" ),
					'image', "UI/SatelliteView/SectorImages/H02.dds",
					'Events', {
						PlaceObj('SE_OnEnterMapVisual', {
							'SequentialEffects', true,
							'Effects', {
								PlaceObj('StartDeploymentInCurrentSector', {}),
								PlaceObj('GroupSetBehaviorAdvanceTo', {
									MarkerGroup = "MarthaBar",
									TargetUnit = "MERCNpcs",
								}),
								PlaceObj('QuestSetVariableBool', {
									Prop = "NotStarted",
									QuestId = "GCEx_01_Landing",
								}),
							},
						}),
					},
					'Port', true,
					'PortLocked', true,
					'CanBeUsedForArrival', true,
					'MusicCombat', "Combat_Cerebral_Easy",
					'MusicExploration', "Town_Complete",
				}),
			}),
			PlaceObj('ModItemSector', {
				'comment', "Fort",
				'mapName', "XWAgNVG",
				'campaignId', "GCEXPrologue",
				'sectorId', "J7",
				'SatelliteSectorObj', PlaceObj('SatelliteSector', {
					'Id', "J7",
					'Map', "XWAgNVG",
					'modId', "GCExPrologue",
					'RunLoyaltyLogic', false,
					'Side', "player1",
					'StickySide', true,
					'TerrainType', "Urban",
					'WeatherZone', "Erny",
					'Passability', "Blocked",
					'MinFlareCarriers', 0,
					'MaxFlareCarriers', 0,
					'bidirectionalRoadApply', true,
					'ImpassableForEnemies', true,
					'ImpassableForDiamonds', true,
					'bidirectionalBlockApply', true,
					'BlockTravel', set( "East", "North", "South", "West" ),
				}),
			}),
			}),
		}),
	PlaceObj('ModItemFolder', {
		'name', "Appearance Presets",
	}, {
		PlaceObj('ModItemAppearancePreset', {
			ArmorColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(0, 0, 0, 255),
				'EditableColor2', RGBA(0, 0, 0, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			Body = "NPCCostumeMale_Shirt_01",
			BodyColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(20, 9, 6, 255),
				'EditableColor2', RGBA(30, 57, 78, 255),
				'EditableColor3', RGBA(37, 43, 59, 255),
			}),
			ChestColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(0, 0, 0, 255),
				'EditableColor2', RGBA(0, 0, 0, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			HairColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(0, 0, 0, 255),
				'EditableColor2', RGBA(0, 0, 0, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			Hat2 = "EquipmentIvan_Glasses",
			Hat2Color = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(0, 0, 0, 255),
				'EditableColor2', RGBA(0, 0, 0, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			HatColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(17, 21, 28, 255),
				'EditableColor2', RGBA(32, 38, 49, 255),
				'EditableColor3', RGBA(38, 40, 43, 255),
			}),
			Head = "Male_Head_02",
			HeadColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(0, 0, 0, 255),
				'EditableColor2', RGBA(0, 0, 0, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			HipColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(0, 0, 0, 255),
				'EditableColor2', RGBA(0, 0, 0, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			Pants = "NPCCostumeMale_Pants_01",
			PantsColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(64, 55, 55, 255),
				'EditableColor2', RGBA(15, 11, 7, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			ShirtColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(19, 13, 7, 255),
				'EditableColor2', RGBA(0, 0, 0, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			group = "GCEXPrologueNPCs",
			id = "BrianNPC",
		}),
		PlaceObj('ModItemAppearancePreset', {
			ArmorColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(0, 0, 0, 255),
				'EditableColor2', RGBA(0, 0, 0, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			Body = "NPCTraditionalMale_Top_A_01",
			BodyColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(0, 3, 11, 255),
				'EditableColor2', RGBA(0, 6, 12, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			ChestColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(0, 0, 0, 255),
				'EditableColor2', RGBA(0, 0, 0, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			HairColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(0, 0, 0, 255),
				'EditableColor2', RGBA(0, 0, 0, 255),
				'EditableMetallic2', -128,
				'EditableColor3', RGBA(0, 0, 0, 255),
				'EditableRoughness3', -128,
			}),
			Hat = "NPCTraditionalMale_Hat_Pattern_01",
			Hat2Color = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(0, 0, 0, 255),
				'EditableColor2', RGBA(0, 0, 0, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			HatColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(0, 3, 11, 255),
				'EditableColor2', RGBA(0, 6, 12, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			Head = "Male_Head_08",
			HeadColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(0, 0, 0, 255),
				'EditableColor2', RGBA(0, 0, 0, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			HipColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(0, 0, 0, 255),
				'EditableColor2', RGBA(0, 0, 0, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			Pants = "NPCTraditionalMale_Pants_Pattern_03",
			PantsColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(0, 3, 11, 255),
				'EditableColor2', RGBA(0, 6, 12, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			ShirtColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(0, 0, 0, 255),
				'EditableColor2', RGBA(0, 0, 0, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			group = "GCEXPrologueNPCs",
			id = "StephaneNPC",
		}),
		PlaceObj('ModItemAppearancePreset', {
			ArmorColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(33, 12, 7, 255),
				'EditableColor2', RGBA(123, 97, 10, 255),
				'EditableColor3', RGBA(207, 207, 207, 255),
			}),
			Body = "Faction_Militia_Top_05",
			BodyColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(30, 40, 27, 255),
				'EditableColor2', RGBA(29, 26, 26, 255),
				'EditableColor3', RGBA(37, 34, 34, 255),
				'EditableRoughness3', 44,
			}),
			ChestColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(0, 0, 0, 255),
				'EditableColor2', RGBA(0, 0, 0, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			HairColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(0, 0, 0, 255),
				'EditableColor2', RGBA(0, 0, 0, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			Hat = "FactionMale_Hat_01",
			Hat2 = "EquipmentLen_Glasses",
			Hat2Color = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(0, 0, 0, 255),
				'EditableColor2', RGBA(0, 0, 0, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			HatColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(170, 89, 23, 255),
				'EditableColor2', RGBA(19, 15, 13, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			Head = "Male_Head_04",
			HeadColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(0, 0, 0, 255),
				'EditableColor2', RGBA(0, 0, 0, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			HipColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(0, 0, 0, 255),
				'EditableColor2', RGBA(0, 0, 0, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			Pants = "Faction_Adonis_Bottom_02",
			PantsColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(30, 40, 27, 255),
				'EditableColor2', RGBA(29, 26, 26, 255),
				'EditableColor3', RGBA(37, 34, 34, 255),
				'EditableRoughness3', 44,
			}),
			ShirtColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(0, 0, 0, 255),
				'EditableColor2', RGBA(0, 0, 0, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			group = "GCEXPrologueNPCs",
			id = "SmurgeNPC",
		}),
		PlaceObj('ModItemAppearancePreset', {
			ArmorColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(0, 0, 0, 255),
				'EditableColor2', RGBA(0, 0, 0, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			Body = "Faction_Adonis_Top_Camo_01",
			BodyColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(43, 18, 13, 255),
				'EditableColor2', RGBA(22, 29, 31, 255),
				'EditableColor3', RGBA(37, 35, 35, 255),
			}),
			ChestColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(4, 4, 4, 255),
				'EditableColor2', RGBA(8, 8, 8, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			HairColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(0, 0, 0, 255),
				'EditableColor2', RGBA(0, 0, 0, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			Hat = "FactionMale_Hat_01",
			Hat2Color = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(0, 0, 0, 255),
				'EditableColor2', RGBA(0, 0, 0, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			HatColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(20, 54, 198, 255),
				'EditableColor2', RGBA(0, 0, 0, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			Head = "Head_M_Ca_NPC_Camo_01",
			HeadColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(0, 0, 0, 255),
				'EditableColor2', RGBA(0, 0, 0, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			Hip = "Faction_Acc_Recon",
			HipColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(4, 4, 4, 255),
				'EditableColor2', RGBA(8, 8, 8, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			Pants = "Faction_Adonis_Bottom_Camo_02",
			PantsColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(22, 29, 31, 255),
				'EditableColor2', RGBA(20, 19, 19, 255),
				'EditableColor3', RGBA(15, 14, 14, 255),
			}),
			ShirtColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(0, 0, 0, 255),
				'EditableColor2', RGBA(0, 0, 0, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			group = "GCEXPrologueNPCs",
			id = "AdonisGuard1NPC",
		}),
		PlaceObj('ModItemAppearancePreset', {
			ArmorColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(0, 0, 0, 255),
				'EditableColor2', RGBA(0, 0, 0, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			Body = "Faction_Adonis_Top_Camo_03",
			BodyColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(28, 12, 9, 255),
				'EditableColor2', RGBA(45, 58, 62, 255),
				'EditableColor3', RGBA(12, 12, 12, 255),
			}),
			ChestColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(0, 0, 0, 255),
				'EditableColor2', RGBA(0, 0, 0, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			HairColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(0, 0, 0, 255),
				'EditableColor2', RGBA(0, 0, 0, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			Hat = "FactionMale_Hat_12",
			Hat2Color = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(0, 0, 0, 255),
				'EditableColor2', RGBA(0, 0, 0, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			HatColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(55, 73, 78, 255),
				'EditableColor2', RGBA(12, 12, 12, 255),
				'EditableColor3', RGBA(12, 12, 12, 255),
			}),
			Head = "Male_Head_04",
			HeadColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(0, 0, 0, 255),
				'EditableColor2', RGBA(0, 0, 0, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			Hip = "Faction_Acc_Stormer",
			HipColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(4, 4, 4, 255),
				'EditableColor2', RGBA(8, 8, 8, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			Pants = "Faction_Adonis_Bottom_Camo_02",
			PantsColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(45, 58, 62, 255),
				'EditableColor2', RGBA(12, 12, 12, 255),
				'EditableColor3', RGBA(12, 12, 12, 255),
			}),
			ShirtColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(0, 0, 0, 255),
				'EditableColor2', RGBA(0, 0, 0, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			group = "GCEXPrologueNPCs",
			id = "AdonisGuard2NPC",
		}),
		PlaceObj('ModItemAppearancePreset', {
			ArmorColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(0, 0, 0, 255),
				'EditableColor2', RGBA(0, 0, 0, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			Body = "Faction_Infected_Top_F_02",
			BodyColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(190, 91, 52, 255),
				'EditableColor2', RGBA(80, 81, 77, 255),
				'EditableColor3', RGBA(61, 67, 41, 255),
			}),
			Chest = "",
			ChestColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(13, 15, 8, 255),
				'EditableColor2', RGBA(13, 15, 8, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			Hair = "EquipmentRaven_Hair",
			HairColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(0, 0, 0, 255),
				'EditableColor2', RGBA(0, 0, 0, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			Hat = "Faction_Infected_F_HeadBandage_01",
			Hat2Color = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(0, 0, 0, 255),
				'EditableColor2', RGBA(0, 0, 0, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			HatColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(0, 0, 0, 255),
				'EditableColor2', RGBA(189, 171, 149, 255),
				'EditableColor3', RGBA(33, 2, 2, 255),
			}),
			HatSpot = "Origin",
			Head = "Head_F_Senior_NPC_01",
			HeadColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(196, 107, 73, 255),
				'EditableColor2', RGBA(196, 107, 73, 255),
				'EditableColor3', RGBA(69, 58, 39, 255),
			}),
			Hip = "",
			HipColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(4, 4, 4, 255),
				'EditableColor2', RGBA(8, 8, 8, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			NameColor = 4290132532,
			Pants = "Faction_Infected_Bottom_F_01",
			PantsColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(190, 91, 52, 255),
				'EditableColor2', RGBA(38, 31, 29, 255),
				'EditableColor3', RGBA(33, 21, 17, 255),
			}),
			Shirt = "",
			ShirtColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(0, 0, 0, 255),
				'EditableColor2', RGBA(0, 0, 0, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			group = "GCEXPrologueNPCs",
			id = "Zombie1_F",
		}),
		PlaceObj('ModItemAppearancePreset', {
			ArmorColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(0, 0, 0, 255),
				'EditableColor2', RGBA(0, 0, 0, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			Body = "Faction_Infected_Top_M_02",
			BodyColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(190, 91, 52, 255),
				'EditableColor2', RGBA(80, 81, 77, 255),
				'EditableColor3', RGBA(61, 67, 41, 255),
			}),
			Chest = "",
			ChestColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(13, 15, 8, 255),
				'EditableColor2', RGBA(13, 15, 8, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			Hair = "EquipmentSteroid_Hair",
			HairColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(0, 0, 0, 255),
				'EditableColor2', RGBA(0, 0, 0, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			Hat = "Faction_Infected_M_HeadBandage_02",
			Hat2 = "Faction_Infected_M_HeadBandage_02",
			Hat2Color = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(79, 9, 5, 255),
				'EditableColor2', RGBA(189, 171, 149, 255),
				'EditableColor3', RGBA(79, 9, 5, 255),
			}),
			Hat2Spot = "Origin",
			HatColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(79, 9, 5, 255),
				'EditableColor2', RGBA(189, 171, 149, 255),
				'EditableColor3', RGBA(84, 11, 7, 255),
			}),
			HatSpot = "Origin",
			Head = "Head_Infected_M_01",
			HeadColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(196, 107, 73, 255),
				'EditableColor2', RGBA(196, 107, 73, 255),
				'EditableColor3', RGBA(69, 58, 39, 255),
			}),
			Hip = "",
			HipColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(4, 4, 4, 255),
				'EditableColor2', RGBA(8, 8, 8, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			NameColor = 4290132532,
			Pants = "Faction_Infected_Bottom_M_01",
			PantsColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(190, 91, 52, 255),
				'EditableColor2', RGBA(38, 31, 29, 255),
				'EditableColor3', RGBA(33, 21, 17, 255),
			}),
			Shirt = "",
			ShirtColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(0, 0, 0, 255),
				'EditableColor2', RGBA(0, 0, 0, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			group = "GCEXPrologueNPCs",
			id = "Zombie2_M",
		}),
		PlaceObj('ModItemAppearancePreset', {
			ArmorColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(0, 0, 0, 255),
				'EditableColor2', RGBA(0, 0, 0, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			Body = "NPCBastien_Top",
			BodyColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(40, 18, 11, 255),
				'EditableColor2', RGBA(116, 16, 0, 255),
				'EditableColor3', RGBA(250, 192, 15, 255),
			}),
			ChestColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(0, 0, 0, 255),
				'EditableColor2', RGBA(0, 0, 0, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			Comment = "Legion Jose",
			HairColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(0, 0, 0, 255),
				'EditableColor2', RGBA(0, 0, 0, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			Hat = "NPCBastien_Hat",
			Hat2Color = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(0, 0, 0, 255),
				'EditableColor2', RGBA(0, 0, 0, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			HatColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(12, 14, 18, 255),
				'EditableColor2', RGBA(21, 47, 11, 255),
				'EditableColor3', RGBA(246, 242, 239, 255),
			}),
			Head = "Head_M_Ca_NPC_01",
			HeadColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(0, 0, 0, 255),
				'EditableColor2', RGBA(0, 0, 0, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			HipColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(0, 0, 0, 255),
				'EditableColor2', RGBA(0, 0, 0, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			Pants = "NPCCostumeMale_Pants_01",
			PantsColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(16, 24, 14, 255),
				'EditableColor2', RGBA(17, 14, 12, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			ShirtColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(0, 0, 0, 255),
				'EditableColor2', RGBA(0, 0, 0, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			group = "GCEXPrologueNPCs",
			id = "BastienPro",
		}),
		PlaceObj('ModItemAppearancePreset', {
			ArmorColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(0, 0, 0, 255),
				'EditableColor2', RGBA(0, 0, 0, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			Body = "NPCDeedee_Top_01",
			BodyColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(33, 13, 6, 255),
				'EditableColor2', RGBA(64, 70, 66, 255),
				'EditableColor3', RGBA(30, 30, 32, 255),
			}),
			ChestColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(0, 0, 0, 255),
				'EditableColor2', RGBA(0, 0, 0, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			Hair = "EquipmentBuns_Hair_Hat",
			HairColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(96, 79, 21, 255),
				'EditableColor2', RGBA(60, 45, 11, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			Hat = "NPCDeedee_Glasses_01",
			Hat2 = "EquipmentFemale_WW2Helmet",
			Hat2AttachOffsetZ = 0,
			Hat2Color = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(0, 0, 0, 255),
				'EditableColor2', RGBA(0, 0, 0, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			HatAttachOffsetZ = -10,
			HatColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(0, 0, 0, 255),
				'EditableColor2', RGBA(0, 0, 0, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			Head = "Head_F_Af_NPC_04",
			HeadColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(0, 0, 0, 255),
				'EditableColor2', RGBA(0, 0, 0, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			HipColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(0, 0, 0, 255),
				'EditableColor2', RGBA(0, 0, 0, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			Pants = "NPCDeedee_Bottom_01",
			PantsColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(29, 17, 13, 255),
				'EditableColor2', RGBA(6, 5, 5, 255),
				'EditableColor3', RGBA(8, 10, 11, 255),
			}),
			ShirtColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(0, 0, 0, 255),
				'EditableColor2', RGBA(0, 0, 0, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			group = "GCEXPrologueNPCs",
			id = "DeedeePro",
		}),
		PlaceObj('ModItemAppearancePreset', {
			ArmorColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(0, 0, 0, 255),
				'EditableColor2', RGBA(0, 0, 0, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			Body = "NPCMarta_Top_01",
			BodyColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(22, 7, 3, 255),
				'EditableColor2', RGBA(6, 77, 147, 255),
				'EditableColor3', RGBA(0, 11, 21, 255),
			}),
			ChestColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(0, 0, 0, 255),
				'EditableColor2', RGBA(0, 0, 0, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			Hair = "",
			HairColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(96, 79, 21, 255),
				'EditableColor2', RGBA(60, 45, 11, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			Hat = "NPCTraditionalFemale_Scarf_A_02",
			Hat2Color = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(0, 0, 0, 255),
				'EditableColor2', RGBA(0, 0, 0, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			HatColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(0, 26, 47, 255),
				'EditableColor2', RGBA(0, 26, 47, 255),
				'EditableColor3', RGBA(0, 26, 47, 255),
			}),
			Head = "Head_F_Af_NPC_08",
			HeadColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(0, 0, 0, 255),
				'EditableColor2', RGBA(0, 0, 0, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			HipColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(0, 0, 0, 255),
				'EditableColor2', RGBA(0, 0, 0, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			Pants = "NPCMarta_Bottom_01",
			PantsColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(22, 7, 3, 255),
				'EditableColor2', RGBA(1, 38, 79, 255),
				'EditableColor3', RGBA(0, 11, 21, 255),
			}),
			ShirtColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(0, 0, 0, 255),
				'EditableColor2', RGBA(0, 0, 0, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			group = "GCEXPrologueNPCs",
			id = "MarthaPro",
		}),
		PlaceObj('ModItemAppearancePreset', {
			ArmorColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(0, 0, 0, 255),
				'EditableColor2', RGBA(0, 0, 0, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			Body = "NPCHerman_Top_01",
			BodyColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(6, 3, 2, 255),
				'EditableColor2', RGBA(255, 148, 84, 255),
				'EditableColor3', RGBA(219, 151, 5, 255),
			}),
			ChestColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(0, 0, 0, 255),
				'EditableColor2', RGBA(0, 0, 0, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			HairColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(0, 0, 0, 255),
				'EditableColor2', RGBA(0, 0, 0, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			Hat = "NPCHerman_Hat_01",
			Hat2 = "NPCHerman_Glasses_01",
			Hat2Color = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(35, 25, 13, 255),
				'EditableColor2', RGBA(0, 0, 0, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			HatColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(67, 112, 39, 255),
				'EditableColor2', RGBA(26, 22, 16, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			Head = "Male_Head_07",
			HeadColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(0, 0, 0, 255),
				'EditableColor2', RGBA(0, 0, 0, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			HipColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(0, 0, 0, 255),
				'EditableColor2', RGBA(0, 0, 0, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			Pants = "NPCHerman_Bottom_01",
			PantsColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(6, 3, 2, 255),
				'EditableColor2', RGBA(22, 20, 19, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			ShirtColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(0, 0, 0, 255),
				'EditableColor2', RGBA(0, 0, 0, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			group = "GCEXPrologueNPCs",
			id = "HermanPro",
		}),
		PlaceObj('ModItemAppearancePreset', {
			ArmorColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(0, 0, 0, 255),
				'EditableColor2', RGBA(0, 0, 0, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			Body = "Faction_GrandChien_Top_08",
			BodyColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(17, 9, 6, 255),
				'EditableColor2', RGBA(208, 192, 174, 255),
				'EditableColor3', RGBA(145, 88, 63, 255),
			}),
			ChestColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(0, 0, 0, 255),
				'EditableColor2', RGBA(0, 0, 0, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			HairColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(0, 0, 0, 255),
				'EditableColor2', RGBA(0, 0, 0, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			Hat = "EquipmentBlood_Hat",
			Hat2 = "",
			Hat2Color = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(113, 70, 49, 255),
				'EditableColor2', RGBA(0, 0, 0, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			HatAttachOffsetY = 0,
			HatColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(32, 52, 39, 255),
				'EditableColor2', RGBA(85, 17, 17, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			Head = "Faction_Rebels_M_HeadMedic",
			HeadColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(47, 24, 18, 255),
				'EditableColor2', RGBA(7, 5, 5, 255),
				'EditableColor3', RGBA(189, 171, 149, 255),
			}),
			Hip = "Faction_Acc_Soldier",
			HipColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(15, 16, 15, 255),
				'EditableColor2', RGBA(14, 14, 14, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			NameColor = 4290132532,
			Pants = "EquipmentLen_Bottom",
			PantsColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(17, 9, 6, 255),
				'EditableColor2', RGBA(41, 53, 69, 255),
				'EditableColor3', RGBA(13, 14, 15, 255),
			}),
			Shirt = "",
			ShirtColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(22, 23, 24, 255),
				'EditableColor2', RGBA(37, 38, 40, 255),
				'EditableColor3', RGBA(22, 23, 24, 255),
			}),
			group = "GCEXPrologueNPCs",
			id = "Goon1Pro",
		}),
		PlaceObj('ModItemAppearancePreset', {
			ArmorColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(0, 0, 0, 255),
				'EditableColor2', RGBA(0, 0, 0, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			Body = "Faction_Legion_Top_06",
			BodyColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(17, 9, 6, 255),
				'EditableColor2', RGBA(208, 192, 174, 255),
				'EditableColor3', RGBA(145, 88, 63, 255),
			}),
			ChestColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(0, 0, 0, 255),
				'EditableColor2', RGBA(0, 0, 0, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			HairColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(0, 0, 0, 255),
				'EditableColor2', RGBA(0, 0, 0, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			Hat = "EquipmentPierre_Hat",
			Hat2 = "EquipmentIvan_Glasses",
			Hat2Color = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(113, 70, 49, 255),
				'EditableColor2', RGBA(0, 0, 0, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			HatAttachOffsetY = 0,
			HatColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(32, 52, 39, 255),
				'EditableColor2', RGBA(85, 17, 17, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			Head = "Head_M_As_NPC_03",
			HeadColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(47, 24, 18, 255),
				'EditableColor2', RGBA(7, 5, 5, 255),
				'EditableColor3', RGBA(189, 171, 149, 255),
			}),
			Hip = "Faction_Acc_Soldier",
			HipColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(15, 16, 15, 255),
				'EditableColor2', RGBA(14, 14, 14, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			NameColor = 4290132532,
			Pants = "EquipmentOmryn_Bottom",
			PantsColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(17, 9, 6, 255),
				'EditableColor2', RGBA(41, 53, 69, 255),
				'EditableColor3', RGBA(13, 14, 15, 255),
			}),
			Shirt = "",
			ShirtColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(22, 23, 24, 255),
				'EditableColor2', RGBA(37, 38, 40, 255),
				'EditableColor3', RGBA(22, 23, 24, 255),
			}),
			group = "GCEXPrologueNPCs",
			id = "Goon2Pro",
		}),
		PlaceObj('ModItemAppearancePreset', {
			ArmorColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(0, 0, 0, 255),
				'EditableColor2', RGBA(0, 0, 0, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			Body = "Faction_Legion_Top_10",
			BodyColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(17, 9, 6, 255),
				'EditableColor2', RGBA(208, 192, 174, 255),
				'EditableColor3', RGBA(145, 88, 63, 255),
			}),
			ChestColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(0, 0, 0, 255),
				'EditableColor2', RGBA(0, 0, 0, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			HairColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(0, 0, 0, 255),
				'EditableColor2', RGBA(0, 0, 0, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			Hat2 = "EquipmentNails_Headband",
			Hat2Color = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(113, 70, 49, 255),
				'EditableColor2', RGBA(0, 0, 0, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			HatAttachOffsetY = 0,
			HatColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(32, 52, 39, 255),
				'EditableColor2', RGBA(85, 17, 17, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			Head = "Head_Chimurenga",
			HeadColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(47, 24, 18, 255),
				'EditableColor2', RGBA(7, 5, 5, 255),
				'EditableColor3', RGBA(189, 171, 149, 255),
			}),
			Hip = "Faction_Acc_Soldier",
			HipColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(15, 16, 15, 255),
				'EditableColor2', RGBA(14, 14, 14, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			NameColor = 4290132532,
			Pants = "Faction_Legion_Bottom_05",
			PantsColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(17, 9, 6, 255),
				'EditableColor2', RGBA(41, 53, 69, 255),
				'EditableColor3', RGBA(13, 14, 15, 255),
			}),
			Shirt = "",
			ShirtColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(22, 23, 24, 255),
				'EditableColor2', RGBA(37, 38, 40, 255),
				'EditableColor3', RGBA(22, 23, 24, 255),
			}),
			group = "GCEXPrologueNPCs",
			id = "Goon3Pro",
		}),
		PlaceObj('ModItemAppearancePreset', {
			Armor = "EquipmentFemale_FlackVest",
			ArmorColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(35, 38, 22, 255),
				'EditableColor2', RGBA(88, 92, 68, 255),
				'EditableColor3', RGBA(124, 130, 96, 255),
			}),
			Body = "Female_Body_01",
			BodyColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(22, 7, 3, 255),
				'EditableColor2', RGBA(0, 0, 0, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			ChestColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(0, 0, 0, 255),
				'EditableColor2', RGBA(0, 0, 0, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			Hair = "EquipmentVicki_Hair",
			HairColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(0, 0, 0, 255),
				'EditableColor2', RGBA(0, 0, 0, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			Hat2Color = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(0, 0, 0, 255),
				'EditableColor2', RGBA(0, 0, 0, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			HatColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(26, 23, 11, 255),
				'EditableColor2', RGBA(10, 4, 2, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			Head = "Head_F_As_NPC_10",
			HeadColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(0, 0, 0, 255),
				'EditableColor2', RGBA(0, 0, 0, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			Hip = "Faction_Acc_Marksman",
			HipColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(35, 38, 22, 255),
				'EditableColor2', RGBA(88, 92, 68, 255),
				'EditableColor3', RGBA(124, 130, 96, 255),
			}),
			NameColor = 4290132532,
			Pants = "EquipmentCorazon_Bottom_BattleMod",
			PantsColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(35, 38, 22, 255),
				'EditableColor2', RGBA(88, 92, 68, 255),
				'EditableColor3', RGBA(124, 130, 96, 255),
			}),
			Shirt = "EquipmentFemale_Shirt_01",
			ShirtColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(88, 92, 68, 255),
				'EditableColor2', RGBA(60, 53, 39, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			group = "GCEXPrologueNPCs",
			id = "Goon4Pro",
		}),
		PlaceObj('ModItemAppearancePreset', {
			ArmorColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(0, 0, 0, 255),
				'EditableColor2', RGBA(0, 0, 0, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			Body = "Faction_Adonis_Top_Camo_03",
			BodyColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(47, 24, 18, 255),
				'EditableColor2', RGBA(38, 4, 4, 255),
				'EditableColor3', RGBA(49, 47, 47, 255),
			}),
			ChestColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(0, 0, 0, 255),
				'EditableColor2', RGBA(0, 0, 0, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			Hair = "EquipmentFidel_Hair",
			HairColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(0, 0, 0, 255),
				'EditableColor2', RGBA(0, 0, 0, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			Hat2Color = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(0, 0, 0, 255),
				'EditableColor2', RGBA(0, 0, 0, 255),
				'EditableColor3', RGBA(230, 222, 202, 255),
			}),
			HatAttachOffsetY = 0,
			HatColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(32, 52, 39, 255),
				'EditableColor2', RGBA(85, 17, 17, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			Head = "Head_Faucheux",
			HeadColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(47, 24, 18, 255),
				'EditableColor2', RGBA(7, 5, 5, 255),
				'EditableColor3', RGBA(189, 171, 149, 255),
			}),
			Hip = "Faction_Acc_Artilery",
			HipColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(15, 16, 15, 255),
				'EditableColor2', RGBA(14, 14, 14, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			NameColor = 4290132532,
			Pants = "Faction_Adonis_Bottom_Camo_01",
			PantsColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(17, 9, 6, 255),
				'EditableColor2', RGBA(41, 53, 69, 255),
				'EditableColor3', RGBA(13, 14, 15, 255),
			}),
			Shirt = "",
			ShirtColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(22, 23, 24, 255),
				'EditableColor2', RGBA(37, 38, 40, 255),
				'EditableColor3', RGBA(22, 23, 24, 255),
			}),
			group = "GCEXPrologueNPCs",
			id = "GoonCommander",
		}),
		PlaceObj('ModItemAppearancePreset', {
			ArmorColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(0, 0, 0, 255),
				'EditableColor2', RGBA(0, 0, 0, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			Body = "Male_Body_01",
			BodyColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(67, 22, 8, 255),
				'EditableColor2', RGBA(44, 85, 105, 255),
				'EditableColor3', RGBA(157, 166, 149, 255),
			}),
			ChestColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(0, 100, 0, 255),
				'EditableColor2', RGBA(0, 100, 0, 255),
				'EditableColor3', RGBA(0, 100, 0, 255),
			}),
			Hair = "EquipmentBiff_Hair",
			HairColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(6, 1, 1, 255),
				'EditableRoughness1', 40,
				'EditableMetallic1', -128,
				'EditableColor2', RGBA(10, 4, 2, 255),
				'EditableRoughness2', 28,
				'EditableMetallic2', -128,
				'EditableColor3', RGBA(0, 0, 0, 255),
				'EditableRoughness3', 74,
				'EditableMetallic3', 127,
			}),
			HairParam1 = 24,
			HairParam2 = 43,
			HairParam3 = 92,
			Hat = "",
			Hat2 = "",
			HatColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(0, 0, 0, 255),
				'EditableColor2', RGBA(35, 27, 27, 255),
				'EditableColor3', RGBA(105, 60, 60, 255),
			}),
			Head = "Head_M_Ca_NPC_03",
			HeadColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(128, 68, 68, 255),
				'EditableColor2', RGBA(81, 26, 26, 255),
				'EditableColor3', RGBA(61, 23, 23, 255),
			}),
			Hip = "",
			HipColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(249, 249, 219, 255),
				'EditableColor2', RGBA(177, 22, 14, 255),
				'EditableColor3', RGBA(222, 60, 75, 255),
			}),
			NameColor = 4292643868,
			Pants = "Faction_Thugs_Bottom_02",
			PantsColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(255, 134, 53, 255),
				'EditableColor2', RGBA(189, 171, 149, 255),
				'EditableColor3', RGBA(48, 25, 14, 255),
			}),
			Shirt = "EquipmentMale_Shirt_02",
			ShirtColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(107, 159, 185, 255),
				'EditableColor2', RGBA(4, 90, 133, 255),
				'EditableColor3', RGBA(53, 106, 36, 255),
			}),
			group = "GCEXPrologueMERCs",
			id = "Haywire-Appearance",
		}),
		PlaceObj('ModItemAppearancePreset', {
			ArmorColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(0, 0, 0, 255),
				'EditableColor2', RGBA(0, 0, 0, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			Body = "Faction_Thugs_Top_09",
			BodyColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(154, 76, 35, 255),
				'EditableColor2', RGBA(0, 0, 0, 255),
				'EditableColor3', RGBA(5, 6, 5, 255),
			}),
			ChestColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(0, 100, 0, 255),
				'EditableColor2', RGBA(0, 100, 0, 255),
				'EditableColor3', RGBA(0, 100, 0, 255),
			}),
			Hair = "NPCMale_Hair_01",
			HairColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(176, 22, 36, 255),
				'EditableRoughness1', 40,
				'EditableMetallic1', -92,
				'EditableColor2', RGBA(133, 17, 28, 255),
				'EditableRoughness2', 81,
				'EditableMetallic2', -49,
				'EditableColor3', RGBA(81, 45, 57, 255),
				'EditableRoughness3', 108,
				'EditableMetallic3', -20,
			}),
			HairParam1 = 31,
			HairParam2 = 19,
			HairParam3 = 10,
			Hat = "",
			Hat2 = "",
			HatColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(0, 0, 0, 255),
				'EditableColor2', RGBA(35, 27, 27, 255),
				'EditableColor3', RGBA(105, 60, 60, 255),
			}),
			Head = "Head_Igor",
			HeadColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(176, 46, 46, 255),
				'EditableColor2', RGBA(125, 36, 36, 255),
				'EditableColor3', RGBA(67, 11, 11, 255),
			}),
			Hip = "",
			HipColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(249, 249, 219, 255),
				'EditableColor2', RGBA(177, 22, 14, 255),
				'EditableColor3', RGBA(222, 60, 75, 255),
			}),
			NameColor = 4292643868,
			Pants = "EquipmentBlood_Bottom",
			PantsColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(179, 104, 102, 255),
				'EditableColor2', RGBA(83, 132, 156, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			Shirt = "",
			ShirtColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(0, 0, 0, 255),
				'EditableColor2', RGBA(0, 0, 100, 255),
				'EditableColor3', RGBA(0, 0, 100, 255),
			}),
			group = "GCEXPrologueMERCs",
			id = "Numb-Appearance",
		}),
		PlaceObj('ModItemAppearancePreset', {
			ArmorColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(50, 0, 0, 255),
				'EditableColor2', RGBA(0, 50, 0, 255),
				'EditableColor3', RGBA(0, 0, 50, 255),
			}),
			Body = "Faction_Legion_Top_02",
			BodyColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(160, 73, 16, 255),
				'EditableColor2', RGBA(0, 0, 0, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			ChestColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(0, 0, 0, 255),
				'EditableColor2', RGBA(0, 0, 0, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			Hair = "EquipmentFaucheux_Hair",
			HairColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(30, 13, 6, 255),
				'EditableRoughness1', 40,
				'EditableMetallic1', -128,
				'EditableColor2', RGBA(13, 6, 3, 255),
				'EditableRoughness2', 28,
				'EditableMetallic2', -128,
				'EditableColor3', RGBA(0, 0, 0, 255),
				'EditableRoughness3', 74,
				'EditableMetallic3', 127,
			}),
			HairParam3 = 128,
			Head = "Head_Faucheux",
			HeadColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(60, 3, 3, 255),
				'EditableColor2', RGBA(0, 60, 0, 255),
				'EditableColor3', RGBA(0, 0, 60, 255),
			}),
			HipColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(50, 0, 0, 255),
				'EditableColor2', RGBA(0, 5, 0, 255),
				'EditableColor3', RGBA(0, 0, 50, 255),
			}),
			NameColor = 4292643868,
			Pants = "EquipmentBlood_Bottom",
			PantsColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(0, 0, 0, 255),
				'EditableColor2', RGBA(0, 0, 0, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			ShirtColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(52, 14, 23, 255),
				'EditableColor2', RGBA(12, 51, 11, 255),
				'EditableColor3', RGBA(19, 18, 58, 255),
			}),
			group = "GCEXPrologueMERCs",
			id = "Razor-Appearance",
		}),
		PlaceObj('ModItemAppearancePreset', {
			ArmorColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(0, 0, 0, 255),
				'EditableColor2', RGBA(0, 0, 0, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			Body = "Male_Body_01",
			BodyColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(62, 28, 18, 255),
				'EditableColor2', RGBA(44, 85, 105, 255),
				'EditableColor3', RGBA(157, 166, 149, 255),
			}),
			Chest = "",
			ChestColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(22, 16, 12, 255),
				'EditableColor2', RGBA(20, 17, 15, 255),
				'EditableColor3', RGBA(29, 23, 16, 255),
			}),
			Hair = "EquipmentBlood_Hair",
			HairColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(40, 30, 20, 255),
				'EditableRoughness1', 29,
				'EditableMetallic1', 48,
				'EditableColor2', RGBA(30, 15, 10, 255),
				'EditableRoughness2', -37,
				'EditableMetallic2', -128,
				'EditableColor3', RGBA(30, 5, 5, 255),
				'EditableRoughness3', -44,
				'EditableMetallic3', 127,
			}),
			HairParam1 = 12,
			HairParam2 = 26,
			HairParam3 = 172,
			Hat = "",
			Hat2Color = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(0, 0, 0, 255),
				'EditableColor2', RGBA(0, 0, 0, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			HatAttachOffsetAngle = 2400,
			HatAttachOffsetX = 10,
			HatAttachOffsetY = -50,
			HatAttachOffsetZ = 5,
			HatColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(118, 6, 6, 255),
				'EditableColor2', RGBA(0, 0, 0, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			Head = "Head_Biff",
			HeadColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(0, 0, 0, 255),
				'EditableColor2', RGBA(0, 0, 0, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			Hip = "",
			HipColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(0, 0, 0, 255),
				'EditableColor2', RGBA(0, 0, 0, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			NameColor = 4292643868,
			Pants = "NPCJackhammer_Bottom_01",
			PantsColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(6, 5, 5, 255),
				'EditableColor2', RGBA(34, 40, 32, 255),
				'EditableColor3', RGBA(136, 153, 40, 255),
			}),
			Shirt = "EquipmentMale_Shirt_01",
			ShirtColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(22, 47, 108, 255),
				'EditableColor2', RGBA(137, 111, 78, 255),
				'EditableColor3', RGBA(137, 111, 78, 255),
			}),
			group = "GCEXPrologueMERCs",
			id = "Gumpy-Appearance",
		}),
		PlaceObj('ModItemAppearancePreset', {
			ArmorColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(0, 0, 0, 255),
				'EditableColor2', RGBA(0, 0, 0, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			Body = "Male_Body_01",
			BodyColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(67, 37, 27, 255),
				'EditableColor2', RGBA(44, 85, 105, 255),
				'EditableColor3', RGBA(157, 166, 149, 255),
			}),
			ChestColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(0, 100, 0, 255),
				'EditableColor2', RGBA(0, 100, 0, 255),
				'EditableColor3', RGBA(0, 100, 0, 255),
			}),
			Hair = "NPCMale_Hair_02",
			HairColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(11, 5, 3, 255),
				'EditableRoughness1', 40,
				'EditableMetallic1', -128,
				'EditableColor2', RGBA(10, 4, 2, 255),
				'EditableRoughness2', 28,
				'EditableMetallic2', -128,
				'EditableColor3', RGBA(0, 0, 0, 255),
				'EditableRoughness3', 74,
				'EditableMetallic3', 127,
			}),
			HairParam3 = 128,
			Hat = "",
			Hat2 = "",
			HatColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(0, 0, 0, 255),
				'EditableColor2', RGBA(35, 27, 27, 255),
				'EditableColor3', RGBA(105, 60, 60, 255),
			}),
			Head = "Head_Ivan",
			HeadColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(176, 46, 46, 255),
				'EditableColor2', RGBA(125, 36, 36, 255),
				'EditableColor3', RGBA(67, 11, 11, 255),
			}),
			Hip = "",
			HipColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(249, 249, 219, 255),
				'EditableColor2', RGBA(177, 22, 14, 255),
				'EditableColor3', RGBA(222, 60, 75, 255),
			}),
			NameColor = 4292643868,
			Pants = "Faction_Thugs_Bottom_01",
			PantsColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(33, 55, 108, 255),
				'EditableColor2', RGBA(87, 26, 32, 255),
				'EditableColor3', RGBA(101, 55, 55, 255),
			}),
			Shirt = "EquipmentMale_Shirt_01",
			ShirtColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(7, 35, 108, 255),
				'EditableColor2', RGBA(137, 111, 78, 255),
				'EditableColor3', RGBA(137, 111, 78, 255),
			}),
			group = "GCEXPrologueMERCs",
			id = "Gasket-Appearance",
		}),
		PlaceObj('ModItemAppearancePreset', {
			ArmorColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(0, 0, 0, 255),
				'EditableColor2', RGBA(0, 0, 0, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			Body = "Female_Body_01",
			BodyColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(100, 29, 7, 255),
				'EditableColor2', RGBA(11, 13, 62, 255),
				'EditableColor3', RGBA(101, 133, 210, 255),
			}),
			ChestColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(0, 0, 0, 255),
				'EditableColor2', RGBA(0, 0, 0, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			Hair = "EquipmentFox_Hair",
			HairColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(38, 15, 4, 255),
				'EditableRoughness1', 76,
				'EditableMetallic1', -82,
				'EditableColor2', RGBA(59, 18, 4, 255),
				'EditableRoughness2', -44,
				'EditableMetallic2', -128,
				'EditableColor3', RGBA(255, 255, 255, 255),
				'EditableRoughness3', -25,
				'EditableMetallic3', 127,
			}),
			HairParam1 = 61,
			HairParam2 = 16,
			Hat2Color = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(0, 0, 0, 255),
				'EditableColor2', RGBA(0, 0, 0, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			HatColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(120, 200, 43, 255),
				'EditableColor2', RGBA(0, 0, 0, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			Head = "Head_F_Ca_NPC_01",
			HeadColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(0, 0, 0, 255),
				'EditableColor2', RGBA(0, 0, 0, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			HipColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(0, 0, 0, 255),
				'EditableColor2', RGBA(0, 0, 0, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			NameColor = 4292643868,
			Pants = "EquipmentIMPTrooper_Pants",
			PantsColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(55, 60, 28, 255),
				'EditableColor2', RGBA(0, 0, 0, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			Shirt = "EquipmentFemale_Shirt_01",
			ShirtColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(5, 23, 66, 255),
				'EditableColor2', RGBA(12, 11, 11, 255),
				'EditableColor3', RGBA(19, 18, 18, 255),
			}),
			group = "GCEXPrologueMERCs",
			id = "Flo-Appearance",
		}),
		PlaceObj('ModItemAppearancePreset', {
			ArmorColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(0, 0, 0, 255),
				'EditableColor2', RGBA(0, 0, 0, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			Body = "NPCJackhammer_Top_01",
			BodyColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(50, 20, 20, 255),
				'EditableColor2', RGBA(1, 5, 18, 255),
				'EditableColor3', RGBA(22, 45, 18, 255),
			}),
			Chest = "",
			ChestColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(22, 16, 12, 255),
				'EditableColor2', RGBA(20, 17, 15, 255),
				'EditableColor3', RGBA(29, 23, 16, 255),
			}),
			Hair = "EquipmentBlood_Hair",
			HairColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(40, 30, 20, 255),
				'EditableRoughness1', 29,
				'EditableMetallic1', 48,
				'EditableColor2', RGBA(30, 15, 10, 255),
				'EditableRoughness2', -37,
				'EditableMetallic2', -128,
				'EditableColor3', RGBA(30, 5, 5, 255),
				'EditableRoughness3', -44,
				'EditableMetallic3', 127,
			}),
			HairParam1 = 12,
			HairParam2 = 26,
			HairParam3 = 172,
			Hat = "",
			Hat2Color = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(0, 0, 0, 255),
				'EditableColor2', RGBA(0, 0, 0, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			HatAttachOffsetAngle = 2400,
			HatAttachOffsetX = 10,
			HatAttachOffsetY = -50,
			HatAttachOffsetZ = 5,
			HatColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(118, 6, 6, 255),
				'EditableColor2', RGBA(0, 0, 0, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			Head = "Head_M_Ca_NPC_08",
			HeadColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(0, 0, 0, 255),
				'EditableColor2', RGBA(0, 0, 0, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			Hip = "",
			HipColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(0, 0, 0, 255),
				'EditableColor2', RGBA(0, 0, 0, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			NameColor = 4292643868,
			Pants = "NPCJackhammer_Bottom_01",
			PantsColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(7, 3, 3, 255),
				'EditableColor2', RGBA(36, 47, 32, 255),
				'EditableColor3', RGBA(142, 200, 84, 255),
			}),
			Shirt = "",
			ShirtColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(12, 23, 9, 255),
				'EditableColor2', RGBA(14, 34, 15, 255),
				'EditableColor3', RGBA(30, 27, 24, 255),
			}),
			group = "GCEXPrologueMERCs",
			id = "Bubba-Appearance",
		}),
		PlaceObj('ModItemAppearancePreset', {
			ArmorColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(0, 0, 0, 255),
				'EditableColor2', RGBA(0, 0, 0, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			Body = "EquipmentBiff_Top",
			BodyColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(187, 64, 35, 255),
				'EditableColor2', RGBA(73, 8, 8, 255),
				'EditableColor3', RGBA(109, 83, 55, 255),
			}),
			Chest = "Faction_Binocular_01",
			ChestColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(46, 35, 25, 255),
				'EditableColor2', RGBA(16, 13, 9, 255),
				'EditableColor3', RGBA(109, 83, 55, 255),
			}),
			Hair = "EquipmentBiff_Hair",
			HairColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(221, 66, 30, 255),
				'EditableMetallic1', 50,
				'EditableColor2', RGBA(227, 70, 22, 255),
				'EditableMetallic2', -128,
				'EditableColor3', RGBA(169, 62, 62, 255),
				'EditableMetallic3', 127,
			}),
			HairParam2 = 20,
			Hat2Color = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(68, 48, 35, 255),
				'EditableRoughness1', 60,
				'EditableColor2', RGBA(40, 35, 25, 255),
				'EditableColor3', RGBA(68, 48, 35, 255),
			}),
			HatAttachOffsetZ = -10,
			HatColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(0, 0, 0, 255),
				'EditableColor2', RGBA(0, 0, 0, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			Head = "Head_Biff",
			HeadColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(0, 0, 0, 255),
				'EditableColor2', RGBA(0, 0, 0, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			Hip = "Faction_Acc_Stormer",
			HipColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(11, 8, 6, 255),
				'EditableColor2', RGBA(11, 8, 6, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			Pants = "NPCCostumeMale_Pants_10",
			PantsColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(20, 24, 26, 255),
				'EditableColor2', RGBA(12, 8, 4, 255),
				'EditableColor3', RGBA(24, 14, 4, 255),
			}),
			ShirtColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(0, 0, 0, 255),
				'EditableColor2', RGBA(0, 0, 0, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			group = "GCEXPrologueNPCs",
			id = "Biff-Appearance",
		}),
		PlaceObj('ModItemAppearancePreset', {
			ArmorColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(0, 0, 0, 255),
				'EditableColor2', RGBA(0, 0, 0, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			Body = "Faction_Thugs_Top_09",
			BodyColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(199, 87, 49, 255),
				'EditableColor2', RGBA(2, 9, 0, 255),
				'EditableColor3', RGBA(9, 31, 2, 255),
			}),
			Chest = "",
			ChestColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(22, 16, 12, 255),
				'EditableColor2', RGBA(20, 17, 15, 255),
				'EditableColor3', RGBA(29, 23, 16, 255),
			}),
			Hair = "NPCMale_Hair_02",
			HairColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(71, 62, 60, 255),
				'EditableRoughness1', 29,
				'EditableMetallic1', 48,
				'EditableColor2', RGBA(84, 74, 72, 255),
				'EditableRoughness2', -37,
				'EditableMetallic2', -128,
				'EditableColor3', RGBA(30, 5, 5, 255),
				'EditableRoughness3', -44,
				'EditableMetallic3', 127,
			}),
			HairParam1 = 12,
			HairParam2 = 26,
			HairParam3 = 172,
			Hat = "EquipmentFidel_Cigar",
			Hat2Color = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(0, 0, 0, 255),
				'EditableColor2', RGBA(0, 0, 0, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			HatAttachOffsetAngle = 2400,
			HatAttachOffsetX = 4,
			HatAttachOffsetY = -50,
			HatAttachOffsetZ = -6,
			HatColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(118, 6, 6, 255),
				'EditableColor2', RGBA(0, 0, 0, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			Head = "Head_Igor",
			HeadColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(0, 0, 0, 255),
				'EditableColor2', RGBA(0, 0, 0, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			Hip = "",
			HipColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(0, 0, 0, 255),
				'EditableColor2', RGBA(0, 0, 0, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			NameColor = 4292643868,
			Pants = "Faction_GrandChien_Bottom_04",
			PantsColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(42, 60, 33, 255),
				'EditableColor2', RGBA(99, 48, 26, 255),
				'EditableColor3', RGBA(25, 36, 22, 255),
			}),
			Shirt = "",
			ShirtColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(12, 23, 9, 255),
				'EditableColor2', RGBA(14, 34, 15, 255),
				'EditableColor3', RGBA(30, 27, 24, 255),
			}),
			group = "GCEXPrologueMERCs",
			id = "Stogie-Appearance",
		}),
		PlaceObj('ModItemAppearancePreset', {
			ArmorColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(0, 0, 0, 255),
				'EditableColor2', RGBA(0, 0, 0, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			Body = "NPCLuigy_Top_01",
			BodyColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(65, 25, 11, 255),
				'EditableColor2', RGBA(189, 171, 149, 255),
				'EditableColor3', RGBA(189, 171, 149, 255),
			}),
			ChestColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(0, 100, 0, 255),
				'EditableColor2', RGBA(0, 100, 0, 255),
				'EditableColor3', RGBA(0, 100, 0, 255),
			}),
			Hair = "NPCMale_Hair_05",
			HairColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(38, 20, 10, 255),
				'EditableRoughness1', 40,
				'EditableMetallic1', -128,
				'EditableColor2', RGBA(40, 22, 14, 255),
				'EditableRoughness2', 28,
				'EditableMetallic2', -128,
				'EditableColor3', RGBA(0, 0, 0, 255),
				'EditableRoughness3', 74,
				'EditableMetallic3', 127,
			}),
			HairParam3 = 128,
			Head = "Male_Head_01",
			HeadColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(78, 40, 38, 255),
				'EditableColor2', RGBA(0, 0, 0, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			Hip = "",
			HipColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(32, 47, 33, 255),
				'EditableColor2', RGBA(75, 63, 50, 255),
				'EditableColor3', RGBA(249, 249, 219, 255),
			}),
			NameColor = 4292643868,
			Pants = "NPCCostumeMale_Pants_07",
			PantsColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(10, 7, 5, 255),
				'EditableColor2', RGBA(0, 0, 0, 255),
				'EditableColor3', RGBA(91, 88, 88, 255),
			}),
			ShirtColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(0, 0, 100, 255),
				'EditableColor2', RGBA(0, 0, 100, 255),
				'EditableColor3', RGBA(0, 0, 100, 255),
			}),
			group = "GCEXPrologueMERCs",
			id = "Cougar-Appearance",
		}),
		PlaceObj('ModItemAppearancePreset', {
			ArmorColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(0, 0, 0, 255),
				'EditableColor2', RGBA(0, 0, 0, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			Body = "Faction_Adonis_Top_05",
			BodyColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(126, 48, 21, 255),
				'EditableColor2', RGBA(11, 15, 16, 255),
				'EditableColor3', RGBA(11, 15, 16, 255),
			}),
			ChestColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(0, 100, 0, 255),
				'EditableColor2', RGBA(0, 100, 0, 255),
				'EditableColor3', RGBA(0, 100, 0, 255),
			}),
			Hair = "NPCMale_Hair_05",
			HairColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(14, 12, 11, 255),
				'EditableRoughness1', 40,
				'EditableMetallic1', -128,
				'EditableColor2', RGBA(120, 110, 109, 255),
				'EditableRoughness2', 28,
				'EditableMetallic2', -128,
				'EditableColor3', RGBA(112, 112, 112, 255),
				'EditableRoughness3', 74,
				'EditableMetallic3', 127,
			}),
			HairParam3 = 128,
			Head = "Head_Wolf",
			HeadColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(168, 121, 119, 255),
				'EditableColor2', RGBA(0, 0, 0, 255),
				'EditableColor3', RGBA(0, 0, 0, 255),
			}),
			Hip = "",
			HipColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(32, 47, 33, 255),
				'EditableColor2', RGBA(75, 63, 50, 255),
				'EditableColor3', RGBA(249, 249, 219, 255),
			}),
			Pants = "Faction_Adonis_Bottom_01",
			PantsColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(10, 7, 5, 255),
				'EditableColor2', RGBA(0, 0, 0, 255),
				'EditableColor3', RGBA(91, 88, 88, 255),
			}),
			ShirtColor = PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(0, 0, 100, 255),
				'EditableColor2', RGBA(0, 0, 100, 255),
				'EditableColor3', RGBA(0, 0, 100, 255),
			}),
			group = "Default",
			id = "Gaston-Appearance",
		}),
		}),
	PlaceObj('ModItemFolder', {
		'name', "Units",
	}, {
		PlaceObj('ModItemUnitDataCompositeDef', {
			'Group', "GCExPrologueUnits",
			'Id', "GCExBiff",
			'NameColor', RGBA(61, 122, 153, 255),
			'object_class', "UnitData",
			'Health', 73,
			'Agility', 74,
			'Dexterity', 71,
			'Strength', 41,
			'Wisdom', 58,
			'Leadership', 13,
			'Marksmanship', 57,
			'Mechanical', 0,
			'Explosives', 4,
			'Medical', 24,
			'Portrait', "UI/NPCsPortraits/Biff",
			'BigPortrait', "UI/NPCs/Biff",
			'Name', T(174901927062, --[[ModItemUnitDataCompositeDef GCExBiff Name]] "Biff Apscott"),
			'Nick', T(137488486663, --[[ModItemUnitDataCompositeDef GCExBiff Nick]] "Biff"),
			'AllCapsNick', T(349220379003, --[[ModItemUnitDataCompositeDef GCExBiff AllCapsNick]] "BIFF"),
			'Affiliation', "Other",
			'StartingLevel', 3,
			'immortal', true,
			'ImportantNPC', true,
			'AIKeywords', {
				"Soldier",
			},
			'MaxAttacks', 2,
			'RewardExperience', 0,
			'MaxHitPoints', 69,
			'StartingPerks', {
				"Teacher",
			},
			'AppearancesList', {
				PlaceObj('AppearanceWeight', {
					'Preset', "Biff",
				}),
			},
			'Equipment', {
				"Biff",
			},
			'Specialization', "ExplosiveExpert",
			'gender', "Male",
			'PersistentSessionId', "GCExBiff",
			'VoiceResponseId', "BiffNPC",
		}),
		PlaceObj('ModItemUnitDataCompositeDef', {
			'Group', "GCExPrologueUnits",
			'Id', "GCEXFlo",
			'NameColor', RGBA(61, 122, 153, 255),
			'object_class', "UnitData",
			'Health', 58,
			'Agility', 37,
			'Dexterity', 64,
			'Strength', 45,
			'Wisdom', 82,
			'Leadership', 1,
			'Marksmanship', 38,
			'Mechanical', 7,
			'Explosives', 2,
			'Medical', 19,
			'Portrait', "Mod/GCExPrologue/Images/FloPortrait",
			'BigPortrait', "Mod/GCExPrologue/Images/Flo",
			'Name', T(183982423479, --[[ModItemUnitDataCompositeDef GCEXFlo Name]] 'Florence "Flo" Gabriel'),
			'Nick', T(445040565694, --[[ModItemUnitDataCompositeDef GCEXFlo Nick]] "Flo"),
			'AllCapsNick', T(572992729569, --[[ModItemUnitDataCompositeDef GCEXFlo AllCapsNick]] "FLO"),
			'Affiliation', "Other",
			'Bio', T(234573707265, --[[ModItemUnitDataCompositeDef GCEXFlo Bio]] "The daughter of vineyard workers, Florence Gabriel spent most of her childhood in Cognac, France before moving to Pittsburgh, Pennsylvania, USA. After settling in the US she took a job as the bookkeeper for a major gun dealer, where she acquired extensive knowledge on the value of firearms. Slightly hesitant, but bright, Flo is simply priced too low to pass up."),
			'Nationality', "France",
			'snype_nick', T(965203635079, --[[ModItemUnitDataCompositeDef GCEXFlo snype_nick]] "florence.gabriel"),
			'Refusals', {},
			'Haggles', {},
			'Mitigations', {},
			'ExtraPartingWords', {},
			'Offline', {},
			'GreetingAndOffer', {},
			'ConversationRestart', {},
			'IdleLine', {},
			'PartingWords', {},
			'RehireIntro', {},
			'RehireOutro', {},
			'MedicalDeposit', "none",
			'StartingSalary', 470,
			'SalaryIncrease', 280,
			'SalaryLv1', 100,
			'SalaryMaxLv', 4100,
			'LegacyNotes', "The daughter of vineyard workers, Florence Gabriel spent most of her childhood in Cognac, France before moving to Pittsburgh, Pennsylvania, USA. After settling in the US she took a job as the bookkeeper for a major gun dealer, where she acquired extensive knowledge on the value of firearms. Slightly hesitant, but bright, Flo is simply priced too low to pass up.",
			'immortal', true,
			'MaxHitPoints', 82,
			'Dislikes', {
				"Meltdown",
			},
			'AppearancesList', {
				PlaceObj('AppearanceWeight', {
					'Preset', "Flo-Appearance",
				}),
			},
			'Specialization', "AllRounder",
			'gender', "Female",
			'blocked_spots', set( "Weaponls", "Weaponrs" ),
			'PersistentSessionId', "GCEXFlo",
		}),
		PlaceObj('ModItemUnitDataCompositeDef', {
			'Group', "GCExPrologueUnits",
			'Id', "GCEXHaywire",
			'NameColor', RGBA(61, 122, 153, 255),
			'object_class', "UnitData",
			'Health', 65,
			'Agility', 59,
			'Dexterity', 76,
			'Strength', 71,
			'Wisdom', 58,
			'Leadership', 1,
			'Marksmanship', 48,
			'Mechanical', 8,
			'Explosives', 31,
			'Medical', 2,
			'Portrait', "Mod/GCExPrologue/Images/HaywirePortrait",
			'BigPortrait', "Mod/GCExPrologue/Images/Haywire",
			'Name', T(749871154545, --[[ModItemUnitDataCompositeDef GCEXHaywire Name]] 'Frankie "Haywire" Gordon'),
			'Nick', T(977562677594, --[[ModItemUnitDataCompositeDef GCEXHaywire Nick]] "Haywire"),
			'AllCapsNick', T(828404684603, --[[ModItemUnitDataCompositeDef GCEXHaywire AllCapsNick]] "HAYWIRE"),
			'Affiliation', "Other",
			'Bio', T(436581784584, --[[ModItemUnitDataCompositeDef GCEXHaywire Bio]] "Killing is Frankie Gordon's speciality. He's not particular on how he kills, just as long as he has fun doing it. Haywire may not be considered a marksman, but he exhibits a certain fascination with automatic weapons and seems to handle them with ease. The same could be said for his talents with sharp knives. Additional info:\n\nFrankie is working on improving his people skills."),
			'Nationality', "USA",
			'Title', T(440783434649, --[[ModItemUnitDataCompositeDef GCEXHaywire Title]] "Wicked"),
			'snype_nick', T(881909539454, --[[ModItemUnitDataCompositeDef GCEXHaywire snype_nick]] "hay.wire"),
			'Refusals', {},
			'Haggles', {},
			'Mitigations', {},
			'ExtraPartingWords', {},
			'Offline', {},
			'GreetingAndOffer', {},
			'ConversationRestart', {},
			'IdleLine', {},
			'PartingWords', {},
			'RehireIntro', {},
			'RehireOutro', {},
			'MedicalDeposit', "none",
			'StartingSalary', 470,
			'SalaryIncrease', 280,
			'SalaryLv1', 100,
			'SalaryMaxLv', 4100,
			'LegacyNotes', '"Killing is Frankie Gordon\'s speciality. He\'s not particular on how he kills, just as long as he has fun doing it. Haywire may not be considered a marksman, but he exhibits a certain fascination with automatic weapons and seems to handle them with ease. The same could be said for his talents with sharp knives. Additional info:\n\nFrankie is working on improving his people skills."\n\n- M.E.R.C. Dossier',
			'immortal', true,
			'MaxHitPoints', 82,
			'Likes', {
				"GCEXRazor",
			},
			'StartingPerks', {
				"AutoWeapons",
				"MeleeTraining",
				"Psycho",
			},
			'AppearancesList', {
				PlaceObj('AppearanceWeight', {
					'Preset', "Haywire-Appearance",
				}),
			},
			'AdditionalGroups', {
				PlaceObj('AdditionalGroup', {
					'Name', "MERC",
				}),
			},
			'Specialization', "AllRounder",
			'gender', "Male",
			'blocked_spots', set( "Weaponls", "Weaponrs" ),
			'PersistentSessionId', "GCEXHaywire",
		}),
		PlaceObj('ModItemUnitDataCompositeDef', {
			'Group', "GCExPrologueUnits",
			'Id', "GCEXRazor",
			'NameColor', RGBA(61, 122, 153, 255),
			'object_class', "UnitData",
			'Health', 73,
			'Agility', 88,
			'Dexterity', 91,
			'Strength', 86,
			'Wisdom', 53,
			'Leadership', 4,
			'Marksmanship', 50,
			'Mechanical', 8,
			'Explosives', 2,
			'Medical', 12,
			'Portrait', "Mod/GCExPrologue/Images/RazorPortrait",
			'BigPortrait', "Mod/GCExPrologue/Images/Razor",
			'Name', T(606315709304, --[[ModItemUnitDataCompositeDef GCEXRazor Name]] 'Bill "Razor" Lamont'),
			'Nick', T(593891680732, --[[ModItemUnitDataCompositeDef GCEXRazor Nick]] "Razor"),
			'AllCapsNick', T(889936330375, --[[ModItemUnitDataCompositeDef GCEXRazor AllCapsNick]] "RAZOR"),
			'Affiliation', "Other",
			'Bio', T(124927936237, --[[ModItemUnitDataCompositeDef GCEXRazor Bio]] "Razor's attention to detail and finesse with the blade saved him from being nicknamed \"The Butcher\". Ask him why he prefers a knife to a gun and every time he'll say \"so much noise, so little challenge!\" He takes pride in his ability to carve the alphabet -- or at least the vowels -- into his victims before they bleed to death.\n\nAdditional Info: Razor Lamont has occasionally been called certifiable. And he is indeed certified -- certified in killing!"),
			'Nationality', "USA",
			'Title', T(602866699222, --[[ModItemUnitDataCompositeDef GCEXRazor Title]] "The Butcher"),
			'snype_nick', T(702813232330, --[[ModItemUnitDataCompositeDef GCEXRazor snype_nick]] "bill.lamont"),
			'Refusals', {},
			'Haggles', {},
			'Mitigations', {},
			'ExtraPartingWords', {},
			'Offline', {},
			'GreetingAndOffer', {},
			'ConversationRestart', {},
			'IdleLine', {},
			'PartingWords', {},
			'RehireIntro', {},
			'RehireOutro', {},
			'MedicalDeposit', "none",
			'StartingSalary', 470,
			'SalaryIncrease', 280,
			'SalaryLv1', 100,
			'SalaryMaxLv', 4100,
			'LegacyNotes', '"Razor\'s attention to detail and finesse with the blade saved him from being nicknamed "The Butcher". Ask him why he prefers a knife to a gun and every time he\'ll say "so much noise, so little challenge!" He takes pride in his ability to carve the alphabet -- or at least the vowels -- into his victims before they bleed to death.\n\nAdditional Info: Razor Lamont has occasionally been called certifiable. And he is indeed certified -- certified in killing!" - M.E.R.C. Dossier',
			'StartingLevel', 2,
			'immortal', true,
			'MaxHitPoints', 82,
			'Likes', {
				"GCEXHaywire",
				"Fidel",
			},
			'StartingPerks', {
				"Psycho",
				"MartialArts",
				"Throwing",
				"BreachAndClear",
			},
			'AppearancesList', {
				PlaceObj('AppearanceWeight', {
					'Preset', "Razor-Appearance",
				}),
			},
			'Specialization', "AllRounder",
			'gender', "Male",
			'blocked_spots', set( "Weaponls", "Weaponrs" ),
			'PersistentSessionId', "GCEXRazor",
		}),
		PlaceObj('ModItemUnitDataCompositeDef', {
			'Group', "GCExPrologueUnits",
			'Id', "GCEXLarry",
			'NameColor', RGBA(61, 122, 153, 255),
			'object_class', "UnitData",
			'Health', 63,
			'Agility', 77,
			'Dexterity', 79,
			'Strength', 67,
			'Wisdom', 70,
			'Leadership', 18,
			'Marksmanship', 70,
			'Mechanical', 14,
			'Explosives', 92,
			'Medical', 70,
			'Portrait', "UI/MercsPortraits/Larry",
			'BigPortrait', "UI/Mercs/Larry",
			'Name', T(300728614687, --[[ModItemUnitDataCompositeDef GCEXLarry Name]] "Larry Roachburn"),
			'Nick', T(228036596095, --[[ModItemUnitDataCompositeDef GCEXLarry Nick]] "Larry"),
			'AllCapsNick', T(512931651309, --[[ModItemUnitDataCompositeDef GCEXLarry AllCapsNick]] "LARRY"),
			'Affiliation', "Other",
			'HireStatus', "MIA",
			'Bio', T(325007942979, --[[ModItemUnitDataCompositeDef GCEXLarry Bio]] "Explosives require a steady hand, and Larry's got some of the steadiest - most of the time. Although he has in the past struggled with bouts of chemical dependency, Larry's been clean and sober for two years now. His knowledge of pharmaceuticals comes in handy when administering first aid and his history of checking himself out of rehab whenever he liked has also made him good at sneaking around and picking locks. But Larry swears all that is behind him and we here at M.E.R.C. believe him!"),
			'Nationality', "USA",
			'Title', T(305533378418, --[[ModItemUnitDataCompositeDef GCEXLarry Title]] "Former Artist. Explosives Expert"),
			'SalaryLv1', 0,
			'SalaryMaxLv', 0,
			'LegacyNotes', 'JA1:\n\n"On probationary standing, Larry Roachburn, a somewhat respected explosives expert, was a young survivor of the C.I.A./L.S.D. years. And when not on assignment, he continues to subject his body to the whims of pharmaceutical researchers around the world."\n\nJA2 Alumni:\n\n"After eight attempts at rehab without any sustained success, AIM was little choice but to terminate Larry Roachburn\'s membership within the organization. From what we understand, the death of his father has persuaded him to take yet another attempt at ridding himself of his demons and ridding his body from decades of toxicity. The organization wishes him the best of luck in all his future endeavors."\n\nJA2 MERC:\n\n"There\'s no denying that Larry has had his share of substance abuse problems in the past, and despite many attempts at rehabilitation, the demons remain. Roachburn has recently spent six months at an exclusive and classy rehab center undergoing treatment. Having completed the program, he proclaims himself cured and ready for duty.\n\nAdditional Info:Larry spent most of his spare time in rehab studying pharmacology which has tremendously improved his medical knowledge."\n\nAdditional Info\n\nLarry\'s drug habits have made him forgetful, and he will often stop in the middle of a task in need of a reminder, losing AP.\nHis brother Gary derisively refers to him as "Anything But A Placebo" Larry.\n\nJagged Alliance/Deadly Games\nHaving ruined his health with drugs, Larry loses rather than gains stats at the end of a day, a trait normally reserved to old mercs.\n\nJagged Alliance 2\n\nLarry has two different personalities - clean and relapsed. After hiring, he can relapse under certain conditions, losing a lot of stat points, making him almost useless.\n\nAs long as he stays clean he\'s the sociable sort, and loves to hang around other mercs (with some exceptions). However, once relapsed he loses focus and becomes forgetful, preferring the loner lifestyle.\n\nRelapse conditions\n\nStationary passing time while assigned to squad, carrying energy booster, regeneration booster, medical kit, or any type of alcohol. First aid kits are excluded.\n\nStationary passing time while assigned to squad, carrying none of the above items, in any city sector that has a bar.\nThe easiest way to prevent a relapse while carrying any of the above items, is keeping Larry busy, assigning him to squad only to travel and fight. And even though sleeping whilst assigned to squad (eg. after travelling) would be safe, there\'s no wake-up call and Larry\'s very quick to get his hands on something "groovy".\n\nGetting clean\n\nLuckily there\'s an easy way to get him clean. A one day speed course called "walkabout". Within a short while, needing a rest at least once, he\'s as fit as a fiddle again. As mentioned above, carrying any of the "relapse triggering items" isn\'t a problem per se, just keep a very close tab on him waking up.\n\nDue to strength loss, Larry can be severely encumbered while on the "walkabout" and damage his strength and/or health. Damaged strength will be temporary and reset as soon as he\'s clean, even though it still looks red for a short while. Damaged health will be permanent until dismissed! Dismissing him will reset health back to what it was.',
			'StartingLevel', 3,
			'immortal', true,
			'MaxHitPoints', 69,
			'StartingPerks', {
				"MrFixit",
				"Loner",
				"Pessimist",
				"DangerClose",
				"SteadyBreathing",
				"Untraceable",
			},
			'AppearancesList', {
				PlaceObj('AppearanceWeight', {
					'Preset', "Larry",
				}),
			},
			'Equipment', {
				"Larry",
			},
			'Specialization', "ExplosiveExpert",
			'gender', "Male",
			'PersistentSessionId', "GCEXLarry",
			'VoiceResponseId', "Larry_Clean",
		}),
		PlaceObj('ModItemUnitDataCompositeDef', {
			'Group', "GCExPrologueUnits",
			'Id', "GCEXSmiley",
			'NameColor', RGBA(61, 122, 153, 255),
			'object_class', "UnitData",
			'Health', 82,
			'Agility', 78,
			'Dexterity', 56,
			'Strength', 73,
			'Wisdom', 55,
			'Leadership', 54,
			'Marksmanship', 77,
			'Mechanical', 5,
			'Explosives', 5,
			'Medical', 36,
			'Portrait', "UI/MercsPortraits/Smiley",
			'BigPortrait', "UI/Mercs/Smiley",
			'Name', T(146892548768, --[[ModItemUnitDataCompositeDef GCEXSmiley Name]] 'Alejandro "Smiley" Diaz'),
			'Nick', T(646379074328, --[[ModItemUnitDataCompositeDef GCEXSmiley Nick]] "Smiley"),
			'AllCapsNick', T(985437449047, --[[ModItemUnitDataCompositeDef GCEXSmiley AllCapsNick]] "SMILEY"),
			'Affiliation', "Other",
			'HireStatus', "NotMet",
			'Bio', T(601739530861, --[[ModItemUnitDataCompositeDef GCEXSmiley Bio]] 'Alejandro "Smiley" Diaz came to Grand Chien as mercenary serving some unknown small group - which got totally obliterated by the Major a few weeks before your encounter with him. An Arulco native, he is eager to join up with you, as A.I.M. is held in great regard in the new order back at his home country.'),
			'Nationality', "Arulco",
			'Title', T(966721153892, --[[ModItemUnitDataCompositeDef GCEXSmiley Title]] "Romeo in Combat Fatigues"),
			'SalaryLv1', 0,
			'SalaryMaxLv', 0,
			'StartingLevel', 2,
			'immortal', true,
			'CustomEquipGear', function (self, items)
				self:TryEquip(items, "Handheld A", "SubmachineGun")
				self:TryEquip(items, "Handheld B", "SniperRifle")
			end,
			'MaxHitPoints', 85,
			'LearnToLike', {
				"Kalyna",
				"Fox",
				"Buns",
			},
			'StartingPerks', {
				"AutoWeapons",
				"Optimist",
				"RecklessAssault",
				"BeefedUp",
			},
			'AppearancesList', {
				PlaceObj('AppearanceWeight', {
					'Preset', "Smiley",
				}),
			},
			'Equipment', {
				"Smiley",
			},
			'AdditionalGroups', {},
			'Specialization', "AllRounder",
			'gender', "Male",
			'PersistentSessionId', "GCEXSmiley",
			'VoiceResponseId', "Smiley",
		}),
		PlaceObj('ModItemUnitDataCompositeDef', {
			'Group', "GCExPrologueUnits",
			'Id', "GCExMartha",
			'NameColor', RGBA(88, 92, 68, 255),
			'object_class', "UnitData",
			'Health', 50,
			'Strength', 40,
			'Wisdom', 40,
			'Leadership', 50,
			'Marksmanship', 30,
			'Mechanical', 0,
			'Explosives', 0,
			'Medical', 10,
			'Portrait', "UI/NPCsPortraits/Martha",
			'BigPortrait', "UI/NPCs/Martha",
			'Name', T(339879582713, --[[ModItemUnitDataCompositeDef GCExMartha Name]] "Martha"),
			'Randomization', true,
			'Affiliation', "Civilian",
			'immortal', true,
			'ImportantNPC', true,
			'MaxAttacks', 1,
			'RewardExperience', 0,
			'MaxHitPoints', 60,
			'AppearancesList', {
				PlaceObj('AppearanceWeight', {
					'Preset', "MarthaPro",
				}),
			},
			'pollyvoice', "Kendra",
			'gender', "Female",
			'PersistentSessionId', "GCExMartha",
			'FallbackMissingVR', "VillagerFemale",
		}),
		PlaceObj('ModItemUnitDataCompositeDef', {
			'Group', "GCExPrologueUnits",
			'Id', "GCExBasil",
			'NameColor', RGBA(88, 92, 68, 255),
			'object_class', "UnitData",
			'Health', 70,
			'Agility', 50,
			'Dexterity', 65,
			'Strength', 70,
			'Wisdom', 50,
			'Leadership', 50,
			'Marksmanship', 45,
			'Mechanical', 70,
			'Explosives', 10,
			'Medical', 0,
			'Portrait', "UI/NPCsPortraits/GreasyBasil",
			'BigPortrait', "UI/NPCs/GreasyBasil",
			'Name', T(279057282405, --[[ModItemUnitDataCompositeDef GCExBasil Name]] "Greasy Basil"),
			'Randomization', true,
			'Affiliation', "Civilian",
			'immortal', true,
			'MaxAttacks', 1,
			'RewardExperience', 0,
			'MaxHitPoints', 60,
			'AppearancesList', {
				PlaceObj('AppearanceWeight', {
					'Preset', "GreasyBasil",
				}),
			},
			'pollyvoice', "Russell",
			'gender', "Male",
			'PersistentSessionId', "NPC_GreasyBasil",
		}),
		PlaceObj('ModItemUnitDataCompositeDef', {
			'Group', "GCExPrologueUnits",
			'Id', "GCExLuc",
			'NameColor', RGBA(88, 92, 68, 255),
			'object_class', "UnitData",
			'Health', 50,
			'Agility', 50,
			'Strength', 40,
			'Wisdom', 80,
			'Leadership', 40,
			'Marksmanship', 40,
			'Mechanical', 40,
			'Explosives', 0,
			'Medical', 20,
			'Portrait', "UI/NPCsPortraits/luc",
			'BigPortrait', "UI/NPCs/Luc",
			'Name', T(407103000490, --[[ModItemUnitDataCompositeDef GCExLuc Name]] "Luc"),
			'Randomization', true,
			'Affiliation', "Civilian",
			'immortal', true,
			'MaxAttacks', 2,
			'RewardExperience', 0,
			'MaxHitPoints', 50,
			'AppearancesList', {
				PlaceObj('AppearanceWeight', {
					'Preset', "Luc",
				}),
			},
			'pollyvoice', "Matthew",
			'gender', "Male",
			'PersistentSessionId', "NPC_Luc",
		}),
		PlaceObj('ModItemUnitDataCompositeDef', {
			'Group', "GCExPrologueUnits",
			'Id', "GCExBillyBoy",
			'NameColor', RGBA(88, 92, 68, 255),
			'object_class', "UnitData",
			'Health', 61,
			'Agility', 35,
			'Dexterity', 27,
			'Strength', 50,
			'Wisdom', 39,
			'Leadership', 0,
			'Marksmanship', 22,
			'Mechanical', 0,
			'Explosives', 0,
			'Medical', 0,
			'Portrait', "UI/MercsPortraits/unknown",
			'Name', T(357354307977, --[[ModItemUnitDataCompositeDef GCExBillyBoy Name]] "Billy Boy"),
			'Randomization', true,
			'Affiliation', "Civilian",
			'immortal', true,
			'MaxAttacks', 1,
			'RewardExperience', 0,
			'AppearancesList', {
				PlaceObj('AppearanceWeight', {
					'Preset', "BillyBoy",
				}),
			},
			'pollyvoice', "Matthew",
			'gender', "Male",
			'PersistentSessionId', "NPC_BillyBoy",
		}),
		PlaceObj('ModItemUnitDataCompositeDef', {
			'Group', "GCExPrologueUnits",
			'Id', "GCExSantiago",
			'NameColor', RGBA(88, 92, 68, 255),
			'object_class', "UnitData",
			'Health', 100,
			'Agility', 100,
			'Dexterity', 100,
			'Wisdom', 100,
			'Leadership', 100,
			'Marksmanship', 100,
			'Mechanical', 0,
			'Explosives', 0,
			'Medical', 30,
			'Portrait', "UI/NPCsPortraits/CorazonSantiago",
			'BigPortrait', "UI/NPCs/CorazonSantiago",
			'Name', T(712100870120, --[[ModItemUnitDataCompositeDef GCExSantiago Name]] "Corazon Santiago"),
			'Randomization', true,
			'Affiliation', "Adonis",
			'immortal', true,
			'ImportantNPC', true,
			'villain', true,
			'CanManEmplacements', false,
			'MaxAttacks', 2,
			'Lives', 4,
			'DefeatBehavior', "Defeated",
			'MaxHitPoints', 100,
			'AppearancesList', {
				PlaceObj('AppearanceWeight', {
					'Preset', "CorazonSantiago",
				}),
			},
			'pollyvoice', "Joanna",
			'gender', "Female",
			'PersistentSessionId', "NPC_Corazon",
			'VoiceResponseId', "CorazonSantiagoEnemy",
			'FallbackMissingVR', "VillagerFemale",
		}),
		PlaceObj('ModItemUnitDataCompositeDef', {
			'Group', "GCExPrologueUnits",
			'Id', "GCExHerman",
			'NameColor', RGBA(88, 92, 68, 255),
			'object_class', "UnitData",
			'Agility', 50,
			'Wisdom', 20,
			'Leadership', 0,
			'Marksmanship', 50,
			'Mechanical', 10,
			'Explosives', 0,
			'Medical', 10,
			'Portrait', "UI/NPCsPortraits/Herman",
			'BigPortrait', "UI/NPCs/Herman",
			'Name', T(850689362732, --[[ModItemUnitDataCompositeDef GCExHerman Name]] "Herman"),
			'Randomization', true,
			'Affiliation', "Civilian",
			'immortal', true,
			'ImportantNPC', true,
			'MaxAttacks', 2,
			'RewardExperience', 0,
			'MaxHitPoints', 60,
			'AppearancesList', {
				PlaceObj('AppearanceWeight', {
					'Preset', "HermanPro",
				}),
			},
			'gender', "Male",
			'PersistentSessionId', "GCExHerman",
		}),
		PlaceObj('ModItemUnitDataCompositeDef', {
			'Group', "GCExPrologueUnits",
			'Id', "GCExDeeDee",
			'NameColor', RGBA(88, 92, 68, 255),
			'object_class', "UnitData",
			'Health', 50,
			'Agility', 50,
			'Dexterity', 20,
			'Strength', 20,
			'Wisdom', 20,
			'Leadership', 0,
			'Marksmanship', 15,
			'Mechanical', 0,
			'Explosives', 0,
			'Medical', 0,
			'Portrait', "UI/NPCsPortraits/DeedeeBoombastic",
			'BigPortrait', "UI/NPCs/DeedeeBoombastic",
			'Name', T(947053024459, --[[ModItemUnitDataCompositeDef GCExDeeDee Name]] "Deedee Bombastic"),
			'Randomization', true,
			'Affiliation', "Civilian",
			'ImportantNPC', true,
			'neutral_retaliate', true,
			'AIKeywords', {
				"Explosives",
			},
			'archetype', "Skirmisher",
			'MaxAttacks', 2,
			'RewardExperience', 0,
			'AppearancesList', {
				PlaceObj('AppearanceWeight', {
					'Preset', "DeedeePro",
				}),
			},
			'Equipment', {
				"LegionGrenadier",
			},
			'pollyvoice', "Amy",
			'gender', "Female",
			'FallbackMissingVR', "VillagerFemale",
		}),
		PlaceObj('ModItemUnitDataCompositeDef', {
			'Group', "GCExPrologueUnits",
			'Id', "GCExBastien",
			'NameColor', RGBA(88, 92, 68, 255),
			'object_class', "UnitData",
			'Health', 79,
			'Agility', 72,
			'Dexterity', 81,
			'Strength', 44,
			'Wisdom', 24,
			'Leadership', 10,
			'Marksmanship', 76,
			'Mechanical', 0,
			'Explosives', 0,
			'Medical', 0,
			'Portrait', "UI/NPCsPortraits/Bastien",
			'BigPortrait', "UI/NPCs/Bastien",
			'Name', T(294499373266, --[[ModItemUnitDataCompositeDef GCExBastien Name]] "Bastien"),
			'Randomization', true,
			'Affiliation', "Legion",
			'ImportantNPC', true,
			'neutral_retaliate', true,
			'AIKeywords', {
				"Explosives",
			},
			'MaxAttacks', 2,
			'MaxHitPoints', 50,
			'StartingPerks', {
				"AutoWeapons",
				"MinFreeMove",
				"OpportunisticKiller",
				"BattleFocus",
			},
			'AppearancesList', {
				PlaceObj('AppearanceWeight', {
					'Preset', "BastienPro",
				}),
			},
			'Equipment', {
				"LegionRaiderBastien",
			},
			'pollyvoice', "Geraint",
			'gender', "Male",
			'PersistentSessionId', "GCExBastien",
			'VoiceResponseId', "LegionRaider_Jose",
		}),
		PlaceObj('ModItemUnitDataCompositeDef', {
			'Group', "GCExPrologueUnits",
			'Id', "GCExBrian",
			'NameColor', RGBA(88, 92, 68, 255),
			'object_class', "UnitData",
			'Health', 69,
			'Agility', 78,
			'Dexterity', 83,
			'Strength', 50,
			'Wisdom', 50,
			'Marksmanship', 78,
			'Mechanical', 15,
			'Explosives', 0,
			'Medical', 15,
			'Portrait', "Mod/GCExPrologue/Images/BrianFace",
			'BigPortrait', "Mod/GCExPrologue/Images/IMG_8968",
			'Name', T(862172338990, --[[ModItemUnitDataCompositeDef GCExBrian Name]] "Brian"),
			'Randomization', true,
			'Affiliation', "Civilian",
			'ImportantNPC', true,
			'neutral_retaliate', true,
			'AIKeywords', {
				"Sniper",
			},
			'role', "Marksman",
			'CanManEmplacements', false,
			'AlwaysUseOpeningAttack', true,
			'OpeningAttackType', "PinDown",
			'PinnedDownChance', 100,
			'MaxAttacks', 2,
			'RewardExperience', 0,
			'MaxHitPoints', 60,
			'AppearancesList', {
				PlaceObj('AppearanceWeight', {
					'Preset', "BrianNPC",
				}),
			},
			'Equipment', {
				"HyenaNPC",
			},
			'gender', "Male",
		}),
		PlaceObj('ModItemUnitDataCompositeDef', {
			'Group', "GCExPrologueUnits",
			'Id', "GCExStephane",
			'NameColor', RGBA(88, 92, 68, 255),
			'object_class', "UnitData",
			'Health', 50,
			'Agility', 50,
			'Strength', 40,
			'Wisdom', 80,
			'Leadership', 40,
			'Marksmanship', 40,
			'Mechanical', 40,
			'Explosives', 0,
			'Medical', 20,
			'Portrait', "Mod/GCExPrologue/Images/StephaneHead",
			'BigPortrait', "Mod/GCExPrologue/Images/IMG_8939",
			'Name', T(996070173311, --[[ModItemUnitDataCompositeDef GCExStephane Name]] "Stephane"),
			'Randomization', true,
			'Affiliation', "Civilian",
			'immortal', true,
			'ImportantNPC', true,
			'MaxAttacks', 2,
			'RewardExperience', 0,
			'MaxHitPoints', 50,
			'AppearancesList', {
				PlaceObj('AppearanceWeight', {
					'Preset', "StephaneNPC",
				}),
			},
			'pollyvoice', "Matthew",
			'gender', "Male",
		}),
		PlaceObj('ModItemUnitDataCompositeDef', {
			'Group', "GCExPrologueUnits",
			'Id', "GCExSmurge",
			'NameColor', RGBA(88, 92, 68, 255),
			'object_class', "UnitData",
			'Health', 75,
			'Agility', 72,
			'Dexterity', 80,
			'Strength', 61,
			'Wisdom', 82,
			'Leadership', 0,
			'Marksmanship', 80,
			'Mechanical', 0,
			'Explosives', 0,
			'Medical', 49,
			'Portrait', "Mod/GCExPrologue/Images/Smurge",
			'BigPortrait', "Mod/GCExPrologue/Images/IMG_8962",
			'Name', T(790241824755, --[[ModItemUnitDataCompositeDef GCExSmurge Name]] "Smurge"),
			'Randomization', true,
			'Affiliation', "Other",
			'StartingLevel', 5,
			'ImportantNPC', true,
			'neutral_retaliate', true,
			'AIKeywords', {
				"Soldier",
			},
			'MaxAttacks', 2,
			'RewardExperience', 0,
			'MaxHitPoints', 60,
			'AppearancesList', {
				PlaceObj('AppearanceWeight', {
					'Preset', "Bounce",
				}),
			},
			'Equipment', {
				"LegionRaider_Stronger_Elite",
			},
			'pollyvoice', "Joey",
			'gender', "Male",
			'VoiceResponseId', "Bounce",
		}),
		PlaceObj('ModItemUnitDataCompositeDef', {
			'Group', "GCExPrologueUnits",
			'Id', "GCExStitches",
			'NameColor', RGBA(88, 92, 68, 255),
			'object_class', "UnitData",
			'Health', 70,
			'Agility', 80,
			'Dexterity', 80,
			'Strength', 70,
			'Wisdom', 80,
			'Marksmanship', 20,
			'Mechanical', 0,
			'Explosives', 0,
			'Medical', 70,
			'Portrait', "UI/NPCsPortraits/LamitheWitch",
			'BigPortrait', "Mod/GCExPrologue/Images/BCPriestess",
			'Name', T(153308792524, --[[ModItemUnitDataCompositeDef GCExStitches Name]] "Stitches"),
			'Randomization', true,
			'Affiliation', "Civilian",
			'ImportantNPC', true,
			'MaxAttacks', 2,
			'AppearancesList', {
				PlaceObj('AppearanceWeight', {
					'Preset', "Lami",
				}),
			},
			'Equipment', {
				"Witch_Loot",
			},
			'pollyvoice', "Nicole",
			'gender', "Female",
			'PersistentSessionId', "NPC_Witch",
		}),
		PlaceObj('ModItemUnitDataCompositeDef', {
			'Group', "GCExPrologueUnits",
			'Id', "GCExZombie_F",
			'NameColor', RGBA(182, 58, 52, 255),
			'object_class', "UnitData",
			'Health', 90,
			'Agility', 95,
			'Dexterity', 61,
			'Strength', 97,
			'Wisdom', 2,
			'Leadership', 98,
			'Marksmanship', 0,
			'Mechanical', 0,
			'Explosives', 0,
			'Medical', 0,
			'Portrait', "UI/EnemiesPortraits/InfectedMale01",
			'BigPortrait', "UI/Enemies/LegionRaider",
			'Name', T(481219843237, --[[ModItemUnitDataCompositeDef GCExZombie_F Name]] "Infected"),
			'Randomization', true,
			'Affiliation', "Beast",
			'neutral_retaliate', true,
			'archetype', "Brute",
			'role', "Stormer",
			'CanManEmplacements', false,
			'PinnedDownChance', 100,
			'MaxAttacks', 2,
			'MaxHitPoints', 60,
			'StartingPerks', {
				"Berserker",
				"ZombiePerk",
				"MinFreeMove",
			},
			'AppearancesList', {
				PlaceObj('AppearanceWeight', {
					'Preset', "Zombie1_F",
				}),
			},
			'Equipment', {
				"Infected_Equipment",
			},
			'gender', "Female",
			'infected', true,
		}),
		PlaceObj('ModItemUnitDataCompositeDef', {
			'Group', "GCExPrologueUnits",
			'Id', "GCExZombie_M",
			'NameColor', RGBA(182, 58, 52, 255),
			'object_class', "UnitData",
			'Health', 90,
			'Agility', 95,
			'Dexterity', 61,
			'Strength', 97,
			'Wisdom', 2,
			'Leadership', 98,
			'Marksmanship', 0,
			'Mechanical', 0,
			'Explosives', 0,
			'Medical', 0,
			'Portrait', "UI/EnemiesPortraits/InfectedMale01",
			'BigPortrait', "UI/Enemies/LegionRaider",
			'Name', T(693205787927, --[[ModItemUnitDataCompositeDef GCExZombie_M Name]] "Infected"),
			'Randomization', true,
			'Affiliation', "Beast",
			'neutral_retaliate', true,
			'archetype', "Brute",
			'role', "Stormer",
			'CanManEmplacements', false,
			'PinnedDownChance', 100,
			'MaxAttacks', 2,
			'MaxHitPoints', 60,
			'StartingPerks', {
				"Berserker",
				"ZombiePerk",
				"MinFreeMove",
			},
			'AppearancesList', {
				PlaceObj('AppearanceWeight', {
					'Preset', "Zombie2_M",
				}),
			},
			'Equipment', {
				"Biolab_Infected_Equipment",
			},
			'gender', "Male",
			'infected', true,
		}),
		PlaceObj('ModItemUnitDataCompositeDef', {
			'Group', "GCExPrologueUnits",
			'Id', "GCExAdonisGuard",
			'NameColor', RGBA(61, 122, 153, 255),
			'object_class', "UnitData",
			'Health', 80,
			'Agility', 90,
			'Dexterity', 75,
			'Strength', 85,
			'Wisdom', 80,
			'Leadership', 20,
			'Marksmanship', 95,
			'Mechanical', 52,
			'Explosives', 48,
			'Medical', 50,
			'Portrait', "UI/EnemiesPortraits/AdonisOfficer",
			'BigPortrait', "Mod/GCExPrologue/Images/TimTurtledove 2.dds",
			'Name', T(777155779977, --[[ModItemUnitDataCompositeDef GCExAdonisGuard Name]] "Leader Elite"),
			'Randomization', true,
			'elite', true,
			'eliteCategory', "Foreigners",
			'Affiliation', "Adonis",
			'StartingLevel', 7,
			'neutral_retaliate', true,
			'AIKeywords', {
				"Control",
				"Explosives",
			},
			'role', "Commander",
			'AlwaysUseOpeningAttack', true,
			'OpeningAttackType', "Overwatch",
			'MaxAttacks', 2,
			'MaxHitPoints', 80,
			'StartingPerks', {
				"OpportunisticKiller",
				"AutoWeapons",
			},
			'AppearancesList', {
				PlaceObj('AppearanceWeight', {
					'Preset', "Adonis_Officer",
				}),
			},
			'Equipment', {
				"AdonisSquadLeader",
			},
			'AdditionalGroups', {
				PlaceObj('AdditionalGroup', {
					'Weight', 50,
					'Exclusive', true,
					'Name', "AdonisMale_1",
				}),
				PlaceObj('AdditionalGroup', {
					'Weight', 50,
					'Exclusive', true,
					'Name', "AdonisMale_2",
				}),
			},
			'Tier', "Elite",
			'pollyvoice', "Joey",
			'gender', "Male",
			'VoiceResponseId', "AdonisAssault",
		}),
		PlaceObj('ModItemUnitDataCompositeDef', {
			'Group', "GCExPrologueUnits",
			'Id', "GCExGoon_1",
			'NameColor', RGBA(182, 58, 52, 255),
			'object_class', "UnitData",
			'Health', 62,
			'Agility', 80,
			'Dexterity', 30,
			'Strength', 39,
			'Wisdom', 30,
			'Leadership', 20,
			'Marksmanship', 55,
			'Mechanical', 0,
			'Explosives', 0,
			'Medical', 0,
			'Portrait', "UI/EnemiesPortraits/LegionRecon",
			'BigPortrait', "UI/Enemies/LegionRaider",
			'Name', T(834781691255, --[[ModItemUnitDataCompositeDef GCExGoon_1 Name]] "Goon"),
			'Randomization', true,
			'Affiliation', "Legion",
			'neutral_retaliate', true,
			'AIKeywords', {
				"MobileShot",
			},
			'archetype', "Skirmisher",
			'role', "Recon",
			'MaxAttacks', 2,
			'MaxHitPoints', 50,
			'StartingPerks', {
				"MinFreeMove",
				"Hotblood",
			},
			'AppearancesList', {
				PlaceObj('AppearanceWeight', {
					'Preset', "Goon1Pro",
				}),
			},
			'Equipment', {
				"LegionGoon",
			},
			'AdditionalGroups', {},
			'pollyvoice', "Joey",
			'gender', "Male",
			'VoiceResponseId', "LegionRaider",
		}),
		PlaceObj('ModItemUnitDataCompositeDef', {
			'Group', "GCExPrologueUnits",
			'Id', "GCExGoon_2",
			'NameColor', RGBA(182, 58, 52, 255),
			'object_class', "UnitData",
			'Health', 73,
			'Agility', 79,
			'Dexterity', 73,
			'Strength', 48,
			'Wisdom', 71,
			'Leadership', 29,
			'Marksmanship', 58,
			'Mechanical', 0,
			'Explosives', 0,
			'Medical', 0,
			'Portrait', "UI/EnemiesPortraits/LegionRecon",
			'BigPortrait', "UI/Enemies/LegionRaider",
			'Name', T(669282205183, --[[ModItemUnitDataCompositeDef GCExGoon_2 Name]] "Scout"),
			'Randomization', true,
			'Affiliation', "Legion",
			'StartingLevel', 2,
			'neutral_retaliate', true,
			'AIKeywords', {
				"Flank",
				"RunAndGun",
			},
			'archetype', "Skirmisher",
			'role', "Recon",
			'OpeningAttackType', "Overwatch",
			'MaxAttacks', 2,
			'MaxHitPoints', 50,
			'AppearancesList', {
				PlaceObj('AppearanceWeight', {
					'Preset', "Goon2Pro",
				}),
			},
			'Equipment', {
				"LegionScout",
			},
			'AdditionalGroups', {},
			'pollyvoice', "Joey",
			'gender', "Male",
			'VoiceResponseId', "LegionRaider",
		}),
		PlaceObj('ModItemUnitDataCompositeDef', {
			'Group', "GCExPrologueUnits",
			'Id', "GCExGoon_3",
			'NameColor', RGBA(182, 58, 52, 255),
			'object_class', "UnitData",
			'Health', 67,
			'Agility', 44,
			'Dexterity', 89,
			'Strength', 41,
			'Wisdom', 48,
			'Leadership', 33,
			'Marksmanship', 91,
			'Mechanical', 0,
			'Explosives', 0,
			'Medical', 0,
			'Portrait', "UI/EnemiesPortraits/RebelSniper",
			'Name', T(781068932435, --[[ModItemUnitDataCompositeDef GCExGoon_3 Name]] "Raider"),
			'Randomization', true,
			'Affiliation', "Rebel",
			'StartingLevel', 3,
			'neutral_retaliate', true,
			'AIKeywords', {
				"Sniper",
			},
			'role', "Marksman",
			'AlwaysUseOpeningAttack', true,
			'OpeningAttackType', "PinDown",
			'MaxAttacks', 1,
			'MaxHitPoints', 50,
			'StartingPerks', {
				"Deadeye",
				"MinFreeMove",
				"NightOps",
			},
			'AppearancesList', {
				PlaceObj('AppearanceWeight', {
					'Preset', "Goon4Pro",
				}),
			},
			'Equipment', {
				"RebelSniper",
			},
			'AdditionalGroups', {},
			'pollyvoice', "Kendra",
			'gender', "Female",
			'VoiceResponseId', "AnneLeMitrailleur",
		}),
		PlaceObj('ModItemUnitDataCompositeDef', {
			'Group', "GCExPrologueUnits",
			'Id', "GCExGoon_4",
			'NameColor', RGBA(182, 58, 52, 255),
			'object_class', "UnitData",
			'Health', 100,
			'Agility', 70,
			'Dexterity', 34,
			'Strength', 70,
			'Wisdom', 24,
			'Leadership', 10,
			'Marksmanship', 70,
			'Mechanical', 0,
			'Explosives', 0,
			'Medical', 0,
			'Portrait', "UI/EnemiesPortraits/LegionSoldier",
			'BigPortrait', "UI/Enemies/LegionRaider",
			'Name', T(544507340205, --[[ModItemUnitDataCompositeDef GCExGoon_4 Name]] "Marauder"),
			'Randomization', true,
			'Affiliation', "Legion",
			'neutral_retaliate', true,
			'AIKeywords', {
				"Soldier",
			},
			'role', "Soldier",
			'OpeningAttackType', "Overwatch",
			'MaxAttacks', 2,
			'MaxHitPoints', 50,
			'StartingPerks', {
				"AutoWeapons",
				"MinFreeMove",
			},
			'AppearancesList', {
				PlaceObj('AppearanceWeight', {
					'Preset', "GoonCommander",
				}),
			},
			'Equipment', {
				"LegionRaiders",
			},
			'AdditionalGroups', {},
			'pollyvoice', "Joey",
			'gender', "Male",
			'VoiceResponseId', "LegionRaider",
		}),
		PlaceObj('ModItemUnitDataCompositeDef', {
			'Group', "GCExPrologueUnits",
			'Id', "GCEXNumb",
			'NameColor', RGBA(220, 140, 28, 255),
			'object_class', "UnitData",
			'Health', 84,
			'Agility', 73,
			'Dexterity', 62,
			'Strength', 78,
			'Wisdom', 70,
			'Leadership', 13,
			'Marksmanship', 88,
			'Mechanical', 14,
			'Explosives', 22,
			'Medical', 33,
			'Portrait', "Mod/GCExPrologue/Images/NumbPortrait",
			'BigPortrait', "Mod/GCExPrologue/Images/Numb",
			'IsMercenary', true,
			'Name', T(561852629506, --[[ModItemUnitDataCompositeDef GCEXNumb Name]] 'Tim "Numb" Sutton'),
			'Nick', T(392128018814, --[[ModItemUnitDataCompositeDef GCEXNumb Nick]] "Numb"),
			'AllCapsNick', T(531854446711, --[[ModItemUnitDataCompositeDef GCEXNumb AllCapsNick]] "NUMB"),
			'Affiliation', "Secret",
			'Bio', T(792089849295, --[[ModItemUnitDataCompositeDef GCEXNumb Bio]] "Tim Sutton suffers from a bad case of visual offensiveness and no one has been willing to give him a break. His bad haircut and neck tattoo has hindered this mercenary's career pursuits despite an otherwise impressive resume including martial arts and night ops training. His marksmanship and medical abilities are also excellent."),
			'Nationality', "England",
			'snype_nick', T(859662584234, --[[ModItemUnitDataCompositeDef GCEXNumb snype_nick]] "tim.sutton"),
			'Refusals', {},
			'Haggles', {},
			'Mitigations', {},
			'ExtraPartingWords', {},
			'Offline', {},
			'GreetingAndOffer', {},
			'ConversationRestart', {},
			'IdleLine', {},
			'PartingWords', {},
			'RehireIntro', {},
			'RehireOutro', {},
			'MedicalDeposit', "none",
			'StartingSalary', 470,
			'SalaryIncrease', 280,
			'SalaryLv1', 100,
			'SalaryMaxLv', 4100,
			'LegacyNotes', '"Tim Sutton suffers from a bad case of visual offensiveness and no one has been willing to give him a break. His bad haircut and neck tattoo has hindered this mercenary\'s career pursuits despite an otherwise impressive resume including martial arts and night ops training. His marksmanship and medical abilities are also excellent." - M.E.R.C. dossier',
			'StartingLevel', 3,
			'MaxHitPoints', 82,
			'Dislikes', {
				"Vicki",
				"Sidney",
				"Scope",
			},
			'StartingPerks', {
				"MartialArts",
				"NightOps",
				"NumbTalk",
				"Flanker",
				"BreachAndClear",
			},
			'AppearancesList', {
				PlaceObj('AppearanceWeight', {
					'Preset', "Numb-Appearance",
				}),
			},
			'Equipment', {
				"Sidney",
			},
			'Tier', "Veteran",
			'Specialization', "Marksmen",
			'gender', "Male",
			'blocked_spots', set( "Weaponls", "Weaponrs" ),
		}),
		PlaceObj('ModItemUnitDataCompositeDef', {
			'Group', "GCExPrologueUnits",
			'Id', "GCEXGumpy",
			'NameColor', RGBA(220, 140, 28, 255),
			'object_class', "UnitData",
			'Health', 67,
			'Agility', 45,
			'Dexterity', 67,
			'Strength', 70,
			'Wisdom', 94,
			'Leadership', 11,
			'Marksmanship', 44,
			'Mechanical', 0,
			'Explosives', 56,
			'Medical', 9,
			'Portrait', "Mod/GCExPrologue/Images/GumpyPortrait",
			'BigPortrait', "Mod/GCExPrologue/Images/IMG_8537 2",
			'IsMercenary', true,
			'Name', T(350774746706, --[[ModItemUnitDataCompositeDef GCEXGumpy Name]] 'Tim "Gumpy" Hillman'),
			'Nick', T(940139436494, --[[ModItemUnitDataCompositeDef GCEXGumpy Nick]] "Gumpy"),
			'AllCapsNick', T(284042248626, --[[ModItemUnitDataCompositeDef GCEXGumpy AllCapsNick]] "GUMPY"),
			'Affiliation', "Secret",
			'Bio', T(845088535160, --[[ModItemUnitDataCompositeDef GCEXGumpy Bio]] "Tim is a brilliant explosives expert who catches on quickly. When it comes to explosives though, there really isn't much room for error. Tim Hillman would probably still be enrolled in Harvard, doing graduate studies in electro-magnetic research, if it wasn't for a couple bouts of severe depression...possibly due to the constant exposure to EMF.\n\nAdditional Info:\n\nDue to acute allergies, Tim prefers to work in northern climates.\n\n- M.E.R.C. Dossier"),
			'Nationality', "USA",
			'snype_nick', T(140402586340, --[[ModItemUnitDataCompositeDef GCEXGumpy snype_nick]] "tim.hilman"),
			'Refusals', {},
			'Haggles', {},
			'Mitigations', {},
			'ExtraPartingWords', {},
			'Offline', {},
			'GreetingAndOffer', {},
			'ConversationRestart', {},
			'IdleLine', {},
			'PartingWords', {},
			'RehireIntro', {},
			'RehireOutro', {},
			'MedicalDeposit', "none",
			'StartingSalary', 470,
			'SalaryIncrease', 280,
			'SalaryLv1', 100,
			'SalaryMaxLv', 4100,
			'LegacyNotes', '"Tim is a brilliant explosives expert who catches on quickly. When it comes to explosives though, there really isn\'t much room for error. Tim Hillman would probably still be enrolled in Harvard, doing graduate studies in electro-magnetic research, if it wasn\'t for a couple bouts of severe depression...possibly due to the constant exposure to EMF.\n\nAdditional Info:\n\nDue to acute allergies, Tim prefers to work in northern climates."\n\n- M.E.R.C. Dossier',
			'MaxHitPoints', 82,
			'StartingPerks', {
				"MrFixit",
				"GumpySpecialPineapple",
			},
			'AppearancesList', {
				PlaceObj('AppearanceWeight', {
					'Preset', "Gumpy-Appearance",
				}),
			},
			'Equipment', {
				"Red",
			},
			'Specialization', "ExplosiveExpert",
			'gender', "Male",
			'blocked_spots', set( "Weaponls", "Weaponrs" ),
		}),
		PlaceObj('ModItemUnitDataCompositeDef', {
			'Group', "GCExPrologueUnits",
			'Id', "GCEXGasket",
			'NameColor', RGBA(220, 140, 28, 255),
			'object_class', "UnitData",
			'Health', 72,
			'Agility', 61,
			'Dexterity', 89,
			'Strength', 68,
			'Wisdom', 49,
			'Leadership', 3,
			'Marksmanship', 44,
			'Mechanical', 82,
			'Explosives', 8,
			'Medical', 0,
			'Portrait', "Mod/GCExPrologue/Images/GasketPortrait",
			'BigPortrait', "Mod/GCExPrologue/Images/Gasket",
			'IsMercenary', true,
			'Name', T(949646749914, --[[ModItemUnitDataCompositeDef GCEXGasket Name]] 'Doug "Gasket" Milton'),
			'Nick', T(854815094946, --[[ModItemUnitDataCompositeDef GCEXGasket Nick]] "Gasket"),
			'AllCapsNick', T(801666550540, --[[ModItemUnitDataCompositeDef GCEXGasket AllCapsNick]] "GASKET"),
			'Affiliation', "Secret",
			'Bio', T(242637099594, --[[ModItemUnitDataCompositeDef GCEXGasket Bio]] "Doug Milton originates from Kentucky. He quit school in the fourth grade to work in his father's gas station. When his sister/cousin started pumping gas at the garage, he transferred his focus to the repair bench, and became a good mechanic. Since he left the family business, he roamed from job to job before trying his luck as a mercenary."),
			'Nationality', "USA",
			'snype_nick', T(534857338517, --[[ModItemUnitDataCompositeDef GCEXGasket snype_nick]] "doug.milton"),
			'Refusals', {},
			'Haggles', {},
			'Mitigations', {},
			'ExtraPartingWords', {},
			'Offline', {},
			'GreetingAndOffer', {},
			'ConversationRestart', {},
			'IdleLine', {},
			'PartingWords', {},
			'RehireIntro', {},
			'RehireOutro', {},
			'MedicalDeposit', "none",
			'StartingSalary', 470,
			'SalaryIncrease', 280,
			'SalaryLv1', 100,
			'SalaryMaxLv', 4100,
			'LegacyNotes', "Doug Milton originates from Kentucky. He quit school in the fourth grade to work in his father's gas station. When his sister/cousin started pumping gas at the garage, he transferred his focus to the repair bench, and became a good mechanic. Since he left the family business, he roamed from job to job before trying his luck as a mercenary.\" - M.E.R.C. Dossier",
			'MaxHitPoints', 82,
			'Likes', {
				"Vicki",
			},
			'Dislikes', {
				"Ivan",
				"Igor",
			},
			'StartingPerks', {
				"MrFixit",
			},
			'AppearancesList', {
				PlaceObj('AppearanceWeight', {
					'Preset', "Gasket-Appearance",
				}),
			},
			'Equipment', {
				"Wolf",
			},
			'Specialization', "Mechanic",
			'gender', "Male",
			'blocked_spots', set( "Weaponls", "Weaponrs" ),
		}),
		PlaceObj('ModItemUnitDataCompositeDef', {
			'Group', "GCExPrologueUnits",
			'Id', "GCEXStogie",
			'NameColor', RGBA(220, 140, 28, 255),
			'object_class', "UnitData",
			'Health', 98,
			'Agility', 78,
			'Dexterity', 84,
			'Strength', 96,
			'Wisdom', 77,
			'Leadership', 33,
			'Marksmanship', 89,
			'Mechanical', 74,
			'Explosives', 43,
			'Medical', 11,
			'Portrait', "Mod/GCExPrologue/Images/StogiePortrait",
			'BigPortrait', "Mod/GCExPrologue/Images/Stogie",
			'IsMercenary', true,
			'Name', T(112445946149, --[[ModItemUnitDataCompositeDef GCEXStogie Name]] 'Lt. "Stogie" Horge'),
			'Nick', T(297085285316, --[[ModItemUnitDataCompositeDef GCEXStogie Nick]] "Stogie"),
			'AllCapsNick', T(104451916638, --[[ModItemUnitDataCompositeDef GCEXStogie AllCapsNick]] "STOGIE"),
			'Affiliation', "Secret",
			'Bio', T(703872402200, --[[ModItemUnitDataCompositeDef GCEXStogie Bio]] "Built like a tank, Lt. Horge's speciality is destroying them. Extremely skilled with heavy weapons, Stogie spent the last two years working as an independent mercenary in the Congo. He's one of the toughest grunts in the business, and M.E.R.C. is proud that he has chosen us as his first foray into agency representation, even if it is on a temporary trial basis.\n\nAdditional Info\nPlease hire Stogie. We don't want to lose him.\" -M.E.R.C. Dossier"),
			'Nationality', "USA",
			'snype_nick', T(159796160036, --[[ModItemUnitDataCompositeDef GCEXStogie snype_nick]] "stogie"),
			'Refusals', {},
			'Haggles', {},
			'Mitigations', {},
			'ExtraPartingWords', {},
			'Offline', {},
			'GreetingAndOffer', {},
			'ConversationRestart', {},
			'IdleLine', {},
			'PartingWords', {},
			'RehireIntro', {},
			'RehireOutro', {},
			'MedicalDeposit', "none",
			'StartingSalary', 470,
			'SalaryIncrease', 280,
			'SalaryLv1', 100,
			'SalaryMaxLv', 4100,
			'LegacyNotes', "Built like a tank, Lt. Horge's speciality is destroying them. Extremely skilled with heavy weapons, Stogie spent the last two years working as an independent mercenary in the Congo. He's one of the toughest grunts in the business, and M.E.R.C. is proud that he has chosen us as his first foray into agency representation, even if it is on a temporary trial basis.\n\nAdditional Info\nPlease hire Stogie. We don't want to lose him.\" -M.E.R.C. Dossier",
			'StartingLevel', 7,
			'MaxHitPoints', 82,
			'Likes', {
				"Gus",
			},
			'Dislikes', {
				"Meltdown",
			},
			'StartingPerks', {
				"HeavyWeaponsTraining",
				"BeefedUp",
				"BreachAndClear",
				"Ironclad",
				"CollateralDamage",
				"HardBlow",
				"HitTheDeck",
			},
			'AppearancesList', {
				PlaceObj('AppearanceWeight', {
					'Preset', "Stogie-Appearance",
				}),
			},
			'Equipment', {
				"Gus",
			},
			'Tier', "Legendary",
			'Specialization', "Marksmen",
			'gender', "Male",
			'blocked_spots', set( "Weaponls", "Weaponrs" ),
		}),
		PlaceObj('ModItemUnitDataCompositeDef', {
			'Group', "GCExPrologueUnits",
			'Id', "GCEXCougar",
			'NameColor', RGBA(220, 140, 28, 255),
			'object_class', "UnitData",
			'Health', 88,
			'Agility', 83,
			'Dexterity', 79,
			'Strength', 87,
			'Wisdom', 75,
			'Leadership', 31,
			'Marksmanship', 93,
			'Mechanical', 58,
			'Explosives', 45,
			'Medical', 33,
			'Portrait', "Mod/GCExPrologue/Images/CougarPortrait",
			'BigPortrait', "Mod/GCExPrologue/Images/Cougar",
			'IsMercenary', true,
			'Name', T(823708430215, --[[ModItemUnitDataCompositeDef GCEXCougar Name]] 'Jim "Cougar" Wallace'),
			'Nick', T(346183843645, --[[ModItemUnitDataCompositeDef GCEXCougar Nick]] "Cougar"),
			'AllCapsNick', T(245400817655, --[[ModItemUnitDataCompositeDef GCEXCougar AllCapsNick]] "COUGAR"),
			'Affiliation', "Secret",
			'Bio', T(549374649264, --[[ModItemUnitDataCompositeDef GCEXCougar Bio]] "Jim Wallace is one of the few cadets ever to get a perfect score on every final exam at military college. Of course, it didn't hurt that his father wrote the school's military code of conduct. He's a master at conventional mercenary skills and a pro with automatic weaponry. Always by-the-book Cougar is highly professional, possibly M.E.R.C's top performer.\" - M.E.R.C. Dossier\n\nAdditional Info\n\"Even though he is a man with strong opinions, Cougar has the military background (and discipline) to keep them to himself.\""),
			'Nationality', "USA",
			'snype_nick', T(737933631206, --[[ModItemUnitDataCompositeDef GCEXCougar snype_nick]] "jim.wallace"),
			'Refusals', {},
			'Haggles', {},
			'Mitigations', {},
			'ExtraPartingWords', {},
			'Offline', {},
			'GreetingAndOffer', {},
			'ConversationRestart', {},
			'IdleLine', {},
			'PartingWords', {},
			'RehireIntro', {},
			'RehireOutro', {},
			'MedicalDeposit', "none",
			'StartingSalary', 470,
			'SalaryIncrease', 280,
			'SalaryLv1', 100,
			'SalaryMaxLv', 4100,
			'LegacyNotes', '"Jim Wallace is one of the few cadets ever to get a perfect score on every final exam at military college. Of course, it didn\'t hurt that his father wrote the school\'s military code of conduct. He\'s a master at conventional mercenary skills and a pro with automatic weaponry. Always by-the-book Cougar is highly professional, possibly M.E.R.C\'s top performer." - M.E.R.C. Dossier\n\nAdditional Info\n"Even though he is a man with strong opinions, Cougar has the military background (and discipline) to keep them to himself."',
			'StartingLevel', 5,
			'MaxHitPoints', 82,
			'Likes', {
				"Len",
				"Wolf",
			},
			'StartingPerks', {
				"AutoWeapons",
				"Stealthy",
				"Deadeye",
				"Flanker",
				"LightningReaction",
				"RelentlessAdvance",
			},
			'AppearancesList', {
				PlaceObj('AppearanceWeight', {
					'Preset', "Cougar-Appearance",
				}),
			},
			'Equipment', {
				"Len",
			},
			'Tier', "Elite",
			'Specialization', "Marksmen",
			'gender', "Male",
			'blocked_spots', set( "Weaponls", "Weaponrs" ),
		}),
		PlaceObj('ModItemUnitDataCompositeDef', {
			'Group', "GCExPrologueUnits",
			'Id', "GCEXGaston",
			'NameColor', RGBA(220, 140, 28, 255),
			'object_class', "UnitData",
			'Health', 88,
			'Agility', 82,
			'Dexterity', 96,
			'Strength', 84,
			'Wisdom', 80,
			'Leadership', 28,
			'Marksmanship', 94,
			'Mechanical', 22,
			'Explosives', 21,
			'Medical', 23,
			'Portrait', "Mod/GCExPrologue/Images/GastonPortrait",
			'BigPortrait', "Mod/GCExPrologue/Images/Gaston",
			'IsMercenary', true,
			'Name', T(833359843240, --[[ModItemUnitDataCompositeDef GCEXGaston Name]] "Gaston Cavalier"),
			'Nick', T(513999821212, --[[ModItemUnitDataCompositeDef GCEXGaston Nick]] "Gaston"),
			'AllCapsNick', T(849984528283, --[[ModItemUnitDataCompositeDef GCEXGaston AllCapsNick]] "GASTON"),
			'Affiliation', "Secret",
			'Bio', T(321537150794, --[[ModItemUnitDataCompositeDef GCEXGaston Bio]] "As a distinguished commando in the French Marine Corp (FMC), Gaston has played a distinguished role in many of the NATO and UN operations throughout this hostile world. A confident, field-proven, professional sharpshooter, Cavalier's addition to our roster is just another step in M.E.R.C.'s continuing effort to meet your needs.\n\nAdditional Info\n\nGaston operates best in the early hours of the morning. He is also rather apt at sniping from an elevated vantage point.\n\n-M.E.R.C. Dossier"),
			'Nationality', "France",
			'snype_nick', T(189826039300, --[[ModItemUnitDataCompositeDef GCEXGaston snype_nick]] "gaston.cavalier"),
			'Refusals', {},
			'Haggles', {},
			'Mitigations', {},
			'ExtraPartingWords', {},
			'Offline', {},
			'GreetingAndOffer', {},
			'ConversationRestart', {},
			'IdleLine', {},
			'PartingWords', {},
			'RehireIntro', {},
			'RehireOutro', {},
			'MedicalDeposit', "none",
			'StartingSalary', 470,
			'SalaryIncrease', 280,
			'SalaryLv1', 100,
			'SalaryMaxLv', 4100,
			'LegacyNotes', '"As a distinguished commando in the French Marine Corp (FMC), Gaston has played a distinguished role in many of the NATO and UN operations throughout this hostile world. A confident, field-proven, professional sharpshooter, Cavalier\'s addition to our roster is just another step in M.E.R.C.\'s continuing effort to meet your needs.\n\nAdditional Info\n\nGaston operates best in the early hours of the morning. He is also rather apt at sniping from an elevated vantage point."\n\n-M.E.R.C. Dossier',
			'StartingLevel', 6,
			'MaxHitPoints', 82,
			'Likes', {
				"Fox",
			},
			'LearnToLike', {
				"Buns",
			},
			'StartingPerks', {
				"NightOps",
				"DeathFromAbove",
				"Deadeye",
				"Counterfire",
				"Hotblood",
				"Killzone",
			},
			'AppearancesList', {
				PlaceObj('AppearanceWeight', {
					'Preset', "Gaston-Appearance",
				}),
			},
			'Equipment', {
				"Scope",
			},
			'Tier', "Elite",
			'Specialization', "Marksmen",
			'gender', "Male",
			'blocked_spots', set( "Weaponls", "Weaponrs" ),
		}),
		}),
	PlaceObj('ModItemFolder', {
		'name', "Convos",
	}, {
		PlaceObj('ModItemConversation', {
			AssignToGroup = "GCExBrian",
			DefaultActor = "GCExBrian",
			group = "GCExPrologue",
			id = "Fuel_2",
			PlaceObj('ConversationPhrase', {
				Keyword = "Greeting",
				KeywordT = T(774381032385, --[[ModItemConversation Fuel_2 KeywordT]] "Greeting"),
				Lines = {
					PlaceObj('ConversationLine', {
						Character = "GCExBrian",
						Text = T(570080620925, --[[ModItemConversation Fuel_2 Text voice:GCExBrian section:Fuel_2 keyword:Greeting]] "Hello Folks!"),
						param_bindings = false,
					}),
				},
				id = "Greeting",
				param_bindings = false,
				PlaceObj('ConversationPhrase', {
					Keyword = "What’s your business here?",
					KeywordT = T(359485066766, --[[ModItemConversation Fuel_2 KeywordT]] "What’s your business here?"),
					Lines = {
						PlaceObj('ConversationLine', {
							Character = "GCExBrian",
							Text = T(461931187015, --[[ModItemConversation Fuel_2 Text voice:GCExBrian section:Fuel_2 keyword:What’s your business here?]] "My business? I am THE Delivery Guy. I drive and deliver all over Erny-Island. You need a ride?"),
							param_bindings = false,
						}),
					},
					id = "Whatsyourbusinesshere",
					param_bindings = false,
					PlaceObj('ConversationPhrase', {
						Keyword = "No, thanks. We are good.",
						KeywordT = T(803064260586, --[[ModItemConversation Fuel_2 KeywordT]] "No, thanks. We are good."),
						Lines = {
							PlaceObj('ConversationLine', {
								Character = "GCExBrian",
								Text = T(111244765826, --[[ModItemConversation Fuel_2 Text voice:GCExBrian section:Fuel_2 keyword:No, thanks. We are good.]] "Good, cause I am all out of fuel, maybe you can help me out here, guys."),
								param_bindings = false,
							}),
						},
						PlayGoToPhrase = true,
						id = "NothanksWearegood",
						param_bindings = false,
						PlaceObj('ConversationPhrase', {
							GoTo = "<end conversation>",
							Keyword = "What's the deal?",
							KeywordT = T(991255635297, --[[ModItemConversation Fuel_2 KeywordT]] "What's the deal?"),
							Lines = {
								PlaceObj('ConversationLine', {
									Character = "GCExBrian",
									Text = T(332534543453, --[[ModItemConversation Fuel_2 Text voice:GCExBrian section:Fuel_2 keyword:What's the deal?]] "Someone stole my canister. I was just about to refuel and took a short break at the beach, but after that it was gone..."),
									param_bindings = false,
								}),
							},
							id = "Whatsthedeal",
							param_bindings = false,
						}),
					}),
					PlaceObj('ConversationPhrase', {
						Keyword = "Yes, sure.",
						KeywordT = T(165041368024, --[[ModItemConversation Fuel_2 KeywordT]] "Yes, sure."),
						Lines = {
							PlaceObj('ConversationLine', {
								Character = "GCExBrian",
								Text = T(172631532251, --[[ModItemConversation Fuel_2 Text voice:GCExBrian section:Fuel_2 keyword:Yes, sure.]] "Then you need to help me first, please."),
								param_bindings = false,
							}),
						},
						PlayGoToPhrase = true,
						id = "Yessure2",
						param_bindings = false,
						PlaceObj('ConversationPhrase', {
							GiveQuests = {
								"BriansFuel",
							},
							GoTo = "<end conversation>",
							Keyword = "What's the deal?",
							KeywordT = T(991255635297, --[[ModItemConversation Fuel_2 KeywordT]] "What's the deal?"),
							Lines = {
								PlaceObj('ConversationLine', {
									Character = "GCExBrian",
									Text = T(920652601672, --[[ModItemConversation Fuel_2 Text voice:GCExBrian section:Fuel_2 keyword:What's the deal?]] "Someone stole my canister. I was just about to refuel and took a short break at the beach, but after that it was gone..."),
									param_bindings = false,
								}),
							},
							PlayGoToPhrase = true,
							id = "Whatsthedeal2",
							param_bindings = false,
						}),
					}),
				}),
			}),
			PlaceObj('ConversationPhrase', {
				Keyword = "Goodbye",
				KeywordT = T(557225474228, --[[ModItemConversation Fuel_2 KeywordT]] "Goodbye"),
				Lines = {
					PlaceObj('ConversationLine', {
						Character = "GCExBrian",
						param_bindings = false,
					}),
				},
				id = "Goodbye",
				param_bindings = false,
			}),
			PlaceObj('ConversationPhrase', {
				CompleteQuests = {
					"BriansFuel",
				},
				Conditions = {
					PlaceObj('BanterHasPlayed', {
						Banters = {
							"FuelFound",
						},
						param_bindings = false,
					}),
				},
				GoTo = "<end conversation>",
				Keyword = "Mission",
				KeywordT = T(991893386957, --[[ModItemConversation Fuel_2 KeywordT]] "Mission"),
				Lines = {
					PlaceObj('ConversationLine', {
						Character = "GCExBrian",
						Text = T(455002610524, --[[ModItemConversation Fuel_2 Text voice:GCExBrian section:Fuel_2 keyword:Mission]] "What a nice surprise, you found my Fuel...so sorry guys but no space for a ride here. But I can give you something for you troubles. Near Deedees Hut there is a Bobby's Package Drop, must have slipped from board, it's yours if you want it"),
						param_bindings = false,
					}),
				},
				PlayGoToPhrase = true,
				id = "Mission2",
				param_bindings = false,
			}),
		}),
		PlaceObj('ModItemConversation', {
			AssignToGroup = "ZombieEvent",
			DefaultActor = "GCExSmurge",
			campaign = "GCEXPrologue",
			comment = "5",
			group = "GCExPrologue",
			id = "SmurgeZombieEvent",
			PlaceObj('ConversationPhrase', {
				Keyword = "Greeting",
				KeywordT = T(774381032385, --[[ModItemConversation Fuel_2 KeywordT]] "Greeting"),
				Lines = {
					PlaceObj('ConversationLine', {
						Character = "GCExSmurge",
						Text = T(175202234117, --[[ModItemConversation SmurgeZombieEvent Text voice:GCExSmurge section:SmurgeZombieEvent keyword:Greeting]] "So you are neither one of any, huh?"),
						param_bindings = false,
					}),
				},
				id = "Greeting",
				param_bindings = false,
				PlaceObj('ConversationPhrase', {
					Keyword = "What?",
					KeywordT = T(480309853435, --[[ModItemConversation SmurgeZombieEvent KeywordT]] "What?"),
					Lines = {
						PlaceObj('ConversationLine', {
							Character = "GCExSmurge",
							Text = T(576361630181, --[[ModItemConversation SmurgeZombieEvent Text voice:GCExSmurge section:SmurgeZombieEvent keyword:What?]] "Well, you're neither one of the dead dudes, nor one of the half dead dudes. Then you are either running from the law or totally picked wrong vacation spot."),
							param_bindings = false,
						}),
					},
					id = "What2",
					param_bindings = false,
					PlaceObj('ConversationPhrase', {
						Keyword = "We are just travellers, looking for a boat.",
						KeywordT = T(135707620584, --[[ModItemConversation SmurgeZombieEvent KeywordT]] "We are just travellers, looking for a boat."),
						Lines = {
							PlaceObj('ConversationLine', {
								AlwaysInterject = true,
								Character = "GCExSmurge",
								Text = T(680703397025, --[[ModItemConversation SmurgeZombieEvent Text voice:GCExSmurge section:SmurgeZombieEvent keyword:We are just travellers, looking for a boat.]] "No boat here, unless you count as weapon cargo."),
								param_bindings = false,
							}),
							PlaceObj('ConversationLine', {
								Character = "GCEXNumb",
								Text = T(972990684633, --[[ModItemConversation SmurgeZombieEvent Text voice:GCEXNumb section:SmurgeZombieEvent keyword:We are just travellers, looking for a boat.]] "You bet yer bottle and glass, some of us surely count as weapons."),
								param_bindings = false,
							}),
						},
						id = "Wearejusttravellerslookingforaboat2",
						param_bindings = false,
						PlaceObj('ConversationPhrase', {
							Keyword = "So, whats this place?",
							KeywordT = T(246846882929, --[[ModItemConversation SmurgeZombieEvent KeywordT]] "So, whats this place?"),
							Lines = {
								PlaceObj('ConversationLine', {
									Character = "GCExSmurge",
									Text = T(516838697818, --[[ModItemConversation SmurgeZombieEvent Text voice:GCExSmurge section:SmurgeZombieEvent keyword:So, whats this place?]] "What d'ya think! Smugglers operation base, but don't tell anyone, haha. I would have to kill you."),
									param_bindings = false,
								}),
							},
							id = "Sowhatsthisplace2",
							param_bindings = false,
							PlaceObj('ConversationPhrase', {
								Keyword = "Aha, so why tell me?",
								KeywordT = T(952879649822, --[[ModItemConversation SmurgeZombieEvent KeywordT]] "Aha, so why tell me?"),
								Lines = {
									PlaceObj('ConversationLine', {
										Character = "GCExSmurge",
										Text = T(729231793472, --[[ModItemConversation SmurgeZombieEvent Text voice:GCExSmurge section:SmurgeZombieEvent keyword:Aha, so why tell me?]] "Because I don't care. No government troops would set foot here, too dangerous. You don't wanna know what happens here at night..."),
										param_bindings = false,
									}),
								},
								id = "Ahasowhytellme2",
								param_bindings = false,
								PlaceObj('ConversationPhrase', {
									Keyword = "Well, what does happen here at night?",
									KeywordT = T(623840755240, --[[ModItemConversation SmurgeZombieEvent KeywordT]] "Well, what does happen here at night?"),
									Lines = {
										PlaceObj('ConversationLine', {
											Character = "GCExSmurge",
											Text = T(983256822005, --[[ModItemConversation SmurgeZombieEvent Text voice:GCExSmurge section:SmurgeZombieEvent keyword:Well, what does happen here at night?]] "Crawling, hundreds of them all over the island. Those creatures, mad and dull! If you stay and help us out, you will see. You know, we are short handed at the moment. Henry and Seville, they have not returned yet. They are probably dead in jungle, haha. These fuckers owed me money...."),
											param_bindings = false,
										}),
									},
									id = "Wellwhatdoeshappenhereatnight2",
									param_bindings = false,
									PlaceObj('ConversationPhrase', {
										GoTo = "<end conversation>",
										Keyword = "Ok, what’s the deal?",
										KeywordT = T(986459381656, --[[ModItemConversation SmurgeZombieEvent KeywordT]] "Ok, what’s the deal?"),
										Lines = {
											PlaceObj('ConversationLine', {
												Character = "GCExSmurge",
												Text = T(666845966282, --[[ModItemConversation SmurgeZombieEvent Text voice:GCExSmurge section:SmurgeZombieEvent keyword:Ok, what’s the deal?]] "Come night, you will see. You will see...After that we can talk business. I can make you a real good offer, my friends!"),
												param_bindings = false,
											}),
										},
										id = "Okwhatsthedeal2",
										param_bindings = false,
									}),
								}),
							}),
						}),
					}),
				}),
			}),
		}),
		PlaceObj('ModItemConversation', {
			AssignToGroup = "CoBCompletion",
			DefaultActor = "GCExStitches",
			campaign = "GCEXPrologue",
			comment = "4",
			group = "GCExPrologue",
			id = "QuestCompletionCoB",
			PlaceObj('ConversationPhrase', {
				Keyword = "Greeting",
				KeywordT = T(774381032385, --[[ModItemConversation Fuel_2 KeywordT]] "Greeting"),
				Lines = {
					PlaceObj('ConversationLine', {
						Character = "GCExStitches",
						Text = T(286397022049, --[[ModItemConversation QuestCompletionCoB Text voice:GCExStitches section:QuestCompletionCoB keyword:Greeting]] "Very good, you brought us a gift. Thank you. I will lead you further. Now I shall prepare the ritual. You are welcome to join!"),
						param_bindings = false,
					}),
				},
				id = "Greeting",
				param_bindings = false,
				PlaceObj('ConversationPhrase', {
					Keyword = "Go ahead, do what you must.",
					KeywordT = T(321679047452, --[[ModItemConversation QuestCompletionCoB KeywordT]] "Go ahead, do what you must."),
					Lines = {
						PlaceObj('ConversationLine', {
							Character = "GCExStitches",
							Text = T(948616562921, --[[ModItemConversation QuestCompletionCoB Text voice:GCExStitches section:QuestCompletionCoB keyword:Go ahead, do what you must.]] "After the ritual is where our souls part. You did a service to us and honoured the gods of this island. In the end, I thank you. If you follow that path, you will find the boat!"),
							param_bindings = false,
						}),
					},
					id = "Goaheaddowhatyoumust2",
					param_bindings = false,
					PlaceObj('ConversationPhrase', {
						GoTo = "<end conversation>",
						Keyword = "Roger that!",
						KeywordT = T(779330074700, --[[ModItemConversation QuestCompletionCoB KeywordT]] "Roger that!"),
						Lines = {
							PlaceObj('ConversationLine', {
								Character = "GCExStitches",
								Text = T(961968269504, --[[ModItemConversation QuestCompletionCoB Text voice:GCExStitches section:QuestCompletionCoB keyword:Roger that!]] "I have a parting gift...pages of a diary... Years ago, a man-a stranger, much like you-came here. He was a writer, wanting to know all about our ways. Wilcox, I believe was his name. He stayed here for a few months. Suddenly, one day, he was gone, but he left his notes."),
								param_bindings = false,
							}),
						},
						id = "Rogerthat2",
						param_bindings = false,
					}),
				}),
				PlaceObj('ConversationPhrase', {
					GoTo = "<end conversation>",
					Keyword = "No, you cannot go around killing people, even if they don’t look human anymore.",
					KeywordT = T(453510176545, --[[ModItemConversation QuestCompletionCoB KeywordT]] "No, you cannot go around killing people, even if they don’t look human anymore."),
					Lines = {
						PlaceObj('ConversationLine', {
							Character = "GCExStitches",
							param_bindings = false,
						}),
					},
					id = "Noyoucannotgoaroundkillingpeopleeveniftheydontlookhumananymore2",
					param_bindings = false,
				}),
			}),
		}),
		PlaceObj('ModItemConversation', {
			AssignToGroup = "CoBArrived",
			DefaultActor = "GCExStitches",
			campaign = "GCEXPrologue",
			comment = "3",
			group = "GCExPrologue",
			id = "ArrivedAtChurch",
			PlaceObj('ConversationPhrase', {
				Keyword = "Greeting",
				KeywordT = T(774381032385, --[[ModItemConversation Fuel_2 KeywordT]] "Greeting"),
				Lines = {
					PlaceObj('ConversationLine', {
						Character = "GCExStitches",
						Text = T(512491413389, --[[ModItemConversation ArrivedAtChurch Text voice:GCExStitches section:ArrivedAtChurch keyword:Greeting]] "This...is our humble abode. And this is my devoted flock. Welcome to the Church of Blood!"),
						param_bindings = false,
					}),
				},
				id = "Greeting",
				param_bindings = false,
				PlaceObj('ConversationPhrase', {
					Keyword = "Looks more like a Night of the Dead Revival Party to me.",
					KeywordT = T(932601292197, --[[ModItemConversation ArrivedAtChurch KeywordT]] "Looks more like a Night of the Dead Revival Party to me."),
					Lines = {
						PlaceObj('ConversationLine', {
							Character = "GCExStitches",
							Text = T(707097531218, --[[ModItemConversation ArrivedAtChurch Text voice:GCExStitches section:ArrivedAtChurch keyword:Looks more like a Night of the Dead Revival Party to me.]] "Pardon me, yes, it is true. We are mere actors on a stage that is called life. But no, no, this is reality, strangers. The blood bond is real..."),
							param_bindings = false,
						}),
					},
					id = "LooksmorelikeaNightoftheDeadRevivalPartytome2",
					param_bindings = false,
					PlaceObj('ConversationPhrase', {
						Keyword = "Good, but spare us the mumbo jumbo. So where’s the boat?",
						KeywordT = T(429842311844, --[[ModItemConversation ArrivedAtChurch KeywordT]] "Good, but spare us the mumbo jumbo. So where’s the boat?"),
						Lines = {
							PlaceObj('ConversationLine', {
								Character = "GCExStitches",
								Text = T(141392386725, --[[ModItemConversation ArrivedAtChurch Text voice:GCExStitches section:ArrivedAtChurch keyword:Good, but spare us the mumbo jumbo. So where’s the boat?]] "Do you hear this, brothers and sisters? They want to go through the mouth of Ioa, one does not simply walk through there, you fools."),
								param_bindings = false,
							}),
						},
						id = "GoodbutspareusthemumbojumboSowherestheboat2",
						param_bindings = false,
						PlaceObj('ConversationPhrase', {
							Keyword = "So much for that...so what do you want?",
							KeywordT = T(550788777589, --[[ModItemConversation ArrivedAtChurch KeywordT]] "So much for that...so what do you want?"),
							Lines = {
								PlaceObj('ConversationLine', {
									Character = "GCExStitches",
									Text = T(479404192793, --[[ModItemConversation ArrivedAtChurch Text voice:GCExStitches section:ArrivedAtChurch keyword:So much for that...so what do you want?]] 'First you need to capture a "gift" for us, one of those poor creatures you encountered earlier. But this is important, it has to be breathing!'),
									param_bindings = false,
								}),
							},
							id = "Somuchforthatsowhatdoyouwant2",
							param_bindings = false,
							PlaceObj('ConversationPhrase', {
								Keyword = "What do you need it for?",
								KeywordT = T(885153576899, --[[ModItemConversation ArrivedAtChurch KeywordT]] "What do you need it for?"),
								Lines = {
									PlaceObj('ConversationLine', {
										Character = "GCExStitches",
										Text = T(135547524085, --[[ModItemConversation ArrivedAtChurch Text voice:GCExStitches section:ArrivedAtChurch keyword:What do you need it for?]] "Don't be so naive...blood demands more blood...it will satisfy Ioa. It will feed her needs. It will grant you passage!"),
										param_bindings = false,
									}),
								},
								id = "Whatdoyouneeditfor",
								param_bindings = false,
								PlaceObj('ConversationPhrase', {
									GoTo = "<end conversation>",
									Keyword = "You want to kill it?  But what are those creatures, anyways?",
									KeywordT = T(522996238738, --[[ModItemConversation ArrivedAtChurch KeywordT]] "You want to kill it?  But what are those creatures, anyways?"),
									Lines = {
										PlaceObj('ConversationLine', {
											Character = "GCExStitches",
											Text = T(497831969614, --[[ModItemConversation ArrivedAtChurch Text voice:GCExStitches section:ArrivedAtChurch keyword:You want to kill it?  But what are those creatures, anyways?]] "Lost Souls, poor creatures. Caught in between lives..."),
											param_bindings = false,
										}),
									},
									id = "YouwanttokillitButwhatarethosecreaturesanyways",
									param_bindings = false,
								}),
							}),
						}),
					}),
				}),
				PlaceObj('ConversationPhrase', {
					Keyword = "Seems like the one god is absent, but instead there are a dozen!",
					KeywordT = T(203389682309, --[[ModItemConversation ArrivedAtChurch KeywordT]] "Seems like the one god is absent, but instead there are a dozen!"),
					Lines = {
						PlaceObj('ConversationLine', {
							Character = "GCExStitches",
							Text = T(966583249364, --[[ModItemConversation ArrivedAtChurch Text voice:GCExStitches section:ArrivedAtChurch keyword:Seems like the one god is absent, but instead there are a dozen!]] "Observant. Indeed, there are gods everywhere, and everything is god. The mountains and trees, the beaches and birds...."),
							param_bindings = false,
						}),
					},
					id = "Seemsliketheonegodisabsentbutinsteadthereareadozen2",
					param_bindings = false,
					PlaceObj('ConversationPhrase', {
						Keyword = "Good, but spare us the mumbo jumbo. So where’s the boat?",
						KeywordT = T(429842311844, --[[ModItemConversation ArrivedAtChurch KeywordT]] "Good, but spare us the mumbo jumbo. So where’s the boat?"),
						Lines = {
							PlaceObj('ConversationLine', {
								Character = "GCExStitches",
								Text = T(274233804625, --[[ModItemConversation ArrivedAtChurch Text voice:GCExStitches section:ArrivedAtChurch keyword:Good, but spare us the mumbo jumbo. So where’s the boat?]] "Do you hear this, brothers and sisters? They want to go through the mouth of Ioa, one does not simply walk through there, you fools."),
								param_bindings = false,
							}),
						},
						id = "GoodbutspareusthemumbojumboSowherestheboat",
						param_bindings = false,
						PlaceObj('ConversationPhrase', {
							Keyword = "So much for that...so what do you want?",
							KeywordT = T(550788777589, --[[ModItemConversation ArrivedAtChurch KeywordT]] "So much for that...so what do you want?"),
							Lines = {
								PlaceObj('ConversationLine', {
									Character = "GCExStitches",
									Text = T(769253298483, --[[ModItemConversation ArrivedAtChurch Text voice:GCExStitches section:ArrivedAtChurch keyword:So much for that...so what do you want?]] 'First you need to capture a "gift" for us, one of those poor creatures you encountered earlier. But this is important, it has to be breathing!'),
									param_bindings = false,
								}),
							},
							id = "Somuchforthatsowhatdoyouwant",
							param_bindings = false,
							PlaceObj('ConversationPhrase', {
								Keyword = "What do you need it for?",
								KeywordT = T(885153576899, --[[ModItemConversation ArrivedAtChurch KeywordT]] "What do you need it for?"),
								Lines = {
									PlaceObj('ConversationLine', {
										Character = "GCExStitches",
										Text = T(484271468024, --[[ModItemConversation ArrivedAtChurch Text voice:GCExStitches section:ArrivedAtChurch keyword:What do you need it for?]] "Don't be so naive...blood demands more blood...it will satisfy Ioa. It will feed her needs. It will grant you passage!"),
										param_bindings = false,
									}),
								},
								id = "Whatdoyouneeditfor2",
								param_bindings = false,
								PlaceObj('ConversationPhrase', {
									GoTo = "<end conversation>",
									Keyword = "You want to kill it?  But what are those creatures, anyways?",
									KeywordT = T(522996238738, --[[ModItemConversation ArrivedAtChurch KeywordT]] "You want to kill it?  But what are those creatures, anyways?"),
									Lines = {
										PlaceObj('ConversationLine', {
											Character = "GCExStitches",
											Text = T(450362149169, --[[ModItemConversation ArrivedAtChurch Text voice:GCExStitches section:ArrivedAtChurch keyword:You want to kill it?  But what are those creatures, anyways?]] "Lost Souls, poor creatures. Caught in between lives..."),
											param_bindings = false,
										}),
									},
									id = "YouwanttokillitButwhatarethosecreaturesanyways2",
									param_bindings = false,
								}),
							}),
						}),
					}),
				}),
			}),
		}),
		PlaceObj('ModItemConversation', {
			AssignToGroup = "ExitSector",
			DefaultActor = "GCExStitches",
			campaign = "GCEXPrologue",
			comment = "2",
			group = "GCExPrologue",
			id = "LeaveSector",
			PlaceObj('ConversationPhrase', {
				GoTo = "<end conversation>",
				Keyword = "Greeting",
				KeywordT = T(774381032385, --[[ModItemConversation Fuel_2 KeywordT]] "Greeting"),
				Lines = {
					PlaceObj('ConversationLine', {
						Character = "GCExStitches",
						Text = T(927927229371, --[[ModItemConversation LeaveSector Text voice:GCExStitches section:LeaveSector keyword:Greeting]] "I really hope your souls are ready for this journey. Whatever you see, don't be afraid! And don't stray afar, this island is treacherous. We are visiting my flock, they can provide for you."),
						param_bindings = false,
					}),
				},
				id = "Greeting",
				param_bindings = false,
			}),
		}),
		PlaceObj('ModItemConversation', {
			AssignToGroup = "CoBQuest",
			DefaultActor = "GCExStitches",
			campaign = "GCEXPrologue",
			comment = "1",
			group = "GCExPrologue",
			id = "ChurchQuestStart",
			PlaceObj('ConversationPhrase', {
				Keyword = "Greeting",
				KeywordT = T(774381032385, --[[ModItemConversation Fuel_2 KeywordT]] "Greeting"),
				Lines = {
					PlaceObj('ConversationLine', {
						Character = "GCExStitches",
						Text = T(704601762572, --[[ModItemConversation ChurchQuestStart Text voice:GCExStitches section:ChurchQuestStart keyword:Greeting]] "Bones and ashes! What are you guys doing on this rock? Go! Leave now! Leave as long as you are still alive!"),
						param_bindings = false,
					}),
				},
				id = "Greeting",
				param_bindings = false,
				PlaceObj('ConversationPhrase', {
					Keyword = "Is it a threat or an advice",
					KeywordT = T(823346415217, --[[ModItemConversation ChurchQuestStart KeywordT]] "Is it a threat or an advice"),
					Lines = {
						PlaceObj('ConversationLine', {
							Character = "GCExStitches",
							Text = T(882984204847, --[[ModItemConversation ChurchQuestStart Text voice:GCExStitches section:ChurchQuestStart keyword:Is it a threat or an advice]] "Threat? No! Advice? Yes! You could call it that, if you mind being alive..."),
							param_bindings = false,
						}),
					},
					id = "Isitathreatoranadvice2",
					param_bindings = false,
					PlaceObj('ConversationPhrase', {
						Keyword = "We do, but our boat is gone. We cannot leave, even if we wanted to.",
						KeywordT = T(838551283596, --[[ModItemConversation ChurchQuestStart KeywordT]] "We do, but our boat is gone. We cannot leave, even if we wanted to."),
						Lines = {
							PlaceObj('ConversationLine', {
								Character = "GCExStitches",
								Text = T(563852815369, --[[ModItemConversation ChurchQuestStart Text voice:GCExStitches section:ChurchQuestStart keyword:We do, but our boat is gone. We cannot leave, even if we wanted to.]] "Is that so? Your fate is sealed, then. None of these people around here will help you. They do not warm up to strangers. A boat is simply not a commodity around here. For a certain price, however..."),
								param_bindings = false,
							}),
						},
						id = "WedobutourboatisgoneWecannotleaveevenifwewantedto2",
						param_bindings = false,
						PlaceObj('ConversationPhrase', {
							Keyword = "What is the meaning of this? What price?",
							KeywordT = T(925450658439, --[[ModItemConversation ChurchQuestStart KeywordT]] "What is the meaning of this? What price?"),
							Lines = {
								PlaceObj('ConversationLine', {
									Character = "GCExStitches",
									Text = T(284542997764, --[[ModItemConversation ChurchQuestStart Text voice:GCExStitches section:ChurchQuestStart keyword:What is the meaning of this? What price?]] "There is a boat, my boat, on the other side of the island. As there is nothing of value you could offer me, except your lives. A donation of a life for a boat, how does that sound to you?"),
									param_bindings = false,
								}),
							},
							id = "WhatisthemeaningofthisWhatprice2",
							param_bindings = false,
							PlaceObj('ConversationPhrase', {
								Keyword = "Are you serious?",
								KeywordT = T(292276275399, --[[ModItemConversation ChurchQuestStart KeywordT]] "Are you serious?"),
								Lines = {
									PlaceObj('ConversationLine', {
										Character = "GCExStitches",
										Text = T(273327164732, --[[ModItemConversation ChurchQuestStart Text voice:GCExStitches section:ChurchQuestStart keyword:Are you serious?]] "One life, to save three, does this not sound fair to you?"),
										param_bindings = false,
									}),
								},
								id = "Areyouserious2",
								param_bindings = false,
								PlaceObj('ConversationPhrase', {
									Keyword = "How about, a boat and we spare YOUR life! Does this sound fair to you?",
									KeywordT = T(720469593500, --[[ModItemConversation ChurchQuestStart KeywordT]] "How about, a boat and we spare YOUR life! Does this sound fair to you?"),
									Lines = {
										PlaceObj('ConversationInterjectionList', {
											Interjections = {
												PlaceObj('ConversationInterjection', {
													AlwaysInterject = true,
													Lines = {
														PlaceObj('ConversationLine', {
															Character = "GCEXCougar",
															Text = T(167977453644, --[[ModItemConversation ChurchQuestStart Text voice:GCEXCougar section:ChurchQuestStart keyword:How about, a boat and we spare YOUR life! Does this sound fair to you?]] "Sir, I think we are improving a lot on our tactical bargaining front, Sir!"),
															param_bindings = false,
														}),
													},
													param_bindings = false,
												}),
											},
											param_bindings = false,
										}),
										PlaceObj('ConversationLine', {
											Character = "GCExStitches",
											Text = T(208247280631, --[[ModItemConversation ChurchQuestStart Text voice:GCExStitches section:ChurchQuestStart keyword:How about, a boat and we spare YOUR life! Does this sound fair to you?]] "Do what you must. You can kill me, but I am dead already! Besides, without me you will never find it..."),
											param_bindings = false,
										}),
									},
									id = "HowaboutaboatandwespareYOURlifeDoesthissoundfairtoyou2",
									param_bindings = false,
									PlaceObj('ConversationPhrase', {
										Keyword = "Then you will show us the way!",
										KeywordT = T(234744866561, --[[ModItemConversation ChurchQuestStart KeywordT]] "Then you will show us the way!"),
										Lines = {
											PlaceObj('ConversationLine', {
												Character = "GCExStitches",
												Text = T(900249276083, --[[ModItemConversation ChurchQuestStart Text voice:GCExStitches section:ChurchQuestStart keyword:Then you will show us the way!]] "Is that so? It's much easier to die here on the beach, stranger. I can give you some poison to spare you a lot of pain and horror."),
												param_bindings = false,
											}),
											PlaceObj('ConversationInterjectionList', {
												Interjections = {
													PlaceObj('ConversationInterjection', {
														Lines = {
															PlaceObj('ConversationLine', {
																Character = "GCExStitches",
																Text = T(342783999250, --[[ModItemConversation ChurchQuestStart Text voice:GCExStitches section:ChurchQuestStart keyword:Then you will show us the way!]] "I could be convinced if you serve the poison with some Bordeaux!"),
																param_bindings = false,
															}),
														},
														param_bindings = false,
													}),
												},
												param_bindings = false,
											}),
										},
										id = "Thenyouwillshowustheway2",
										param_bindings = false,
										PlaceObj('ConversationPhrase', {
											GoTo = "<end conversation>",
											Keyword = "What do you mean?",
											KeywordT = T(724520438286, --[[ModItemConversation ChurchQuestStart KeywordT]] "What do you mean?"),
											Lines = {
												PlaceObj('ConversationLine', {
													Character = "GCExStitches",
													Text = T(599504319466, --[[ModItemConversation ChurchQuestStart Text voice:GCExStitches section:ChurchQuestStart keyword:What do you mean?]] "Whatever you heard of this place, it is worse...You came to the island of the dead. Those alive are dead and those dead are alive, the veil of worlds grows thin here...Let us go then."),
													param_bindings = false,
												}),
											},
											id = "Whatdoyoumean2",
											param_bindings = false,
										}),
									}),
								}),
							}),
						}),
					}),
				}),
			}),
		}),
		PlaceObj('ModItemConversation', {
			AssignToGroup = "SeagullLanding1",
			DefaultActor = "GCExAdonisGuard",
			campaign = "GCEXPrologue",
			comment = "The Dialogue when landed on Seagull",
			group = "GCExPrologue",
			id = "LandingSeagull",
			PlaceObj('ConversationPhrase', {
				Keyword = "Greeting",
				KeywordT = T(774381032385, --[[ModItemConversation Fuel_2 KeywordT]] "Greeting"),
				Lines = {
					PlaceObj('ConversationLine', {
						Character = "GCExAdonisGuard",
						Text = T(370741661326, --[[ModItemConversation LandingSeagull Text voice:GCExAdonisGuard section:LandingSeagull keyword:Greeting]] "I am afraid this is not Diamond Red! The current must have changed our course."),
						param_bindings = false,
					}),
				},
				id = "Greeting",
				param_bindings = false,
				PlaceObj('ConversationPhrase', {
					GoTo = "<end conversation>",
					Keyword = "So this is Seagull Island then?",
					KeywordT = T(696112802392, --[[ModItemConversation LandingSeagull KeywordT]] "So this is Seagull Island then?"),
					Lines = {
						PlaceObj('ConversationLine', {
							Character = "GCExAdonisGuard",
							Text = T(558501881185, --[[ModItemConversation LandingSeagull Text voice:GCExAdonisGuard section:LandingSeagull keyword:So this is Seagull Island then?]] "I am afraid so, we have heard no good of this place. Be careful when you take a look around. The boat will be ready again in now time."),
							param_bindings = false,
						}),
					},
					id = "SothisisSeagullIslandthen",
					param_bindings = false,
				}),
			}),
		}),
		PlaceObj('ModItemConversation', {
			AssignToGroup = "SeagullLanding2",
			DefaultActor = "GCExBiff",
			DefaultActorPortraitOverride = "Mod/GCExPrologue/Images/Biff 2.dds",
			campaign = "GCEXPrologue",
			group = "GCExPrologue",
			id = "LandingSeagull2",
			PlaceObj('ConversationPhrase', {
				Keyword = "Greeting",
				KeywordT = T(774381032385, --[[ModItemConversation Fuel_2 KeywordT]] "Greeting"),
				Lines = {
					PlaceObj('ConversationLine', {
						Character = "GCExBiff",
						Text = T(180432867983, --[[ModItemConversation LandingSeagull2 Text voice:GCExBiff section:LandingSeagull2 keyword:Greeting]] "I am sorry guys, this place is giving me the creeps. You never should have told me about the curse on these islands."),
						param_bindings = false,
					}),
				},
				id = "Greeting",
				param_bindings = false,
				PlaceObj('ConversationPhrase', {
					GoTo = "<end conversation>",
					Keyword = "Nothing but local rumours and legends, stories you tell your kids.",
					KeywordT = T(215204480282, --[[ModItemConversation LandingSeagull2 KeywordT]] "Nothing but local rumours and legends, stories you tell your kids."),
					Lines = {
						PlaceObj('ConversationLine', {
							Character = "GCExBiff",
							Text = T(356329072480, --[[ModItemConversation LandingSeagull2 Text voice:GCExBiff section:LandingSeagull2 keyword:Nothing but local rumours and legends, stories you tell your kids.]] "I am not to sure about this anymore...I mean look at this place, it's deserted, where are all the people? You guys can take a look, the rest of us will stay here. \n"),
							param_bindings = false,
						}),
					},
					id = "Goodbye",
					param_bindings = false,
				}),
			}),
		}),
		PlaceObj('ModItemConversation', {
			AssignToGroup = "GCExDeeDee",
			DefaultActor = "GCExDeeDee",
			Parameters = {
				PlaceObj('PresetParamNumber', {
					'Name', "Parts_High",
					'Value', 25,
					'Tag', "<Parts_High>",
				}),
				PlaceObj('PresetParamNumber', {
					'Name', "Parts_Low",
					'Value', 15,
					'Tag', "<Parts_Low>",
				}),
			},
			campaign = "GCEXPrologue",
			group = "GCExPrologue",
			id = "GCExDeedee",
			PlaceObj('ConversationPhrase', {
				AutoRemove = true,
				Comment = "first",
				Keyword = "Greeting",
				KeywordT = T(774381032385, --[[ModItemConversation Fuel_2 KeywordT]] "Greeting"),
				Lines = {
					PlaceObj('ConversationLine', {
						Character = "GCExDeeDee",
						Text = T(106364168261, --[[ModItemConversation GCExDeedee Text voice:GCExDeeDee section:GCExDeedee keyword:Greeting]] "Hello there! Hope you did not trip on a trap. You got it? Triptrap, hehe!"),
						param_bindings = false,
					}),
				},
				NoBackOption = true,
				id = "Greeting",
				param_bindings = false,
				PlaceObj('ConversationPhrase', {
					Align = "right",
					AutoRemove = true,
					Conditions = {
						PlaceObj('WoundedMercs', {
							param_bindings = false,
						}),
					},
					GoTo = "<root>",
					Keyword = "Too late to tell us now.",
					KeywordT = T(405416363086, --[[ModItemConversation GCExDeedee KeywordT]] "Too late to tell us now."),
					Lines = {
						PlaceObj('ConversationLine', {
							Character = "GCExDeeDee",
							Text = T(455602460461, --[[ModItemConversation GCExDeedee Text voice:GCExDeeDee section:GCExDeedee keyword:Too late to tell us now.]] "Oh, don't worry about me! Explosions are common around here. I put a blast shield under the workbench and I've gotten really good at vaulting over it."),
							param_bindings = false,
						}),
					},
					StoryBranchIcon = "conversation_friendly",
					id = "Toolatetotellusnow",
					param_bindings = false,
				}),
				PlaceObj('ConversationPhrase', {
					Align = "right",
					AutoRemove = true,
					GoTo = "<root>",
					Keyword = "Well, yes, ehm...no. We got lucky",
					KeywordT = T(840168287628, --[[ModItemConversation GCExDeedee KeywordT]] "Well, yes, ehm...no. We got lucky"),
					Lines = {
						PlaceObj('ConversationLine', {
							Character = "GCExDeeDee",
							Text = T(375135683228, --[[ModItemConversation GCExDeedee Text voice:GCExDeeDee section:GCExDeedee keyword:Well, yes, ehm...no. We got lucky]] "There were some signs, you know. It's my playground...where I test things..."),
							param_bindings = false,
						}),
					},
					StoryBranchIcon = "conversation_sarcastic",
					id = "WellyesehmnoWegotlucky",
					param_bindings = false,
				}),
			}),
			PlaceObj('ConversationPhrase', {
				Align = "right",
				Comment = "repeated",
				Keyword = "Greeting",
				KeywordT = T(774381032385, --[[ModItemConversation Fuel_2 KeywordT]] "Greeting"),
				Lines = {
					PlaceObj('ConversationLine', {
						Character = "GCExDeeDee",
						Text = T(997088934283, --[[ModItemConversation GCExDeedee Text voice:GCExDeeDee section:GCExDeedee keyword:Greeting]] "There were some signs, you know. It's my playground...where I test things..."),
						param_bindings = false,
					}),
				},
				id = "Greeting",
				param_bindings = false,
			}),
			PlaceObj('ConversationPhrase', {
				AutoRemove = true,
				Effects = {
					PlaceObj('PhraseSetEnabled', {
						Conversation = "GCExDeedee",
						PhraseId = "Makeussomeexplosives",
						param_bindings = false,
					}),
				},
				Keyword = "What are you testing?",
				KeywordT = T(550938876362, --[[ModItemConversation GCExDeedee KeywordT]] "What are you testing?"),
				Lines = {
					PlaceObj('ConversationLine', {
						Character = "GCExDeeDee",
						Text = T(951705920478, --[[ModItemConversation GCExDeedee Text voice:GCExDeeDee section:GCExDeedee keyword:What are you testing?]] "Deedee: Bombs, of course! That's why they call me Boombastic, hehe. There is still a lot of functional WW2 material on this island!"),
						param_bindings = false,
					}),
				},
				StoryBranchIcon = "conversation_trade",
				id = "Whatareyoutesting",
				param_bindings = false,
			}),
			PlaceObj('ConversationPhrase', {
				Align = "right",
				Enabled = false,
				Keyword = "You think you can you sell us some of your Explosives?",
				KeywordT = T(568504257376, --[[ModItemConversation GCExDeedee KeywordT]] "You think you can you sell us some of your Explosives?"),
				Lines = {
					PlaceObj('ConversationLine', {
						Character = "GCExDeeDee",
						Text = T(741584586654, --[[ModItemConversation GCExDeedee Text voice:GCExDeeDee section:GCExDeedee keyword:You think you can you sell us some of your Explosives?]] "Gladly! But I must have something to work with. I can't make explosives out of thin air."),
						param_bindings = false,
					}),
				},
				PhraseRolloverText = T(417330716617, --[[ModItemConversation GCExDeedee PhraseRolloverText]] "<color EmStyle>25 Parts</color> required"),
				StoryBranchIcon = "conversation_action",
				id = "YouthinkyoucanyousellussomeofyourExplosives",
				param_bindings = false,
			}),
			PlaceObj('ConversationPhrase', {
				Align = "right",
				AutoRemove = true,
				Comment = "Fidel enabled",
				Conditions = {
					PlaceObj('UnitSquadHasItem', {
						Amount = 15,
						ItemId = "Parts",
						param_bindings = {
							Amount = "Parts_Low",
						},
					}),
				},
				Effects = {
					PlaceObj('UnitTakeItem', {
						Amount = 15,
						AnySquad = true,
						ItemId = "Parts",
						param_bindings = {
							Amount = "Parts_Low",
						},
					}),
					PlaceObj('QuestSetVariableBool', {
						Prop = "DeedeeExplosives",
						QuestId = "ErnieSideQuests",
						Set = false,
						param_bindings = false,
					}),
					PlaceObj('UnitGrantItem', {
						ItemId = "LionRoar",
						param_bindings = false,
					}),
					PlaceObj('QuestSetVariableBool', {
						Prop = "LootedStash2",
						QuestId = "GearUp",
						param_bindings = false,
					}),
				},
				Enabled = false,
				Keyword = "Make us some explosives",
				KeywordT = T(954966894269, --[[ModItemConversation GCExDeedee KeywordT]] "Make us some explosives"),
				Lines = {
					PlaceObj('ConversationLine', {
						Character = "GCExDeeDee",
						Text = T(803706759749, --[[ModItemConversation GCExDeedee Text voice:GCExDeeDee section:GCExDeedee keyword:Make us some explosives]] "Aww, is it Christmas already? Thank you! Here, this is my present for Uncle Fidel and his friends!"),
						param_bindings = false,
					}),
				},
				PhraseRolloverText = "",
				PlayGoToPhrase = true,
				StoryBranchIcon = "conversation_action",
				id = "Makeussomeexplosives",
				param_bindings = false,
			}),
			PlaceObj('ConversationPhrase', {
				Align = "right",
				GoTo = "<end conversation>",
				Keyword = "Goodbye",
				KeywordT = T(557225474228, --[[ModItemConversation Fuel_2 KeywordT]] "Goodbye"),
				Lines = {
					PlaceObj('ConversationLine', {
						Character = "GCExDeeDee",
						Text = T(302422212918, --[[ModItemConversation GCExDeedee Text voice:GCExDeeDee section:GCExDeedee keyword:Goodbye]] "Have a boom-boombastic day!"),
						param_bindings = false,
					}),
				},
				StoryBranchIcon = "conversation_goodbye",
				id = "Goodbye",
				param_bindings = false,
			}),
		}),
		PlaceObj('ModItemConversation', {
			AssignToGroup = "Stephane",
			DefaultActor = "GCExStephane",
			campaign = "GCEXPrologue",
			group = "GCExPrologue",
			id = "GCExStephane",
			PlaceObj('ConversationPhrase', {
				Effects = {
					PlaceObj('PhraseSetEnabled', {
						Conversation = "GCExStephane",
						PhraseId = "WeareCommandoslikeinthemovies",
						param_bindings = false,
					}),
				},
				Keyword = "Greeting",
				KeywordT = T(774381032385, --[[ModItemConversation Fuel_2 KeywordT]] "Greeting"),
				Lines = {
					PlaceObj('ConversationLine', {
						Character = "GCExStephane",
						Text = T(952780783459, --[[ModItemConversation GCExStephane Text voice:GCExStephane section:GCExStephane keyword:Greeting]] "Soldiers!? What are you doing here? I hope it's for the celebrations..."),
						param_bindings = false,
					}),
				},
				id = "Greeting",
				param_bindings = false,
			}),
			PlaceObj('ConversationPhrase', {
				AutoRemove = true,
				Effects = {
					PlaceObj('PhraseSetEnabled', {
						Conversation = "GCExStephane",
						PhraseId = "Whatdoyoumean",
						param_bindings = false,
					}),
				},
				Enabled = false,
				Keyword = "We are Commandos, like in the movies!",
				KeywordT = T(582027436041, --[[ModItemConversation GCExStephane KeywordT]] "We are Commandos, like in the movies!"),
				Lines = {
					PlaceObj('ConversationLine', {
						Character = "GCExStephane",
						Text = T(689188544794, --[[ModItemConversation GCExStephane Text voice:GCExStephane section:GCExStephane keyword:We are Commandos, like in the movies!]] "Really? You are not here to shoot anyone, are you? For a moment I thought it's war all over again."),
						param_bindings = false,
					}),
				},
				id = "WeareCommandoslikeinthemovies",
				param_bindings = false,
			}),
			PlaceObj('ConversationPhrase', {
				AutoRemove = true,
				Effects = {
					PlaceObj('PhraseSetEnabled', {
						Conversation = "GCExStephane",
						PhraseId = "Andnow",
						param_bindings = false,
					}),
				},
				Enabled = false,
				Keyword = "What do you mean?",
				KeywordT = T(724520438286, --[[ModItemConversation ChurchQuestStart KeywordT]] "What do you mean?"),
				Lines = {
					PlaceObj('ConversationLine', {
						Character = "GCExStephane",
						Text = T(641009209196, --[[ModItemConversation GCExStephane Text voice:GCExStephane section:GCExStephane keyword:What do you mean?]] "A few years back there was a civil war here. Very bloody, many people died..."),
						param_bindings = false,
					}),
				},
				id = "Whatdoyoumean",
				param_bindings = false,
			}),
			PlaceObj('ConversationPhrase', {
				AutoRemove = true,
				Effects = {
					PlaceObj('PhraseSetEnabled', {
						Conversation = "GCExStephane",
						PhraseId = "Whatdoyoumeanbydarkhistory",
						param_bindings = false,
					}),
				},
				Enabled = false,
				Keyword = "And now?",
				KeywordT = T(906217673307, --[[ModItemConversation GCExStephane KeywordT]] "And now?"),
				Lines = {
					PlaceObj('ConversationLine', {
						Character = "GCExStephane",
						Text = T(591134729341, --[[ModItemConversation GCExStephane Text voice:GCExStephane section:GCExStephane keyword:And now?]] "I am enjoying my peace here with my wife. Erny has such a good climate and a less dark history than the other islands."),
						param_bindings = false,
					}),
					PlaceObj('ConversationInterjectionList', {
						Interjections = {
							PlaceObj('ConversationInterjection', {
								Lines = {
									PlaceObj('ConversationLine', {
										Character = "GCExStephane",
										Text = T(965975078769, --[[ModItemConversation GCExStephane Text voice:GCExStephane section:GCExStephane keyword:And now?]] "Oui, c'est vrai. Wherever France colonized the world, lovely places remain..."),
										param_bindings = false,
									}),
								},
								param_bindings = false,
							}),
						},
						param_bindings = false,
					}),
					PlaceObj('ConversationInterjectionList', {
						Interjections = {
							PlaceObj('ConversationInterjection', {
								Lines = {
									PlaceObj('ConversationLine', {
										Character = "GCEXStogie",
										Text = T(250497870643, --[[ModItemConversation GCExStephane Text voice:GCEXStogie section:GCExStephane keyword:And now?]] "Such as Haiti and Vietnam..."),
										param_bindings = false,
									}),
								},
								param_bindings = false,
							}),
						},
						param_bindings = false,
					}),
				},
				id = "Andnow",
				param_bindings = false,
			}),
			PlaceObj('ConversationPhrase', {
				AutoRemove = true,
				Effects = {
					PlaceObj('PhraseSetEnabled', {
						Conversation = "GCExStephane",
						PhraseId = "Tellusmore",
						param_bindings = false,
					}),
				},
				Enabled = false,
				Keyword = "What do you mean by dark history?",
				KeywordT = T(703052525224, --[[ModItemConversation GCExStephane KeywordT]] "What do you mean by dark history?"),
				Lines = {
					PlaceObj('ConversationLine', {
						Character = "GCExStephane",
						Text = T(340391831764, --[[ModItemConversation GCExStephane Text voice:GCExStephane section:GCExStephane keyword:What do you mean by dark history?]] "Haven't you heard about this region? There is a curse on these islands. Rumor has it, that a god is protecting Erny Island."),
						param_bindings = false,
					}),
				},
				id = "Whatdoyoumeanbydarkhistory",
				param_bindings = false,
			}),
			PlaceObj('ConversationPhrase', {
				Enabled = false,
				GoTo = "Goodbye",
				Keyword = "Tell us more...",
				KeywordT = T(437750991668, --[[ModItemConversation GCExStephane KeywordT]] "Tell us more..."),
				Lines = {
					PlaceObj('ConversationLine', {
						Character = "GCExStephane",
						Text = T(759892413264, --[[ModItemConversation GCExStephane Text voice:GCExStephane section:GCExStephane keyword:Tell us more...]] "It is said, that north of here, on Seagull Island, the dead are walking at night. I heard some fishermen talk about it!"),
						param_bindings = false,
					}),
					PlaceObj('ConversationInterjectionList', {
						Interjections = {
							PlaceObj('ConversationInterjection', {
								Lines = {
									PlaceObj('ConversationLine', {
										Character = "GCEXFlo",
										Text = T(793919348390, --[[ModItemConversation GCExStephane Text voice:GCEXFlo section:GCExStephane keyword:Tell us more...]] "And that's another place I won' go to, evidamment!"),
										param_bindings = false,
									}),
								},
								param_bindings = false,
							}),
						},
						param_bindings = false,
					}),
				},
				id = "Tellusmore",
				param_bindings = false,
			}),
			PlaceObj('ConversationPhrase', {
				GoTo = "<end conversation>",
				Keyword = "Goodbye",
				KeywordT = T(557225474228, --[[ModItemConversation Fuel_2 KeywordT]] "Goodbye"),
				Lines = {
					PlaceObj('ConversationLine', {
						Character = "GCExStephane",
						param_bindings = false,
					}),
				},
				id = "Goodbye",
				param_bindings = false,
			}),
		}),
		PlaceObj('ModItemConversation', {
			AssignToGroup = "MarthaBar",
			DefaultActor = "GCExMartha",
			campaign = "GCEXPrologue",
			group = "GCExPrologue",
			id = "GCExMartha",
			PlaceObj('ConversationPhrase', {
				AutoRemove = true,
				Keyword = "Greeting",
				KeywordT = T(774381032385, --[[ModItemConversation Fuel_2 KeywordT]] "Greeting"),
				Lines = {
					PlaceObj('ConversationLine', {
						Character = "GCExMartha",
						Text = T(778294712459, --[[ModItemConversation GCExMartha Text voice:GCExMartha section:GCExMartha keyword:Greeting]] "Hello there paying customer!"),
						param_bindings = false,
					}),
				},
				id = "Greeting",
				param_bindings = false,
			}),
			PlaceObj('ConversationPhrase', {
				AutoRemove = true,
				Effects = {
					PlaceObj('PhraseSetEnabled', {
						Conversation = "GCExMartha",
						PhraseId = "Sowhatstheword",
						param_bindings = false,
					}),
				},
				Keyword = "One beer, please!",
				KeywordT = T(954947644437, --[[ModItemConversation GCExMartha KeywordT]] "One beer, please!"),
				Lines = {
					PlaceObj('ConversationLine', {
						Character = "GCExMartha",
						Text = T(676385075189, --[[ModItemConversation GCExMartha Text voice:GCExMartha section:GCExMartha keyword:One beer, please!]] "You heard it, Herman. One cold beer for this customer!"),
						param_bindings = false,
					}),
					PlaceObj('ConversationInterjectionList', {
						Interjections = {
							PlaceObj('ConversationInterjection', {
								Lines = {
									PlaceObj('ConversationLine', {
										Character = "GCExHerman",
										Text = T(603459065651, --[[ModItemConversation GCExMartha Text voice:GCExHerman section:GCExMartha keyword:One beer, please!]] "Yes, Martha, of course. So strangers, have you heard about the island-curse? How Erny Island is blessed?"),
										param_bindings = false,
									}),
								},
								param_bindings = false,
							}),
						},
						param_bindings = false,
					}),
					PlaceObj('ConversationInterjectionList', {
						Interjections = {
							PlaceObj('ConversationInterjection', {
								Lines = {
									PlaceObj('ConversationLine', {
										Character = "GCExMartha",
										Text = T(480583133159, --[[ModItemConversation GCExMartha Text voice:GCExMartha section:GCExMartha keyword:One beer, please!]] "Oh, shut up, Herman. You don't really believe that nonsense."),
										param_bindings = false,
									}),
								},
								param_bindings = false,
							}),
						},
						param_bindings = false,
					}),
					PlaceObj('ConversationInterjectionList', {
						Interjections = {
							PlaceObj('ConversationInterjection', {
								Lines = {
									PlaceObj('ConversationLine', {
										Character = "GCExHerman",
										Text = T(815544067665, --[[ModItemConversation GCExMartha Text voice:GCExHerman section:GCExMartha keyword:One beer, please!]] "But something strange is going on at Seagull. You can ask around..."),
										param_bindings = false,
									}),
								},
								param_bindings = false,
							}),
						},
						param_bindings = false,
					}),
				},
				id = "Onebeerplease",
				param_bindings = false,
			}),
			PlaceObj('ConversationPhrase', {
				Enabled = false,
				GoTo = "Goodbye",
				Keyword = "So what's the word?",
				KeywordT = T(739090893416, --[[ModItemConversation GCExMartha KeywordT]] "So what's the word?"),
				Lines = {
					PlaceObj('ConversationLine', {
						Character = "GCExHerman",
						Text = T(782372299345, --[[ModItemConversation GCExMartha Text voice:GCExHerman section:GCExMartha keyword:So what's the word?]] "Strange sightings at night, weird sounds. Someone lurking in the jungle. It is a place I would avoid, if I were you..."),
						param_bindings = false,
					}),
				},
				id = "Sowhatstheword",
				param_bindings = false,
			}),
			PlaceObj('ConversationPhrase', {
				GoTo = "<end conversation>",
				Keyword = "Goodbye",
				KeywordT = T(557225474228, --[[ModItemConversation Fuel_2 KeywordT]] "Goodbye"),
				Lines = {
					PlaceObj('ConversationLine', {
						Character = "GCExMartha",
						param_bindings = false,
					}),
				},
				id = "Goodbye",
				param_bindings = false,
			}),
		}),
		PlaceObj('ModItemConversation', {
			AssignToGroup = "GCExBiff",
			Conditions = {
				PlaceObj('UnitIsAroundMarkerOfGroup', {
					MarkerGroup = "SantiagoMeet",
					TargetUnit = "GCEXFlo",
					param_bindings = false,
				}),
			},
			DefaultActor = "GCExBiff",
			campaign = "GCEXPrologue",
			group = "GCExPrologue",
			id = "GCExBiff",
			PlaceObj('ConversationPhrase', {
				CompleteQuests = {
					"GCEx_01_Landing",
				},
				Conditions = {
					PlaceObj('QuestIsVariableBool', {
						QuestId = "GCEx_01_Landing",
						Vars = set( "Given" ),
						param_bindings = false,
					}),
				},
				Effects = {
					PlaceObj('GroupSetBehaviorExit', {
						TargetUnit = "GCExBiff",
						closest = true,
						delay = 1000,
						param_bindings = false,
					}),
					PlaceObj('GroupSetBehaviorExit', {
						TargetUnit = "GCExSantiago",
						closest = true,
						delay = 1000,
						param_bindings = false,
					}),
					PlaceObj('GroupSetBehaviorAdvanceTo', {
						MarkerGroup = "MarthaBar",
						TargetUnit = "GCEXFlo",
						param_bindings = false,
					}),
					PlaceObj('QuestSetVariableBool', {
						Prop = "Completed",
						QuestId = "GCEx_01_Landing",
						param_bindings = false,
					}),
				},
				GiveQuests = {
					"GearUp",
				},
				GoTo = "<end conversation>",
				Keyword = "Greeting",
				KeywordT = T(774381032385, --[[ModItemConversation Fuel_2 KeywordT]] "Greeting"),
				Lines = {
					PlaceObj('ConversationLine', {
						Character = "GCExBiff",
						Text = T(248739835120, --[[ModItemConversation GCExBiff Text voice:GCExBiff section:GCExBiff keyword:Greeting]] "So, listen up, guys. I don't know much yet about our mission, only that I was asked for the best and that is us."),
						param_bindings = false,
					}),
					PlaceObj('ConversationInterjectionList', {
						Interjections = {
							PlaceObj('ConversationInterjection', {
								Lines = {
									PlaceObj('ConversationLine', {
										AlwaysInterject = true,
										Character = "GCEXStogie",
										Text = T(470791200374, --[[ModItemConversation GCExBiff Text voice:GCEXStogie section:GCExBiff keyword:Greeting]] "Well, you gotta give us a bit more than that!"),
										param_bindings = false,
									}),
								},
								param_bindings = false,
							}),
						},
						param_bindings = false,
					}),
					PlaceObj('ConversationLine', {
						Character = "GCExBiff",
						Text = T(462724511182, --[[ModItemConversation GCExBiff Text voice:GCExBiff section:GCExBiff keyword:Greeting]] "The only thing I can tell you right now is, that our mission is to capture some diamond mines.  Sorry, can't tell you more until I've met the client. Oh, there is one other thing: We'll need to gear up. With this equipment we will not get far"),
						param_bindings = false,
					}),
					PlaceObj('ConversationInterjectionList', {
						Interjections = {
							PlaceObj('ConversationInterjection', {
								Lines = {
									PlaceObj('ConversationLine', {
										Character = "GCEXCougar",
										Text = T(994262243827, --[[ModItemConversation GCExBiff Text voice:GCEXCougar section:GCExBiff keyword:Greeting]] "Sir, the mission briefing did not adequately cover the situation on site. What resources do you have to rectify that situation, Sir?"),
										param_bindings = false,
									}),
								},
								param_bindings = false,
							}),
						},
						param_bindings = false,
					}),
					PlaceObj('ConversationLine', {
						Character = "GCExBiff",
						Text = T(268515951566, --[[ModItemConversation GCExBiff Text voice:GCExBiff section:GCExBiff keyword:Greeting]] "What, me? None, but my contractor might be able to provide additional funding. I'll see what I can do. You should scout the island in the meantime. Until then, procure additional supplies from local sources. Think of something!"),
						param_bindings = false,
					}),
				},
				PlayGoToPhrase = true,
				id = "Greeting",
				param_bindings = false,
				target_units = {},
			}),
			PlaceObj('ConversationPhrase', {
				CompleteQuests = {
					"GearUp",
				},
				Conditions = {
					PlaceObj('QuestIsVariableBool', {
						QuestId = "GCEx_01_Landing",
						Vars = set( "Completed" ),
						param_bindings = false,
					}),
				},
				GiveQuests = {
					"ReadyForRailings",
				},
				GoTo = "<end conversation>",
				Keyword = "Greeting",
				KeywordT = T(774381032385, --[[ModItemConversation Fuel_2 KeywordT]] "Greeting"),
				Lines = {
					PlaceObj('ConversationLine', {
						Character = "GCExBiff",
						Text = T(359691937175, --[[ModItemConversation GCExBiff Text voice:GCExBiff section:GCExBiff keyword:Greeting]] "So here's the deal. We leave next thing tomorrow morning, I arranged a boat.  We are heading north  to a mine called Diamond Red. Apparently a warlord is financing his personal Vendetta with diamond money"),
						param_bindings = false,
					}),
					PlaceObj('ConversationInterjectionList', {
						Interjections = {
							PlaceObj('ConversationInterjection', {
								Lines = {
									PlaceObj('ConversationLine', {
										Character = "GCEXStogie",
										Text = T(553373879540, --[[ModItemConversation GCExBiff Text voice:GCEXStogie section:GCExBiff keyword:Greeting]] "Any details on what resistance to expect? Squad size, position, gear?"),
										param_bindings = false,
									}),
								},
								param_bindings = false,
							}),
						},
						param_bindings = false,
					}),
					PlaceObj('ConversationLine', {
						Character = "GCExBiff",
						Text = T(476862176521, --[[ModItemConversation GCExBiff Text voice:GCExBiff section:GCExBiff keyword:Greeting]] "No, not currently. We land south of that mine and gather some Intel first. It's said there is a communist cell currently fighting agains the warlord, who calls himself the Major.\nWhen all preparations are met, we'll be ready to set sails"),
						param_bindings = false,
					}),
				},
				id = "Greeting",
				param_bindings = false,
			}),
			PlaceObj('ConversationPhrase', {
				GoTo = "<end conversation>",
				Keyword = "Goodbye",
				KeywordT = T(557225474228, --[[ModItemConversation Fuel_2 KeywordT]] "Goodbye"),
				Lines = {
					PlaceObj('ConversationLine', {
						Character = "GCExBiff",
						param_bindings = false,
					}),
				},
				id = "Goodbye2",
				param_bindings = false,
			}),
		}),
		PlaceObj('ModItemConversation', {
			AssignToGroup = "GCExBastien",
			Comment = "(Bastien) - initial",
			DefaultActor = "GCExBastien",
			campaign = "GCEXPrologue",
			group = "GCExPrologue",
			id = "GCExBastien",
			PlaceObj('ConversationPhrase', {
				Keyword = "Greeting",
				KeywordT = T(774381032385, --[[ModItemConversation Fuel_2 KeywordT]] "Greeting"),
				Lines = {
					PlaceObj('ConversationLine', {
						Character = "GCExBastien",
						Text = T(946372180209, --[[ModItemConversation GCExBastien Text voice:GCExBastien section:GCExBastien keyword:Greeting]] "Bonjour, Boss!"),
						param_bindings = false,
					}),
				},
				NoBackOption = true,
				id = "Greeting",
				param_bindings = false,
				PlaceObj('ConversationPhrase', {
					AutoRemove = true,
					Effects = {
						PlaceObj('PhraseSetEnabled', {
							Conversation = "GCExBastien",
							PhraseId = "Sowhydoyouneedarifle",
							param_bindings = false,
						}),
					},
					Keyword = "Who are you?",
					KeywordT = T(860517763452, --[[ModItemConversation GCExBastien KeywordT]] "Who are you?"),
					Lines = {
						PlaceObj('ConversationLine', {
							Character = "GCExBastien",
							Text = T(721168187062, --[[ModItemConversation GCExBastien Text voice:GCExBastien section:GCExBastien keyword:Who are you?]] "Oh, me? Haha! I am just a tourist guide!"),
							param_bindings = false,
						}),
						PlaceObj('ConversationInterjectionList', {
							Interjections = {
								PlaceObj('ConversationInterjection', {
									Lines = {
										PlaceObj('ConversationLine', {
											Character = "GCEXGasket",
											Text = T(429615830652, --[[ModItemConversation GCExBastien Text voice:GCEXGasket section:GCExBastien keyword:Who are you?]] "I also guide tourists and squirrels with my gun. It's a good hobby."),
											param_bindings = false,
										}),
									},
									param_bindings = false,
								}),
							},
							param_bindings = false,
						}),
					},
					StoryBranchIcon = "conversation_sarcastic",
					id = "Whoareyou",
					param_bindings = false,
				}),
			}),
			PlaceObj('ConversationPhrase', {
				AutoRemove = true,
				Effects = {
					PlaceObj('PhraseSetEnabled', {
						Conversation = "GCExBastien",
						PhraseId = "Youaremoreofthesuspicioustypeeh",
						param_bindings = false,
					}),
				},
				Enabled = false,
				Keyword = "So why do you need a rifle?",
				KeywordT = T(844660616592, --[[ModItemConversation GCExBastien KeywordT]] "So why do you need a rifle?"),
				Lines = {
					PlaceObj('ConversationLine', {
						Character = "GCExBastien",
						Text = T(439379989623, --[[ModItemConversation GCExBastien Text voice:GCExBastien section:GCExBastien keyword:So why do you need a rifle?]] "Huh? Oh this one, yes, yes. Dangerous Island, wild animals, you know!."),
						param_bindings = false,
					}),
				},
				id = "Sowhydoyouneedarifle",
				param_bindings = false,
			}),
			PlaceObj('ConversationPhrase', {
				AutoRemove = true,
				Effects = {
					PlaceObj('PhraseSetEnabled', {
						Conversation = "GCExBastien",
						PhraseId = "WhatifwetakeyoutotheowneroftheIsland",
						param_bindings = false,
					}),
				},
				Enabled = false,
				Keyword = "You are more of the suspicious type, eh?",
				KeywordT = T(228218104589, --[[ModItemConversation GCExBastien KeywordT]] "You are more of the suspicious type, eh?"),
				Lines = {
					PlaceObj('ConversationLine', {
						Character = "GCExBastien",
						Text = T(189454375929, --[[ModItemConversation GCExBastien Text voice:GCExBastien section:GCExBastien keyword:You are more of the suspicious type, eh?]] "Bastien: No, no, no. Really, Boss...Just leave me be. I am here enjoying my beer, catching fish. Ain't nothing wrong with that, is there?."),
						param_bindings = false,
					}),
					PlaceObj('ConversationInterjectionList', {
						Interjections = {
							PlaceObj('ConversationInterjection', {
								Lines = {
									PlaceObj('ConversationLine', {
										Character = "GCEXRazor",
										Text = T(449109017873, --[[ModItemConversation GCExBastien Text voice:GCEXRazor section:GCExBastien keyword:You are more of the suspicious type, eh?]] "I love fishing with my beer on the beach too. And when I catch one, I enjoy slicing it open from side to side..."),
										param_bindings = false,
									}),
								},
								param_bindings = false,
							}),
						},
						param_bindings = false,
					}),
				},
				id = "Youaremoreofthesuspicioustypeeh",
				param_bindings = false,
			}),
			PlaceObj('ConversationPhrase', {
				Effects = {
					PlaceObj('PhraseSetEnabled', {
						Conversation = "GCExBastien",
						PhraseId = "Alrightthenhanditover",
						param_bindings = false,
					}),
				},
				Enabled = false,
				Keyword = "What if we take you to the owner of the Island?",
				KeywordT = T(920028591231, --[[ModItemConversation GCExBastien KeywordT]] "What if we take you to the owner of the Island?"),
				Lines = {
					PlaceObj('ConversationLine', {
						Character = "GCExBastien",
						Text = T(865099393848, --[[ModItemConversation GCExBastien Text voice:GCExBastien section:GCExBastien keyword:What if we take you to the owner of the Island?]] "Ah, this is really not necessary, don't bother... Instead I might have something that interests you. I have a family, you know!."),
						param_bindings = false,
					}),
				},
				id = "WhatifwetakeyoutotheowneroftheIsland",
				param_bindings = false,
			}),
			PlaceObj('ConversationPhrase', {
				Align = "right",
				Effects = {
					PlaceObj('GroupSetBehaviorExit', {
						MarkerGroup = "East",
						Running = true,
						TargetUnit = "GCExBastien",
						UseWeapons = true,
						param_bindings = false,
					}),
					PlaceObj('UnitGrantItem', {
						ItemId = "Winchester_Quest",
						param_bindings = {},
					}),
					PlaceObj('QuestSetVariableBool', {
						Prop = "LootedStash1",
						QuestId = "GearUp",
						param_bindings = false,
					}),
				},
				Enabled = false,
				GoTo = "<end conversation>",
				Keyword = "Alright then, hand it over!",
				KeywordT = T(956960100252, --[[ModItemConversation GCExBastien KeywordT]] "Alright then, hand it over!"),
				Lines = {
					PlaceObj('ConversationLine', {
						Character = "GCExBastien",
						Text = T(284729928776, --[[ModItemConversation GCExBastien Text voice:GCExBastien section:GCExBastien keyword:Alright then, hand it over!]] "Bien sur! Please, take these. I just found them on the beach, I swear... All yours now. I... I can go? And... You won't shoot me in the back?"),
						param_bindings = false,
					}),
				},
				PhraseRolloverText = "",
				PlayGoToPhrase = true,
				StoryBranchIcon = "conversation_action",
				id = "Alrightthenhanditover",
				param_bindings = false,
				target_units = {},
			}),
		}),
		PlaceObj('ModItemConversation', {
			AssignToGroup = "MERCNpcs",
			DefaultActor = "GCEXHaywire",
			campaign = "GCEXPrologue",
			group = "GCExPrologue",
			id = "GCExBarChat",
			PlaceObj('ConversationPhrase', {
				Effects = {
					PlaceObj('GroupSetBehaviorAdvanceTo', {
						MarkerGroup = "SantiagoMeet",
						TargetUnit = "GCEXFlo",
						param_bindings = false,
					}),
					PlaceObj('PhraseSetEnabled', {
						Conversation = "GCExBarChat",
						Enabled = false,
						PhraseId = "Greeting",
						param_bindings = false,
					}),
					PlaceObj('DisableInteractionMarkerEffect', {
						Group = "MERCNpcs",
						param_bindings = false,
					}),
				},
				GiveQuests = {
					"GCEx_01_Landing",
				},
				GoTo = "<end conversation>",
				Keyword = "Greeting",
				KeywordT = T(774381032385, --[[ModItemConversation Fuel_2 KeywordT]] "Greeting"),
				Lines = {
					PlaceObj('ConversationLine', {
						Character = "GCEXHaywire",
						Text = T(612451531498, --[[ModItemConversation GCExBarChat Text voice:GCEXHaywire section:GCExBarChat keyword:Greeting]] "So, that's the Great Grand Chien?!"),
						param_bindings = false,
					}),
					PlaceObj('ConversationLine', {
						Character = "GCEXNumb",
						Text = T(413632878144, --[[ModItemConversation GCExBarChat Text voice:GCEXNumb section:GCExBarChat keyword:Greeting]] "Haha, maybe you should ask the french bottles..."),
						param_bindings = false,
					}),
					PlaceObj('ConversationLine', {
						Character = "GCEXFlo",
						Text = T(120339035724, --[[ModItemConversation GCExBarChat Text voice:GCEXFlo section:GCExBarChat keyword:Greeting]] "What's that supposed to mean, huh?"),
						param_bindings = false,
					}),
					PlaceObj('ConversationLine', {
						Character = "GCEXNumb",
						Text = T(800781060210, --[[ModItemConversation GCExBarChat Text voice:GCEXNumb section:GCExBarChat keyword:Greeting]] "Well, just have a butchers at this place! Colonization history! I 'ate the Brits, imperialist, classist buggers, but Ya' french are no better..."),
						param_bindings = false,
					}),
					PlaceObj('ConversationLine', {
						Character = "GCEXFlo",
						Text = T(904387263515, --[[ModItemConversation GCExBarChat Text voice:GCEXFlo section:GCExBarChat keyword:Greeting]] "I cannot be held accountable for what some old white men did here in the past."),
						param_bindings = false,
					}),
					PlaceObj('ConversationLine', {
						Character = "GCEXGaston",
						Text = T(736358797281, --[[ModItemConversation GCExBarChat Text voice:GCEXGaston section:GCExBarChat keyword:Greeting]] "Oh mon dieu, I don't wanna hear no more."),
						param_bindings = false,
					}),
					PlaceObj('ConversationLine', {
						Character = "GCEXLarry",
						Text = T(876967566309, --[[ModItemConversation GCExBarChat Text voice:GCEXLarry section:GCExBarChat keyword:Greeting]] "Yea, right! Let's rather check out the Menu at this place!"),
						param_bindings = false,
					}),
					PlaceObj('ConversationLine', {
						Character = "GCEXCougar",
						Text = T(376109083800, --[[ModItemConversation GCExBarChat Text voice:GCEXCougar section:GCExBarChat keyword:Greeting]] "Sir, a Bar is not the correct environment for a base of operations, Sir."),
						param_bindings = false,
					}),
				},
				PlayGoToPhrase = true,
				id = "Greeting",
				param_bindings = false,
				target_units = {},
			}),
		}),
		PlaceObj('ModItemConversation', {
			AssignToGroup = "LegionScouts",
			DefaultActor = "LegionMarauder_Tutorial",
			DefaultActorPortraitOverride = "Mod/GCExPrologue/Images/LegionRaider.dds",
			campaign = "GCEXPrologue",
			group = "GCExPrologue",
			id = "GCExLegionTalk",
			PlaceObj('ConversationPhrase', {
				Conditions = {
					PlaceObj('UnitHasStatusEffect', {
						Effect = "Hidden",
						Negate = true,
						TargetUnit = "player mercs on map",
						param_bindings = false,
					}),
				},
				Effects = {
					PlaceObj('GroupAddStatusEffect', {
						Status = "Suspicious",
						TargetUnit = "LegionScouts",
						param_bindings = false,
					}),
				},
				GoTo = "<end conversation>",
				Keyword = "Greeting",
				KeywordT = T(774381032385, --[[ModItemConversation Fuel_2 KeywordT]] "Greeting"),
				Lines = {
					PlaceObj('ConversationLine', {
						Character = "LegionRaider_WeakFlagHill",
						Text = T(405146278692, --[[ModItemConversation GCExLegionTalk Text voice:LegionRaider_WeakFlagHill section:GCExLegionTalk keyword:Greeting]] "Come on boys! Hurry up! I think I heard someone coming."),
						param_bindings = false,
					}),
				},
				PlayGoToPhrase = true,
				id = "Greeting",
				param_bindings = false,
				target_units = {},
			}),
		}),
		PlaceObj('ModItemConversation', {
			AssignToGroup = "GoonsChillaxing",
			DefaultActor = "Raider",
			campaign = "GCEXPrologue",
			group = "GCExPrologue",
			id = "GCExThugs",
			PlaceObj('ConversationPhrase', {
				Keyword = "Greeting",
				KeywordT = T(774381032385, --[[ModItemConversation Fuel_2 KeywordT]] "Greeting"),
				Lines = {
					PlaceObj('ConversationLine', {
						Character = "GCExGoon_4",
						Text = T(903654102284, --[[ModItemConversation GCExThugs Text voice:GCExGoon_4 section:GCExThugs keyword:Greeting]] "Hey tourists, you passed through our territory, it's time to pay the toll!"),
						param_bindings = false,
					}),
				},
				id = "Greeting",
				param_bindings = false,
			}),
			PlaceObj('ConversationPhrase', {
				Effects = {
					PlaceObj('PlayerPayMoney', {
						Amount = 1500,
						param_bindings = false,
					}),
				},
				GoTo = "<end conversation>",
				Keyword = "Pay the toll",
				KeywordT = T(538733183912, --[[ModItemConversation GCExThugs KeywordT]] "Pay the toll"),
				Lines = {
					PlaceObj('ConversationLine', {
						Character = "Raider",
						Text = T(490759011841, --[[ModItemConversation GCExThugs Text voice:Raider section:GCExThugs keyword:Pay the toll]] "That's right, you can go unharmed this time."),
						param_bindings = false,
					}),
				},
				PlayGoToPhrase = true,
				id = "Paythetoll",
				param_bindings = false,
			}),
			PlaceObj('ConversationPhrase', {
				Effects = {
					PlaceObj('GroupSetSide', {
						CreateSquad = false,
						Side = "enemy1",
						TargetUnit = "GoonsChillaxing",
						param_bindings = false,
					}),
				},
				GoTo = "<end conversation>",
				Keyword = "Open fire",
				KeywordT = T(787910685312, --[[ModItemConversation GCExThugs KeywordT]] "Open fire"),
				Lines = {
					PlaceObj('ConversationLine', {
						Character = "Raider",
						Text = T(718635057739, --[[ModItemConversation GCExThugs Text voice:Raider section:GCExThugs keyword:Open fire]] "Wrong choice!"),
						param_bindings = false,
					}),
				},
				PlayGoToPhrase = true,
				id = "Openfire",
				param_bindings = false,
			}),
		}),
		}),
	PlaceObj('ModItemFolder', {
		'name', "Banter",
	}, {
		PlaceObj('ModItemBanterDef', {
			Lines = {
				PlaceObj('BanterLine', {
					'Character', "GCEXFlo",
					'Text', T(784187252081, --[[ModItemBanterDef Erny3 Text]] "Is everything alright, Biff? You look exhausted, Mon amour."),
					'Voiced', false,
				}),
				PlaceObj('BanterLine', {
					'Character', "GCExBiff",
					'Text', T(364287610462, --[[ModItemBanterDef Erny3 Text section:FlavourBanter/Erny3 voice:GCExBiff]] "It's probably nothing...I just don't have a good feeling about this mission. but I am sure it will be alright in the end..."),
				}),
			},
			campaign = "GCEXPrologue",
			group = "FlavourBanter",
			id = "Erny3",
		}),
		PlaceObj('ModItemBanterDef', {
			Lines = {
				PlaceObj('BanterLine', {
					'Text', T(448548097991, --[[ModItemBanterDef BrianChest Text]] "This must be the Bobby's Package Brian spoke of. Wonder why they are currently not delivering..."),
					'Voiced', false,
				}),
			},
			campaign = "GCEXPrologue",
			group = "FlavourBanter",
			id = "BrianChest",
		}),
		PlaceObj('ModItemBanterDef', {
			Lines = {
				PlaceObj('BanterLine', {
					'Text', T(256538198079, --[[ModItemBanterDef Erny2 Text]] "So they are preparing for some kind of celebration. If there are any problems in this region, the people here seem to be unaffected, let's hope it stays that way."),
					'Voiced', false,
				}),
			},
			campaign = "GCEXPrologue",
			group = "FlavourBanter",
			id = "Erny2",
		}),
		PlaceObj('ModItemBanterDef', {
			Lines = {
				PlaceObj('BanterLine', {
					'Text', T(847955647243, --[[ModItemBanterDef Erny1 Text]] "Election banner! Oh, and this is the current president!? He looks so - friendly. Wonder if the will make it next turn..."),
					'Voiced', false,
				}),
			},
			campaign = "GCEXPrologue",
			group = "FlavourBanter",
			id = "Erny1",
		}),
		PlaceObj('ModItemBanterDef', {
			Lines = {
				PlaceObj('BanterLine', {
					'Character', "GCEXNumb",
					'Text', T(478373935958, --[[ModItemBanterDef DayoneSeagull Text section:LeftAloneBanter/DayoneSeagull voice:GCEXNumb]] "What a tom tit, this khyber pass of a leader left us here."),
				}),
				PlaceObj('BanterLine', {
					'Character', "GCEXStogie",
					'Text', T(143080518604, --[[ModItemBanterDef DayoneSeagull Text section:LeftAloneBanter/DayoneSeagull voice:GCEXStogie]] "Well, its a good time for some R&R. It's a paid vacation."),
				}),
				PlaceObj('BanterLine', {
					'Character', "GCEXCougar",
					'Text', T(119888099035, --[[ModItemBanterDef DayoneSeagull Text section:LeftAloneBanter/DayoneSeagull voice:GCEXCougar]] "First we need to size up the situation, determine the patterns of the area and..."),
				}),
				PlaceObj('BanterLine', {
					'Character', "Gaston",
					'Text', T(744338736865, --[[ModItemBanterDef DayoneSeagull Text section:LeftAloneBanter/DayoneSeagull voice:Gaston]] "Mon dieu, spare us the army talk, we are left here on a rock with no means to leave."),
				}),
			},
			campaign = "GCEXPrologue",
			group = "LeftAloneBanter",
			id = "DayoneSeagull",
		}),
		PlaceObj('ModItemBanterDef', {
			Lines = {
				PlaceObj('BanterLine', {
					'Text', T(390358622540, --[[ModItemBanterDef RecentActivity Text]] "A lot of different tracks here... I am sure this is not only due to the upcoming festival."),
					'Voiced', false,
				}),
			},
			campaign = "GCEXPrologue",
			group = "FlavourBanter",
			id = "RecentActivity",
		}),
		PlaceObj('ModItemBanterDef', {
			Lines = {
				PlaceObj('BanterLine', {
					'Text', T(895950646218, --[[ModItemBanterDef Clue5MedFacility Text]] "Signs of fighting and explosions, dead guards and burned vehicles. Something went seriously wrong here. Seems like something got out! But someone must have been here recently. Tracks all over the place..."),
					'Voiced', false,
				}),
			},
			campaign = "GCEXPrologue",
			group = "LeftAloneBanter",
			id = "Clue5MedFacility",
		}),
		PlaceObj('ModItemBanterDef', {
			Lines = {
				PlaceObj('BanterLine', {
					'Text', T(198813223668, --[[ModItemBanterDef Playground Text]] "Someone has been playing Minesweeper but with real mines... and lost!"),
					'Voiced', false,
				}),
			},
			campaign = "GCEXPrologue",
			group = "FlavourBanter",
			id = "Playground",
		}),
		PlaceObj('ModItemBanterDef', {
			Lines = {
				PlaceObj('BanterLine', {
					'Text', T(751959186721, --[[ModItemBanterDef Clue4MedFacility Text]] "14. September, 1943\nThe Zarathustra Trial looks promising. From the thirty-one subjects, three have survived and shown abnormal growth in muscle mass. Unfortunately, the guards were unprepared for the sheer force these creatures can unleash. One of these things is still out there, but we have everything under control.\nSigned Siegfried"),
					'Voiced', false,
				}),
			},
			campaign = "GCEXPrologue",
			group = "LeftAloneBanter",
			id = "Clue4MedFacility",
		}),
		PlaceObj('ModItemBanterDef', {
			Lines = {
				PlaceObj('BanterLine', {
					'Text', T(452439969774, --[[ModItemBanterDef Clue3Airport Text]] "The tire tracks lead in both directions, as if someone was transporting material. The trail is still fresh, just recently a larger vehicle must have passed through. A third party is at work here. The ominous Major Biff spoke about?"),
					'Voiced', false,
				}),
				PlaceObj('BanterLine', {
					'Character', "GCEXCougar",
					'Text', T(536245435963, --[[ModItemBanterDef Clue3Airport Text section:LeftAloneBanter/Clue3Airport voice:GCEXCougar]] "Sir, these tracks from military standard vehicle strongly suggest a military or paramilitary operation is ongoing here. We should carefully consider our next move."),
				}),
			},
			campaign = "GCEXPrologue",
			group = "LeftAloneBanter",
			id = "Clue3Airport",
		}),
		PlaceObj('ModItemBanterDef', {
			Lines = {
				PlaceObj('BanterLine', {
					'Text', T(834575746739, --[[ModItemBanterDef Clue2Airport Text]] "There are signs of recent activity. Someone tried to act in secrecy but left some tracks. Could it have been a member of the tribe or the smugglers?"),
					'Voiced', false,
				}),
			},
			campaign = "GCEXPrologue",
			group = "LeftAloneBanter",
			id = "Clue2Airport",
		}),
		PlaceObj('ModItemBanterDef', {
			Lines = {
				PlaceObj('BanterLine', {
					'Text', T(676432987757, --[[ModItemBanterDef OutlookWaste Text]] "The amount of litter indicates a lot of recent activity, most likely local youngsters, drinking and smoking late in the night..."),
					'Voiced', false,
				}),
			},
			campaign = "GCEXPrologue",
			group = "FlavourBanter",
			id = "OutlookWaste",
		}),
		PlaceObj('ModItemBanterDef', {
			Lines = {
				PlaceObj('BanterLine', {
					'Text', T(848540679670, --[[ModItemBanterDef OutlookGods Text]] "It looks as if those statues are watching over us! Everyone has something to hide..."),
					'Voiced', false,
				}),
			},
			campaign = "GCEXPrologue",
			group = "FlavourBanter",
			id = "OutlookGods",
		}),
		PlaceObj('ModItemBanterDef', {
			Lines = {
				PlaceObj('BanterLine', {
					'Character', "GCEXStogie",
					'Text', T(213853510854, --[[ModItemBanterDef FirstTimeZombies Text section:ZombieEncounter/FirstTimeZombies voice:GCEXStogie]] "I am very sure these do not count as local wildlife!"),
				}),
				PlaceObj('BanterLine', {
					'Character', "GCEXNumb",
					'Text', T(325964118089, --[[ModItemBanterDef FirstTimeZombies Text section:ZombieEncounter/FirstTimeZombies voice:GCEXNumb]] "Hell no, way too clingy, china plate!"),
				}),
			},
			campaign = "GCEXPrologue",
			group = "ZombieEncounter",
			id = "FirstTimeZombies",
		}),
		PlaceObj('ModItemBanterDef', {
			Lines = {
				PlaceObj('BanterLine', {
					'Text', T(735223259061, --[[ModItemBanterDef FuelFound Text]] "This must be the fuel Brian was looking for!"),
					'Voiced', false,
				}),
			},
			campaign = "GCEXPrologue",
			group = "BNBrian",
			id = "FuelFound",
		}),
		PlaceObj('ModItemBanterDef', {
			Lines = {
				PlaceObj('BanterLine', {
					'Character', "GCEXNumb",
					'Text', T(449169647212, --[[ModItemBanterDef Colonizer Text]] "Told ya'! Lumps of School, Colonizer history...when you see the folks still living from Pony and Trap. "),
					'Voiced', false,
				}),
				PlaceObj('BanterLine', {
					'Character', "GCEXGasket",
					'Text', T(596015365193, --[[ModItemBanterDef Colonizer Text section:FlavourBanter/Colonizer voice:GCEXGasket]] "Sacre bleu, not this again!"),
				}),
				PlaceObj('BanterLine', {
					'Character', "GCEXCougar",
					'Text', T(322703887328, --[[ModItemBanterDef Colonizer Text]] "With all due respect, but this flag is to commemorate the comrades fallen here in Word War II. We should honor it!"),
					'Voiced', false,
				}),
			},
			campaign = "GCEXPrologue",
			group = "FlavourBanter",
			id = "Colonizer",
		}),
		}),
	PlaceObj('ModItemFolder', {
		'name', "Quest Item",
	}, {
		PlaceObj('ModItemInventoryItemCompositeDef', {
			'Id', "WilcoxNotes_1",
			'object_class', "QuestItem",
			'Icon', "UI/Icons/Items/diary",
			'DisplayName', T(727241629685, --[[ModItemInventoryItemCompositeDef WilcoxNotes_1 DisplayName]] "Wilcox's Diary"),
			'Description', T(832034164910, --[[ModItemInventoryItemCompositeDef WilcoxNotes_1 Description]] "Deep in the black and horrid forest, in the misty jungles of \n<color EmStyle>Seagull</color>, there lives a Tribe. Simple folks, deeply connected with their heritage and the blood of their ancestors. These people survived not only by wit alone, but by their rituals thousands of years old. Rules by which their fathers fathers and mothers mothers abided. <color EmStyle>The Ritual of Blood</color>. The demanding of blood by gods.<newline><newline>\nThis is the rule. And for thousands of years the sacrifice of mere animals was suffice for the gods. They lent their protection.<newline><newline>\nBut as fate often comes as a stranger and stays as a friend, the same happened here in the deep jungles of Seagull. \nIt came a time where war was once again upon mankind. One side twisted in their ideology, where science knows no ethical bounds-destroyed by their own ideas of the future.\nLet loose a <color EmStyle>walking plague</color> on an island of harmless hunter and fishermen. In their ordeal to survive, they begged the gods for their help once more. And the gods approved, but for the price of more blood..."),
			'RestockWeight', 0,
		}),
		}),
}