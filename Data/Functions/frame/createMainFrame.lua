function _HHCFunctions:createMainFrame()

    local hhcMainFrame;

    --frame
    hhcMainFrame = _LibWidgets:createFrame("Frame", 
        _HHCDefaults["HHC_DEFAULT_FRAME_PARENT"],
        _HHCDefaults["HHC_DEFAULT_FRAME_WIDTH"],
        _HHCDefaults["HHC_DEFAULT_FRAME_HEIGHT"],
        true,
        true);

    --anchors
    _LibWidgets:setPoint(hhcMainFrame, 
        _HHCDefaults["HHC_DEFAULT_FRAME_POS"], 
        _HHCDefaults["HHC_DEFAULT_FRAME_LEFT_OFFSET"], 
        _HHCDefaults["HHC_DEFAULT_FRAME_TOP_OFFSET"]);

    --backdrop
    _LibWidgets:setBackdrop(hhcMainFrame,
        _HHCDefaults["HHC_DEFAULT_FRAME_BGFILE"],
        _HHCDefaults["HHC_DEFAULT_FRAME_TILE"],
        _HHCDefaults["HHC_DEFAULT_FRAME_TILESIZE"],
        _HHCDefaults["HHC_DEFAULT_FRAME_EDGEFILE"],
        _HHCDefaults["HHC_DEFAULT_FRAME_EDGESIZE"],
        _HHCDefaults["HHC_DEFAULT_FRAME_INSET_LEFT"],
        _HHCDefaults["HHC_DEFAULT_FRAME_INSET_TOP"],
        _HHCDefaults["HHC_DEFAULT_FRAME_INSET_RIGHT"],
        _HHCDefaults["HHC_DEFAULT_FRAME_INSET_BOTTOM"]);

    --backdrop color
    _LibWidgets:setBackdropColor(hhcMainFrame, _HHCDefaults["HHC_DEFAULT_FRAME_BACKDROPCOLOR"]);

    --backdrop border color
    _LibWidgets:setBackdropBorderColor(hhcMainFrame, _HHCDefaults["HHC_DEFAULT_FRAME_BACKDROPBORDERCOLOR"]);

    --alpha
    _LibWidgets:setAlpha(hhcMainFrame, _HHCDefaults["HHC_DEFAULT_FRAME_ALPHA"]);

    return hhcMainFrame;

end