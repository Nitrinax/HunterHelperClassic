function _HHC.Modules.PlayerInfo.Functions:GetTrainerAbilities()

    for key, value in _HHC.Functions:spairs(_HHC.Data.PlayerInfo.PlayerTrainerAbilities) do

        print(key, value);

    end

end