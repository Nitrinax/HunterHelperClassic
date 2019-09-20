--[[
Name: LibWidgets-0.1
Revision: $Revision: 1$
Author: Nitrinax
Website: https://github.com/Nitrinax/LibWidgets
Description: provide simplifyied widget functions
Dependencies: LibStub
License: GPL v3
]]

--[[
LIBWIDGETS_SILENCE must set up by addon

LIBWIDGETS_SILENCE = true;
]]

local _, LibWidgets = ...;

local MAJOR, MINOR = "LibWidgets-0.1", 1;

if not LibStub then error(MAJOR .. " requires LibStub."); end

LibWidgets = LibStub:NewLibrary(MAJOR, MINOR);

if not LibWidgets then

  return	-- already loaded and no upgrade necessary

else

  if not LIBWIDGETS_SILENCE or LIBWIDGETS_SILENCE == false then

    print (MAJOR .. "-" .. MINOR .. " loaded");

  end

end

-- # include uiobject
-- widgets\uiobject\setAlpha.lua
function LibWidgets:setAlpha(

  obj,
  alpha

)

  if not alpha or alpha < 0 and alpha > 1 then

      alpha = LIBWIDGETS_DEFAULT_SETALPHA_ALPHA;

  else

      obj:SetAlpha(alpha);

  end

end

-- # widgets region
-- widgets\uiobject\region\setPoint.lua
function LibWidgets:setPoint(

  obj,
  newPoint,
  --newRelativeFrame,
  --newRelativePoint,
  newOfsx,
  newOfsy

)

  local myPoint = LIBWIDGETS_DEFAULT_SETPOINT_ANCHOR;
  --local myRelativeFrame = LIBWIDGETS_DEFAULT_SETPOINT_RELATIVE_FRAME;
  --local myRelativePoint = LIBWIDGETS_DEFAULT_SETPOINT_RELATIVE_POINT;
  local myOfsx = LIBWIDGETS_DEFAULT_SETPOINT_OFSX;
  local myOfsy = LIBWIDGETS_DEFAULT_SETPOINT_OFSY;

  if newPoint then myPoint = newPoint; end
  --if newRelativeFrame then myRelativeFrame = newRelativeFrame; end
  --if newRelativePoint then myRelativePoint = newRelativePoint; end
  if newOfsx then myOfsx = newOfsx; end
  if newOfsy then myOfsy = newOfsy; end

  obj:ClearAllPoints();

  --obj:SetPoint(myPoint, myRelativeFrame, myRelativePoint, myOfsx, myOfsy);
  obj:SetPoint(myPoint, myOfsx, myOfsy);

end

-- # widgets region frame
-- widgets\uiobject\region\frame\createFrame.lua
function LibWidgets:createFrame(

  frameName,
  frameParent,
  frameXSize,
  frameYSize,
  toplevel,
  drag

  )

  --frame
  local frame = CreateFrame("Frame", frameName, frameParent);

  if not frameParent then frameParent = LIBWIDGETS_DEFAULT_CREATEFRAME_FRAMEPARENT; end

  --size
  if frameXSize then frame:SetWidth(frameXSize); else frame:SetWidth(LIBWIDGETS_DEFAULT_CREATEFRAME_FRAMEXSIZE); end
  if frameYSize then frame:SetHeight(frameYSize); else frame:SetHeight(LIBWIDGETS_DEFAULT_CREATEFRAME_FRAMEYSIZE); end

  --level
  if toplevel == true then
      frame:SetToplevel(true);
  end

  --scripts
  if drag == true then
      frame:EnableMouse(true);
      frame:SetMovable(true);
      frame:RegisterForDrag("LeftButton");
      frame:SetScript("OnDragStart", frame.StartMoving);
      frame:SetScript("OnDragStop", frame.StopMovingOrSizing);
  end

  return frame;

end

-- widgets\uiobject\region\frame\createFrame.lua
function LibWidgets:createStatusBar(

  frameName,
  frameParent,
  frameXSize,
  frameYSize,
  toplevel,
  drag

  )

  --frame
  local frame = CreateFrame("StatusBar", frameName, frameParent);

  if not frameParent then frameParent = LIBWIDGETS_DEFAULT_CREATEFRAME_FRAMEPARENT; end

  --size
  if frameXSize then frame:SetWidth(frameXSize); else frame:SetWidth(LIBWIDGETS_DEFAULT_CREATEFRAME_FRAMEXSIZE); end
  if frameYSize then frame:SetHeight(frameYSize); else frame:SetHeight(LIBWIDGETS_DEFAULT_CREATEFRAME_FRAMEYSIZE); end

  --level
  if toplevel == true then
      frame:SetToplevel(true);
  end

  --scripts
  if drag == true then
      frame:EnableMouse(true);
      frame:SetMovable(true);
      frame:RegisterForDrag("LeftButton");
      frame:SetScript("OnDragStart", frame.StartMoving);
      frame:SetScript("OnDragStop", frame.StopMovingOrSizing);
  end

  return frame;

end

-- # widgets region frame backdrop
-- widgets\uiobject\region\frame\backdrop\setBackdrop.lua
function LibWidgets:setBackdrop(

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

    local newBgFile = LIBWIDGETS_DEFAULT_SETBACKDROP_BGFILE;
    local newTile = LIBWIDGETS_DEFAULT_SETBACKDROP_TILE;
    local newTileSize = LIBWIDGETS_DEFAULT_SETBACKDROP_TILESIZE;
    local newEdgeFile = LIBWIDGETS_DEFAULT_SETBACKDROP_EDGEFILE;
    local newEdgeSize = LIBWIDGETS_DEFAULT_SETBACKDROP_EDGESIZE;
    local newInsetLeft = LIBWIDGETS_DEFAULT_SETBACKDROP_INSET_LEFT;
    local newInsetTop = LIBWIDGETS_DEFAULT_SETBACKDROP_INSET_TOP;
    local newInsetRight = LIBWIDGETS_DEFAULT_SETBACKDROP_INSET_RIGHT;
    local newInsetBottom = LIBWIDGETS_DEFAULT_SETBACKDROP_INSET_BOTTOM;

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

-- widgets\uiobject\region\frame\backdrop\setBackdropColor.lua
function LibWidgets:setBackdropColor(

  frame,
  color

)  

  local myColor;

  if color then

      myColor = color;

  else

      myColor = LIBWIDGETS_DEFAULT_SETBACKDROP_BACKDROPCOLOR;

  end

  frame:SetBackdropColor(myColor);

end

-- widgets\uiobject\region\frame\backdrop\setBackdropBorderColor.lua
function LibWidgets:setBackdropBorderColor(

  frame,
  color

)

  local myColor;

  if color then

      myColor = color;

  else

      myColor = LIBWIDGETS_DEFAULT_SETBACKDROP_BACKDROPBORDERCOLOR;

  end

  frame:SetBackdropBorderColor(myColor);

end

-- # widgets region frame button
-- widgets\uiobject\region\frame\button\createButton.lua
function LibWidgets:createButton(

  buttonName,
  buttonParent,
  buttonTemplate,
  buttonNormalTexture,
  buttonPushedTexture,
  buttonHighlightTexture,
  buttonWidth,
  buttonHeight,
  buttonTooltip

  )

  if (buttonTemplate) then

      button = CreateFrame("Button", buttonName, buttonParent, buttonTemplate);

  else

      button = CreateFrame("Button", buttonName, buttonParent, LIBWIDGETS_DEFAULT_CREATEBUTTON_TEMPLATE);

  end

  if (buttonNormalTexture) then button:SetNormalTexture(buttonNormalTexture); end

  if (buttonPushedTexture) then button:SetPushedTexture(buttonPushedTexture); end

  if (buttonHighlightTexture) then button:SetHighlightTexture(buttonHighlightTexture); end

  if buttonWidth then button:SetWidth(buttonWidth); end

  if buttonHeight then button:SetHeight(buttonHeight); end   

  if (buttonTooltip) then

      button:SetScript("OnEnter",

          function(self)

              GameTooltip:SetOwner(self, LIBWIDGETS_DEFAULT_CREATEBUTTON_TOOLTIP_ANCHOR);

              GameTooltip:ClearLines();

              GameTooltip:SetText(buttonTooltip, nil, nil, nil, nil, true);

              GameTooltip:Show();

          end)

      button:SetScript("OnLeave",

          function(self)

              GameTooltip:Hide();

          end)

  end

  return button;

end

-- widgets\uiobject\region\frame\button\createCheckButton.lua
function LibWidgets:createCheckButton()
end

-- # widgets region frame editbox
-- widgets\uiobject\region\frame\editbox\createEditBox.lua
function LibWidgets:createEditBox()
end

-- # widgets region frame slider
-- widgets\uiobject\region\frame\slider\createSlider.lua
function LibWidgets:createSlider()
end

-- # widgets region frame statusbar
-- widgets\uiobject\region\frame\statusbar\createStatusBar.lua
function LibWidgets:createStatusBar()
end

-- # widgets region layeredregion fontstring
-- widgets\uiobject\region\layeredregion\fontstring\createFontString.lua
function LibWidgets:createFontString(

  frame,
  fontstringName,
  fontstringLayer,
  fontstringInherits

)

  local fsName = "";
  local fsLayer = LIBWIDGETS_DEFAULT_CREATEFONTSTRING_LAYER;
  local fsInherits = LIBWIDGETS_DEFAULT_CREATEFONTSTRING_FONT;

  if fontstringName then fsName = fontstringName; end
  if fontstringLayer then fsLayer = fontstringLayer; end
  if fontstringInherits then fsInherits = fontstringInherits; end

  frame.fontString = frame:CreateFontString(fsName, fsLayer, fsInherits);   

  return frame.fontString;

end

-- widgets\uiobject\region\layeredregion\fontstring\setText.lua
function LibWidgets:setText(

  obj,
  text

)

  if text then
      
    obj:SetText(text);

  else

    obj:SetText(LIBWIDGETS_DEFAULT_SETTEXT_TEXT);

  end

end