print("ok so currently NONE of my scripts have a prefix changer\nit's mainly because i'm LAZY\ni will eventually add one but you're need to wait :P")

cmdprefix = "." -- Make it ONE character!!

game.Players.LocalPlayer.Chatted:Connect(function(msg)
  	if string.sub(msg:lower(), 0, 10) == cmdprefix.."newprefix" then
            cmdprefix = string.sub(msg:lower(), 11, 11)
      end
end)
