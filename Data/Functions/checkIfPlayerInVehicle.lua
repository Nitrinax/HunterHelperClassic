function _HHC.Functions:checkIfPlayerInVehicle()

    local ifPlayerInVehicle = 0;

    local onTaxi = UnitOnTaxi("player");

    if onTaxi == true then ifPlayerInVehicle = 1; end

    -- code for future api extension

    --local inVehicle = UnitInVehicle("player");
    --local usingVehicle = UnitUsingVehicle("player");

    --if inVehicle == true then ifPlayerInVehicle = 2; end
    --if usingVehicle == true then ifPlayerInVehicle = 2; end

    return ifPlayerInVehicle;

end