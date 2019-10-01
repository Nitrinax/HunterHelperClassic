function _HHC.Modules.PetInfo.Element.Functions:createNameElement(frame)

    --pet fontstring
    frame.text = _LibWidgets:createFontString(frame, nil, nil, _HHC.Modules.PetInfo.Element.Defaults["DEFAULT_PET_FRAME_NAME_ELEMENT_FONT"]);

    --pet fontstring anchors
    _LibWidgets:setPoint(frame.text,
        _HHC.Modules.PetInfo.Element.Defaults["DEFAULT_PET_FRAME_NAME_ELEMENT_TEXT_POS"],
        _HHC.Modules.PetInfo.Element.Defaults["DEFAULT_PET_FRAME_NAME_ELEMENT_TEXT_LEFT_OFFSET"],
        _HHC.Modules.PetInfo.Element.Defaults["DEFAULT_PET_FRAME_NAME_ELEMENT_TEXT_TOP_OFFSET"])

    return frame.text;

end