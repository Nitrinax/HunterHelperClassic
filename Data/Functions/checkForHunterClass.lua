function _HHC.Functions:checkForHunterClass()

    local playerClass = UnitClass("player");
    --ntrnx_debug(playerClass);

    if playerClass == _LibLocale:GetCatalogStr(_HHC.Locale.Core, "LOCALIZED_HUNTER_CLASS_NAME", "Hunter") then

        return true;

    else     

        return false;

    end

end