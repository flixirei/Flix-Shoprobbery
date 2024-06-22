-- Register target
for _, register in pairs (Config.Registers) do
    exports.ox_target:addSphereZone({
        name = register.name,
        coords = register.coords,
        radius = 0.35,
        debug = Config.Debug,
        options = {
            label = Config.Language['registerlabel'],
            icon = 'fa-solid fa-cash-register',
            distance = 2,
            onSelect = function()
                local count = exports.ox_inventory:Search('count', Config.Item)
                    if count > 0 then
                local success = lib.skillCheck({'easy'}, {'w', 'a', 's', 'd'})
                if success then
                lib.notify({
                    title = Config.Language['title'],
                    description = Config.Language['registersuccess'],
                    type = 'success'
                })
                exports.ox_target:removeZone(register.name)
                if lib.progressBar({
                    duration = Config.Progduration*1000,
                    label = Config.Language['progbar'],
                    useWhileDead = false,
                    canCancel = true,
                    disable = {
                        car = true,
                        move = true,
                        combat = true
                    },
                    anim = {
                        dict = 'anim@heists@ornate_bank@grab_cash',
                        clip = 'grab'
                    },
                    prop = {
                        model = 'p_ld_heist_bag_s',
                        bone = 40269,
                        pos = vec3(0.0454, 0.2131, -0.1887),
                        rot = vec3(66.4762, 7.2424, -71.9051)}
                }) then
                    lib.callback.await('storeregister:reward', source)
                end
                else
                lib.notify({
                    title = Config.Language['title'],
                    description = Config.Language['fail'],
                    type = 'error'
                })
                end
            else lib.notify({
                title = Config.Language['title'],
                description = Config.Language['itemmissing'],
                type = 'error'
            })
            end
        end
    }})
end