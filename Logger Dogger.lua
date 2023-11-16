game.Players.LocalPlayer.Chatted:Connect(function(msg)
     local command = string.lower(msg)
      if command == ".logout" then 
           for i in 1,100 do
                 game.Players:Chat("ff TRYING TO SEE LOGS M8")
                 task.wait()
           end
      end
end)
