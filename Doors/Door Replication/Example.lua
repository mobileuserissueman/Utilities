local DoorReplication = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Door%20Replication/Source.lua"))()


-- Get current room
local room = workspace.CurrentRooms[game:GetService("ReplicatedStorage").GameData.LatestRoom.Value]


-- Replicate door
local replicatedDoor = DoorReplication.ReplicateDoor(room, {
    CustomKeyNames = {"Custom key name here"}, -- Optional
    DestroyKey = true,
    GuidingLight = true,
    SlamOpen = false,
})


-- Debugging
replicatedDoor.Debug.OnDoorPreOpened = function()
    warn("Door", replicatedDoor, "has pre-opened")
end

replicatedDoor.Debug.OnDoorOpened = function()
    warn("Door", replicatedDoor, "has opened")
end
