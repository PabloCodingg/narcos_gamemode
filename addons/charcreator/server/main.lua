---@author Pablo Z.
---@version 1.0
--[[
  This file is part of Los Narcos.
  
  File [main] created at [21/05/2021 17:30]

  Copyright (c) Los Narcos - All Rights Reserved

  Unauthorized using, copying, modifying and/or distributing of this file,
  via any medium is strictly prohibited. This code is confidential.
--]]

Narcos.netHandleBasic("narcos:cbPlayerRegistred", function(target, identity, baseSkinData)
    if identity == "" then
        NarcosServer.toClient("narcos:creatorStarts", target)
    else

    end
end)