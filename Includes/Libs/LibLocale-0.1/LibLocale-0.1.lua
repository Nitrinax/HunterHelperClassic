--[[
Name: LibLocale-0.1
Revision: $Revision: 2$
Author: Nitrinax
Website: https://github.com/Nitrinax/LibLocale
Description: provide simplifyied locale functions
Dependencies: LibStub
License: GPL v3
]]

local MAJOR, MINOR = "LibLocale-0.1", 2;

if not LibStub then error(MAJOR .. " requires LibStub."); end

_LibLocale = LibStub:NewLibrary(MAJOR, MINOR);

if not _LibLocale then

  return	-- already loaded and no upgrade necessary

else

  if not _LibLocaleDefaults or _LibLocaleDefaults["SILENCE"] == nil or _LibLocaleDefaults["SILENCE"] == false then

    print (MAJOR .. "-" .. MINOR .. " loaded");

  end

end