function _HHC.Functions:checkUnitMaxLevel(unit)

    local unitLevel = 1;

    local maxLevel = _HHC.Data.MaxLevel;

    if unit == "player" then

        unitLevel = _HHC.Data.RealPlayerLevel;

    elseif unit == "pet" then

        unitLevel = _HHC.Data.CurrentPetLevel;

    end

    if unitLevel < maxLevel then

        return false;

    elseif unitLevel == maxLevel then

        return true;

    end

end