function _HHC.Modules.PetInfo.Functions:handleEvents(frame)

    frame:SetScript("OnEvent", function(self, event, ...)

        -- check event PLAYER_XP_UPDATE
        if event == "PLAYER_XP_UPDATE" then

            ntrnx_debug(_HHC.Functions:colored_print("orange", event))
        
        -- check event PET_BAR_UPDATE
        elseif event == "PET_BAR_UPDATE" then

            if _HHC.Functions:checkTwiceEvents(_HHC.Events.Modules.PetInfo, event) == false then

                ntrnx_debug(_HHC.Functions:colored_print("orange", event))

            end

        -- check event UNIT_HAPPINESS
        elseif event == "UNIT_HAPPINESS" then

            ntrnx_debug(_HHC.Functions:colored_print("orange", event))

        -- check event UNIT_LEVEL
        elseif event == "UNIT_LEVEL" then

            ntrnx_debug(_HHC.Functions:colored_print("orange", event))

        -- check event UNIT_PET
        --elseif event == "UNIT_PET" then

        -- check event UNIT_PET_EXPERIENCE
        elseif event == "UNIT_PET_EXPERIENCE" then

            ntrnx_debug(_HHC.Functions:colored_print("orange", event))

            --_HHC.Modules.PetInfo.Functions:updatePetXPBar(frame)

        -- check event UNIT_PET_TRAINING_POINTS
        elseif event == "UNIT_PET_TRAINING_POINTS" then

            ntrnx_debug(_HHC.Functions:colored_print("orange", event))

        else

            ntrnx_debug(_HHC.Functions:colored_print("yellow", event .. " not handled"))

        end

    end);

end