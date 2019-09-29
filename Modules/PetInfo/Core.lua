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

        frame.pet.text = _HHC.Modules.PetInfo.Functions.Elements:createNameElement(frame.pet);

        if _HHC.Modules.PetInfo.Functions:checkIfPetSummoned() == true then

            local unitName = GetUnitName("pet", false);        

            _LibWidgets:setText(frame.pet.text, unitName);

        else

            _LibWidgets:setText(frame.pet.text, _LibLocale:GetLocaleString(_HHC.Modules.PetInfo.Locale.Core, "NO_PET_SOMMONED"));

        end

    end

    if _HHC.Modules.PetInfo.Defaults.Elements["EXPERIENCEPOINTS_ELEMENT"] == true then

        frame.pet.xpbar = _HHC.Modules.PetInfo.Functions:createExperiencePointsElement(frame.pet);

        if _HHC.Modules.PetInfo.Functions:checkIfPetSummoned() == true then

            if _HHC.Modules.PetInfo.Functions:checkPetSameLevelAsPlayer() == false then

                _HHC.Modules.PetInfo.Functions:updatePetXPBar(frame);

            else

                frame.pet.xpbar:SetValue(0);

                if _HHC.Modules.PetInfo.Functions:checkUnitMaxLevel("pet") == false then

                    _LibWidgets:setText(frame.pet.xpbar.value, _LibLocale:GetLocaleString(_HHC.Modules.PetInfo.Locale.Core, "PLAYER_LEVEL_REACHED"));

                else

                    _LibWidgets:setText(frame.pet.xpbar.value, _LibLocale:GetLocaleString(_HHC.Modules.PetInfo.Locale.Core, "MAX_LEVEL_REACHED"));

                end

            end

        else

            _LibWidgets:setText(frame.pet.xpbar.value, "0 / 0 XP");

        end

    end

end