game.Players.LocalPlayer.Chatted:Connect(function(msg)
    local command = string.lower(msg)
    if command == ".lg" then
       local loopgrab = true
    end
    if command == ".unlg" then
       local loopgrab = false
    end
end)

task.spawn(function()
    while true do 
        task.wait()
        coroutine.wrap(function() -- PadAbuse
			      if loopgrab == true then
				        local pads = game:GetService("Workspace").Terrain["_Game"].Admin.Pads:GetChildren("Head")
			      	    	for i, pad in pairs(pads) do
					        coroutine.wrap(function()
						          pcall(function()
							            local cre = pad.Head
						              	    local spr = game.Players.LocalPlayer.Character:FindFirstChild("Head")
						              	    firetouchinterest(cre, spr, 1)
                          					    firetouchinterest(cre, spr, 0)
                          				            firetouchinterest(cre, spr, 1)
							            task.wait()
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
