-- people gonna get mad at you for this...

game.Players.LocalPlayer.Chatted:Connect(function(msg)
    local command = string.lower(msg)
    if command == ".pause" then
       for i,v in pairs(workspace.Terrain._Game.Folder:GetDescendants()) do
	          if v:IsA("Sound") and v.Playing then
              	v.Playing = false
          	end
       end
    end
    if command == ".play" then
      	for i,v in pairs(workspace.Terrain._Game.Folder:GetDescendants()) do
          	if v:IsA("Sound") and not v.Playing then
              	v.Playing = true
            end
      	end
    end
    if command == ".stopmusic" then -- my executor is down and i have no fricking idea what this does. ..
	for i, v in pairs(game:GetDescendants()) do
        	if v:IsA("Sound") then
                        v:Stop()
        	end
        end   
    end
    if command == ".startmusic" then  -- i think this and stopmusic may be the same as pause and play!!!!!!!!!!!!!!
	for i, v in pairs(game:GetDescendants()) do
        	if v:IsA("Sound") then
                        v:Play()
        	end
        end   
    end
end)
