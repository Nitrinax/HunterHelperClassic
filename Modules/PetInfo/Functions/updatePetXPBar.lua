function _HHC.Modules.PetInfo.Functions:updatePetXPBar(frame)

    local currXP, nextXP = GetPetExperience();

    frame.pet.xpbar:SetMinMaxValues(0, nextXP);

    frame.pet.xpbar:SetValue(currXP);

    _LibWidgets:setText(frame.pet.xpbar.value, currXP .. " / " .. nextXP .. " XP");

end