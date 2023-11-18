local gocrash = true
local connections = {}

plr.Chatted:Connect(function(msg)
    if gocrash then 
        for _, v in pairs(game.Players:GetPlayers()) do
                if message:lower():find("94794847") or message:lower():find("#########") and v ~= game.Players.LocalPlayer then
                   if anticrash == true then
                      game.Players:Chat('reload'..v.Name)
                      game.Players:Chat('punish'..v.Name)
                      game.Players:Chat('h No crashing, '..v.Name..'!')
                   end
                end
        end
    end
end)

game.Players.LocalPlayer.Chatted:Connect(function(msg)
    local command = string.lower(msg)
    if command == ".antic" then
        anticrash = true
    end
    if command == ".unantic" then
        anticrash = false
    end
end)
