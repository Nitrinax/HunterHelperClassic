-- silencing load message
_HHC.Options["SILENCE_ADDON"] = false;
_HHC.Options["SILENCE_MODULES"] = true;

_HHC.Data.Title = GetAddOnMetadata("HunterHelperClassic", "Title");
_HHC.Data.ShortTitle = GetAddOnMetadata("HunterHelperClassic", "X-Short-Title");
_HHC.Data.Version = GetAddOnMetadata("HunterHelperClassic", "Version");

--max level for classic
_HHC.Data.MaxAddonLevel = 60;

--_HHC.Data.RealPlayerLevel = 1;
_HHC.Data.RealPlayerLevel = UnitLevel("player");