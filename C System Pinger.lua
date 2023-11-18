local goping = true
local connections = {}

plr.Chatted:Connect(function(msg)
    if goping then 
        for _, v in pairs(game.Players:GetPlayers()) do
                if message:lower():find("/w") or message:lower():find("/c") and v ~= game.Players.LocalPlayer then
                   if csystem then
                        print(v.Name..' is using /c system or whispering commands.')
                        game.Players:Chat('h '..v.Name..' is using /c system or whispering commands.')
                   end
                end
                if string.sub(msg:lower(), 0, 4) == "logs" or string.sub(msg:lower(), 0, 5) == ":logs" and v ~= game.Players.LocalPlayer then
                   if loga then
                        print(v.Name..' is using logs.')
                        game.Players:Chat('h '..v.Name..' is using logs.')
                   end
                end
        end
    end
end)


game.Players.LocalPlayer.Chatted:Connect(function(msg)
    local command = string.lower(msg)
    if command == ".csystem" then
        csystem = true
    end
    if command == ".uncsystem" then
        csystem = false
    end
    if command == ".loga" then
        loga = true
    end
    if command == ".unloga" then
        loga = false
    end
end)
