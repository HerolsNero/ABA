repeat
    wait()
until game.Loaded
game:GetService("RunService"):Set3dRenderingEnabled(false)
task.wait(.1)
if game.PlaceId == 5411459567 then
    repeat
        task.wait(.1)
    until game.Workspace.Message
end
_G.MinTimer = 80

local function notify(text)
    game.StarterGui:SetCore("SendNotification", {
        Title = "Looking at the time yk yk",
        Duration = 80,
        Text = text
    })
end


local function serverHop()
    if syn then
        syn.queue_on_teleport(
            'loadstring(game:HttpGet("https://raw.githubusercontent.com/HerolsNero/ABA/main/AFK.lua", true))()')
    else
        queue_on_teleport(
            'loadstring(game:HttpGet("https://raw.githubusercontent.com/HerolsNero/ABA/main/AFK.lua", true))()')
    end

end

if game.GameId == 578392296 then
    if game.PlaceId ~= 5411459567 then
serverHop()
        game:GetService('TeleportService'):Teleport(5411459567)
    end
  
    local function timerCheck()
        local timer = game.Workspace.Message.Text:split(" ")
        local time = tonumber(timer[1])
        return time
    end

      if timerCheck() <= _G.MinTimer then
 notify("Waiting for Cash")
        repeat
            task.wait()
        until timerCheck() > _G.MinTimer
        notify("Alr time to dip")
        task.wait(0.1)
        serverHop()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/HerolsNero/ABAs/main/Hopped.lua", true))()
    else
        notify("Alr time to dip")
        serverHop()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/HerolsNero/ABAs/main/Hopped.lua", true))()
    end

end
