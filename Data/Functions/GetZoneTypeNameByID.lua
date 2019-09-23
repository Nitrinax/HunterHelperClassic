-- return zone type name from a given zone id

--zoneType
--1 == Continent
--2 == Zone
--3 == Area
--4 == Capital City
--5 == Dungeon
--6 == Raid
--7 == Battleground
--8 == Arena

function _HHCFunctions:GetZoneTypeNameByID(zoneID)

    --defaults
    local zoneTypeName = "unknown";

    for key, value in pairs(_HHCData.ZoneTypes) do

        --print(key, value);

        if key == zoneID then

            zoneTypeName = value;

        end

    end

    return zoneTypeName;

end