--check if the module disabled
if not _HHC.Modules.PetInfo["DISABLED"] or 
        _HHC.Modules.PetInfo["DISABLED"] == nil or 
        _HHC.Modules.PetInfo["DISABLED"] == false then

    --check if global silencing modules inactive
    if not _HHC.Options["SILENCE_MODULES"] or
            _HHC.Options["SILENCE_MODULES"] == nil or
            _HHC.Options["SILENCE_MODULES"] == false then

        --check if local silence module inactive
        if not _HHC.Modules.PetInfo.Defaults["SILENCE"] or 
                _HHC.Modules.PetInfo.Defaults["SILENCE"] == nil or
                _HHC.Modules.PetInfo.Defaults["SILENCE"] == false then

            --show loaded message
            print ("Module " .. _HHC.Modules.PetInfo.Data["MODULE_NAME"] .. " (" .. _HHC.Modules.PetInfo.Data["MODULE_VERSION"] .. ") loaded");

        end

    end

else

    --check if global silencing modules inactive
    if not _HHC.Options["SILENCE_MODULES"] or 
            _HHC.Options["SILENCE_MODULES"] == nil or
            _HHC.Options["SILENCE_MODULES"] == false then

        --show disable message
        print ("Module " .. _HHC.Modules.PetInfo.Data["MODULE_NAME"] .. " (" .. _HHC.Modules.PetInfo.Data["MODULE_VERSION"] .. ") is disabled");

    end

end