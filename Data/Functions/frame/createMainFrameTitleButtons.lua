function _HHC.Functions:createMainFrameTitleButtons(inheritFrame, modulesButtonState, optionsButtonState, closeButtonState, closeButtonTargetFrame)

    --_HHC.Defaults["HHC_DEFAULT_FRAME_TITLE_WIDTH"]

    local buttons = {};

    -- options button
    if modulesButtonState == true then

        buttons.modulesButton = _LibWidgets:createButton(
            "modulesButton",
            inheritFrame,
            nil,
            --"Interface\\Icons\\Trade_Engineering.blp",
            _HHC.Textures["TEXTURE_MODULES_BUTTON_NORMAL"],
            nil,
            --"Interface\\Buttons\\UI-Panel-MinimizeButton-Highlight.blp",
            _HHC.Textures["TEXTURE_MODULES_BUTTON_HIGHLIGHT"],
            16,
            16
            --hhwc["TOOLTIP_BUTTON_OPTIONS"]
        );

        --buttons.modulesButton:SetPoint("RIGHT", -44, 0);
        _LibWidgets:setPoint(buttons.modulesButton, "RIGHT", -44, 0);

        --buttons.modulesButton:SetScript("OnClick", function()

            --    hhwcOptionsFrame:Show();

        --end)

        buttons.modulesButton:SetFrameLevel(buttons.modulesButton:GetFrameLevel() + 1)

        --alpha
        _LibWidgets:setAlpha(buttons.modulesButton, 0.75);

    end

    -- options button
    if optionsButtonState == true then

        buttons.optionsButton = _LibWidgets:createButton(
            "optionsButton",
            inheritFrame,
            nil,
            --"Interface\\Icons\\Trade_Engineering.blp",
            _HHC.Textures["TEXTURE_OPTIONS_BUTTON_NORMAL"],
            nil,
            --"Interface\\Buttons\\UI-Panel-MinimizeButton-Highlight.blp",
            _HHC.Textures["TEXTURE_OPTIONS_BUTTON_HIGHLIGHT"],
            16,
            16
            --hhwc["TOOLTIP_BUTTON_OPTIONS"]
        );

        --buttons.optionsButton:SetPoint("RIGHT", -28, 0);
        _LibWidgets:setPoint(buttons.optionsButton, "RIGHT", -26, 0);

        --buttons.optionsButton:SetScript("OnClick", function()

            --    hhwcOptionsFrame:Show();

        --end)

        buttons.optionsButton:SetFrameLevel(buttons.optionsButton:GetFrameLevel() + 1)

        --alpha
        _LibWidgets:setAlpha(buttons.optionsButton, 0.75);

    end

    -- close button
    if closeButtonState == true then

        buttons.closeButton = _LibWidgets:createButton(
            "closeButton",
            inheritFrame,
            "UIPanelCloseButton",
            nil,
            nil,
            nil,
            34,
            34
            --hhwc["TOOLTIP_BUTTON_CLOSE"]
        );

        --buttons.closeButton:SetPoint("RIGHT", 2, 0);
        _LibWidgets:setPoint(buttons.closeButton, "RIGHT", 2, 0);

        buttons.closeButton:SetScript("OnClick", function()

            closeButtonTargetFrame:Hide();

        end)

        buttons.closeButton:SetFrameLevel(buttons.closeButton:GetFrameLevel() + 1)

        --alpha
        _LibWidgets:setAlpha(buttons.closeButton, 0.75);

    end

    return buttons;

end