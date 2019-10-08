--return zone name from a given zone id
--if recursive true than also return type of zone, levelrange and max players for this zone
function _LibZones:GetZoneNameByID(zoneID, recursive)

    --defaults
    local zoneName = "unknown";
    local zoneType = 0;
    local zoneFaction = 0;
    local zoneLevelrangeFrom = 0;
    local zoneLevelrangeTo = 0;
    local zoneMaxPlayers = 0;

    for key, value in pairs(_LibZonesData.Zones) do

        --print(key, value);

        if key == zoneID then

            zoneName = value[1];

            if recursive == true then

                zoneType = value[2];
                zoneFaction = value[3];
                zoneLevelrangeFrom = value[4];
                zoneLevelrangeTo = value[5];
                zoneMaxPlayers = value[6];

            end

        end

    end

    if recursive == true then

        return zoneName, zoneType, zoneFaction, zoneLevelrangeFrom, zoneLevelrangeTo, zoneMaxPlayers;

    else

        return zoneName;

    end

end