function _HHC.Modules.PetInfo.Functions:checkIfPetSummoned()

    local unitPetExists = UnitExists("pet");
    --print(unitPetExists);
    local unitPetName = GetUnitName("pet");
    --print(unitPetName);
    local petHasActionBar = PetHasActionBar();
    --print(petHasActionBar);

    if not unitPetExists or not unitPetName or not petHasActionBar then
    --if not unitPetExists or not unitPetName then

        return false;

    else

        return true;

    end

end