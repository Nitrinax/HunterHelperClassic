function _HHC.Functions:handleEvents(frame)

    frame:SetScript("OnEvent", function(self, event, ...)

        -- check event PLAYER_LEVEL_UP
        if event == "PLAYER_LEVEL_UP" then

            -- get event args
            local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9 = ...

            ntrnx_debug ("old level " .. _HHC.Data.RealPlayerLevel);
            ntrnx_debug ("new level " .. arg1);

            -- set _HHC.Data.RealPlayerLevel to real/new level of player
            _HHC.Data.RealPlayerLevel = arg1;
            ntrnx_debug (arg1);

        end

    end);

end