--[[
NTRNX_DEBUG_STATE and NTRNX_DEBUG_ADDON_ABBREVATION must set up by addon
]]

local NTRNX_DEBUG_SLASH_STRING = "/";
local NTRNX_DEBUG_BACKSLASH_STRING = "\\";
local NTRNX_DEBUG_LINEBREAK_STRING = "/\n";
local NTRNX_DEBUG_ADDON_PATH = "Interface\\Addons\\";

if NTRNX_DEBUG_STATE == nil then print ("ERROR: NTRNX_DEBUG_STATE not set"); end
if NTRNX_DEBUG_ADDON_ABBREVATION == nil then print ("ERROR: NTRNX_DEBUG_ADDON_ABBREVATION not set"); end

function ntrnx_debug(string)

    if NTRNX_DEBUG_STATE == true then

        local output = "";

        if (string) then

            output = NTRNX_DEBUG_ADDON_ABBREVATION .. ": " .. string;

        else

            local result_1, result_2, result_3, result_4, result_5, result_6, result_7, result_8, result_9, result_10 = debugstack(2);
            --print (result_1);

            local slashpos = strfind(result_1, NTRNX_DEBUG_BACKSLASH_STRING);   
            --print(slashpos);

            if (slashpos) then

                local modpos = strfind(result_1, NTRNX_DEBUG_ADDON_ABBREVATION);
                --print(modpos);                

                -- fix if modpos == nil
                if modpos == nil then modpos = 0; end

                local strfindpart = strsub(NTRNX_DEBUG_ADDON_ABBREVATION, 1, 1);
                --print(strfindpart);

                local strlen_addon_interface = strlen(NTRNX_DEBUG_ADDON_PATH .. strfindpart);
                --print(strlen_addon_interface);

                local newstring = strsub(result_1, 1, modpos - strlen_addon_interface);
                --print(newstring);

                local start = ntrnx_findLastSlash(newstring, slashpos);
                --print(start);

                output = strsub(newstring, start);
                --print(output);

            else

                local pos = strfind(result_1, NTRNX_DEBUG_ADDON_ABBREVATION); 
                --print(pos);

                local len = strlen(NTRNX_DEBUG_ADDON_ABBREVATION);
                --print(len);

                local start = pos + len + 1;
                --print(start);

                output = strsub(result_1, start);
                --print(output);

            end

        end

        -- remove line breaks
        output = strtrim(output, NTRNX_DEBUG_LINEBREAK_STRING);

        -- display debug message
        print (output);

    end

end

-- find last / in a given string
function ntrnx_findLastSlash(string, start)

    local string_len = strlen(string);
    --print(string_len);

    for i = 1, string_len, 1 do

        if start < string_len then

            local slashpos = strfind(string, NTRNX_DEBUG_SLASH_STRING, start);
            --slashpos = strfind(string, NTRNX_DEBUG_BACKSLASH_STRING, start);

            if slashpos ~= nil then

                start = slashpos + 1;

            end

        end

    end

    return start;

end