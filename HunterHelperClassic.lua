-- ### check for hunter class
if _HHC.Functions:checkForHunterClass() == false then

    -- show error messages if class != hunter
    colored_print("red",
        _HHC.Data.Title
        .. ": "
        .. _LibLocale:GetCatalogStr(_HHC.Locale.Core, 
        "ADDON_DISABLED_ONLY_FOR_HUNTER_CLASS",
        "Addon disabled because this addon is only for hunter")
    );

    -- self disabling
    DisableAddOn(_HHC.Data.AddonName);

else

    if not _HHC.Options["SILENCE_ADDON"] or
        _HHC.Options["SILENCE_ADDON"] == nil or
        _HHC.Options["SILENCE_ADDON"] == false then

        -- show loading message
        print(colored_print( "yellow",
            _HHC.Data.LongVersionString, true)
            .. " "
            .. _LibLocale:GetCatalogStr(_HHC.Locale.Core,
            "ADDON_LOADED",
            "loaded")
        );

    end

    -- create main frame
    _HHC.Frames.Main = _HHC.Functions:createMainFrame();

    -- setup main frame events
    _HHC.Functions:registerEvents(_HHC.Frames.Main);
    
    -- create main frame title
    _HHC.Frames.Main.Title = _HHC.Functions:createMainFrameTitle(_HHC.Frames.Main);

    -- create main frame buttons
    _HHC.Frames.Main.Buttons = _HHC.Functions:createMainFrameButtons(_HHC.Frames.Main.Title, _HHC.Frames.Main);

    -- load modules
    for key, value in sorted_pairs(_HHC.Modules.List) do

        --ntrnx_debug(colored_print("yellow", "_HHC.Modules.List[\"" .. key .. "\"] = " .. tostring(value), true));

        if value == true then

            module_loader = "_HHC.Modules." .. key .. ".Frames.Main = _HHC.Modules." .. key .. ".Functions:displayModule(_HHC.Frames.Main);";

            --RunScript(module_loader);

        end

    end

    -- ### BEGIN TESTS ###

    local testFrame;

    --frame
    testFrame = _LibWidgets:createFrame("Frame", 
        _HHC.Frames["DEFAULT_FRAME_PARENT"],
        _HHC.Frames["DEFAULT_FRAME_WIDTH"],
        _HHC.Frames["DEFAULT_FRAME_HEIGHT"],
        true,
        true
    );


    -- ### END TESTS ###

end