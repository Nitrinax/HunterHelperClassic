function _LibWidgets:setAllPoints(

    obj,
    relativeRegion
  
  )
  
    obj:ClearAllPoints();
  
    if relativeRegion then
  
      obj:SetAllPoints(relativeRegion);
  
    else
  
      obj:SetAllPoints();
    
    end
  
  end