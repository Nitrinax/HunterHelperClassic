function _HHC.Modules.PetInfo.Functions:checkIfPetSummoned()

    local unitPetExists = UnitExists("pet");
    local unitPetName = GetUnitName("pet");
    --local petHasActionBar = PetHasActionBar();

    --if not unitPetExists or not unitPetName or not petHasActionBar then
    if not unitPetExists or not unitPetName then

        return false;

    else

        return true;

    end

end