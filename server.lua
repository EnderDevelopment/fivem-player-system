local ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

-- Player Management
ESX.RegisterServerCallback('esx:getPlayerData', function(source, cb)
    local xPlayer = ESX.GetPlayerFromId(source)
    if xPlayer then
        cb(xPlayer.getAccounts())
    else
        cb(nil)
    end
end)

-- Inventory System
ESX.RegisterServerCallback('esx:addInventoryItem', function(source, cb, item, count)
    local xPlayer = ESX.GetPlayerFromId(source)
    if xPlayer then
        xPlayer.addInventoryItem(item, count)
        cb(true)
    else
        cb(false)
    end
end)

-- Job System
ESX.RegisterServerCallback('esx:setJob', function(source, cb, job)
    local xPlayer = ESX.GetPlayerFromId(source)
    if xPlayer then
        xPlayer.setJob(job, 0)
        cb(true)
    else
        cb(false)
    end
end)

-- Vehicle Management
ESX.RegisterServerCallback('esx:spawnVehicle', function(source, cb, model, plate)
    local xPlayer = ESX.GetPlayerFromId(source)
    if xPlayer then
        MySQL.Async.execute('INSERT INTO vehicles (plate, model, owner) VALUES (@plate, @model, @owner)', {
            ['@plate'] = plate,
            ['@model'] = model,
            ['@owner'] = xPlayer.identifier
        }, function(rowsChanged)
            if rowsChanged > 0 then
                cb(true)
            else
                cb(false)
            end
        end)
    else
        cb(false)
    end
end)