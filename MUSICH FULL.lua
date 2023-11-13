local musiclist = {"9048375035", "6680495507", "6529070845", "6917155909", "6913550990"}
local musicnames = {"All dropping 8 beats", "Meow meow", "Loud music", "They trying to be cray", "TLT FNAF 2"}

antimusic = false
mymusiconly = false
musicoff = true

local function Chat(msg)
        game.Players:Chat(msg)
end

Chat("h \n\n\n [musich]: executed! \n\n\n")
game.Players.LocalPlayer.Chatted:Connect(function(msg)
    local command = string.lower(msg)
    if string.sub(msg:lower(), 1, 7) == ".gmusic" then
        musicplay = tonumber(string.sub(msg:lower(), 8))
        if musicplay ~= nil and musicplay >= 1 and musicplay <= #musiclist then
            Chat("h \n\n\n [musich] Playing music:" .. musicnames[musicplay] .. ". \n\n\n")
            Chat("music " .. musiclist[musicplay])
        else
            print("Invalid music number!")
        end
    end
    if command == ".rgmusic" then
        musicplay = math.random(1, #musiclist)
        Chat("h \n\n\n [musich] Playing music:" .. musicnames[musicplay] .. ". \n\n\n")
        Chat("music " .. musiclist[musicplay])
    end
    if command == ".next" then
       if musicplay == nil or musicplay == #musiclist  then
          musicplay = 1
       else            
          musicplay = musicplay + 1
       end
       Chat("h \n\n\n [musich] Playing music:" .. musicnames[musicplay] .. ". \n\n\n")
       Chat("music " .. musiclist[musicplay])
    end
    if command == ".previous" then
       if musicplay == nil or musicplay == 1  then
          musicplay = #musiclist
       else            
          musicplay = musicplay - 1
       end
       Chat("h \n\n\n [musich] Playing music:" .. musicnames[musicplay] .. ". \n\n\n")
       Chat("music " .. musiclist[musicplay])
    end
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
    if command == ".stopmusic" then 
	      for i, v in pairs(game:GetDescendants()) do
        	    if v:IsA("Sound") then
                    v:Stop()
        	    end
        end   
    end
    if command == ".startmusic" then
	      for i, v in pairs(game:GetDescendants()) do
        	    if v:IsA("Sound") then
                    v:Play()
        	    end
        end   
    end
    if string.sub(msg:lower(), 1, 7) == ".volume" then
   	    local newVolume = tonumber(string.sub(msg:lower(), 9))
   	    if newVolume ~= nil and workspace.Terrain._Game.Folder:FindFirstChild("Sound") then
      		    workspace.Terrain._Game.Folder.Sound.Volume = newVolume
       	end
    end
    if command == ".musicid" then
	      if workspace.Terrain._Game.Folder:FindFirstChild("Sound") then
			      print("Current Music ID: "..workspace.Terrain._Game.Folder.Sound.SoundId)
	      end
    end
    if command == ".volumern" then
	      if workspace.Terrain._Game.Folder:FindFirstChild("Sound") then
			      print("Current Volume: "..workspace.Terrain._Game.Folder.Sound.Volume)
	      end	
    end
    if command == ".antimusic" then
       mymusiconly = false
       antimusic = true
    end
    if command == ".unantimusic" then
       antimusic = false
    end
    if string.sub(msg:lower(), 0, 10) == ".permmusic" then
        musicoff = false
        mymusiconly = true
        mymusiconlyid = string.sub(msg:lower(), 12)
    end
    if command == ".unpermmusic" then
        mymusiconly = false
        musicoff = true
    end
    if command == ".offmusic" then
        musicoff = true
    end
    if command == ".onmusic" then
        musicoff = false
    end
    if command == ".restart" then
       if workspace.Terrain._Game.Folder:FindFirstChild("Sound") then
	  local myid  = workspace.Terrain._Game.Folder.Sound.SoundId 
	  game.Players:Chat("music "..myid)
       end
     end
end)

local function musicsettings()  
  while true do
    if antimusic == true then
		  if game:GetService("Workspace").Terrain["_Game"].Folder:FindFirstChild("Sound") then
				 game.Players:Chat("music use a boombox instead")
      end
    end
    if mymusiconly == true and musicoff == false then
		  if game:GetService("Workspace").Terrain["_Game"].Folder:FindFirstChild("Sound") then
				if game:GetService("Workspace").Terrain["_Game"].Folder.Sound.SoundId == "http://www.roblox.com/asset/?id="..mymusiconlyid then
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


musicsettings()  
