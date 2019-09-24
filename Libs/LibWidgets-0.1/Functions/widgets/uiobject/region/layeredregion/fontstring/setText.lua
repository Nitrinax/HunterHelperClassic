function _LibWidgets:setText(

  obj,
  text

)

  if text then

    obj:SetText(text);

  else

    obj:SetText(_LibWidgetsDefaults["SETTEXT_TEXT"]);

  end

end