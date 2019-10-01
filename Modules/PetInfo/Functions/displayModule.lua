function _HHC.Modules.PetInfo.Functions:displayModule(frame)

    _HHC.Modules.PetInfo.Frames.Pet = _HHC.Modules.PetInfo.Functions:createPetFrame(frame);    

    _HHC.Modules.PetInfo.Functions:registerEvents(_HHC.Modules.PetInfo.Frames.Pet);

    _HHC.Modules.PetInfo.Functions:handleEvents(_HHC.Modules.PetInfo.Frames.Pet);

    -- name element
    if _HHC.Modules.PetInfo.Element.Defaults["NAME_ELEMENT"] == true then

        -- create element
        _HHC.Modules.PetInfo.Element.Name = _HHC.Modules.PetInfo.Element.Functions:createNameElement(_HHC.Modules.PetInfo.Frames.Pet);

        -- check if pet summoned
        if _HHC.Modules.PetInfo.Functions:checkIfPetSummoned() == true then

            -- set pet name
            local unitName = GetUnitName("pet", false);        

            _LibWidgets:setText(_HHC.Modules.PetInfo.Element.Name, unitName);

        else

            _LibWidgets:setText(_HHC.Modules.PetInfo.Element.Name, _LibLocale:GetLocaleString(_HHC.Modules.PetInfo.Locale.Core, "NO_PET_SOMMONED"));

        end

    end

    -- experience points element 
    if _HHC.Modules.PetInfo.Element.Defaults["EXPERIENCEPOINTS_ELEMENT"] == true then

        -- create element
        _HHC.Modules.PetInfo.Element.Xpbar = _HHC.Modules.PetInfo.Element.Functions:createExperiencePointsElement(_HHC.Modules.PetInfo.Frames.Pet);

        -- check if pet summoned
        if _HHC.Modules.PetInfo.Functions:checkIfPetSummoned() == true then

            -- check if pet has same level as player
            if _HHC.Modules.PetInfo.Functions:checkPetSameLevelAsPlayer() == false then

                _HHC.Modules.PetInfo.Functions:updatePetXPBar();

            else

                _HHC.Modules.PetInfo.Element.Xpbar:SetValue(0);

                -- check if pet max level
                if _HHC.Modules.PetInfo.Functions:checkUnitMaxLevel("pet") == false then

                    _LibWidgets:setText(_HHC.Modules.PetInfo.Element.Xpbar.value, _LibLocale:GetLocaleString(_HHC.Modules.PetInfo.Element.Locale.ExperiencePoints, "PLAYER_LEVEL_REACHED"));

                else

                    _LibWidgets:setText(_HHC.Modules.PetInfo.Element.Xpbar.value, _LibLocale:GetLocaleString(_HHC.Modules.PetInfo.Element.Locale.ExperiencePoints, "MAX_LEVEL_REACHED"));

                end

            end

        else

            _LibWidgets:setText(_HHC.Modules.PetInfo.Element.Xpbar.value, "0 / 0 XP");

        end

    end

end