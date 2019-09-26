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

--check if the module disabled
if _HHC.Modules.PlayerInfo["DISABLED"] == true then

    --check if silencing modules inactive
    if not _HHC.Options["SILENCE_MODULES"] or _HHC.Options["SILENCE_MODULES"] == nil or _HHC.Options["SILENCE_MODULES"] == false then

        --show disable message
        print ("Module " .. _HHC.Modules.PlayerInfo["MODULE_NAME"] .. " (" .. _HHC.Modules.PlayerInfo["MODULE_VERSION"] .. ") is disabled");

    end

elseif not _HHC.Modules.PlayerInfo["DISABLED"] or _HHC.Modules.PlayerInfo["DISABLED"] == nil or _HHC.Modules.PlayerInfo["DISABLED"] == false then

    --check if silencing modules inactive
    if not _HHC.Options["SILENCE_MODULES"] or _HHC.Options["SILENCE_MODULES"] == nil or _HHC.Options["SILENCE_MODULES"] == false then

        --show loaded message
        print ("Module " .. _HHC.Modules.PlayerInfo["MODULE_NAME"] .. " (" .. _HHC.Modules.PlayerInfo["MODULE_VERSION"] .. ") loaded");

    end

    --_HHC.Functions.PlayerInfo:showLearnableAbilities();

    --_HHC.Frames.PlayerInfo = _HHC.Functions.PlayerInfo:createPlayerFrame(_HHC.Frames.Main);

end