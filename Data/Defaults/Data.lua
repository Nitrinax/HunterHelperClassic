--setup addon name
_HHC.Data.AddonName = "HunterHelperClassic";

--setup addon data
_HHC.Data.Title = _LibCF:getAddonTocTitle(_HHC.Data.AddonName);
_HHC.Data.ShortTitle = _LibCF:getAddonTocShortTitle(_HHC.Data.AddonName);
_HHC.Data.Version = _LibCF:getAddonTocVersion(_HHC.Data.AddonName);
_HHC.Data.Revision = _LibCF:getAddonTocRevision(_HHC.Data.AddonName);
_HHC.Data.Date = _LibCF:getAddonTocDate(_HHC.Data.AddonName);
_HHC.Data.VersionString = _LibCF:getAddonTocVersionString(_HHC.Data.AddonName);
_HHC.Data.LongVersionString = _LibCF:getAddonTocLongVersionString(_HHC.Data.AddonName);

--default data
_HHC.Data.MaxLevel = 60;
_HHC.Data.CurrentPlayerLevel = 1;
_HHC.Data.CurrentPetLevel = 1;
_HHC.Data.CurrentPetHappinness = 1;
_HHC.Data.CurrentPetDamagePercentages = 75;
_HHC.Data.CurrentPetLoyalty = 1;
_HHC.Data.CurrentPetLoyaltyRate = 1;
_HHC.Data.CurrentPetTotalPoints = 0;
_HHC.Data.CurrentPetPointsSpend = 0;
_HHC.Data.PlayerControlLost = 0;