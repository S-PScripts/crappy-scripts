-- https://github.com/Tech-187/Lua-scripts/blob/main/KAH%20light%20padgrabber.lua
game.Players.LocalPlayer.Chatted:Connect(function(msg)
    local command = string.lower(msg)
    if command == ".perm2" then
       PadCheck = true
    end
    if command == ".unperm2" then
       PadCheck = false
    end
end)
local function GetPad(msg)
    if PadCheck == true do
        task.wait(0)
        if not game:GetService("Workspace").Terrain["_Game"].Admin.Pads:FindFirstChild(game.Players.LocalPlayer.Name .. "'s admin") then
            if game:GetService("Workspace").Terrain["_Game"].Admin.Pads:FindFirstChild("Touch to get admin") then
                local pad = game:GetService("Workspace").Terrain["_Game"].Admin.Pads:FindFirstChild("Touch to get admin"):FindFirstChild("Head")
                local padCFrame = game:GetService("Workspace").Terrain["_Game"].Admin.Pads:FindFirstChild("Touch to get admin"):FindFirstChild("Head").CFrame
                task.wait(0.125)
                pad.CanCollide = false
                repeat task.wait() until game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                pad.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                task.wait(0.125)
                pad.CFrame = padCFrame
                pad.CanCollide = true
            else
                fireclickdetector(game:GetService("Workspace").Terrain["_Game"].Admin.Regen.ClickDetector, 0)
            end
        end
    end
end

task.spawn(function()
    while true do
        task.wait(0)
	      GetPad()
    end
end)()
