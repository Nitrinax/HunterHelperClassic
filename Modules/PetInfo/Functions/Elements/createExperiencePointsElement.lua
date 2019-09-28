function _HHC.Modules.PetInfo.Functions:createExperiencePointsElement(targetFrame)
   
    local currXP, nextXP = GetPetExperience();

    --targetFrame.statusbar = CreateFrame("StatusBar", nil, frame);
    targetFrame.statusbar = LibWidgets:createStatusBar("StatusBar", frame, 100, 40, true);

    _LibWidgets:setPoint(targetFrame.statusbar, "TOPLEFT", ofx, ofy);

    targetFrame.statusbar:SetSize(160, 20);
    targetFrame.statusbar:SetStatusBarTexture("Interface\\Tooltips\\UI-Tooltip-Background");
    targetFrame.statusbar:SetStatusBarColor(0, 1, 0);
    targetFrame.statusbar:SetMinMaxValues(0, nextXP);
    targetFrame.statusbar:SetValue(currXP);
    
    targetFrame.statusbar.bg = targetFrame.statusbar:CreateTexture(nil, "BACKGROUND");
    targetFrame.statusbar.bg:SetTexture("Interface\\Tooltips\\UI-Tooltip-Background");
    targetFrame.statusbar.bg:SetAllPoints();
    targetFrame.statusbar.bg:SetVertexColor(1, 0, 0);

    targetFrame.statusbar.value = _LibWidgets:createFontString(frame.statusbar, OVERLAY, nil, HHC_DEFAULT_FRAME_PET_FONT);
    
    _LibWidgets:setPoint(targetFrame.statusbar.value, "CENTER", 0, 0);

    _LibWidgets:setText(targetFrame.statusbar.value, currXP .. " / " .. nextXP .. " XP");

end