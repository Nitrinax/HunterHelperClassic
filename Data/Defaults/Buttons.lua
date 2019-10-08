
_HHC.Options.Buttons = {};

_HHC.Options.Buttons.Main = {};

--old format
_HHC.Options.Buttons.Main.Close = true;
_HHC.Options.Buttons.Main.Options = false;
_HHC.Options.Buttons.Main.Elements = false;
_HHC.Options.Buttons.Main.Modules = false;

--new format
_HHC.Options.Buttons.Main.List = {

    ["CLOSE"] = true,
    ["OPTIONS"] = true,
    ["ELEMENTS"] = true,
    ["MODULES"] = true

};
