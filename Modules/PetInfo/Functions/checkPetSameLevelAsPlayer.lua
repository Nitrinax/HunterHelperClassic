function _HHC.Modules.PetInfo.Functions:checkPetSameLevelAsPlayer()

    local playerlevelSub = _HHC.Data.RealPlayerLevel;

    local petlevelSub = UnitLevel("pet");

    if petlevelSub < playerlevelSub then

        return false;

    else

        return true;

    end

end