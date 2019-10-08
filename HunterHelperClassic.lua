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
        print(_LibCF:colored_print( "yellow",
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

                -- if reason == "BANNED" then
                --     -- Addon is banned by the client.
                --     ntrnx_debug(_LibCF:colored_print("yellow", "Module " .. _HHC.Data.AddonName .. "_" .. key .. " Banned", true));
                -- elseif reason == "CORRUPT" then
                --     -- The addon's file(s) are corrupt.
                --     ntrnx_debug(_LibCF:colored_print("yellow", "Module " .. _HHC.Data.AddonName .. "_" .. key .. " Corrupt", true));
                -- elseif reason == "DEP_BANNED" then
                --     -- Addon's dependency is banned by the client.
                --     ntrnx_debug(_LibCF:colored_print("yellow", "Module " .. _HHC.Data.AddonName .. "_" .. key .. " Dependency banned", true));
                -- elseif reason == "DEP_CORRUPT" then
                --     -- The addon's dependency cannot load because its file(s) are corrupt.
                --     ntrnx_debug(_LibCF:colored_print("yellow", "Module " .. _HHC.Data.AddonName .. "_" .. key .. " Dependency corrupt", true));
                -- elseif reason == "DEP_DISABLED" then
                --     -- The addon cannot load without its dependency enabled.
                --     ntrnx_debug(_LibCF:colored_print("yellow", "Module " .. _HHC.Data.AddonName .. "_" .. key .. " Dependency disabled", true));
                -- elseif reason == "DEP_INCOMPATIBLE" then
                --     -- The addon cannot load if its dependency cannot load.
                --     ntrnx_debug(_LibCF:colored_print("yellow", "Module " .. _HHC.Data.AddonName .. "_" .. key .. " Dependency incompatible", true));
                -- elseif reason == "DEP_MISSING" then
                --     -- The addon's dependency is physically not there.
                --     ntrnx_debug(_LibCF:colored_print("yellow", "Module " .. _HHC.Data.AddonName .. "_" .. key .. " Dependency missing", true));
                -- elseif reason == "DEP_NOT_DEMAND_LOADED" then
                --     -- The addon's dependency must be loadable on demand too.
                --     ntrnx_debug(_LibCF:colored_print("yellow", "Module " .. _HHC.Data.AddonName .. "_" .. key .. " Dependency not loadable on demand", true));
                -- elseif reason == "DISABLED" then
                --     -- Addon is disabled on the character select screen.
                --     ntrnx_debug(_LibCF:colored_print("yellow", "Module " .. _HHC.Data.AddonName .. "_" .. key .. " Disabled", true));
                -- elseif reason == "INCOMPATIBLE" then
                --     -- The addon is too old.
                --     ntrnx_debug(_LibCF:colored_print("yellow", "Module " .. _HHC.Data.AddonName .. "_" .. key .. " Incompatible", true));
                -- elseif reason == "MISSING" then
                --     -- The addon is physically not there.
                --     ntrnx_debug(_LibCF:colored_print("yellow", "Module " .. _HHC.Data.AddonName .. "_" .. key .. " Missing", true));
                -- elseif reason == "NOT_DEMAND_LOADED" then
                --     -- As of 1.8 only addons marked as LoadOnDemand can be loaded via this function.
                --     ntrnx_debug(_LibCF:colored_print("yellow", "Module " .. _HHC.Data.AddonName .. "_" .. key .. " Not loadable on demand", true));
                -- elseif reason == "INTERACE_VERSION" then
                --     -- Unknown, presumably the interface version in the .toc file is incorrect
                --     ntrnx_debug(_LibCF:colored_print("yellow", "Module " .. _HHC.Data.AddonName .. "_" .. key .. " incorrect interface version", true));
                -- end

                _LibCF:displayLoadAddonReason(reason, "Module " .. _HHC.Data.AddonName .. "_" .. key);

            else

                --do something special
                --ntrnx_debug(_LibCF:colored_print("yellow", tostring(_HHC.Frames.Main:GetName()), true));

                module_loader = "_HHC.Modules." .. key .. ".Frames.Core = _HHC.Modules." .. key .. ".Functions:createModuleFrame(_HHC.Frames.Main);";
                --ntrnx_debug(_LibCF:colored_print("yellow", tostring(module_loader), true));

                RunScript(module_loader);

                module_elements = "_HHC.Modules." .. key .. ".Frames.Core = _HHC.Modules." .. key .. ".Functions:addElements(_HHC.Frames.Main);";
                --ntrnx_debug(_LibCF:colored_print("yellow", tostring(module_elements), true));

                RunScript(module_elements);

                module_add = "_HHC.Modules." .. key .. ".Functions:addModuleHeight();";
                --ntrnx_debug(_LibCF:colored_print("yellow", tostring(module_add), true));

                RunScript(module_add);

                --ntrnx_debug(_LibCF:colored_print("yellow", _HHC.Modules.Height, true));

            end

        end

    end

    --### BEGIN TESTS ###

    --local testFrame;

    --frame
    -- testFrame = _LibWidgets:createFrame("Frame", 
    --     _HHC.Frames["DEFAULT_FRAME_PARENT"],
    --     _HHC.Frames["DEFAULT_FRAME_WIDTH"],
    --     _HHC.Frames["DEFAULT_FRAME_HEIGHT"],
    --     true,
    --     true
    -- );

    --### END TESTS ###

end