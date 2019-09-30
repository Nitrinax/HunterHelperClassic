function _HHC.Functions:tableHasKey(table, key)

    for k, v in pairs(table) do

        if k == key then

            return k;

        end

    end

    return false;

end