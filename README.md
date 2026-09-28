# FiveM Player System

Comprehensive player management for FiveM servers

## Features

- Player data handling and management
- Inventory system with item tracking
- Job system with configurable jobs and salaries
- Vehicle management with spawn and storage

## Requirements

- FiveM server
- ESX framework
- MySQL database

## Installation

1. Download the latest release from the [releases page](https://github.com/EnderDevelopment/fivem-player-system/releases).
2. Extract the files into your FiveM server's `resources` directory.
3. Add `start fivem-player-system` to your server.cfg file.
4. Run the provided SQL script to set up the necessary database tables.

## Usage

### Player Management

- Player data is automatically loaded when a player joins the server.
- Use the provided events to manage player data.

### Inventory System

- Use the `esx:addInventoryItem` event to add items to a player's inventory.
- Items are automatically tracked and can be queried.

### Job System

- Use the `esx:setJob` event to set a player's job.
- Jobs are configurable in the config file.

### Vehicle Management

- Use the `esx:spawnVehicle` event to spawn a vehicle for a player.
- Vehicles are stored in the database and can be queried.

## Configuration

The plugin is configurable via the `config.lua` file. You can set default values for player money, bank balance, inventory weight and slots, default job, and jobs with their respective labels and salaries. You can also set the default spawn location and heading for vehicles.

---

## Generated with EnderDevelopment

This plugin was generated in minutes with [EnderDevelopment](https://enderdevelopment.com) — the AI platform that turns your ideas into working Minecraft plugins, Discord bots and FiveM scripts.

**Want your own?** [Generate this project on EnderDevelopment](https://dash.enderdevelopment.com?utm_source=github&utm_medium=readme&utm_campaign=fivem-player-system&utm_content=bottom) — describe it in one sentence and get the full source code.