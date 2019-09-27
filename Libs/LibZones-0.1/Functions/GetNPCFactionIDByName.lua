--return npc faction id from a given (short) npc faction name
function _LibZones:GetNPCFactionIDByName(npcFactionName, short)

    local npcFactionID = -1;

    for key, value in pairs(_LibZonesData.NPCFactions) do

        --print(key, value);

        if short == true and value[1] == npcFactionName then

            npcFactionID = key;

        elseif value[2] == npcFactionName then

            npcFactionID = key;

        end

    end

    return npcFactionID;

end