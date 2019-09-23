--zones
--https://classic.wowhead.com/eastern-kingdoms#0-2+1+7
--https://classic.wowhead.com/kalimdor#0+1+7
--https://classic.wowhead.com/zones#0+1+7

--zoneType
--1 == Continent
--2 == Zone
--3 == Area
--4 == Capital City
--5 == Dungeon
--6 == Raid
--7 == Battleground
--8 == Arena

--zoneFaction
--0 = Contested
--469 = Alliance
--67 == Horde
--3 == PvP

_HHCData.Zones = {

    --[ID] = { zoneName, zoneType, zoneFaction, zoneLevelrangeFrom, zoneLevelrangeTo, zoneMaxPlayers };

    --Eastern Kingdoms
    [36] = { "Alterac Mountains", 2, 0, 27, 39, 0 },
    [45] = { "Arathi Highlands", 2, 0, 30, 40, 0 },
    [3] = { "Badlands", 2, 0, 36, 45, 0 },
    [25] = { "Blackrock Mountain", 3, 0, 0, 0, 0 },
    [4] = { "Blasted Lands", 2, 0, 46, 60, 0 },
    [46] = { "Burning Steppes", 2, 0, 50, 59, 0 },
    [41] = { "Deadwind Pass", 2, 0, 50, 60, 0 },
    [1] = { "Dun Morogh", 2, 469, 1, 12, 0 },
    [10] = { "Duskwood", 2, 0, 10, 30, 0 },
    [139] = { "Eastern Plaguelands", 2, 0, 54, 59, 0 },
    [12] = { "Elwynn Forest", 2, 469, 1, 10, 0 },
    [267] = { "Hillsbrad Foothills", 2, 0, 20, 31, 0 },
    [1537] = { "Ironforge", 4, 469, 1, 60, 0 },
    [38] = { "Loch Modan", 2, 469, 10, 18, 0 },
    [44] = { "Redridge Mountains", 2, 0, 15, 25, 0 },
    [51] = { "Searing Gorge", 2, 0, 43, 56, 0 },
    [130] = { "Silverpine Forest", 2, 67, 10, 20, 0 },
    [1519] = { "Stormwind City", 4, 469, 1, 60, 0 },
    [33] = { "Stranglethorn Vale", 2, 0, 30, 50, 0 },
    [8] = { "Swamp of Sorrows", 2, 0, 36, 43, 0 },
    [47] = { "The Hinterlands", 2, 0, 41, 49, 0 },
    [85] = { "Tirisfal Glades", 2, 67, 1, 12, 0 },
    [1497] = { "Undercity", 4, 67, 1, 60, 0 },
    [28] = { "Western Plaguelands", 2, 0, 46, 57, 0 },
    [40] = { "Westfall", 2, 469, 9, 18, 0 },
    [11] = { "Wetlands", 2, 0, 20, 30, 0 },

    --Kalimdor
    [331] = { "Ashenvale", 2, 0, 19, 30, 0 },
    [16] = { "Azshara", 2, 0, 42, 55, 0 },
    [1941] = { "Caverns of Time", 3, 0, 0, 0, 0 },
    [148] = { "Darkshore", 2, 469, 11, 19, 0 },
    [1657] = { "Darnassus", 4, 469, 1, 60, 0 },
    [405] = { "Desolace", 2, 0, 30, 39, 0 },
    [14] = { "Durotar", 2, 67, 1, 10, 0 },
    [15] = { "Dustwallow Marsh", 2, 0, 36, 60, 0 },
    [361] = { "Felwood", 2, 0, 47, 54, 0 },
    [357] = { "Feralas", 2, 0, 41, 60, 0 },
    [493] = { "Moonglade", 2, 0, 15, 15, 0 },
    [215] = { "Mulgore", 2, 67, 1, 10, 0 },
    [1637] = { "Orgrimmar", 4, 67, 1, 60, 0 },
    [1377] = { "Silithus", 2, 0, 55, 59, 0 },
    [406] = { "Stonetalon Mountains", 2, 0, 15, 25, 0 },
    [440] = { "Tanaris", 2, 0, 40, 50, 0 },
    [141] = { "Teldrassil", 2, 469, 1, 60, 0 },
    [17] = { "The Barrens", 2, 67, 10, 33, 0 },
    [400] = { "Thousand Needles", 2, 0, 24, 35, 0 },
    [1638] = { "Thunder Bluff", 4, 67, 1, 60, 0 },
    [490] = { "Un'Goro Crater", 2, 0, 48, 55, 0 },
    [618] = { "Winterspring", 2, 0, 55, 60, 0 },

    --Battlegrounds
    [2597] = { "Alterac Valley", 7, 3, 51, 60, 0 },
    [3358] = { "Arathi Basin", 7, 3, 20, 60, 0 },
    [3277] = { "Warsong Gulch", 7, 3, 10, 60, 0 },

    --Arenas
    --

    --Classic Dungeons
    [719] = { "Blackfathom Deeps", 5, 0, 22, 32, 5 },
    [1584] = { "Blackrock Depths", 5, 0, 48, 60, 5 },
    [2557] = { "Dire Maul", 5, 0, 44, 54, 5 },
    [721] = { "Gnomeregan", 5, 469, 26, 36, 5 },
    [2100] = { "Maraudon", 5, 0, 36, 46, 5 },
    [2437] = { "Ragefire Chasm", 5, 67, 15, 25, 5 },
    [722] = { "Razorfen Downs", 5, 67, 37, 47, 5 },
    [491] = { "Razorfen Kraul", 5, 67, 32, 42, 5 },
    [796] = { "Scarlet Monastery", 5, 67, 26, 45, 5 },
    [2057] = { "Scholomance", 5, 0, 58, 50, 5 },
    [209] = { "Shadowfang Keep", 5, 67, 20, 60, 5 },
    [2017] = { "Stratholme", 5, 0, 48, 58, 5 },
    [1581] = { "The Deadmines", 5, 469, 15, 25, 5 },
    [717] = { "The Stockade", 5, 469, 22, 32, 10 },
    [1477] = { "The Temple of Atal'Hakkar", 5, 0, 44, 60, 5 },
    [1337] = { "Uldaman", 5, 0, 42, 52, 5 },
    [718] = { "Wailing Caverns", 5, 67, 17, 27, 5 },
    [1176] = { "Zul'Farrak", 5, 0, 46, 56, 5 },

    --Classic Raids
    [3428] = { "Ahn'Qiraj", 6, 0, 60, 60, 40 },
    [2677] = { "Blackwing Lair", 6, 0, 60, 60, 40 },
    [2717] = { "Molten Core", 6, 0, 60, 60, 40 },
    [3456] = { "Naxxramas", 6, 0, 60, 60, 40 },
    [2159] = { "Onyxia's Lair", 6, 0, 60, 60, 40 },
    [3429] = { "Ruins of Ahn'Qiraj", 6, 0, 60, 60, 20 },
    [1977] = { "Zul'Gurub", 6, 0, 60, 60, 20 }

};