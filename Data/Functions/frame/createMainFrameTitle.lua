function _HHC.Functions:createMainFrameTitle(targetFrame, frameTitle)

    local frame;

    --title frame
    frame = _LibWidgets:createFrame("Frame", 
        targetFrame, 
        _HHC.Defaults["HHC_DEFAULT_FRAME_TITLE_WIDTH"], 
        _HHC.Defaults["HHC_DEFAULT_FRAME_TITLE_HEIGHT"], 
        true);

    --anchors
    _LibWidgets:setPoint(frame, 
        _HHC.Defaults["HHC_DEFAULT_FRAME_TITLE_POS"],
        _HHC.Defaults["HHC_DEFAULT_FRAME_TITLE_LEFT_OFFSET"],
        _HHC.Defaults["HHC_DEFAULT_FRAME_TITLE_TOP_OFFSET"]);

    --backdrop   
    _LibWidgets:setBackdrop(frame,
        _HHC.Textures["TEXTURE_DEFAULT_FRAME_TITLE_BGFILE"],
        _HHC.Defaults["HHC_DEFAULT_FRAME_TITLE_TILE"],
        _HHC.Defaults["HHC_DEFAULT_FRAME_TITLE_TILESIZE"],
        _HHC.Defaults["HHC_DEFAULT_FRAME_TITLE_EDGESIZE"],
        _HHC.Textures["TEXTURE_DEFAULT_FRAME_TITLE_EDGEFILE"],
        _HHC.Defaults["HHC_DEFAULT_FRAME_TITLE_INSET_LEFT"],
        _HHC.Defaults["HHC_DEFAULT_FRAME_TITLE_INSET_TOP"],
        _HHC.Defaults["HHC_DEFAULT_FRAME_TITLE_INSET_RIGHT"],
        _HHC.Defaults["HHC_DEFAULT_FRAME_TITLE_INSET_BOTTOM"]);
    
    _LibWidgets:setBackdropColor(frame, _HHC.Defaults["HHC_DEFAULT_FRAME_TITLE_BACKDROPCOLOR"])
    _LibWidgets:setBackdropBorderColor(frame, _HHC.Defaults["HHC_DEFAULT_FRAME_TITLE_BACKDROPBORDERCOLOR"])

    --alpha
    _LibWidgets:setAlpha(frame, _HHC.Defaults["HHC_DEFAULT_FRAME_TITLE_ALPHA"]);

    --title fontstring
    frame.text = _LibWidgets:createFontString(frame, nil, nil, _HHC.Fonts["FONT_DEFAULT_FRAME_TITLE_FONT"]);

    --anchors
    _LibWidgets:setPoint(frame.text, _HHC.Defaults["HHC_DEFAULT_FRAME_TITLE_TEXT_POS"], _HHC.Defaults["HHC_DEFAULT_FRAME_TITLE_TEXT_LEFT_OFFSET"], _HHC.Defaults["HHC_DEFAULT_FRAME_TITLE_TEXT_TOP_OFFSET"])

    --title text
    _LibWidgets:setText(frame.text, frameTitle);

    --alpha
    _LibWidgets:setAlpha(frame.text, _HHC.Defaults["HHC_DEFAULT_FRAME_TITLE_COLUMN_ALPHA"]);

    return frame;

end