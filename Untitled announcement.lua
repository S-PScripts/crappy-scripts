game.Players.LocalPlayer.Chatted:Connect(function(msg)
     local command = string.lower(msg)
      if string.sub(msg:lower(), 0, 7) == ".secret" then 
           secret = string.sub(msg:lower(), 9)
	         game.Players:Chat("h \n\n\n "..secret.. " \n\n\n")
      end
end)
