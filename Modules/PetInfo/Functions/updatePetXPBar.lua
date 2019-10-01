function _HHC.Modules.PetInfo.Functions:updatePetXPBar()

    local currXP, nextXP = GetPetExperience();

    _HHC.Modules.PetInfo.Element.Xpbar:SetMinMaxValues(0, nextXP);

    _HHC.Modules.PetInfo.Element.Xpbar:SetValue(currXP);

    _LibWidgets:setText(_HHC.Modules.PetInfo.Element.Xpbar.value, currXP .. " / " .. nextXP .. " XP");

end