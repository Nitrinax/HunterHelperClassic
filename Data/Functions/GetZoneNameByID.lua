-- return zone name from a given zone id
-- if recursive true than also return type of zone, levelrange and max players for this zone
function _HHCFunctions:GetZoneNameByID(zoneID, recursive)

    --defaults
    local zoneName = "unknown";
    local zoneType = 0;
    local zoneLevelrangeFrom = 0;
    local zoneLevelrangeTo = 0;
    local zoneMaxPlayers = 0;

    for key, value in pairs(_HHCData.Zones) do

        --print(key, value);

        if key == zoneID then

            zoneName = value[1];

            if recursive == true then

                zoneType = value[2];
                zoneLevelrangeFrom = value[3];
                zoneLevelrangeTo = value[4];
                zoneMaxPlayers = value[5];

            end

        end

    end

    if recursive == true then

        return zoneName, zoneType, zoneLevelrangeFrom, zoneLevelrangeTo, zoneMaxPlayers;

    else

        return zoneName, 0, 0, 0, 0;

    end

end