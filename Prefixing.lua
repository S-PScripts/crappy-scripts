cmdprefix = "." -- Make it ONE character!!
-- this version is bad go use v2 instead please!

game.Players.LocalPlayer.Chatted:Connect(function(msg)
  	if string.sub(msg:lower(), 0, 10) == cmdprefix.."newprefix" then
            cmdprefix = string.sub(msg:lower(), 12, 12)
      end
end)
