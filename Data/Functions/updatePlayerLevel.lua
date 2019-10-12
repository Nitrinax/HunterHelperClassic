function _HHC.Functions:updatePlayerLevel()

    --setup player level from scratch
    _HHC.Data.CurrentPlayerLevel = UnitLevel("player");
    --ntrnx_debug(_LibCF:colored_print("yellow", "Playerlevel : " .. _HHC.Data.CurrentPlayerLevel, true));

end