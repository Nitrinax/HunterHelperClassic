function _HHC.Functions.PlayerInfo:GetTrainerAbilities()

    for key, value in _HHC.Functions:spairs(_HHC.Data.PlayerInfo.PlayerTrainerAbilities) do

        print(key, value);

    end

end