--[[
Name: LibCF-0.1
Revision: $Revision: 1$
Author: Nitrinax
Website: https://github.com/Nitrinax/LibCF
Description: provide some custom functions for addons
Dependencies: LibStub
License: GPL v3
]]

local MAJOR, MINOR = "LibCF-0.1", 2;

if not LibStub then error(MAJOR .. " requires LibStub."); end

_LibCF = LibStub:NewLibrary(MAJOR, MINOR);

if not _LibCF then

  return	--already loaded and no upgrade necessary

else

  if not _LibCFDefaults or _LibCFDefaults["SILENCE"] == nil or _LibCFDefaults["SILENCE"] == false then

    print (MAJOR .. "-" .. MINOR .. " loaded");

  end

end