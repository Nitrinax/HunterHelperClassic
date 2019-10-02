function _HHC.Modules.PetInfo.Functions:displayModule(frame)

    -- create pet frame
    _HHC.Modules.PetInfo.Frames.Pet = _HHC.Modules.PetInfo.Functions:createPetFrame(frame);

    -- elements loader
    for key, value in sorted_pairs(_HHC.Modules.PetInfo.Element.List) do

        --colored_print("yellow", "_HHC.Modules.PetInfo.Element.List[\"" .. key .. "\"] = " .. tostring(value));

        if value == true then

            elements_loader = "_HHC.Modules.PetInfo.Element." .. strfcupper(key) .." = _HHC.Modules.PetInfo.Element.Functions:create" .. strfcupper(key) .. "Element(_HHC.Modules.PetInfo.Frames.Pet);";
            --colored_print("yellow", elements_loader);

            RunScript(elements_loader);

        end

    end

    -- register events
    --_HHC.Modules.PetInfo.Functions:registerEvents(_HHC.Modules.PetInfo.Frames.Pet);

    -- init event handles
    --_HHC.Modules.PetInfo.Functions:handleEvents(_HHC.Modules.PetInfo.Frames.Pet);

    -- -- ## name element
    -- if _HHC.Modules.PetInfo.Element.Defaults["NAME_ELEMENT"] == true then

    --     -- create element
    --     _HHC.Modules.PetInfo.Element.Name = _HHC.Modules.PetInfo.Element.Functions:createNameElement(_HHC.Modules.PetInfo.Frames.Pet);

    --     -- check if pet summoned
    --     if _HHC.Modules.PetInfo.Functions:checkIfPetSummoned() == true then

    --         -- set pet name
    --         local unitName = GetUnitName("pet", false);        

    --         _LibWidgets:setText(_HHC.Modules.PetInfo.Element.Name, unitName);

    --         -- ## experience points element 
    --         if _HHC.Modules.PetInfo.Element.Defaults["EXPERIENCEPOINTS_ELEMENT"] == true then

    --             if _HHC.Modules.PetInfo.Element.Xpbar then

    --                 -- create element
    --                 _HHC.Modules.PetInfo.Element.Xpbar:Show();

    --             else

    --                 -- create element
    --                 _HHC.Modules.PetInfo.Element.Xpbar = _HHC.Modules.PetInfo.Element.Functions:createExperiencePointsElement(_HHC.Modules.PetInfo.Frames.Pet);

    --             end

    --             -- check if pet has same level as player
    --             if _HHC.Modules.PetInfo.Functions:checkPetSameLevelAsPlayer() == false then

    --                 _HHC.Modules.PetInfo.Functions:updatePetXPBar();

    --             else

    --                 _HHC.Modules.PetInfo.Element.Xpbar:SetValue(0);

    --                 -- check if pet max level
    --                 if _HHC.Modules.PetInfo.Functions:checkUnitMaxLevel("pet") == false then

    --                     _LibWidgets:setText(_HHC.Modules.PetInfo.Element.Xpbar.value, _LibLocale:GetLocaleString(_HHC.Modules.PetInfo.Element.Locale.ExperiencePoints, "PLAYER_LEVEL_REACHED"));

    --                 else

    --                     _LibWidgets:setText(_HHC.Modules.PetInfo.Element.Xpbar.value, _LibLocale:GetLocaleString(_HHC.Modules.PetInfo.Element.Locale.ExperiencePoints, "MAX_LEVEL_REACHED"));

    --                 end

    --             end

    --         end

    --     else

    --         _LibWidgets:setText(_HHC.Modules.PetInfo.Element.Name, _LibLocale:GetLocaleString(_HHC.Modules.PetInfo.Locale.Core, "NO_PET_SOMMONED"));

    --         -- ## experience points element 
    --         if _HHC.Modules.PetInfo.Element.Defaults["EXPERIENCEPOINTS_ELEMENT"] == true then

    --             if _HHC.Modules.PetInfo.Element.Xpbar then

    --                 -- create element
    --                 _HHC.Modules.PetInfo.Element.Xpbar:Hide();

    --             end

    --         end

    --     end

    -- end

end