--[[
    ClientCore.client.lua
--]]

local ReplicatedStorage = game:GetService("ReplicatedStorage")

local Stellar = require(ReplicatedStorage.SharedModules.Stellar)
shared.Stellar = Stellar

local StartTime = tick()
Stellar.BulkLoad(ReplicatedStorage.ClientModules, ReplicatedStorage.SharedModules)

Stellar.BulkGet(
    "UserInterface",
    "DoorClient"
)

Stellar.MarkAsLoaded()
print(string.format("[ClientCore] Loading Duration: %f seconds!", tick() - StartTime))
