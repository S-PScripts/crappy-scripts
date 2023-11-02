local csystem = true
local connections = {}

plr.Chatted:Connect(function(msg)
    if csystem then 
        for _, v in pairs(game.Players:GetPlayers()) do
            local connection = v.Chatted:Connect(function(message)
                if message:lower():find("/w") or message:lower():find("/c") and v ~= game.Players.LocalPlayer then
                    print(v.Name..' is using /c system or whispering commands.')
                    game.Players:Chat('h '..v.Name..' is using /c system or whispering commands.')
                end
            end)
            table.insert(connections, connection)
        end
    end
end)
