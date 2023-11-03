-- the code
game.Players.LocalPlayer.Chatted:Connect(function(msg)
    local command = string.lower(msg)
    if command == ".perm" then
       local perm = true
    end
    if command == ".unperm" then
       local perm = false
    end
end)

task.spawn(function()
    while true do 
        task.wait()
        coroutine.wrap(function() -- PadAbuse
			      if padAbuse == true then
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
						          end)
					        end)()
				      end
			    end
        end)()
		
        coroutine.wrap(function() -- Perm
			      local spr = game.Players.LocalPlayer.Character:FindFirstChild("Head")
			      if perm ~= true or adminFlr.Pads:FindFirstChild(game.Players.LocalPlayer.Name.."'s admin") ~= nil then 
			      else
				    pcall(function()
					      local pad = adminFlr.Pads:FindFirstChild("Touch to get admin")
					      local a = pad.Head
					      firetouchinterest(a, spr, 1)
                			      firetouchinterest(a, spr, 0)
                			      firetouchinterest(a, spr, 1)
					      task.wait()
					      firetouchinterest(a, spr, 0)
				    end)
			      end
        end)()
    end
end)
