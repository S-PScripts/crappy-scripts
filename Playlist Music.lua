local musiclist = {"9048375035", "6680495507", "6529070845", "6917155909", "6913550990"}
local musicnames = {"All dropping 8 beats", "Meow Meow", "LOUD MUSIC", "They trying to be cray", "FNAF2"}

local function Chat(msg)
        game.Players:Chat(msg)
end


game.Players.LocalPlayer.Chatted:Connect(function(msg)
    local command = string.lower(msg)
    if string.sub(msg:lower(), 1, 7) == ".gmusic" then
        local musicplay = tonumber(string.sub(8, 8))
        if musicplay ~= nil and musicplay >= 1 and musicplay <= #musiclist then
            Chat("h \n\n\n [musich] Playing music:" .. musicnames[musicplay] .. "!")
            Chat("music " .. musiclist[musicplay])
        else
            print("Invalid music number!")
        end
    end
    if command == ".rgmusic" then
        local musicplay = math.random(1, #musiclist)
        Chat("h \n\n\n [musich] Playing music:" .. musicnames[musicplay] .. "!")
        Chat("music " .. musiclist[musicplay])
    end
    if command == ".next" then
       if musicplay == nil or musicplay == #musiclist  then
           local musicplay = 1
       else            
           local musicplay = musicplay + 1
       end
       Chat("h \n\n\n [musich] Playing music:" .. musicnames[musicplay] .. "!")
       Chat("music " .. musiclist[musicplay])
    end
    if command == ".previous" then
       if musicplay == nil or musicplay == 1  then
           local musicplay = 5
       else            
           local musicplay = musicplay - 1
       end
       Chat("h \n\n\n [musich] Playing music:" .. musicnames[musicplay] .. "!")
       Chat("music " .. musiclist[musicplay])
    end
end)
