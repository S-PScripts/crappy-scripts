local noobs = true
local connections = {}

plr.Chatted:Connect(function(msg)
    if noobs then 
        for _, v in pairs(game.Players:GetPlayers()) do
            local connection = v.Chatted:Connect(function(message)
                if message:lower():find("94794847") and v ~= game.Players.LocalPlayer then
                  game.Players:Chat('reload'..v.Name..)
                  game.Players:Chat('punish'..v.Name..)
                  game.Players:Chat('h No crashing, '..v.Name..'!')
                end
            end)
            table.insert(connections, connection)
        end
    end
end)
