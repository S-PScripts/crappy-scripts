game.Players.LocalPlayer.Chatted:Connect(function(msg)
     local command = string.lower(msg)
      if string.sub(msg:lower(), 1, 7) == ".superc" then 
           for i in 1,100 do
                 game.Players:Chat(string.sub(msg:lower(), 9))
                 task.wait()
           end
      end
end)
