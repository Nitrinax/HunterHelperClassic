--[[
Name: LibWidgets-0.1
Revision: $Revision: 8$
Author: Nitrinax
Website: https://github.com/Nitrinax/LibWidgets
Description: provide simplifyied widget functions
Dependencies: LibStub
License: GPL v3
]]

local MAJOR, MINOR = "LibWidgets-0.1", 8;

if not LibStub then error(MAJOR .. " requires LibStub."); end

_LibWidgets = LibStub:NewLibrary(MAJOR, MINOR);

if not _LibWidgets then

  return	-- already loaded and no upgrade necessary

else

  if not _LibWidgetsDefaults or _LibWidgetsDefaults["SILENCE"] == nil or _LibWidgetsDefaults["SILENCE"] == false then

    print (MAJOR .. "-" .. MINOR .. " loaded");

  end

end