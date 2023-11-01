local function spammer()
    while spam == true do
	         game.Players:Chat((spammer)
           time.wait(0)
    end
end

game.Players.LocalPlayer.Chatted:Connect(function(msg)
     local command = string.lower(msg)
      if string.sub(msg:lower(), 0, 5) == ".spam" then 
           spammer = string.sub(msg:lower(), 7)
           spam = true
           spammer()
      end
      if command == ".unspam" then
           spam = false
      end
end)
