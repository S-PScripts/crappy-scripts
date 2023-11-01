local antigear = true

local function warnGear(player, toolName)
       game.Players:Chat(("ungear " .. player.Name)
       game.Players:Chat(("punish " .. player.Name)
       game.Players:Chat(("h \n\n\n Sorry, " .. player.Name .. ", you cannot use " .. toolName .. " because of antigear. \n\n\n")
       game.Players:Chat(("clr")
end

local function checkPlayerGBackpack(player)
    local gbackpack = player:FindFirstChild("Backpack")
    if gbackpack then
        for _, toolName in ipairs(player.Backpack:GetChildren()) do
    	    if toolName:IsA("Tool") and antigear then
	             if player.Name == game.Players.LocalPlayer.Name then
                       break
               else
                       warnGear(player, toolName)
                       break
               end
            end
        end
    end
end

-- backpack gear
game.Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function(character)
        checkPlayerGBackpack(player)
    end)
    checkPlayerGBackpack(player)
end)

-- backpack gear
game:GetService("RunService").Heartbeat:Connect(function()
    for _, player in ipairs(game.Players:GetPlayers()) do
        if player.Character then
            checkPlayerGBackpack(player)
        end
    end
end)

for _, player in ipairs(game.Players:GetPlayers()) do
    if player.Character then
        checkPlayerGBackpack(player)
    end
end
