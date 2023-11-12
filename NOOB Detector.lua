local noobs = true
local connections = {}

plr.Chatted:Connect(function(msg)
    if noobs then 
        for _, v in pairs(game.Players:GetPlayers()) do
            local connection = v.Chatted:Connect(function(message)
                if message:lower() == ";fly" then
                   print(v.Name..' is a noob.')
                   game.Players:Chat('h '..v.Name..', it is fly me, not ;fly!!')
                end
                if message:lower():find(";poop") or message:lower():find(":poop") or message:lower():find("poop") then
                   print(v.Name..' is a noob.')
                   game.Players:Chat('h '..v.Name..', go back to FREE ADMIN, POOP IS NOT A COMMAND!!')
                end
                if message:lower():find(";morph") or message:lower():find(":morph") or message:lower():find("morph") then
                   print(v.Name..' is a noob.')
                   game.Players:Chat('h '..v.Name..', go back to FREE ADMIN, MORPH IS NOT A COMMAND!!')
                end
                if message:lower() == ";fly me" then
                   print(v.Name..' is a noob.') 
                   game.Players:Chat('h '..v.Name..', imagine using the ; prefix! You dont need any!!')
                end
                if message:lower():find(";bring") or message:lower():find(":bring") or message:lower():find("bring") and v ~= game.Players.LocalPlayer then
                   print(v.Name..' is a noob.')
                   game.Players:Chat('h '..v.Name..', it is tp (plr) me, not ;bring!!')
                end
                if message:lower():find(";goto") or message:lower():find(":goto") or message:lower():find("goto") and v ~= game.Players.LocalPlayer then
                   print(v.Name..' is a noob.') 
                   game.Players:Chat('h '..v.Name..', it is tp me (plr), not ;goto!!')
                end
            end)
            table.insert(connections, connection)
        end
    end
end)
