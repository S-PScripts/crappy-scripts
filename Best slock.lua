local prefix = '/'
local whitelist = {"scriptingprogrammer","me_123eq","me_crashking"}
local blacklist = {}
local slockenabled = false

function checkforplayer(plr)
    local players = game.Players:GetPlayers()
    for i, v in pairs(players) do
        if string.find(v.Name:lower(), plr:lower()) then
            player = v.Name
            break
        end
    end
end

function slock()
    local players = game.Players:GetPlayers()
    for i, v in pairs(game.Workspace:GetChildren()) do
        if v.Name ~= game.Players.LocalPlayer.Name and not table.find(whitelist, v.Name) then
            for j, player in ipairs(players) do
                if string.find(player.Name:lower(), v.Name:lower()) then
                    if slockenabled == true or table.find(blacklist, v.Name) then
                        if not game.Lighting:FindFirstChild(v.Name) then
                                game.Players:Chat('punish '..v.Name)
                        end
                    end
                    break
                end
            end
        end
    end
end 

game.Players.LocalPlayer.Chatted:Connect(function(msg)
    if string.sub(msg, 1, #prefix+2) == prefix..'wl' then
        checkforplayer(string.sub(msg, #prefix+4, #msg))
        table.insert(whitelist, player)
        game.Players:Chat('unpunish '..player)
    end
    
    if string.sub(msg, 1, #prefix+4) == prefix..'unwl' then
        checkforplayer(string.sub(msg, #prefix+6, #msg))
        table.remove(whitelist,player)
    end

    if string.sub(msg, 1, #prefix+2) == prefix..'bl' then
        checkforplayer(string.sub(msg, #prefix+4, #msg))
        table.insert(blacklist, player)
    end

    if string.sub(msg, 1, #prefix+4) == prefix..'unbl' then
        checkforplayer(string.sub(msg, #prefix+6, #msg))
        table.remove(blacklist,player)
        game.Players:Chat('unpunish '..player)
    end
    
    if string.sub(msg, 1, #prefix+5) == prefix..'slock' then
        slockenabled = true
    end
    
    if string.sub(msg, 1, #prefix+7) == prefix..'unslock' then
        slockenabled = false
        game.Players:Chat('unpunish all')
    end
end)

while true do
      slock() 
      task.wait()
end
