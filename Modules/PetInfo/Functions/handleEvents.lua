function _HHC.Modules.PetInfo.Functions:handleEvents(frame)

    frame:SetScript("OnEvent", function(self, event, ...)

        -- check event PLAYER_XP_UPDATE
        if event == "PLAYER_XP_UPDATE" then

            --ntrnx_debug(_HHC.Functions:colored_print("orange", event))
        
        -- check event PET_BAR_UPDATE
        elseif event == "PET_BAR_UPDATE" then

            -- if _HHC.Functions:checkTwiceEvents(_HHC.Events.Modules.PetInfo, event) == false then

            -- ntrnx_debug(_HHC.Functions:colored_print("orange", event))

            -- end

            -- check if pet summoned
            -- if _HHC.Modules.PetInfo.Functions:checkIfPetSummoned() == true then

            --     -- set pet name
            --     local unitName = GetUnitName("pet", false);        

            --     _LibWidgets:setText(_HHC.Modules.PetInfo.Element.Name, unitName);

            --     -- check if pet has same level as player
            --     if _HHC.Modules.PetInfo.Functions:checkPetSameLevelAsPlayer() == false then

            --         _HHC.Modules.PetInfo.Functions:updatePetXPBar();

            --     else

            --         _HHC.Modules.PetInfo.Element.Xpbar:SetValue(0);

            --         -- check if pet max level
            --         if _HHC.Modules.PetInfo.Functions:checkUnitMaxLevel("pet") == false then

            --             _LibWidgets:setText(_HHC.Modules.PetInfo.Element.Xpbar.value, _LibLocale:GetLocaleString(_HHC.Modules.PetInfo.Element.Locale.ExperiencePoints, "PLAYER_LEVEL_REACHED"));

            --         else

            --             _LibWidgets:setText(_HHC.Modules.PetInfo.Element.Xpbar.value, _LibLocale:GetLocaleString(_HHC.Modules.PetInfo.Element.Locale.ExperiencePoints, "MAX_LEVEL_REACHED"));

            --         end

            --     end

            -- else

            --     _HHC.Modules.PetInfo.Element.Xpbar:SetValue(0);

            --     _LibWidgets:setText(_HHC.Modules.PetInfo.Element.Xpbar.value, "-- / --");

            --     _LibWidgets:setText(_HHC.Modules.PetInfo.Element.Name , _LibLocale:GetLocaleString(_HHC.Modules.PetInfo.Locale.Core, "NO_PET_SOMMONED"));

            -- end

        -- check event UNIT_HAPPINESS
        elseif event == "UNIT_HAPPINESS" then

            --ntrnx_debug(_HHC.Functions:colored_print("orange", event))

        -- check event UNIT_LEVEL
        elseif event == "UNIT_LEVEL" then

            --ntrnx_debug(_HHC.Functions:colored_print("orange", event))

        -- check event UNIT_PET
        elseif event == "UNIT_PET" then

            --ntrnx_debug(_HHC.Functions:colored_print("orange", event))

        -- check event UNIT_PET_EXPERIENCE
        elseif event == "UNIT_PET_EXPERIENCE" then

            --ntrnx_debug(_HHC.Functions:colored_print("orange", event))

            _HHC.Modules.PetInfo.Functions:updatePetXPBar()

        -- check event UNIT_PET_TRAINING_POINTS
        elseif event == "UNIT_PET_TRAINING_POINTS" then

            --ntrnx_debug(_HHC.Functions:colored_print("orange", event))

        else

            --ntrnx_debug(_HHC.Functions:colored_print("yellow", event .. " not handled"))

        end

    end);

end