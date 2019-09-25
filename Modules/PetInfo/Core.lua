-- module table
--_HHC.Modules.PetInfo = {};

-- module defaults table
--_HHC.Defaults.PetInfo = {};

-- module data table
--_HHC.Data.PetInfo = {};

-- module options table
--_HHC.Options.PetInfo = {};

-- module locale table
--_HHC.Locale.PetInfo = {};

-- module functions table
--_HHC.Functions.PetInfo = {};

-- module name
_HHC.Modules.PetInfo["MODULE_NAME"] = "PetInfo";
-- module version
_HHC.Modules.PetInfo["MODULE_VERSION"] = "0.0.0-1";

if _HHC.Modules.PetInfo["DISABLED"] == true then

    if _HHC.Options.PetInfo["SILENCE"] == false then

        print ("Module " .. _HHC.Modules.PetInfo["MODULE_NAME"] .. " (" .. _HHC.Modules.PetInfo["MODULE_VERSION"] .. ") is disabled");

    end

else

end