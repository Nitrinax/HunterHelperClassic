--return a locale string from a given locale table and locale id,
--use a default string (optional) if the locale string not found in locale table
function _LibLocale:GetCatalogStr(catalogTable, stringID, defaultString)

    local catalogString;

    --fallback
    local dummyString = "undefined";

    --loop locale table
    for key, value in pairs(catalogTable) do

        --if key equal to locale id
        if key == stringID then

            --set catalogString to locale string
            catalogString = value;

            --if stringID found, break loop
            break;

        end

    end

    --if catalogString not found
    if not catalogString or
        catalogString == nil or
        catalogString == false then

        --if defaultString empty
        if not defaultString or
            defaultString == nil or
            defaultString == false then

            --set catalogString to dummyString
            catalogString = dummyString;

        else

            --set catalogString to defaultString
            catalogString = defaultString;

        end

    end

    --return catalogString
    return catalogString;

end