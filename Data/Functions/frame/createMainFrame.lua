function _HHC.Functions:createMainFrame()

    local frame;

    --frame
    frame = _LibWidgets:createFrame("Frame", 
        _HHC.Frames["DEFAULT_FRAME_PARENT"],
        _HHC.Frames["DEFAULT_FRAME_WIDTH"],
        _HHC.Frames["DEFAULT_FRAME_HEIGHT"],
        true,
        true
    );

    --anchors
    _LibWidgets:setPoint(frame, 
        _HHC.Frames["DEFAULT_FRAME_POS"], 
        _HHC.Frames["DEFAULT_FRAME_LEFT_OFFSET"], 
        _HHC.Frames["DEFAULT_FRAME_TOP_OFFSET"]
    );

    --backdrop
    _LibWidgets:setBackdrop(frame,
        _HHC.Textures["DEFAULT_FRAME_BGFILE_TEXTURE"],
        _HHC.Frames["DEFAULT_FRAME_BACKDROP_TILE"],
        _HHC.Frames["DEFAULT_FRAME_BACKDROP_TILESIZE"],
        _HHC.Textures["DEFAULT_FRAME_BACKDROP_EDGEFILE_TEXTURE"],
        _HHC.Frames["DEFAULT_FRAME_BACKDROP_EDGESIZE"],
        _HHC.Frames["DEFAULT_FRAME_BACKDROP_INSET_LEFT"],
        _HHC.Frames["DEFAULT_FRAME_BACKDROP_INSET_TOP"],
        _HHC.Frames["DEFAULT_FRAME_BACKDROP_INSET_RIGHT"],
        _HHC.Frames["DEFAULT_FRAME_BACKDROP_INSET_BOTTOM"]
    );

    --backdrop color
    _LibWidgets:setBackdropColor(frame,
        _HHC.Colors["DEFAULT_FRAME_BACKDROP_COLOR"]
    );

    --backdrop border color
    _LibWidgets:setBackdropBorderColor(frame,
        _HHC.Colors["DEFAULT_FRAME_BACKDROP_BORDER_COLOR"]
    );

    --alpha
    _LibWidgets:setAlpha(frame,
        _HHC.Frames["DEFAULT_FRAME_ALPHA"]
    );

    return frame;

end