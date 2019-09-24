function _LibWidgets:setPoint(

  obj,
  newPoint,
  --newRelativeFrame,
  --newRelativePoint,
  newOfsx,
  newOfsy

)

  local myPoint = _LibWidgetsDefaults["SETPOINT_ANCHOR"];
  --local myRelativeFrame = _LibWidgetsDefaults["SETPOINT_RELATIVE_FRAME"];
  --local myRelativePoint = _LibWidgetsDefaults["SETPOINT_RELATIVE_POINT"];
  local myOfsx = _LibWidgetsDefaults["SETPOINT_OFSX"];
  local myOfsy = _LibWidgetsDefaults["SETPOINT_OFSY"];

  if newPoint then myPoint = newPoint; end
  --if newRelativeFrame then myRelativeFrame = newRelativeFrame; end
  --if newRelativePoint then myRelativePoint = newRelativePoint; end
  if newOfsx then myOfsx = newOfsx; end
  if newOfsy then myOfsy = newOfsy; end

  obj:ClearAllPoints();

  --obj:SetPoint(myPoint, myRelativeFrame, myRelativePoint, myOfsx, myOfsy);
  obj:SetPoint(myPoint, myOfsx, myOfsy);

end