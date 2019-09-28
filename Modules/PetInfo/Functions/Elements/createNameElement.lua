function _HHC.Modules.PetInfo.Functions.Elements:createNameElement(frame)

    --pet fontstring
    frame.text = _LibWidgets:createFontString(frame, nil, nil, _HHC.Modules.PetInfo.Defaults.Elements["DEFAULT_PET_FRAME_NAME_ELEMENT_FONT"]);

    --pet fontstring anchors
    _LibWidgets:setPoint(frame.text,
        _HHC.Modules.PetInfo.Defaults.Elements["DEFAULT_PET_FRAME_NAME_ELEMENT_TEXT_POS"],
        _HHC.Modules.PetInfo.Defaults.Elements["DEFAULT_PET_FRAME_NAME_ELEMENT_TEXT_LEFT_OFFSET"],
        _HHC.Modules.PetInfo.Defaults.Elements["DEFAULT_PET_FRAME_NAME_ELEMENT_TEXT_TOP_OFFSET"])

    return frame.text;

end