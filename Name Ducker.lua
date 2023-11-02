local function ducker()
    while duckerf == true do
	         game.Players:Chat("name others heheheh")
           time.wait(0)
    end
end

game.Players.LocalPlayer.Chatted:Connect(function(msg)
     local command = string.lower(msg)
      if command == ".ducker" then 
           duckerf = true
           ducker()
      end
      if command == ".unducker" then
           duckerf = false
      end
end)
