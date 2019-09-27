--return (short) npc faction name from a given npc faction id
function _LibZones:GetNPCFactionNameByID(npcFactionID, short)

    local npcFactionName = nil;

    for key, value in pairs(_LibZonesData.NPCFactions) do

        --print(key, value);

        if key == npcFactionID then

            if short == true then

                npcFactionName = value[1];

            else

                npcFactionName = value[2];

            end

        end

    end

    return npcFactionName;

end