local noobs = true
local connections = {}

plr.Chatted:Connect(function(msg)
    if noobs then 
        for _, v in pairs(game.Players:GetPlayers()) do
            local connection = v.Chatted:Connect(function(message)
                if message:lower() == ";fly" or message:lower() == ";fly me" then
                   print(v.Name..' is a noob.')
                   game:Players:Chat(v.Name.." it is fly me, not ;fly!!")
            end)
            table.insert(connections, connection)
        end
    end
end)
