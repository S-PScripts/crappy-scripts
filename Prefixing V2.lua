-- better version so now you prefix can be any length long!
cmdprefix = "."
game.Players.LocalPlayer.Chatted:Connect(function(msg)
  	if string.sub(msg, 1, #prefix+9) == cmdprefix.."newprefix" then
            cmdprefix = string.sub(msg, #prefix+11)
    end
end)
