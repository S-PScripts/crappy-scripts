game.Players.LocalPlayer.Chatted:Connect(function(msg)
    local command = string.lower(msg)
    if command == ".antigear" then
        antigear = true
    end
    if command == ".unantigear" then
        antigear = false
    end
end)

local antigear = true

local function warnGear(player, toolName)
       game.Players:Chat("ungear " .. player.Name)
       game.Players:Chat("punish " .. player.Name)
       game.Players:Chat("h \n\n\n Sorry, " .. player.Name .. ", you cannot use " .. toolName.Name .. " because of antigear. \n\n\n")
       game.Players:Chat("clr")
end

local function checkPlayerGBackpack(player)
    local gbackpack = player:FindFirstChild("Backpack")
    if gbackpack then
        for _, toolName in ipairs(player.Backpack:GetChildren()) do
    	    if toolName:IsA("Tool") and antigear then
	             if player.Name ~= game.Players.LocalPlayer.Name then
                        warnGear(player, toolName.Name)
                        break
		     end
            end
        end
    end
end

game.Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function(character)
        checkPlayerGBackpack(player)
    end)
    checkPlayerGBackpack(player)
end)

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
