-- module table
--_HHC.Modules.PlayerInfo = {};

-- module defaults table
--_HHC.Defaults.PlayerInfo = {};

-- module data table
--_HHC.Data.PlayerInfo = {};

-- module options table
--_HHC.Options.PlayerInfo = {};

-- module locale table
--_HHC.Locale.PlayerInfo = {};

-- module functions table
--_HHC.Functions.PlayerInfo = {};

-- module name
_HHC.Modules.PlayerInfo["MODULE_NAME"] = "PlayerInfo";
-- module version
_HHC.Modules.PlayerInfo["MODULE_VERSION"] = "0.0.0-1";

if _HHC.Modules.PlayerInfo["DISABLED"] == true then

    if _HHC.Options.PetInfo["SILENCE"] == false then

        print ("Module " .. _HHC.Modules.PlayerInfo["MODULE_NAME"] .. " (" .. _HHC.Modules.PlayerInfo["MODULE_VERSION"] .. ") is disabled");

    end

else  

    --_HHC.Functions.PlayerInfo:showLearnableAbilities();

    _HHC.Frames.PlayerInfo = _HHC.Functions.PlayerInfo:createPlayerFrame(_HHC.Frames.Main);

end