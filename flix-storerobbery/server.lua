-- Logs and reward
function sendDiscordWebhook(message)
    local discordWebhookUrl = ""

    local data = {
        content = message
    }

    PerformHttpRequest(discordWebhookUrl, function(err, text, headers)
    end, 'POST', json.encode(data), { ['Content-Type'] = 'application/json' })
end

lib.callback.register('storeregister:reward', function()
    local playerCoords = GetEntityCoords(GetPlayerPed(source))
    local isNearRegister = false

    for _, register in pairs(Config.Registers) do
        local registerCoords = register.coords
        if #(playerCoords - registerCoords) < 4.0 then
            isNearRegister = true
            break
        end
    end

    if isNearRegister then
        local itemAmount = math.random(Config.Rewardregister['min'], Config.Rewardregister['max'])
        exports.ox_inventory:RemoveItem(source, Config.Item, 1)
        exports.ox_inventory:AddItem(source, 'cash', itemAmount)

        local playerName = GetPlayerName(source)
        local dateAndTime = os.date("%d.%m.%Y at: %H:%M")
        local discordMessage = string.format(Config.Language['logs'], playerName, itemAmount, dateAndTime)
        sendDiscordWebhook(discordMessage)
    else
        local playerName = GetPlayerName(source)
        local dateAndTime = os.date("%d.%m.%Y at: %H:%M")
        local discordMessage = string.format(Config.Language['cheatlog'], playerName, dateAndTime)
        sendDiscordWebhook(discordMessage)
        exports.qbx_core:ExploitBan(source)     -- If you don't use qbox change this to work with your framework
    end
end)