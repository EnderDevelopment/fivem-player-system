Config = {}

-- Player Management
Config.Player = {
    DefaultMoney = 5000,
    DefaultBank = 10000
}

-- Inventory System
Config.Inventory = {
    MaxWeight = 50000,
    MaxSlots = 50
}

-- Job System
Config.Job = {
    DefaultJob = 'unemployed',
    Jobs = {
        ['unemployed'] = {
            label = 'Unemployed',
            salary = 0
        },
        ['police'] = {
            label = 'Police',
            salary = 1000
        },
        ['ambulance'] = {
            label = 'Ambulance',
            salary = 900
        }
    }
}

-- Vehicle Management
Config.Vehicle = {
    DefaultSpawn = vector3(-1045.6, -2743.8, 20.1),
    DefaultHeading = 305.0
}