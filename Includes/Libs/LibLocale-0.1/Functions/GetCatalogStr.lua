--return a local string from a given locale table and locale id
function _LibLocale:GetCatalogStr(catalogTable, stringNumber, defaultString)

    local catalogString;

    for key, value in pairs(catalogTable) do

        if key == stringNumber then

            catalogString = value;

            -- if stringNumber found, break for loop
            break;

        else

            catalogString = defaultString;

        end

    end

    return catalogString;

end