--return zone id from a given zone name
function _HHCFunctions:GetZoneIDByName(zoneName)

    local zoneID = nil;

    for key, value in pairs(_HHCData.Zones) do

        --print(key, value);

        if value[1] == zoneName then

            zoneID = key;

        end

    end

    return zoneID;

end