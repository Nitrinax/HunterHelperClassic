function _HHC.Functions:createMainFrameButtons(inheritFrame, targetFrame)

    local buttons = {};

    _HHC.Data.buttonOffset = -4;

    -- close button
    if _HHC.Options.Buttons.Main.Close == true then

        buttons.closeButton = _LibWidgets:createButton(
            "closeButton",
            inheritFrame,
            "UIPanelCloseButton",
            nil, -- _HHC.Textures["CLOSE_BUTTON_NORMAL_TEXTURE"]
            nil, -- _HHC.Textures["CLOSE_BUTTON_PUSHED_TEXTURE"]
            nil, -- _HHC.Textures["CLOSE_BUTTON_HIGHLIGHT_TEXTURE"]
            34,
            34,
            _HHC.Locale.Core["CLOSE_BUTTON_TOOLTIP"]
        );

        _LibWidgets:setPoint(buttons.closeButton, "RIGHT", _HHC.Data.buttonOffset + 7, 0);

        buttons.closeButton:SetScript("OnClick", function()

            targetFrame:Hide();

        end)

        _LibWidgets:setFrameLevel(buttons.closeButton, _LibWidgets:getFrameLevel(buttons.closeButton) + 1)

        --alpha
        _LibWidgets:setAlpha(buttons.closeButton, 0.75);

        _HHC.Data.buttonOffset = _HHC.Data.buttonOffset - 18;

    end

    -- options button
    if _HHC.Options.Buttons.Main.Options == true then

        buttons.optionsButton = _LibWidgets:createButton(
            "optionsButton",
            inheritFrame,
            nil,
            _HHC.Textures["OPTIONS_BUTTON_NORMAL_TEXTURE"],
            _HHC.Textures["OPTIONS_BUTTON_PUSHED_TEXTURE"],
            _HHC.Textures["OPTIONS_BUTTON_HIGHLIGHT_TEXTURE"],
            20,
            18,
            _HHC.Locale.Core["OPTIONS_BUTTON_TOOLTIP"]
        );

        _LibWidgets:setPoint(buttons.optionsButton, "RIGHT", _HHC.Data.buttonOffset, 0);

        --buttons.optionsButton:SetScript("OnClick", function()

            --    hhwcOptionsFrame:Show();

        --end)

        _LibWidgets:setFrameLevel(buttons.optionsButton, _LibWidgets:getFrameLevel(buttons.optionsButton) + 1)

        --alpha
        _LibWidgets:setAlpha(buttons.optionsButton, 0.75);

        _HHC.Data.buttonOffset = _HHC.Data.buttonOffset - 20;

    end

    -- elements button
    if _HHC.Options.Buttons.Main.Elements == true then

        buttons.elementsButton = _LibWidgets:createButton(
            "elementsButton",
            inheritFrame,
            "GameMenuButtonTemplate", --nil,
            nil, --_HHC.Textures["ELEMENTS_BUTTON_NORMAL_TEXTURE"],
            nil, --_HHC.Textures["ELEMENTS_BUTTON_PUSHED_TEXTURE"],
            nil, --_HHC.Textures["ELEMENTS_BUTTON_HIGHLIGHT_TEXTURE"],
            22,
            18,
            _HHC.Locale.Core["ELEMENTS_BUTTON_TOOLTIP"]
        );

        _LibWidgets:setPoint(buttons.elementsButton, "RIGHT", _HHC.Data.buttonOffset, 0);

        -- button text
        buttons.elementsButton.text = _LibWidgets:createFontString(buttons.elementsButton, nil, nil, _HHC.Fonts["DEFAULT_GAME_FONT"]);
        _LibWidgets:setAllPoints(buttons.elementsButton.text);
        _LibWidgets:setText(buttons.elementsButton.text, "E");
        _LibWidgets:setPoint(buttons.elementsButton.text, "CENTER", 1, 0 );

        --buttons.elementsButton:SetScript("OnClick", function()

            --    hhwcOptionsFrame:Show();

        --end)

        _LibWidgets:setFrameLevel(buttons.elementsButton, _LibWidgets:getFrameLevel(buttons.elementsButton) + 1)

        --alpha
        _LibWidgets:setAlpha(buttons.elementsButton, 0.75);

        _HHC.Data.buttonOffset = _HHC.Data.buttonOffset - 22;

    end

    -- modules button
    if _HHC.Options.Buttons.Main.Modules == true then

        buttons.modulesButton = _LibWidgets:createButton(
            "modulesButton",
            inheritFrame,
            "GameMenuButtonTemplate", --nil,
            nil, --_HHC.Textures["MODULES_BUTTON_NORMAL_TEXTURE"],
            nil, --_HHC.Textures["MODULES_BUTTON_PUSHED_TEXTURE"],
            nil, --_HHC.Textures["MODULES_BUTTON_HIGHLIGHT_TEXTURE"],
            22,
            18,
            _HHC.Locale.Core["MODULES_BUTTON_TOOLTIP"]
        );

        --_LibWidgets:setPoint(buttons.modulesButton, "RIGHT", -63, 0);
        _LibWidgets:setPoint(buttons.modulesButton, "RIGHT", _HHC.Data.buttonOffset, 0);

        -- button text
        buttons.modulesButton.text = _LibWidgets:createFontString(buttons.modulesButton, nil, nil, _HHC.Fonts["DEFAULT_GAME_FONT"]);
        _LibWidgets:setAllPoints(buttons.modulesButton.text);
        _LibWidgets:setText(buttons.modulesButton.text, "M");
        _LibWidgets:setPoint(buttons.modulesButton.text, "CENTER", 1, 0 );

        --buttons.modulesButton:SetScript("OnClick", function()

            --    hhwcOptionsFrame:Show();

        --end)

        _LibWidgets:setFrameLevel(buttons.modulesButton, _LibWidgets:getFrameLevel(buttons.modulesButton) + 1)

        --alpha
        _LibWidgets:setAlpha(buttons.modulesButton, 0.75);

    end

    return buttons;

end