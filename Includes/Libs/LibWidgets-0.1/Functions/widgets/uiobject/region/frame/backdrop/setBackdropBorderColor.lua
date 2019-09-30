function _LibWidgets:setBackdropBorderColor(

  frame,
  color

)

  local myColor;

  if color then

    myColor = color;

  else

    myColor = _LibWidgetsDefaults["SETBACKDROP_BACKDROPBORDERCOLOR"];

  end

  frame:SetBackdropBorderColor(myColor);

end