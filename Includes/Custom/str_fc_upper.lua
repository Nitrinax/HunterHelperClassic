function str_fc_upper(string)

    -- convert complete string to lower
    local loweredstring = strlower(string);

    -- get first character and convert it to upper
    local capitalletter = strupper(strsub(loweredstring, 1, 1));

    -- get remaining part of string
    local remainingchars = strsub(loweredstring, 2);

    -- combine both parts
    local returningstring = capitalletter .. remainingchars;

    return returningstring;

end