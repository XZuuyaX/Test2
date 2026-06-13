local URL = "https://raw.githubusercontent.com/XZuuyaX/Test2/main/rj.lua"

local queued = string.format([[
    task.wait(5)
    loadstring(game:HttpGet("%s"))()
]], URL)

if queue_on_teleport then
    queue_on_teleport(queued)
elseif syn and syn.queue_on_teleport then
    syn.queue_on_teleport(queued)
end

game:GetService("TeleportService"):Teleport(
    game.PlaceId,
    game:GetService("Players").LocalPlayer
)
