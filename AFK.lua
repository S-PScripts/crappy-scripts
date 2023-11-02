-- if you don't want people pestering you when you aren't on
-- only works on PC
game.Players.LocalPlayer.Chatted:Connect(function(msg)
    local command = string.lower(msg)
    if command == ".autoafk" then
       autoafk = true
    end
    if command == ".unautoafk" then
       autoafk = false
    end
end)

local UserInputService = game:GetService("UserInputService")
UserInputService.WindowFocusReleased:Connect(function()
    if autoafk == true then
    	game.Players:Chat("name me AFK")
    	game.Players:Chat("ff me")
    	game.Players:Chat("god me")
    end
    task.wait()
end)

-- afk code off
UserInputService.WindowFocused:Connect(function()
    if autoafk == true then
        game.Players:Chat("reset me")
        game.Players:Chat("unff me")
        game.Players:Chat("ungod me")
    end
    task.wait()	
end)
