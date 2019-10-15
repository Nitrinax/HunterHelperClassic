function _HHC.Functions:registerEvents(frame)

    --addon loaded
    --frame:RegisterEvent("ADDON_LOADED");

    --learned spells in tab
    --frame:RegisterEvent("LEARNED_SPELL_IN_TAB");

    --skill lines changed
    --frame:RegisterEvent("SKILL_LINES_CHANGED");

    --spells changed
    --frame:RegisterEvent("SPELLS_CHANGED");

    --player entering wolrd
    --frame:RegisterEvent("PLAYER_ENTERING_WORLD");

    --player log in
    frame:RegisterEvent("PLAYER_LOGIN");

    --player level up for real player level
    frame:RegisterEvent("PLAYER_LEVEL_UP");

end