game.Players.LocalPlayer.Chatted:Connect(function(msg)
    if string.sub(msg:lower(), 0, 4) == ".LUA" then
      		loadstring(string.sub(msg:lower(), 6))()
    end
end)
