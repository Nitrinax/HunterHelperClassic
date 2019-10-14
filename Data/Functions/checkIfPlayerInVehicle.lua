function _HHC.Functions:checkIfPlayerInVehicle()

    local ifPlayerInVehicle = 0;

    local onTaxi = UnitOnTaxi("player");

    --ntrnx_debug(_LibCF:colored_print("orange", "onTaxi " .. tostring(onTaxi), true));

    if onTaxi == true then

        ifPlayerInVehicle = 1;

    elseif onTaxi == false then

        ifPlayerInVehicle = 0;

    end

    -- code for future api extension

    --local inVehicle = UnitInVehicle("player");
    --local usingVehicle = UnitUsingVehicle("player");

    --if inVehicle == true then ifPlayerInVehicle = 2; end
    --if usingVehicle == true then ifPlayerInVehicle = 2; end

    return ifPlayerInVehicle;

end