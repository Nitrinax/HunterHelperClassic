function _HHC.Functions:createMainFrame()

    local hhcMainFrame;

    --frame
    hhcMainFrame = _LibWidgets:createFrame("Frame", 
        _HHC.Defaults["HHC_DEFAULT_FRAME_PARENT"],
        _HHC.Defaults["HHC_DEFAULT_FRAME_WIDTH"],
        _HHC.Defaults["HHC_DEFAULT_FRAME_HEIGHT"],
        true,
        true);

    --anchors
    _LibWidgets:setPoint(hhcMainFrame, 
        _HHC.Defaults["HHC_DEFAULT_FRAME_POS"], 
        _HHC.Defaults["HHC_DEFAULT_FRAME_LEFT_OFFSET"], 
        _HHC.Defaults["HHC_DEFAULT_FRAME_TOP_OFFSET"]);

    --backdrop
    _LibWidgets:setBackdrop(hhcMainFrame,
        _HHC.Textures["TEXTURE_DEFAULT_FRAME_BGFILE"],
        _HHC.Defaults["HHC_DEFAULT_FRAME_TILE"],
        _HHC.Defaults["HHC_DEFAULT_FRAME_TILESIZE"],
        _HHC.Textures["TEXTURE_DEFAULT_FRAME_EDGEFILE"],
        _HHC.Defaults["HHC_DEFAULT_FRAME_EDGESIZE"],
        _HHC.Defaults["HHC_DEFAULT_FRAME_INSET_LEFT"],
        _HHC.Defaults["HHC_DEFAULT_FRAME_INSET_TOP"],
        _HHC.Defaults["HHC_DEFAULT_FRAME_INSET_RIGHT"],
        _HHC.Defaults["HHC_DEFAULT_FRAME_INSET_BOTTOM"]);

    --backdrop color
    _LibWidgets:setBackdropColor(hhcMainFrame, _HHC.Defaults["HHC_DEFAULT_FRAME_BACKDROPCOLOR"]);

    --backdrop border color
    _LibWidgets:setBackdropBorderColor(hhcMainFrame, _HHC.Defaults["HHC_DEFAULT_FRAME_BACKDROPBORDERCOLOR"]);

    --alpha
    _LibWidgets:setAlpha(hhcMainFrame, _HHC.Defaults["HHC_DEFAULT_FRAME_ALPHA"]);

    return hhcMainFrame;

end