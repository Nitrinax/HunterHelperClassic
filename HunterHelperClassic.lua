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

-- local myString = _LibLocale:GetLocaleString(_HHC.Locale.Core, "VWXYZ");
-- print ("LocaleString: " .. myString);

-- ## END TESTS ###

_HHC.Frames.Main = _HHC.Functions:createMainFrame();

_HHC.Frames.Main.Title = _HHC.Functions:createMainFrameTitle(_HHC.Frames.Main);

-- inheritFrame, modulesButtonState, optionsButtonState, closeButtonState, closeButtonTargetFrame
_HHC.Frames.Main.Title.Buttons = _HHC.Functions:createMainFrameTitleButtons(_HHC.Frames.Main.Title, true, true, true, _HHC.Frames.Main );