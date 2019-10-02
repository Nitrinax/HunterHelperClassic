--check if the module disabled

--print("_HHC.Modules.List[\"" .. _HHC.Modules.PetInfo.Data["MODULE_NAME"] .."\"]");

if not _HHC.Modules.List["\"" .. _HHC.Modules.PetInfo.Data["MODULE_NAME"].. "\""] or
    _HHC.Modules.List["\"" .. _HHC.Modules.PetInfo.Data["MODULE_NAME"].. "\""] == nil or
    _HHC.Modules.List["\"" .. _HHC.Modules.PetInfo.Data["MODULE_NAME"].. "\""] == false then

    --check if global silencing modules inactive
    if not _HHC.Options["SILENCE_MODULES"] or 
            _HHC.Options["SILENCE_MODULES"] == nil or
            _HHC.Options["SILENCE_MODULES"] == false then

        --show disable message
        colored_print("red", "Module " .. _HHC.Modules.PetInfo.Data["MODULE_NAME"] .. " (" .. _HHC.Modules.PetInfo.Data["MODULE_VERSION"] .. ") is disabled");

    end

else

    --check if global silencing modules inactive
    if not _HHC.Options["SILENCE_MODULES"] or
        _HHC.Options["SILENCE_MODULES"] == nil or
        _HHC.Options["SILENCE_MODULES"] == false then

        --check if local silence module inactive
        if not _HHC.Modules.PetInfo.Defaults["SILENCE"] or
            _HHC.Modules.PetInfo.Defaults["SILENCE"] == nil or
            _HHC.Modules.PetInfo.Defaults["SILENCE"] == false then

            --show loaded message
            colored_print("blue", "Module "
                .. _HHC.Modules.PetInfo.Data["MODULE_NAME"] .. " ("
                .. _HHC.Modules.PetInfo.Data["MODULE_VERSION"]
                .. "-"
                .._HHC.Modules.PetInfo.Data["MODULE_REVISION"]
                .. ") loaded");

        end

    end

end