local ESX = nil

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end

    -- Player Management
    RegisterNetEvent('esx:playerLoaded')
    AddEventHandler('esx:playerLoaded', function(xPlayer)
        ESX.PlayerData = xPlayer
    end)

    -- Inventory System
    RegisterNetEvent('esx:addInventoryItem')
    AddEventHandler('esx:addInventoryItem', function(item, count)
        ESX.ShowNotification('You received ' .. count .. ' ' .. item .. '!')
    end)

    -- Job System
    RegisterNetEvent('esx:setJob')
    AddEventHandler('esx:setJob', function(job)
        ESX.PlayerData.job = job
        ESX.ShowNotification('Your job is now ' .. job.label .. '!')
    end)

    -- Vehicle Management
    RegisterNetEvent('esx:spawnVehicle')
    AddEventHandler('esx:spawnVehicle', function(model, plate)
        local playerPed = PlayerPedId()
        local coords = GetEntityCoords(playerPed)
        local heading = GetEntityHeading(playerPed)
        
        ESX.Game.SpawnVehicle(model, coords, heading, function(vehicle)
            SetVehicleNumberPlateText(vehicle, plate)
            TaskWarpPedIntoVehicle(playerPed, vehicle, -1)
        end)
    end)
end)