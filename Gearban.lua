game.Players.LocalPlayer.Chatted:Connect(function(msg)
    if string.sub(msg:lower(), 1, 8) == ".gearban" then
      game.Players:Chat("gear me 00000000000000000082357101")
		  wait(0.50)
		  names = game.Players:GetChildren()
		  local name = string.sub(msg:lower(), 10)
		  for i,v in pairs(names) do
			      strlower = string.lower(v.Name)
			      sub = string.sub(strlower,1,#name)
			      if name == sub then
				          game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame
				          wait(0.25)
				          local JailPlayer = v.Name
				          workspace[game.Players.LocalPlayer.Name].PortableJustice.MouseClick:FireServer(workspace[JailPlayer])
				          wait(0.25)
				          game.Players:Chat("reset "..v.Name)
                  game.Players:Chat("pm "..v.Name.. "haha no gears for you rejoin if you want them")
			      end
		  end
    end
end)
