local anticrash = true

local blacklistedTools = {"OrinthianSwordAndShield", "VampireVanquisher"}

local function warnCrash(player, toolName)
       game.Players:Chat("ungear " .. player.Name)
       game.Players:Chat("punish " .. player.Name)
       game.Players:Chat("h \n\n\n Sorry, " .. player.Name .. ", you cannot use " .. toolName .. " because of anticrash. \n\n\n")
       game.Players:Chat("clr")
end

local function checkPlayerBackpack(player)
    local backpack = player:FindFirstChild("Backpack")
    if backpack then
        for _, toolName in ipairs(blacklistedTools) do
            local tool = backpack:FindFirstChild(toolName)
            if tool and anticrash then
		if player.Name == game.Players.LocalPlayer.Name then
                       break
                else
                       warnCrash(player, toolName)
                       break
                end
            end
        end
    end
end

-- backpack gear
game.Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function(character)
        checkPlayerBackpack(player)
    end)
    checkPlayerBackpack(player)
end)

-- backpack gear
game:GetService("RunService").Heartbeat:Connect(function()
    for _, player in ipairs(game.Players:GetPlayers()) do
        if player.Character then
            checkPlayerBackpack(player)
        end
    end
end)

for _, player in ipairs(game.Players:GetPlayers()) do
    if player.Character then
        checkPlayerBackpack(player)
    end
end
