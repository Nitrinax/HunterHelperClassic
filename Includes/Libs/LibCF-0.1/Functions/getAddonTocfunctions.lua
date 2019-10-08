function _LibCF:getAddonTocDate(addonName)

    return GetAddOnMetadata(addonName, "X-Date");

end

function _LibCF:getAddonTocRevision(addonName)

    return GetAddOnMetadata(addonName, "X-Revision");

end

function _LibCF:getAddonTocShortTitle(addonName)

    return GetAddOnMetadata(addonName, "X-Short-Title");

end

function _LibCF:getAddonTocTitle(addonName)

    return GetAddOnMetadata(addonName, "Title");

end

function _LibCF:getAddonTocVersion(addonName)

    return GetAddOnMetadata(addonName, "Version");

end

function _LibCF:getAddonTocVersionString(addonName)

    local addonVersion = GetAddOnMetadata(addonName, "Version");
    local addonRevision = GetAddOnMetadata(addonName, "X-Revision");

    return addonVersion .. "-" .. addonRevision;

end

function _LibCF:getAddonTocLongVersionString(addonName)

    local addonVersion = GetAddOnMetadata(addonName, "Version");
    local addonRevision = GetAddOnMetadata(addonName, "X-Revision");
    local addonDate = GetAddOnMetadata(addonName, "X-Date");

    return addonName .. " " .. addonVersion .. "-" .. addonRevision .. " (" .. addonDate .. ")";

end