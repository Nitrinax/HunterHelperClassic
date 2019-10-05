function _HHC.Functions:createMainFrameTitle(targetFrame)

    local frame;

    --title frame
    frame = _LibWidgets:createFrame("Frame", 
        targetFrame, 
        _HHC.Frames["DEFAULT_TITLE_FRAME_WIDTH"], 
        _HHC.Frames["DEFAULT_TITLE_FRAME_HEIGHT"], 
        true
    );

    --anchors
    _LibWidgets:setPoint(frame, 
        _HHC.Frames["DEFAULT_TITLE_FRAME_POS"],
        _HHC.Frames["DEFAULT_TITLE_FRAME_LEFT_OFFSET"],
        _HHC.Frames["DEFAULT_TITLE_FRAME_TOP_OFFSET"]
    );

    --backdrop   
    _LibWidgets:setBackdrop(frame,
        _HHC.Textures["DEFAULT_FRAME_TITLE_BGFILE_TEXTURE"],
        _HHC.Frames["DEFAULT_TITLE_FRAME_BACKDROP_TILE"],
        _HHC.Frames["DEFAULT_TITLE_FRAME_BACKDROP_TILESIZE"],
        _HHC.Frames["DEFAULT_TITLE_FRAME_BACKDROP_EDGESIZE"],
        _HHC.Textures["DEFAULT_FRAME_TITLE_EDGEFILE_TEXTURE"],
        _HHC.Frames["DEFAULT_TITLE_FRAME_BACKDROP_INSET_LEFT"],
        _HHC.Frames["DEFAULT_TITLE_FRAME_BACKDROP_INSET_TOP"],
        _HHC.Frames["DEFAULT_TITLE_FRAME_BACKDROP_INSET_RIGHT"],
        _HHC.Frames["DEFAULT_TITLE_FRAME_BACKDROP_INSET_BOTTOM"]
    );

    --backdrop colors
    _LibWidgets:setBackdropColor(frame,
        _HHC.Colors["DEFAULT_TITLE_FRAME_BACKDROP_COLOR"]
    );

    _LibWidgets:setBackdropBorderColor(frame,
        _HHC.Colors["DEFAULT_TITLE_FRAME_BACKDROP_BORDER_COLOR"]
    );

    --alpha
    _LibWidgets:setAlpha(frame,
        _HHC.Frames["DEFAULT_TITLE_FRAME_ALPHA"]
    );

    --title fontstring
    frame.text = _LibWidgets:createFontString(frame,
        nil,
        nil,
        _HHC.Fonts["DEFAULT_TITLE_FRAME_FONT"]
    );

    --anchors
    _LibWidgets:setPoint(frame.text,
        _HHC.Frames["DEFAULT_TITLE_FRAME_TEXT_POS"],
        _HHC.Frames["DEFAULT_TITLE_FRAME_TEXT_LEFT_OFFSET"],
        _HHC.Frames["DEFAULT_TITLE_FRAME_TEXT_TOP_OFFSET"]
    );

    --title text
    _LibWidgets:setText(frame.text,
        _HHC.Data.ShortTitle
    );

    --alpha
    _LibWidgets:setAlpha(frame.text,
        _HHC.Frames["DEFAULT_TITLE_FRAME_COLUMN_ALPHA"]
    );

    return frame;

end