-- setup addon name
_HHC.Data.AddonName = "HunterHelperClassic";

-- setup addon data
_HHC.Data.Title = getAddonTocTitle(_HHC.Data.AddonName);
_HHC.Data.ShortTitle = getAddonTocShortTitle(_HHC.Data.AddonName);
_HHC.Data.Version = getAddonTocVersion(_HHC.Data.AddonName);
_HHC.Data.Revision = getAddonTocRevision(_HHC.Data.AddonName);
_HHC.Data.Date = getAddonTocDate(_HHC.Data.AddonName);
_HHC.Data.VersionString = getAddonTocVersionString(_HHC.Data.AddonName);
_HHC.Data.LongVersionString = getAddonTocLongVersionString(_HHC.Data.AddonName);

-- default data
_HHC.Data.MaxLevel = 60;
_HHC.Data.CurrentPlayerLevel = UnitLevel("player");