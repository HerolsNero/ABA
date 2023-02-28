
repeat
    wait()
until game.Loaded
game:GetService("RunService"):Set3dRenderingEnabled(true)
task.wait(5)
if game.PlaceId == 5411459567 then
    repeat
        task.wait(1)
    until game.Workspace.Message
end
_G.MinTimer = 100



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
 
        repeat
            task.wait()
        until timerCheck() > _G.MinTimer
        task.wait(0.1)
        serverHop()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/HerolsNero/ABAs/main/Hopped.lua", true))()
    else
        serverHop()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/HerolsNero/ABAs/main/Hopped.lua", true))()
    end

end
Performance()
