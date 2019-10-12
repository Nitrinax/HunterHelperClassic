function _HHC.Functions:updatePetLevel()

    --setup pet level from scratch
    _HHC.Data.CurrentPetLevel = UnitLevel("pet");
    --ntrnx_debug(_LibCF:colored_print("yellow", "Petlevel : " .. _HHC.Data.CurrentPetLevel, true))

end