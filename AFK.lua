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
    	Chat("name me AFK")
    	Chat("ff me")
    	Chat("god me")
    end
    task.wait()
end)

-- afk code off
UserInputService.WindowFocused:Connect(function()
    if autoafk == true then
        Chat("reset me")
        Chat("unff me")
        Chat("ungod me")
    end
    task.wait()	
end)
