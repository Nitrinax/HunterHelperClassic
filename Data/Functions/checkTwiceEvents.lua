function _HHC.Functions:checkTwiceEvents(eventTable, event)

    print (tableHasKey(eventTable, event));

    if tableHasKey(eventTable, event) == false then

        print ("HHCDEBUG: twice event " .. event .. " not found");

        table.insert(eventTable, event);        

        return false;

    else

        print ("HHCDEBUG: twice event " .. event .. " found");

        table.remove(eventTable, event);        

        return true;

    end

end

function tableHasKey(table, key)

    return table[key] ~= nil;

end