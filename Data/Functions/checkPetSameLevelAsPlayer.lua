function _HHC.Functions:checkPetSameLevelAsPlayer()

    local playerLevel = _HHC.Data.CurrentPlayerLevel;

    local petLevel = _HHC.Data.CurrentPetLevel;

    if _HHC.Functions:checkIfPetSummoned() == true then

        petLevel = UnitLevel("pet");

        _HHC.Data.CurrentPetLevel = petLevel;

    end

    if petLevel < playerLevel then

        return false;

    else

        return true;

    end

end