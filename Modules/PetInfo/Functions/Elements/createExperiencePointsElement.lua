function _HHC.Modules.PetInfo.Element.Functions:createExperiencepointsElement(frame)

    frame.statusbar = _LibWidgets:createStatusBar("StatusBar", frame, 
        _HHC.Modules.PetInfo.Element.Defaults["DEFAULT_PET_FRAME_EXPERIENCE_POINTS_ELEMENT_WIDTH"],
        _HHC.Modules.PetInfo.Element.Defaults["DEFAULT_PET_FRAME_EXPERIENCE_POINTS_ELEMENT_HEIGHT"],
        true
    );

    _LibWidgets:setPoint(frame.statusbar, "TOPLEFT",
        _HHC.Modules.PetInfo.Element.Defaults["DEFAULT_PET_FRAME_EXPERIENCE_POINTS_ELEMENT_LEFT_OFFSET"],
        _HHC.Modules.PetInfo.Element.Defaults["DEFAULT_PET_FRAME_EXPERIENCE_POINTS_ELEMENT_TOP_OFFSET"]
    );

    frame.statusbar:SetStatusBarTexture(_HHC.Modules.PetInfo.Element.Defaults["DEFAULT_PET_FRAME_EXPERIENCE_POINTS_ELEMENT_TEXTURE"]);
    frame.statusbar:SetStatusBarColor(0, 1, 0);
    frame.statusbar:SetMinMaxValues(0, 0);
    frame.statusbar:SetValue(0);
    
    frame.statusbar.bg = frame.statusbar:CreateTexture(nil, "BACKGROUND");
    frame.statusbar.bg:SetTexture(_HHC.Modules.PetInfo.Element.Defaults["DEFAULT_PET_FRAME_EXPERIENCE_POINTS_ELEMENT_BACKGROUND_TEXTURE"]);
    frame.statusbar.bg:SetAllPoints();
    frame.statusbar.bg:SetVertexColor(1, 0, 0);

    frame.statusbar.value = _LibWidgets:createFontString(frame.statusbar, OVERLAY, nil,
        _HHC.Modules.PetInfo.Element.Defaults["DEFAULT_PET_FRAME_EXPERIENCE_POINTS_ELEMENT_VALUE_FONT"]);

    _LibWidgets:setPoint(frame.statusbar.value,
        _HHC.Modules.PetInfo.Element.Defaults["DEFAULT_PET_FRAME_EXPERIENCE_POINTS_ELEMENT_VALUE_ANCHOR"], 0, 0);

    return frame.statusbar;

end