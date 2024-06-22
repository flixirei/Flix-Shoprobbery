Config = {}

Config.Item = 'lockpick'       -- Item needed for robbery

Config.Rewardregister = {      -- Reward of succesfull robbery
    ['min'] = 100,
    ['max'] = 150
}

Config.Progduration = 15       -- Progres duration

Config.Language = {
    ['title'] = 'Shop robbery',
    ['registerlabel'] = 'Lockpick',
    ['registersuccess'] = 'You succesfully opened cashregister',
    ['fail'] = 'Failed',
    ['progbar'] = 'Grabbing cash',
    ['itemmissing'] = 'You are missing lockpick',
    ['logs'] = 'Player **%s** robbed **%s**$ from cashregister. Date:** %s**.',
    ['cheatlog'] = 'Player **%s** caught cheating. Date:** %s**.',
}

Config.Registers = {
    {name = 'register_innocence', coords = vec3(24.9456, -1344.9544, 29.6116)}, -- Innocence Blvd
    {name = 'register_innocence2', coords = vec3(25.0, -1347.3, 29.6)},
    {name = 'register_inseno', coords = vec3(-3041.3566, 584.2665, 8.0235)}, -- Inseno Road
    {name = 'register_inseno2', coords = vec3(-3039.15, 585.05, 8.05)},
    {name = 'register_barbareno', coords = vec3(-3244.5734, 1000.6577, 12.9453)}, -- Barbareno Road
    {name = 'register_barbareno2', coords = vec3(-3242.25, 1000.55, 12.95)},
    {name = 'register_greatocean', coords = vec3(1729.3294, 6417.1230, 35.1519)}, -- Great Ocean Highway
    {name = 'register_greatocean2', coords = vec3(1728.3, 6415.0, 35.1)},
    {name = 'register_grapeseed', coords = vec3(1698.3787, 4923.2553, 42.2410)}, -- Grape Seed Main Street
    {name = 'register_alhambra', coords = vec3(1959.3229, 3742.2895, 32.4584)}, -- Alhambra Drive
    {name = 'register_route68', coords = vec3(548.9014, 2668.9414, 42.2711)}, -- Route 68
    {name = 'register_senora', coords = vec3(2676.2124, 3280.9694, 55.3558)}, -- Senora Freeway
    {name = 'register_palomino', coords = vec3(2554.875, 381.3857, 108.7376)}, -- Palomino Freeway
    {name = 'register_clinton', coords = vec3(373.5953, 328.5891, 103.6810)}, -- Clinton Avenue
    {name = 'register_rockford', coords = vec3(-1820.5584, 793.9172, 138.2765)}, -- North Rockford Drive
    {name = 'register_grove', coords = vec3(-47.2251, -1757.5423, 29.5983)}, -- Grove Street
    {name = 'register_ginger', coords = vec3(-706.7102, -913.5667, 19.3929)}, -- Ginger Street
    {name = 'register_mirrorpark', coords = vec3(1164.1452, -322.7899, 69.3824)} -- Mirror Park Blvd
}