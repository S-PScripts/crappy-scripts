local function musiclover()  
  while true do
    if mymusiconly == true and musicoff == false then
		  if game:GetService("Workspace").Terrain["_Game"].Folder:FindFirstChild("Sound") then
				if game:GetService("Workspace").Terrain["_Game"].Folder.Sound.SoundId == "http://www.roblox.com/asset/?id="..mymusiconlyid then
                    			game.Players:Chat("")
    				else
    					game.Players:Chat("music "..mymusiconlyid)
				end
               	  end
         	 if not game:GetService("Workspace").Terrain["_Game"].Folder:FindFirstChild("Sound") then
				game.Players:Chat("music "..mymusiconlyid)
          	 end
    end
    time.wait(0)
  end
end

musicoff = true
game.Players.LocalPlayer.Chatted:Connect(function(msg)
    local command = string.lower(msg)
    if string.sub(msg:lower(), 0, 10) == ".permmusic" then
        musicoff = false
        mymusiconly = true
        mymusiconlyid = tonumber(string.sub(msg:lower(), 12))
        musiclover()
    end
    if command == ".unpermmusic" then
        mymusiconly = false
        musicoff = true
	game.Players:Chat("music OFF")
    end
    if command == ".offmusic" then
        musicoff = true
	game.Players:Chat("music OFF")
    end
    if command == ".onmusic" then
        musicoff = false
    end
end)
