function _LibWidgets:createButton(

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

        button = CreateFrame("Button", buttonName, buttonParent, _LibWidgetsDefaults["CREATEBUTTON_TEMPLATE"]);

    end

    if (buttonNormalTexture) then button:SetNormalTexture(buttonNormalTexture); end

    if (buttonPushedTexture) then button:SetPushedTexture(buttonPushedTexture); end

    if (buttonHighlightTexture) then button:SetHighlightTexture(buttonHighlightTexture); end

    if buttonWidth then button:SetWidth(buttonWidth); end

    if buttonHeight then button:SetHeight(buttonHeight); end   

    if (buttonTooltip) then

        button:SetScript("OnEnter",

            function(self)

                GameTooltip:SetOwner(self, _LibWidgetsDefaults["CREATEBUTTON_TOOLTIP_ANCHOR"]);

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