--return (short) faction name from a given faction id
function _LibZones:GetFactionNameByID(factionID, short)

    local factionName = nil;

    for key, value in pairs(_LibZonesData.Factions) do

        --print(key, value);

        if key == factionID then

            if short == true then

                factionName = value[1];

            else

                factionName = value[2];

            end

        end

    end

    return factionName;

end