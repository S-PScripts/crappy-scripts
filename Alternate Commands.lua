-- alternate commands!
game.Players.LocalPlayer.Chatted:Connect(function(msg)
    local command = string.lower(msg)
    if string.sub(msg:lower(), 0, 5) == "bring" then
          local bri = string.sub(msg:lower(), 7)		
          game.Players:Chat("tp ".. bri .." me")
    end
    if string.sub(msg:lower(), 0, 4) == "goto" then
          local gtp = string.sub(msg:lower(), 6)		
          game.Players:Chat("tp me " .. gtp .." ")
    end
    if command == "respawn" then
          game.Players:Chat("respawn me")
    end
    if command == "refresh" or command == "reload" or command == "reset" or command == "re" then
          game.Players:Chat("reload me")
    end
    if command == "unskydive" then
          game.Players:Chat("unskydive me")
    end
    if command == "unpunish" then
          game.Players:Chat("unpunish me")
    end
    if command == "unjail" then
          game.Players:Chat("unjail me")
    end
    if command == "unseizure" then
          game.Players:Chat("unseizure me")
    end
    if command == "unff" then
          game.Players:Chat("unff me")
    end
    if command == "ungod" then
          game.Players:Chat("ungod me")
    end
    if command == "normal" then
          game.Players:Chat("normal me")
    end
    if command == "unsize" then
          game.Players:Chat("unsize me")
    end
    if command == "stand" then
          game.Players:Chat("stand me")
    end
    if command == "unstun" then
          game.Players:Chat("unstun me")
    end
    if command == "undog" then
          game.Players:Chat("undog me")
    end
    if command == "unfire" then
          game.Players:Chat("unfire me")
    end
    if command == "unsmoke" then
           game.Players:Chat("unsmoke me")
    end
end)
