local function onPlayerAdded(player)
    if welcomemsg == true then
    	 game.Players:Chat("h \n\n\n Welcome to the server, " .. player.Name .. ". \n\n\n")
    end
    task.wait()
end

local function onPlayerLeaving(player)
    if welcomemsg == true then
    	 game.Players:Chat("h \n\n\n Goodbye, " .. player.Name .. ". \n\n\n")
    end
    task.wait()
end

game.Players.PlayerAdded:Connect(onPlayerAdded)
game.Players.PlayerRemoving:Connect(onPlayerLeaving)

game.Players.LocalPlayer.Chatted:Connect(function(msg)
    local command = string.lower(msg)
    if command == ".welcome" then
       welcomemsg = true
    end
    if command == ".unwelcome" then
       welcomemsg = false
    end
end)
