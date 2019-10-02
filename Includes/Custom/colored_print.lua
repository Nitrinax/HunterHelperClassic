function colored_print(color, text, stream)

    if color == "red" then text = ("|cFFFF3333" .. text .. "|r");
    --elseif color == "darkred" then text = ("|cFF" .. text .. "|r");
    elseif color == "lightred" then text = ("|cFFFF5555" .. text .. "|r");
    elseif color == "orange" then text = ("|cFFFF9900" .. text .. "|r");
    elseif color == "green" then text = ("|cFF00FF00" .. text .. "|r");
    --elseif color == "darkgreen" then text = ("|cFF" .. text .. "|r");
    elseif color == "lightgreen" then text = ("|cFFa9ffa9" .. text .. "|r");
    elseif color == "blue" then text = ("|cff5599ff" .. text .. "|r");
    elseif color == "darkblue" then text = ("|cff224477" .. text .. "|r");
    elseif color == "lightblue" then text = ("|cFF99d0ff" .. text .. "|r");
    elseif color == "yellow" then text = ("|cFFFFFF00" .. text .. "|r");
    elseif color == "violet" then text = ("|cFF" .. text .. "|r");
    elseif color == "pink" then text = ("|cFF" .. text .. "|r");
    end

    if stream == true then

        return text;

    else

        print(text);

    end

end