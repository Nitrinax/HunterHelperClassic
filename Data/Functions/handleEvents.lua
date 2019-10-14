function _HHC.Functions:handleEvents(frame)

    frame:SetScript("OnEvent", function(self, event, ...)

        if event == "PLAYER_LOGIN" then

            _HHC.Functions:updatePlayerLevel();

            if _HHC.Functions:checkIfPetSummoned() == true then

                _HHC.Functions:updatePetLevel();

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

        if event == "PLAYER_CONTROL_LOST" then

            --ntrnx_debug(_LibCF:colored_print("orange", event, true));

            _HHC.Data.PlayerControlLost = 1;

        end

        if event == "PLAYER_CONTROL_GAINED" then

            --ntrnx_debug(_LibCF:colored_print("orange", event, true));

            _HHC.Data.PlayerControlLost = 0;

        end

    end);

end