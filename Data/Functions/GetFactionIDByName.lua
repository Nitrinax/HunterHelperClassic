--return faction id from a given (short) faction name
function _HHCFunctions:GetFactionIDByName(factionName)

    local factionID = -1;

    for key, value in pairs(_HHCData.Factions) do

        --print(key, value);

        if value[1] == factionName then

            factionID = key;

        end
        
        if value[2] == factionName then

            factionID = key;

        end

    end

    return factionID;

end