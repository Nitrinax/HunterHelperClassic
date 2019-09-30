function _LibWidgets:setAlpha(

  obj,
  alpha

)

  if not alpha or alpha < 0 and alpha > 1 then

    alpha = _LibWidgetsDefaults["SETALPHA_ALPHA"];

  else

    obj:SetAlpha(alpha);

  end

end