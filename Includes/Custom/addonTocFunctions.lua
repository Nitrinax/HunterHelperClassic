function getAddonTocDate(addonName)

    return GetAddOnMetadata(addonName, "X-Date");

end

function getAddonTocRevision(addonName)

    return GetAddOnMetadata(addonName, "X-Revision");

end

function getAddonTocShortTitle(addonName)

    return GetAddOnMetadata(addonName, "X-Short-Title");

end

function getAddonTocTitle(addonName)

    return GetAddOnMetadata(addonName, "Title");

end

function getAddonTocVersion(addonName)

    return GetAddOnMetadata(addonName, "Version");

end

function getAddonTocVersionString(addonName)

    local addonVersion = GetAddOnMetadata(addonName, "Version");
    local addonRevision = GetAddOnMetadata(addonName, "X-Revision");

    return addonVersion .. "-" .. addonRevision;

end

function getAddonTocLongVersionString(addonName)

    local addonVersion = GetAddOnMetadata(addonName, "Version");
    local addonRevision = GetAddOnMetadata(addonName, "X-Revision");
    local addonDate = GetAddOnMetadata(addonName, "X-Date");

    return addonName .. " " .. addonVersion .. "-" .. addonRevision .. " (" .. addonDate .. ")";

end