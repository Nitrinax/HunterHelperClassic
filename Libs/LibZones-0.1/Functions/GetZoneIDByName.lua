--return zone id from a given zone name
function _LibZones:GetZoneIDByName(zoneName)

    local zoneID = nil;

    for key, value in pairs(_LibZonesData.Zones) do

        --print(key, value);

        if value[1] == zoneName then

            zoneID = key;

        end

    end

    return zoneID;

end