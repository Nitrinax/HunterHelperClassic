function _HHC.Modules.PetInfo.Functions:handleEvents(frame)

    frame:SetScript("OnEvent", function(self, event, ...)
        
        --print ("HHCDEBUG module: " .. _HHC.Modules.PetInfo.Data["MODULE_NAME"] .. " - event: " .. event)

        -- check event PLAYER_XP_UPDATE
        if event == "PLAYER_XP_UPDATE" then
        
        -- check event PET_BAR_UPDATE
        elseif event == "PET_BAR_UPDATE" then

        -- check event UNIT_HAPPINESS
        elseif event == "UNIT_HAPPINESS" then

        -- check event UNIT_LEVEL
        elseif event == "UNIT_LEVEL" then

        -- check event UNIT_PET
        elseif event == "UNIT_PET" then

            if _HHC.Functions:checkTwiceEvents(_HHC.Events.Modules.PetInfo, event) == false then

                --print ("HHCDEBUG: TEST");

            end

        -- check event UNIT_PET_EXPERIENCE
        elseif event == "UNIT_PET_EXPERIENCE" then

            --_HHC.Modules.PetInfo.Functions:updatePetXPBar(frame)

        -- check event UNIT_PET_TRAINING_POINTS
        elseif event == "UNIT_PET_TRAINING_POINTS" then

        else

            print ("HHCDEBUG module: " .. _HHC.Modules.PetInfo.Data["MODULE_NAME"] .. " - event: " .. event .. " not handled")

        end

    end);

end