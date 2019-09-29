function _HHC.Modules.PetInfo.Functions:checkIfPetSummoned()

    local unitName = GetUnitName("pet");
    local hasActionBar = PetHasActionBar();    

    if not unitName or not hasActionBar then

        return false;

    else

        return true;

    end

end