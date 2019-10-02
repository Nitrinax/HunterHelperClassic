-- ### check for hunter class
if _HHC.Functions:checkForHunterClass() == false then

    -- show error messages if class != hunter
    _HHC.Functions:colored_print("red", _HHC.Data.Title .. ": " .. _LibLocale:GetLocaleString(_HHC.Locale.Core, "ADDON_DISABLED_NO_HUNTER"))

else

    -- ### main frame

    -- create main frame
    _HHC.Frames.Main = _HHC.Functions:createMainFrame();

    -- setup main frame events
    _HHC.Functions:registerEvents(_HHC.Frames.Main);

    -- create main frame title
    _HHC.Frames.Main.Title = _HHC.Functions:createMainFrameTitle(_HHC.Frames.Main, _HHC.Data.ShortTitle);

    -- create main frame title buttons
    _HHC.Frames.Main.Title.Buttons = _HHC.Functions:createMainFrameTitleButtons(_HHC.Frames.Main.Title, true, false, false, false, _HHC.Frames.Main );

    -- ### loading modules
    for key, value in sorted_pairs(_HHC.Modules.List) do

        --ntrnx_debug(colored_print("yellow", "_HHC.Modules.List[\"" .. key .. "\"] = " .. tostring(value), true));

        if value == true then

            module_loader = "_HHC.Modules.".. key .. ".Frames.Main = _HHC.Modules." .. key .. ".Functions:displayModule(_HHC.Frames.Main);";

            RunScript(module_loader);

        end

    end

    -- addon loading message
    if _HHC.Options["SILENCE_ADDON"] == false then

        colored_print("blue", _HHC.Data.Title  .. " " .. _HHC.Data.Version .. " loaded");

    end

end