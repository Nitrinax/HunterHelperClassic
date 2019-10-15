function _LibWidgets:setStatusBarColor(statusBar, newR, newB, newG, newAlpha)

    if newAlpha then

        statusBar:SetStatusBarColor(newR, newB, newG, newAlpha);

    else

        statusBar:SetStatusBarColor(newR, newB, newG);


    end

end