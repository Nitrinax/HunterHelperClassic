--check if the module disabled
if _HHC.Modules.State["PetInfo"] == false then

    --check if global silencing modules inactive
    if not _HHC.Options["SILENCE_MODULES"] or 
            _HHC.Options["SILENCE_MODULES"] == nil or
            _HHC.Options["SILENCE_MODULES"] == false then

        --show disable message
        print ("Module " .. _HHC.Modules.PetInfo.Data["MODULE_NAME"] .. " (" .. _HHC.Modules.PetInfo.Data["MODULE_VERSION"] .. ") is disabled");

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
            print ("Module " .. _HHC.Modules.PetInfo.Data["MODULE_NAME"] .. " (" .. _HHC.Modules.PetInfo.Data["MODULE_VERSION"] .. ") loaded");

        end

    end

end

function _HHC.Modules.PetInfo.Functions:Display(frame)

    frame.pet = _HHC.Modules.PetInfo.Functions:createPetFrame(frame);
    
    if _HHC.Modules.PetInfo.Defaults.Elements["NAME_ELEMENT"] == true then

        local unitName = GetUnitName("pet", false);

        frame.pet.text = _HHC.Modules.PetInfo.Functions.Elements:createNameElement(frame.pet);

        _LibWidgets:setText(frame.pet.text, unitName);

    end

    if _HHC.Modules.PetInfo.Defaults.Elements["EXPERIENCEPOINTS_ELEMENT"] == true then
    end

end