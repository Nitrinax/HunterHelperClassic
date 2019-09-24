-- ## BEGIN TESTS ###

-- by ID

-- local testID = 1537;

--with Libzones

-- local zoneName, zoneType, zoneFaction, zoneLevelrangeFrom, zoneLevelrangeTo, zoneMaxPlayers = _LibZones:GetZoneNameByID(testID, true);
-- local myFaction = _LibZones:GetFactionNameByID(zoneFaction);
-- local myType = _LibZones:GetZoneTypeNameByID(zoneType);

-- print ("Zonename: " .. zoneName .. ", Type: " .. myType .. ", Faction: " .. myFaction .. ", Level: " .. zoneLevelrangeFrom .. " - " .. zoneLevelrangeTo .. " max. Players: " .. zoneMaxPlayers);

-- by Name

-- local zoneID = _LibZones:GetZoneIDByName(zoneName);
-- print ("ZoneID: " .. zoneID);

-- local zoneFactionID = _LibZones:GetFactionIDByName(myFaction);
-- print ("FactionID: " .. zoneFactionID);

-- locale

-- local myString = _LibLocale:GetLocaleString(_HHCLocale.Core, "VWXYZ");
-- print ("LocaleString: " .. myString);

-- ## END TESTS ###

_HHCFunctions:createMainFrame();