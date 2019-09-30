function _HHC.Functions:checkTwiceEvents(eventTable, event)

    local ifValueExists = _HHC.Functions:tableHasValue(eventTable, event);

    if ifValueExists == false then

        table.insert(eventTable, event);

        return false;

    else

        table.remove(eventTable, ifValueExists);

        return true;

    end

end