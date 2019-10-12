--### check for hunter class
if _HHC.Functions:checkForHunterClass() == false then

    --show error messages if class != hunter
    _LibCF:colored_print("red",
        _HHC.Data.Title
        .. ": "
        .. _LibLocale:GetCatalogStr(_HHC.Locale.Core, 
        "ADDON_DISABLED_ONLY_FOR_HUNTER_CLASS",
        "Addon disabled because this addon is only for hunter")
    );

    --self disabling
    DisableAddOn(_HHC.Data.AddonName);

else

    if not _HHC.Options["SILENCE_ADDON"] or
        _HHC.Options["SILENCE_ADDON"] == nil or
        _HHC.Options["SILENCE_ADDON"] == false then

        --show loading message
        print(_LibCF:colored_print("yellow",
            _HHC.Data.LongVersionString, true)
            .. " "
            .. _LibLocale:GetCatalogStr(_HHC.Locale.Core,
            "ADDON_LOADED",
            "loaded")
        );

    end

    --create main frame
    _HHC.Frames.Main = _HHC.Functions:createMainFrame();

    --setup main frame events
    _HHC.Functions:registerEvents(_HHC.Frames.Main);
    _HHC.Functions:handleEvents(_HHC.Frames.Main);

    --create main frame title
    _HHC.Frames.Main.Title = _HHC.Functions:createMainFrameTitle(_HHC.Frames.Main);

    --create main frame buttons
    _HHC.Frames.Main.Buttons = _HHC.Functions:createMainFrameButtons(_HHC.Frames.Main.Title, _HHC.Frames.Main);    

    _HHC.Modules.Height = _HHC.Frames["DEFAULT_TITLE_FRAME_HEIGHT"] - _HHC.Frames["DEFAULT_MODULE_FRAME_SPACE"] - 2;
    --ntrnx_debug(_LibCF:colored_print("yellow", _HHC.Modules.Height, true));

    --load modules
    for key, value in _LibCF:sorted_pairs(_HHC.Modules.List) do

        --ntrnx_debug(_LibCF:colored_print("yellow", "_HHC.Modules.List[\"" .. key .. "\"] = " .. tostring(value), true));

        if value == true then

            --add space between modules
            _HHC.Modules.Height = _HHC.Modules.Height + _HHC.Frames["DEFAULT_MODULE_FRAME_SPACE"];

            --load addon module
            local loaded, reason = LoadAddOn(_HHC.Data.AddonName .. "_" .. key);
            --ntrnx_debug(_LibCF:colored_print("yellow", "try loading of " .. _HHC.Data.AddonName .. "_" .. key, true));

            --check for error
            if not loaded then

                _LibCF:displayLoadAddonReason(reason, "Module " .. _HHC.Data.AddonName .. "_" .. key);

            end

        end

    end

    _HHC.Frames.Main:SetHeight(_HHC.Modules.Height + _HHC.Frames["DEFAULT_ELEMENT_FRAME_SPACE"]);

end