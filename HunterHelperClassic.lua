local LibWidgets = LibStub:GetLibrary("LibWidgets-0.1");

-- ## BEGIN TESTS ###

-- by ID

local testID = 1537;

local zoneName, zoneType, zoneFaction, zoneLevelrangeFrom, zoneLevelrangeTo, zoneMaxPlayers = _HHCFunctions:GetZoneNameByID(testID, true);
local myFaction = _HHCFunctions:GetFactionNameByID(zoneFaction);
local myType = _HHCFunctions:GetZoneTypeNameByID(zoneType);

print ("Zonename: " .. zoneName .. ", Type: " .. myType .. ", Faction: " .. myFaction .. ", Level: " .. zoneLevelrangeFrom .. " - " .. zoneLevelrangeTo .. " max. Players: " .. zoneMaxPlayers);

--- by Name

local zoneID = _HHCFunctions:GetZoneIDByName(zoneName);
print ("ZoneID: " .. zoneID);

local zoneFactionID = _HHCFunctions:GetFactionIDByName(myFaction);
print ("FactionID: " .. zoneFactionID);

-- locale

local myString = _HHCFunctions:GetLocaleString(_HHCLocale.Core, "VWXYZ");
print ("LocaleString: " .. myString);

-- ## END TESTS ###