function _HHC.Modules.PetInfo.Functions:registerEvents(frame)

    frame:RegisterEvent("PET_BAR_UPDATE");
    frame:RegisterEvent("PLAYER_XP_UPDATE");
    frame:RegisterEvent("UNIT_HAPPINESS");
    frame:RegisterEvent("UNIT_LEVEL");
    frame:RegisterEvent("UNIT_PET");
    frame:RegisterEvent("UNIT_PET_EXPERIENCE");
    frame:RegisterEvent("UNIT_PET_TRAINING_POINTS");

end