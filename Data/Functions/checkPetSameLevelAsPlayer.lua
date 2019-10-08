function _HHC.Functions:checkPetSameLevelAsPlayer()

    local playerLevel = _HHC.Data.CurrentPlayerLevel;
    --print(playerLevel);

    local petLevel = _HHC.Data.CurrentPetLevel;
    --print(petLevel);

    if petLevel < playerLevel then

        return false;

    else

        return true;

    end

end