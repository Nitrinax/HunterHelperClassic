function _LibWidgets:setBackdropColor(

  frame,
  color

)  

  local myColor;

  if color then

    myColor = color;

  else

    myColor = _LibWidgetsDefaults["SETBACKDROP_BACKDROPCOLOR"];

  end

  frame:SetBackdropColor(myColor);

end