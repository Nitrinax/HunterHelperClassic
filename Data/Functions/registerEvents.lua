function _HHC.Functions:registerEvents(frame)

    --player log in
    frame:RegisterEvent("PLAYER_LOGIN");

    --player level up for real player level
    frame:RegisterEvent("PLAYER_LEVEL_UP");

end