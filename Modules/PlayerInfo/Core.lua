--check if the module disabled
if not _HHC.Modules.PlayerInfo["DISABLED"] or 
        _HHC.Modules.PlayerInfo["DISABLED"] == nil or 
        _HHC.Modules.PlayerInfo["DISABLED"] == false then

    --check if global silencing modules inactive
    if not _HHC.Options["SILENCE_MODULES"] or
            _HHC.Options["SILENCE_MODULES"] == nil or
            _HHC.Options["SILENCE_MODULES"] == false then

        --check if local silence module inactive
        if not _HHC.Modules.PlayerInfo.Defaults["SILENCE"] or 
                _HHC.Modules.PlayerInfo.Defaults["SILENCE"] == nil or
                _HHC.Modules.PlayerInfo.Defaults["SILENCE"] == false then

            --show loaded message
            print ("Module " .. _HHC.Modules.PlayerInfo.Data["MODULE_NAME"] .. " (" .. _HHC.Modules.PlayerInfo.Data["MODULE_VERSION"] .. ") loaded");

        end

    end

else

    --check if global silencing modules inactive
    if not _HHC.Options["SILENCE_MODULES"] or 
            _HHC.Options["SILENCE_MODULES"] == nil or
            _HHC.Options["SILENCE_MODULES"] == false then

        --show disable message
        print ("Module " .. _HHC.Modules.PlayerInfo.Data["MODULE_NAME"] .. " (" .. _HHC.Modules.PlayerInfo.Data["MODULE_VERSION"] .. ") is disabled");

    end

end