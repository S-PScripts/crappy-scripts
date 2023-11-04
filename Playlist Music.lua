local musiclist = {"musicid", "musicid2", "musicid3", "musicid4", "musicid5"}
game.Players.LocalPlayer.Chatted:Connect(function(msg)
    local command = string.lower(msg)
    if string.sub(msg:lower(), 1, 7) == ".gmusic" then
        local musicplay = tonumber(string.sub(8, 8))
        if musicplay ~= nil and musicplay >= 1 and musicplay <= #musiclist then
            game.Players:Chat("music " .. musiclist[musicplay])
        else
            print("Invalid music number!")
        end
    end
end)
