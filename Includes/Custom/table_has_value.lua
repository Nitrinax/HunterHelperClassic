function table_has_value(table, value)

    for k, v in pairs(table) do

        if v == value then

            return k;

        end

    end

    return false;

end