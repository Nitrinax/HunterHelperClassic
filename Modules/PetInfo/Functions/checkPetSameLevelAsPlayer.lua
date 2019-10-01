function _HHC.Modules.PetInfo.Functions:checkPetSameLevelAsPlayer()

    local playerLevel = _HHC.Data.RealPlayerLevel;    
    --print(playerLevel);

    local petLevel = UnitLevel("pet");
    --print(petLevel);

    if petLevel < playerLevel then

        return false;

    else

        return true;

    end

end