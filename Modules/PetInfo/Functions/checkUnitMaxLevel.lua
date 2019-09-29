function _HHC.Modules.PetInfo.Functions:checkUnitMaxLevel(unit)

    local unitLevel = 1;
    local maxLevel = _HHC.Data.MaxAddonLevel;

    if unit == "player" then

        unitLevel = _HHC.Data.RealPlayerLevel;

    end

    if unit == "pet" then

        unitLevel = UnitLevel("pet");

    end

    if unitLevel < maxLevel then

        return false;

    elseif unitLevel == maxLevel then

        return true;

    end

end