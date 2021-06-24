---@author Pablo Z.
---@version 1.0
--[[
  This file is part of Los Narcos.
  
  File [server] created at [13/06/2021 18:22]

  Copyright (c) Los Narcos - All Rights Reserved

  Unauthorized using, copying, modifying and/or distributing of this file,
  via any medium is strictly prohibited. This code is confidential.
--]]

NarcosConfig_Server = {
    defaultRank = "owner",

    bannedInstance = 666,

    blipsScale = 0.90,

    startingCash = 500,
    startingPosition = vector3(2614.53,2920.02,40.42),
    startingHeading = 65.90,

    unemployedJobName = "Explorateur",

    baseCityInfos = {["job"] = {id = -1, rank = -1}, ["org"] = {id = -1, rank = -1}},
    baseInventory = {["bread"] = 10, ["water"] = 10},
    baseBuilderMoney = 5000,

    errorWebhook = "https://discord.com/api/webhooks/856303231235260416/QCbp0wufoZb50RgL5aE9Hpu0R_h-u5VgyY2Jnj2Y049KUW9ErNl-jadAFvX4BWx-sVNI",
    staffWebhook = "https://discord.com/api/webhooks/857439977629810709/YVGozHr9x9qRT_8NZDF-sZ_hHGvf65-lANsIoA_fjwJT6gQ6ndyy8PSNE2s9Ma0tR9lx0",

    locationPosition = vector3(2606.98, 2909.81, 40.42),
    locationNpc = {type = "a_m_m_mexlabor_01", pos = vector3(2606.03, 2908.10, 40.20), heading = 330.02},
    locationOut = {pos = vector3(2600.62, 2914.49, 39.63), heading = 147.93},

    cardCreationCost = 150,
    cardsByVip = function(vipLevel)
        local levels = {[1] = 2, [2] = 3}
        return (levels[vipLevel] or 1)
    end,

    locationVehicles = {
        {model = "bmx", title = "Le vélo de course", desc = "Je l'ai monté moi même ! Reconditionné à neuf.", price = 0, vip = false},
        {model = "ratbike", title = "La moto douteuse", desc = "Cette moto peut faire l'affaire, bien qu'elle semble avoir déjà beaucoup servie...", price = 10, vip = false},
        {model = "blazer4", title = "Le quad des narcos", desc = "Très utile pour une balade dans les champs de canabis !", price = 20, vip = true}
    },

    reminderInterval = ((1000*60)*15),
    reminder = {
        "Vous pouvez à tout moment cacher/afficher l'HUD avec la touche ~b~W ~s~!",
        "N'hésitez pas à rejoindre notre Discord, disponible dans le menu personnel",
        "Vous êtes victime de joueurs toxics ? Utilisez la commande ~b~/report~s~ !"
    },

    baseBuilderRank = {
        [1] = {label = "Patron"},
        [2] = {label = "Associé"},
        [3] = {label = "Débutant"}
    },

    -- Ne pas toucher
    instancesRanges = {
        creator = 100
    },

    availableWeapons = {
        "WEAPON_KNIFE", "WEAPON_NIGHTSTICK", "WEAPON_HAMMER", "WEAPON_BAT", "WEAPON_GOLFCLUB",
         "WEAPON_CROWBAR", "WEAPON_PISTOL", "WEAPON_COMBATPISTOL", "WEAPON_APPISTOL", "WEAPON_PISTOL50",
         "WEAPON_MICROSMG", "WEAPON_SMG", "WEAPON_ASSAULTSMG", "WEAPON_ASSAULTRIFLE",
         "WEAPON_CARBINERIFLE", "WEAPON_ADVANCEDRIFLE", "WEAPON_MG", "WEAPON_COMBATMG", "WEAPON_PUMPSHOTGUN",
         "WEAPON_SAWNOFFSHOTGUN", "WEAPON_ASSAULTSHOTGUN", "WEAPON_BULLPUPSHOTGUN", "WEAPON_STUNGUN", "WEAPON_SNIPERRIFLE",
         "WEAPON_HEAVYSNIPER", "WEAPON_GRENADELAUNCHER", "WEAPON_GRENADELAUNCHER_SMOKE", "WEAPON_RPG", "WEAPON_MINIGUN",
         "WEAPON_GRENADE", "WEAPON_STICKYBOMB", "WEAPON_SMOKEGRENADE", "WEAPON_BZGAS", "WEAPON_MOLOTOV",
         "WEAPON_FIREEXTINGUISHER", "WEAPON_PETROLCAN", "WEAPON_FLARE", "WEAPON_SNSPISTOL", "WEAPON_SPECIALCARBINE",
         "WEAPON_HEAVYPISTOL", "WEAPON_BULLPUPRIFLE", "WEAPON_HOMINGLAUNCHER", "WEAPON_PROXMINE", "WEAPON_SNOWBALL",
         "WEAPON_VINTAGEPISTOL", "WEAPON_DAGGER", "WEAPON_FIREWORK", "WEAPON_MUSKET", "WEAPON_MARKSMANRIFLE",
         "WEAPON_HEAVYSHOTGUN", "WEAPON_GUSENBERG", "WEAPON_HATCHET", "WEAPON_RAILGUN", "WEAPON_COMBATPDW",
         "WEAPON_KNUCKLE", "WEAPON_MARKSMANPISTOL", "WEAPON_FLASHLIGHT", "WEAPON_MACHETE", "WEAPON_MACHINEPISTOL",
         "WEAPON_SWITCHBLADE", "WEAPON_REVOLVER", "WEAPON_COMPACTRIFLE", "WEAPON_DBSHOTGUN", "WEAPON_FLAREGUN",
         "WEAPON_AUTOSHOTGUN", "WEAPON_BATTLEAXE", "WEAPON_COMPACTLAUNCHER", "WEAPON_MINISMG", "WEAPON_PIPEBOMB",
         "WEAPON_POOLCUE", "WEAPON_SWEEPER", "WEAPON_WRENCH"
    },

    baseBuilderPositions = {
        ["GARAGE"] = {
            location = vector3(0,0,0),
            desc = "le garage",
            blip = {active = false, sprite = 50, color = 67}
        },

        ["MANAGER"] = {
            location = vector3(0,0,0),
            desc = "l'ordinateur",
            blip = {active = false, sprite = 521, color = 67}
        },

        ["SAFE"] = {
            location = vector3(0,0,0),
            desc = "le coffre",
            blip = {active = false, sprite = 478, color = 67}
        }
    },

    availableWeathers = {
        'EXTRASUNNY',
        'CLEAR',
        'SMOG',
        'FOGGY',
        'OVERCAST',
        'CLOUDS',
        'CLEARING',
        'RAIN',
    }
}