local function Chat(msg)
      game.Players:Chat(msg)
end

-- CONFIGS!!!!!!!!!!!
antijail = true
antipunish = true
antifreeze = true
antiblind = true
antismoke = true
antifire = true
antisparkles = true
antirocket = true
antikill = true
antispeed = true
antiswag = true
antifly = true
antiseizure = true
anticlone = true
antimsg = true

local function Antis()
  while true do
  	task.wait()
	  if antijail == true then
		      if game:GetService("Workspace").Terrain["_Game"].Folder:FindFirstChild(game.Players.LocalPlayer.Name.."'s jail") then
			        Chat("unjail me")
		      end
	  end
	  if antirocket == true then
		      if game.Players.LocalPlayer.Character:FindFirstChild("Rocket") then
		 	        local oldposition = Player.Character.HumanoidRootPart.CFrame
          	 	game.Players:Chat("reload me")
		 	        Player.Character.HumanoidRootPart.CFrame = oldposition 
		       end
	  end
   	  if antifreeze == true then
	      	if game.Players.LocalPlayer.Character:FindFirstChild("ice") then
        	  	Chat("thaw me")
		 end
	  end
    	  if antipunish == true then
	      	if game.Lighting:FindFirstChild(game.Players.LocalPlayer.Name) then
                	Chat("unpunish me")
	        end
          end
	  if antiblind == true then
		      for i, v in pairs(game.Players.LocalPlayer.PlayerGui:GetDescendants()) do
                		 if v.Name == "EFFECTGUIBLIND" then
			                 Chat("unblind me")
                		 end
		      end
    	  end
	  if antimsg = true then
		     for i, v in pairs(game.Players.LocalPlayer.PlayerGui:GetDescendants()) do
              		         if v.Name == "MessageGUI" or v.Name == "Message" or v.Name == "HintGUI" or v.Name == "Ice" then
                   			 v:Destroy()
                		end
            	     end
          end
  	  if anticlone == true then
		      if game:GetService("Workspace").Terrain["_Game"].Folder:FindFirstChild(game.Players.LocalPlayer.Name) then
                	Chat("unclone me")
		      end
   	  end
   	  if antiseizure == true then
	      	if game.Players.LocalPlayer.Character:FindFirstChild("Seizure") then
                	Chat("unseizure me")
	      	end
    	  end
    	  if antifly == true then
	      	if not game.Players.LocalPlayer.Character:FindFirstChild("Seizure") and game.Players.LocalPlayer.Character.Humanoid:GetState().Name=="PlatformStanding" then
                	Chat("unfly me")
                	Chat("clip me")
		end
          end
  	  if antikill == true then
    		if game.Players.LocalPlayer.Character then
        		if game.Players.LocalPlayer.Character.Humanoid.Health == 0 then
           			 Chat("reset me")
        		end
    		end
	  end
	  if antiswag == true then
		      if game.Players.LocalPlayer.Character:FindFirstChild("EpicCape") then
			          Chat("normal me")
	      	end
	  end
  	  if antisparkles == true then
		      if game.Players.LocalPlayer.Character.Torso:FindFirstChild("Sparkles") then
			          Chat("unsparkles me")
		      end
  	  end
  	  if antifire == true then
	      	if game.Players.LocalPlayer.Character:FindFirstChild("Torso") then
		            if game.Players.LocalPlayer.Character.Torso:FindFirstChild("Fire") then
				                Chat("unfire me")
		          	end
		      end
  	  end	
	  if antismoke == true then
		      if game.Players.LocalPlayer.Character:FindFirstChild("Torso") then
			          if game.Players.LocalPlayer.Character.Torso:FindFirstChild("Smoke") then
                				Chat("unsmoke me")
          			end
      		end
	  end
	  if antispeed == true then
		      if not game.Players.LocalPlayer.Character.Humanoid.WalkSpeed == 16 then
		          	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
	      	end
  	  end
  end
end
Antis()
