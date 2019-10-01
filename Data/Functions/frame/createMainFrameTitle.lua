function _HHC.Functions:createMainFrameTitle(targetFrame, frameTitle)

    local frame;

    --title frame
    frame = _LibWidgets:createFrame("Frame", 
        targetFrame, 
        _HHC.Defaults["DEFAULT_FRAME_TITLE_WIDTH"], 
        _HHC.Defaults["DEFAULT_FRAME_TITLE_HEIGHT"], 
        true);

    --anchors
    _LibWidgets:setPoint(frame, 
        _HHC.Defaults["DEFAULT_FRAME_TITLE_POS"],
        _HHC.Defaults["DEFAULT_FRAME_TITLE_LEFT_OFFSET"],
        _HHC.Defaults["DEFAULT_FRAME_TITLE_TOP_OFFSET"]);

    --backdrop   
    _LibWidgets:setBackdrop(frame,
        _HHC.Textures["DEFAULT_FRAME_TITLE_BGFILE_TEXTURE"],
        _HHC.Defaults["DEFAULT_FRAME_TITLE_TILE"],
        _HHC.Defaults["DEFAULT_FRAME_TITLE_TILESIZE"],
        _HHC.Defaults["DEFAULT_FRAME_TITLE_EDGESIZE"],
        _HHC.Textures["DEFAULT_FRAME_TITLE_EDGEFILE_TEXTURE"],
        _HHC.Defaults["DEFAULT_FRAME_TITLE_INSET_LEFT"],
        _HHC.Defaults["DEFAULT_FRAME_TITLE_INSET_TOP"],
        _HHC.Defaults["DEFAULT_FRAME_TITLE_INSET_RIGHT"],
        _HHC.Defaults["DEFAULT_FRAME_TITLE_INSET_BOTTOM"]);
    
    _LibWidgets:setBackdropColor(frame, _HHC.Defaults["DEFAULT_FRAME_TITLE_BACKDROP_COLOR"])
    _LibWidgets:setBackdropBorderColor(frame, _HHC.Defaults["DEFAULT_FRAME_TITLE_BACKDROP_BORDER_COLOR"])

    --alpha
    _LibWidgets:setAlpha(frame, _HHC.Defaults["DEFAULT_FRAME_TITLE_ALPHA"]);

    --title fontstring
    frame.text = _LibWidgets:createFontString(frame, nil, nil, _HHC.Fonts["DEFAULT_FRAME_TITLE_FONT"]);

    --anchors
    _LibWidgets:setPoint(frame.text, _HHC.Defaults["DEFAULT_FRAME_TITLE_TEXT_POS"], _HHC.Defaults["DEFAULT_FRAME_TITLE_TEXT_LEFT_OFFSET"], _HHC.Defaults["DEFAULT_FRAME_TITLE_TEXT_TOP_OFFSET"])

    --title text
    _LibWidgets:setText(frame.text, frameTitle);

    --alpha
    _LibWidgets:setAlpha(frame.text, _HHC.Defaults["DEFAULT_FRAME_TITLE_COLUMN_ALPHA"]);

    return frame;

end