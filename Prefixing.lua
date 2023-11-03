print("ok so currently NONE of my scripts have a prefix changer") print("it's mainly because i'm LAZY") print("i will eventually add one but you're need to wait :P")

cmdprefix = "."

game.Players.LocalPlayer.Chatted:Connect(function(msg)
      if string.sub(msg, 1, #cmdprefix+2) == cmdprefix..'newprefix' then 
          cmdprefix = string.sub(msg, #cmdprefix+4, #msg)	        
      end
end)
