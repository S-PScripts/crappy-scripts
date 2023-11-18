local goattach = true
local connections = {} 

plr.Chatted:Connect(function(msg)
    if goattach then 
        for _, v in pairs(game.Players:GetPlayers()) do
                if message:lower() == "sit me" or message:lower() == ":sit me" and v ~= game.Players.LocalPlayer then
                   if antiattach then
                     game.Players:Chat("unsit"..v.Name)
                     print(v.Name..' trying to sit :saj:')
                     game.Players:Chat('h '..v.Name..' trying to sit :saj:')
                   end
                end
                if message:lower() == "stun me" or message:lower() == ":stun me" and v ~= game.Players.LocalPlayer then
                   if antiattach then
                     game.Players:Chat("unstun"..v.Name)
                     print(v.Name..' trying to stun :saj:')
                     game.Players:Chat('h '..v.Name..' trying to stun :saj:')
                   end
                end
        end
    end
end)

game.Players.LocalPlayer.Chatted:Connect(function(msg)
    local command = string.lower(msg)
    if command == ".antiattach" then
        antiattach = true
    end
    if command == ".unantiattach" then
        antiattach = false
    end
end)
