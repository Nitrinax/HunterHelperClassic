function _LibWidgets:setStatusBarTexture(statusBar, newTexture, newLayer)

    if newLayer then

        statusBar:SetStatusBarTexture(newTexture, newLayer);

    else

        statusBar:SetStatusBarTexture(newTexture);

    end

end