local LibWidgets = LibStub:GetLibrary("LibWidgets-0.1");

-- ## BEGIN TESTS ###

-- local function GetMapNameByID(mapID)

--     local mapName = nil;

--     for key, value in pairs(_HHCData.Zones) do

--         --print(key, value);

--         if key == mapID then

--             mapName = value ;

--         end

--     end

--     return mapName;

-- end

-- local function GetMapIDByName(mapName)

--     local mapKey = nil;

--     for key, value in pairs(_HHCData.Zones) do

--         --print(key, value);

--         if value == mapName then

--             mapKey = key ;

--         end

--     end

--     return mapKey;

-- end

local mapname = _HHCFunctions:GetZoneNameByID(1);
print (mapname);

local mapkey = _HHCFunctions:GetZoneIDByName("Dun Morogh");
print (mapkey);

-- ## END TESTS ###