--display formated addon loading error reason
function _LibCF:displayLoadAddonReason(reason, addon)

    local output = "";

    if reason == "BANNED" then

        -- Addon is banned by the client.
        output = "banned";

    elseif reason == "CORRUPT" then

        -- The addon's file(s) are corrupt.
        output = "corrupt";

    elseif reason == "DEP_BANNED" then

        -- Addon's dependency is banned by the client.
        output = "dependency banned";

    elseif reason == "DEP_CORRUPT" then

        -- The addon's dependency cannot load because its file(s) are corrupt.
        output = "dDependency corrupt";

    elseif reason == "DEP_DISABLED" then

        -- The addon cannot load without its dependency enabled.
        output = "dependency disabled";

    elseif reason == "DEP_INCOMPATIBLE" then

        -- The addon cannot load if its dependency cannot load.
        output = "dependency incompatible";

    elseif reason == "DEP_MISSING" then

        -- The addon's dependency is physically not there.
        output = "dependency missing";

    elseif reason == "DEP_NOT_DEMAND_LOADED" then

        -- The addon's dependency must be loadable on demand too.
        output = "dependency not loadable on demand";

    elseif reason == "DISABLED" then

        -- Addon is disabled on the character select screen.
        output = "disabled";

    elseif reason == "INCOMPATIBLE" then

        -- The addon is too old.
        output = "incompatible";

    elseif reason == "MISSING" then

        -- The addon is physically not there.
        output = "missing";

    elseif reason == "NOT_DEMAND_LOADED" then

        -- As of 1.8 only addons marked as LoadOnDemand can be loaded via this function.
        output = "not loadable on demand";

    elseif reason == "INTERACE_VERSION" then

        -- Unknown, presumably the interface version in the .toc file is incorrect
        output = "incorrect interface version";

    end

    print(addon .. " " .. output);

end