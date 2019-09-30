function _LibWidgets:createFontString(

  frame,
  fontstringName,
  fontstringLayer,
  fontstringInherits

)

  local fsName = "";
  local fsLayer = _LibWidgetsDefaults["CREATEFONTSTRING_LAYER"];
  local fsInherits = _LibWidgetsDefaults["CREATEFONTSTRING_FONT"];

  if fontstringName then fsName = fontstringName; end
  if fontstringLayer then fsLayer = fontstringLayer; end
  if fontstringInherits then fsInherits = fontstringInherits; end

  frame.fontString = frame:CreateFontString(fsName, fsLayer, fsInherits);   

  return frame.fontString;

end