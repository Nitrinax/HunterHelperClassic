--format string with color tags
function _LibCF:colored_print(color, text, stream)

    if color == "red" then text = ("|cFFFF3333" .. text .. "|r");
    elseif color == "darkred" then text = ("|cFFCF1111" .. text .. "|r");
    elseif color == "lightred" then text = ("|cFFFF5F5F" .. text .. "|r");    
    elseif color == "orange" then text = ("|cFFFFA500" .. text .. "|r");
    elseif color == "green" then text = ("|cFF33FF33" .. text .. "|r");
    elseif color == "darkgreen" then text = ("|cFF238E23" .. text .. "|r");
    elseif color == "lightgreen" then text = ("|cFFa9ffa9" .. text .. "|r");
    elseif color == "blue" then text = ("|cff5599ff" .. text .. "|r");
    elseif color == "darkblue" then text = ("|cff3333ff" .. text .. "|r");
    elseif color == "lightblue" then text = ("|cFF99d0ff" .. text .. "|r");
    elseif color == "yellow" then text = ("|cFFFFFF00" .. text .. "|r");
    elseif color == "gold" then text = ("|cFFFFDF4F" .. text .. "|r");
    elseif color == "purple" then text = ("|cFFBA55D3" .. text .. "|r");
    elseif color == "cyan" then text = ("|cFFBBFFFF" .. text .. "|r");
    elseif color == "pink" then text = ("|cFFFF0DE6" .. text .. "|r");
    elseif color == "turquoise" then text = ("|cFF00868B" .. text .. "|r");
    elseif color == "white" then text = ("|cFFFFFFFF" .. text .. "|r");
    elseif color == "black" then text = ("|cFF000000" .. text .. "|r");
    elseif color == "grey" then text = ("|cFF666666" .. text .. "|r");
    elseif color == "brown" then text = ("|cFF8B4513" .. text .. "|r");
    elseif color == "epic" then text = ("|cFFa335ee" .. text .. "|r");
    elseif color == "legendary" then text = ("|cFFff8000" .. text .. "|r");
    elseif color == "artifact" then text = ("|cFFe6cc80" .. text .. "|r");  
    end

    --return stream
    if stream == true then

        return text;

    else

        print(text);

    end

end