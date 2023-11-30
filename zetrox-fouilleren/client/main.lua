exports.qtarget:Player({
    options = {
        {
            event = 'zetrox:fouilleren',
            icon = 'fas fa-hands-wash',
            label = 'Fouilleren',
            canInteract = function(entity)
                local animDict = "missminuteman_1ig_2"
                local animName = "handsup_base"

                if IsEntityPlayingAnim(entity, animDict, animName, 3) then
                    return true
                end

                return false
            end,
        }
    },
    distance = 2
})

RegisterNetEvent('zetrox:fouilleren')
AddEventHandler('zetrox:fouilleren',function(data)
    exports.ox_inventory:openNearbyInventory()
end)

--- Gemaakt door zetrox6969 ----- 