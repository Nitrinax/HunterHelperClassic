-- create main frame
_HHC.Frames.Main = _HHC.Functions:createMainFrame();

-- setup main frame events
_HHC.Functions:registerEvents(_HHC.Frames.Main);

-- create main frame title
_HHC.Frames.Main.Title = _HHC.Functions:createMainFrameTitle(_HHC.Frames.Main, _HHC.Data.ShortTitle);

-- create main frame title buttons
_HHC.Frames.Main.Title.Buttons = _HHC.Functions:createMainFrameTitleButtons(_HHC.Frames.Main.Title, true, true, true, _HHC.Frames.Main );

-- load modules

-- module petinfo
if _HHC.Modules.State["PetInfo"] == true then

    _HHC.Modules.PetInfo.Functions:Display(_HHC.Frames.Main);

end

-- addon loading message
if _HHC.Options["SILENCE_ADDON"] == false then

    print (_HHC.Data.Title  .. " " .. _HHC.Data.Version .. " loaded");

end