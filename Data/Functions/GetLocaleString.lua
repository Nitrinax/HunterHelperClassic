--return a local string from a given locale table and locale id
function _HHCFunctions:GetLocaleString(localeTable, localeID)

    local localeString = "unkown";

    for key, value in pairs(localeTable) do

        --print(key, value);

        if key == localeID then

            localeString = value;

        end

    end

    return localeString;

end