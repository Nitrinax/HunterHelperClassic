function _HHC.Functions:handleEvents(frame)

    frame:SetScript("OnEvent", function(self, event, ...)

        if event == "PLAYER_LOGIN" then

            --setup player level from scratch
            _HHC.Data.CurrentPlayerLevel = UnitLevel("player");
            --ntrnx_debug(_LibCF:colored_print("yellow", "Playerlevel : " .. _HHC.Data.CurrentPlayerLevel, true));

            if _HHC.Functions:checkIfPetSummoned() == true then

                --setup player level from scratch
                _HHC.Data.CurrentPetLevel = UnitLevel("pet");
                --ntrnx_debug(_LibCF:colored_print("yellow", "Petlevel : " .. _HHC.Data.CurrentPetLevel, true));

            else

                _HHC.Data.CurrentPetLevel = 0;

            end

        end

        -- check event PLAYER_LEVEL_UP
        if event == "PLAYER_LEVEL_UP" then

            -- get event args
            local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9 = ...
            ntrnx_debug(_LibCF:colored_print("yellow", "Old Playerlevel : " .. _HHC.Data.CurrentPlayerLevel, true));
            ntrnx_debug(_LibCF:colored_print("yellow", "New Playerlevel : " .. arg1, true));

            -- set _HHC.Data.CurrentPlayerLevel to real/new level of player
            _HHC.Data.CurrentPlayerLevel = arg1;

        end

    end);

end