local function attach()
      game.Players:Chat("sit me")
      task.wait(1)
      game.Players:Chat("punish me")
      task.wait(1)
      game.Players:Chat("unpunish me")
      task.wait(1)
      game.Players:Chat("skydive me")
end

game.Players.LocalPlayer.Chatted:Connect(function(msg)
    local command = string.lower(msg)
    if command == ".attach" then
       attach()
    end
    if command == ".unattach" then
      game.Players:Chat("unskydive me")
    end
    if command == ".unaa" then
      game.Players:Chat("unskydive all")
    end
end)
