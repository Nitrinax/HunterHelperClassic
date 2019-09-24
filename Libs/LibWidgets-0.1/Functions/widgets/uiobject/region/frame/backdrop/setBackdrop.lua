function _LibWidgets:setBackdrop(

    obj,
    myBgFile,
    myTile,
    myTileSize,
    myEdgeFile,
    myEdgeSize,
    myInsetLeft,
    myInsetTop,
    myInsetRight,
    myInsetBottom

)

    local newBgFile = _LibWidgetsDefaults["SETBACKDROP_BGFILE"];
    local newTile = _LibWidgetsDefaults["SETBACKDROP_TILE"];
    local newTileSize = _LibWidgetsDefaults["SETBACKDROP_TILESIZE"];
    local newEdgeFile = _LibWidgetsDefaults["SETBACKDROP_EDGEFILE"];
    local newEdgeSize = _LibWidgetsDefaults["SETBACKDROP_EDGESIZE"];
    local newInsetLeft = _LibWidgetsDefaults["SETBACKDROP_INSET_LEFT"];
    local newInsetTop = _LibWidgetsDefaults["SETBACKDROP_INSET_TOP"];
    local newInsetRight = _LibWidgetsDefaults["SETBACKDROP_INSET_RIGHT"];
    local newInsetBottom = _LibWidgetsDefaults["SETBACKDROP_INSET_BOTTOM"];

    if myBgFile then newBgFile = myBgFile; end
    if myTile then newTile = myTile; end
    if myTileSize then newTileSize = myTileSize; end
    if myEdgeSize then newEdgeSize = myEdgeSize; end
    if myEdgeFile then newEdgeFile = myEdgeFile; end
    if myInsetLeft then newInsetLeft = myInsetLeft; end
    if myInsetTop then newInsetTop = myInsetTop; end
    if myInsetRight then newInsetRight = myInsetRight; end
    if myInsetBottom then newInsetBottom = myInsetBottom; end

    local backdrop = {

        bgFile = newBgFile,
        tile = newTile,
        tileSize = newTileSize,
        edgeFile = newEdgeFile,
        edgeSize = newEdgeSize,

        insets = {
                    left = newInsetLeft,
                    top = newInsetTop,
                    right = newInsetRight,
                    bottom = newInsetBottom
        }

    };

    obj:SetBackdrop(backdrop);

end