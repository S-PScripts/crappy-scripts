game.Players.LocalPlayer.Chatted:Connect(function(msg)
    local command = string.lower(msg)
    if command == ".lg2" then
       local loopgrab2 = true
    end
    if command == ".unlg2" then
       local loopgrab2 = false
    end
end)

task.spawn(function()
    while true do 
        task.wait()
        coroutine.wrap(function() -- Loopgrab2
			        if loopgrab2 == true then
				            local pads = game:GetService("Workspace").Terrain["_Game"].Admin.Pads:GetChildren("Head")
				            for i, pad in pairs(pads) do
					                  coroutine.wrap(function()
						                          pcall(function()
							                              local cre = pad.Head
						                	              local spr = game.Players.LocalPlayer.Character:FindFirstChild("Head")
						                                firetouchinterest(cre, spr, 1)
						                                firetouchinterest(cre, spr, 0)
						                              	if pad.Name ~= game.Players.LocalPlayer.Name.."'s admin" then
								                                fireclickdetector(adminFlr.Regen.ClickDetector, 0)
							                              end
					                          	end)()
					                  end)()
				            end
			        end
        end)
    end
end)
