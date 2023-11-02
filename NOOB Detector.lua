local noobs = true
local connections = {}

plr.Chatted:Connect(function(msg)
    if noobs then 
        for _, v in pairs(game.Players:GetPlayers()) do
            local connection = v.Chatted:Connect(function(message)
                if message:lower() == ";fly" then
                   print(v.Name..' is a noob.')
                   game.Players:Chat(v.Name..', it is fly me, not ;fly!!')
                end
                if message:lower() == ";fly me" then
                   print(v.Name..' is a noob.') 
                   game.Players:Chat(v.Name..', imagine using the ; prefix! You dont need any!!')
                   end
            end)
            table.insert(connections, connection)
        end
    end
end)
