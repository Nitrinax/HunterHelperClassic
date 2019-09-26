-- "PLAYER_LEVEL_UP"

-- Fired when a player levels up.

-- arg1 
--     New player level. Note that UnitLevel("player") will most likely return an incorrect value when called in this event handler or shortly after, so use this value. 
-- arg2 
--     Hit points gained from leveling. 
-- arg3 
--     Mana points gained from leveling. 
-- arg4 
--     Talent points gained from leveling. Should always be 1 unless the player is between levels 1 to 9. 
-- arg5 - arg9 
--     Attribute score increases from leveling. Strength (5) / Agility (6) / Stamina (7) / Intellect (8) / Spirit (9). 

function _HHC.Modules.PlayerInfo.Functions:GetPlayerLevel()

end