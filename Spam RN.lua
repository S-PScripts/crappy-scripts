swait = 0
local function spammer()
    while spam == true do
	   game.Players:Chat(spammer)
           time.wait(swait)
    end
end

game.Players.LocalPlayer.Chatted:Connect(function(msg)
     local command = string.lower(msg)
      if string.sub(msg:lower(), 0, 5) == ".spam" then 
           spammer = string.sub(msg:lower(), 7)
           spam = true
           spammer()
      end
      if string.sub(msg:lower(), 0, 6) == ".swait" then 
           swait = string.sub(msg:lower(), 8)
      end
      if command == ".unspam" then
           spam = false
      end
end)
