function _HHC.Functions:checkForHunterClass()

    local playerClass = UnitClass("player");

    if playerClass == _LibLocale:GetLocaleString(_HHC.Locale.Core, "LOCALIZED_HUNTER_CLASS_NAME") then

        return true;

    else     

        return false;

    end

end