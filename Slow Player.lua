local function slowuser()
        while slowuser == true do
              game.Players:Chat("gear ".. caruser .." 253519495")
              time.wait(0)
        end
end

game.Players.LocalPlayer.Chatted:Connect(function(msg)
    local command = string.lower(msg)
    if string.sub(msg:lower(), 0, 8) == ".carspam" then
       slowuser = true
       caruser = string.sub(msg:lower(), 10)
       slowuser()
    end
    if command == ".uncarspam" then
        slowuser = false
    end
end)
