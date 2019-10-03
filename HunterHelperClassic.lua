-- ### check for hunter class
if _HHC.Functions:checkForHunterClass() == false then

    -- show error messages if class != hunter
    colored_print("red", _HHC.Data.Title .. ": " .. _LibLocale:GetCatalogStr(_HHC.Locale.Core, "ADDON_DISABLED_ONLY_FOR_HUNTER_CLASS", "Addon disabled because this addon is only for hunter"));

    -- self disabling
    DisableAddOn(_HHC.Data.AddonName);

else

    if not _HHC.Options["SILENCE_ADDON"] or
        _HHC.Options["SILENCE_ADDON"] == nil or
        _HHC.Options["SILENCE_ADDON"] == false then

        -- show loading message
        print(colored_print( "yellow", _HHC.Data.LongVersionString, true) .. " " .. _LibLocale:GetCatalogStr(_HHC.Locale.Core, "ADDON_LOADED", "loaded"));

    end

end