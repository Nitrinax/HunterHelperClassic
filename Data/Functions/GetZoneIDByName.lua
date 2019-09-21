function _HHCFunctions:GetZoneIDByName(mapName)

    local mapKey = nil;

    for key, value in pairs(_HHCData.Zones) do

        --print(key, value);

        if value == mapName then

            mapKey = key ;

        end

    end

    return mapKey;

end