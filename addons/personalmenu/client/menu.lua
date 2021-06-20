---@author Pablo Z.
---@version 1.0
--[[
  This file is part of Los Narcos.
  
  File [menu] created at [20/06/2021 23:50]

  Copyright (c) Los Narcos - All Rights Reserved

  Unauthorized using, copying, modifying and/or distributing of this file,
  via any medium is strictly prohibited. This code is confidential.
--]]

local title, cat, desc = "Mon personnage", "creatorMenu", "Menu personnel"
local sub = function(str)
    return cat .. "_" .. str
end

Narcos.netHandle("f5menu", function()
    if isAMenuActive then
        return
    end
    isAMenuActive = true

    RMenu.Add(cat, sub("main"), RageUI.CreateMenu(title, desc, nil, nil, "pablo", "black"))
    RMenu:Get(cat, sub("main")).Closed = function()
    end

    RMenu.Add(cat, sub("inventory"), RageUI.CreateSubMenu(RMenu:Get(cat, sub("main")), title, desc, nil, nil, "pablo", "black"))
    RMenu:Get(cat, sub("inventory")).Closed = function()
    end

    RageUI.Visible(RMenu:Get(cat, sub("main")), true)

    Narcos.newThread(function()
        while isAMenuActive do
            local shouldStayOpened = false
            local function tick()
                shouldStayOpened = true
            end

            RageUI.IsVisible(RMenu:Get(cat, sub("main")), true, true, true, function()
                tick()

                RageUI.Separator(("Votre ID est le n°%s"):format(personnalData.player.source))

                RageUI.ButtonWithStyle("Inventaire", nil, { RightLabel = "→→" }, true, function(_, _, s)
                end)

                RageUI.ButtonWithStyle("Portefeuille", nil, { RightLabel = "→→" }, true, function(_, _, s)
                end)

                RageUI.ButtonWithStyle("Habits", nil, { RightLabel = "→→" }, true, function(_, _, s)
                end)

                RageUI.ButtonWithStyle("Animations", nil, { RightLabel = "→→" }, true, function(_, _, s)
                end)

                RageUI.ButtonWithStyle("Autre", nil, { RightLabel = "→→" }, true, function(_, _, s)
                end)

                RageUI.ButtonWithStyle("Véhicule", nil, { RightLabel = "→→" }, true, function(_, _, s)
                end)

                RageUI.ButtonWithStyle("Avantages", nil, { RightLabel = "→→" }, false, function(_, _, s)
                end)

                RageUI.ButtonWithStyle("Staff", nil, { RightLabel = "→→" }, false, function(_, _, s)
                end)
            end, function()
            end)

            if not shouldStayOpened and isAMenuActive then
                isAMenuActive = false
            end
            Wait(0)
        end
        RMenu:Delete(cat, sub("main"))
        RMenu:Delete(cat, sub("inventory"))
    end)
end)
