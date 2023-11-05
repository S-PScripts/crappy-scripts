local function attach()
      game.Players:Chat("sit me")
      task.wait(1)
      game.Players:Chat("punish me")
      task.wait(1)
      game.Players:Chat("unpunish me")
end

game.Players.LocalPlayer.Chatted:Connect(function(msg)
    local command = string.lower(msg)
    if command == ".attach" then
       attach()
    end
    if command == ".sky" then -- version A
       game.Players:Chat("skydive me")
    end
    if command == ".trip" then -- version B/ version B back
       game.Players:Chat("trip me")
    end
    if command == ".se" then -- version C/ version C back
       game.Players:Chat("seizure me")
    end
    if command == ".unsky" then -- version A Back
       game.Players:Chat("unskydive me")
    end
    if command == ".unskya" then -- version A Back (all)
       game.Players:Chat("unskydive all")
    end
    if command == ".tripa" then -- Version B Back (all)
       game.Players:Chat("trip all")
    end
    if command == ".sea" then -- Version C Back (all)
       game.Players:Chat("seizure all")
    end
end)
