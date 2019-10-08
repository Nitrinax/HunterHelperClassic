function _LibCF:table_has_key(table, key)

    for k, v in pairs(table) do

        if k == key then

            return k;

        end

    end

    return false;

end