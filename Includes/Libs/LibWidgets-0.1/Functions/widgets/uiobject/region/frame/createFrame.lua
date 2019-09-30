function _LibWidgets:createFrame(

    frameName,
    frameParent,
    frameXSize,
    frameYSize,
    toplevel,
    drag

)

    --frame
    local frame = CreateFrame("Frame", frameName, frameParent);

    if not frameParent then frameParent = _LibWidgetsDefaults["CREATEFRAME_FRAMEPARENT"]; end

    --size
    if frameXSize then frame:SetWidth(frameXSize); else frame:SetWidth(_LibWidgetsDefaults["CREATEFRAME_FRAMEXSIZE"]); end
    if frameYSize then frame:SetHeight(frameYSize); else frame:SetHeight(_LibWidgetsDefaults["CREATEFRAME_FRAMEYSIZE"]); end

    --level
    if toplevel == true then

        frame:SetToplevel(true);

    end

    --scripts
    if drag == true then

        frame:EnableMouse(true);
        frame:SetMovable(true);
        frame:RegisterForDrag("LeftButton");
        frame:SetScript("OnDragStart", frame.StartMoving);
        frame:SetScript("OnDragStop", frame.StopMovingOrSizing);

    end

    return frame;

end