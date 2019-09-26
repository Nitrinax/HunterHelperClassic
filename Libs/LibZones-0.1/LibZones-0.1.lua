--[[
Name: LibZones-0.1
Revision: $Revision: 3$
Author: Nitrinax
Website: https://github.com/Nitrinax/LibZone
Description: provide simplifyied zone functions
Dependencies: LibStub
License: GPL v3
]]

local MAJOR, MINOR = "LibZones-0.1", 3;

if not LibStub then error(MAJOR .. " requires LibStub."); end

_LibZones = LibStub:NewLibrary(MAJOR, MINOR);

if not _LibZones then

  return	-- already loaded and no upgrade necessary

else
  
  if not _LibZonesDefaults or _LibZonesDefaults["SILENCE"] == nil or _LibZonesDefaults["SILENCE"] == false then

    print (MAJOR .. "-" .. MINOR .. " loaded");

  end

end