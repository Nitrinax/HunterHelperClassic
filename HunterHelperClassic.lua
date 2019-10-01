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

    -- module petinfo
    if _HHC.Modules.State["PetInfo"] == true then
        
        _HHC.Modules.PetInfo.Frames.Main = _HHC.Modules.PetInfo.Functions:displayModule(_HHC.Frames.Main);

    end

    -- addon loading message
    if _HHC.Options["SILENCE_ADDON"] == false then

        _HHC.Functions:colored_print("blue", _HHC.Data.Title  .. " " .. _HHC.Data.Version .. " loaded");

    end

end