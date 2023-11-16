antiblind = true
anticlone = true
antifire = true
antifreeze = true
antifly = true
antikill = true
antiname = true
antimsg = true
antipunish = true
antirocket = true
antiseizure = true
antisit = true
antismoke = true
antisparkles = true
antispeed = true
antistun = true
antiswag = true
antijail = true

local function Chat(msg)
      game.Players:Chat(msg)
end

game.Players.LocalPlayer.Chatted:Connect(function(msg)
        local command = string.lower(msg)
        if command == ".antiblind" then
            antiblind = true
        end
        if command == ".unantiblind" then
            antiblind = false
        end
        if command == ".anticlone" then
            anticlone = true
        end
        if command == ".unanticlone" then
            anticlone = false
        end
        if command == ".antifire" then
            antifire = true
        end
        if command == ".unantifire" then
            antifire = false
        end
        if command == ".antifreeze" then
            antifreeze = true
        end
        if command == ".unantifreeze" then
            antifreeze = false
        end
        if command == ".antifly" then
            antifly = true
        end
        if command == ".unantifly" then
            antifly = false
        end
        if command == ".antikill" then
            antikill = true
        end
        if command == ".unantikill" then
            antikill = false
        end
        if command == ".antiname" then
            antiname = true
        end
        if command == ".unantiname" then
            antiname = false
        end
        if command == ".antimsg" then
            antimsg = true
        end
        if command == ".unantimsg" then
            antimsg = false
        end
        if command == ".antipunish" then
            antipunish = true
        end
        if command == ".unantipunish" then
            antipunish = false
        end
        if command == ".antirocket" then
            antirocket = true
        end
        if command == ".unantirocket" then
            antirocket = false
        end
        if command == ".antiseizure" then
            antiseizure = true
        end
        if command == ".unantiseizure" then
            antiseizure = false
        end
        if command == ".antisit" then
            antisit = true
        end
        if command == ".unantisit" then
            antisit = false
        end
        if command == ".antismoke" then
            antismoke = true
        end
        if command == ".unantismoke" then
            antismoke = false
        end
        if command == ".antisparkles" then
            antisparkles = true
        end
        if command == ".unantisparkles" then
            antisparkles = false
        end
        if command == ".antispeed" then
            antispeed = true
        end
        if command == ".unantispeed" then
            antispeed = false
        end
        if command == ".antistun" then
            antistun = true
        end
        if command == ".unantistun" then
            antistun = false
        end
        if command == ".antiswag" then
            antiswag = true
        end
        if command == ".unantiswag" then
            antiswag = false
        end
        if command == ".antijail" then
            antijail = true
        end
        if command == ".unantijail" then
            antijail = false
        end
end)

local function Antis()
    while true do
        task.wait()
        
        if antiblind == true then
            for i, v in pairs(game.Players.LocalPlayer.PlayerGui:GetDescendants()) do
                if v.Name == "EFFECTGUIBLIND" then
                    Chat("unblind me")
                end
            end
        end
        
        if anticlone == true then
            if game:GetService("Workspace").Terrain["_Game"].Folder:FindFirstChild(game.Players.LocalPlayer.Name) then
                Chat("unclone me")
            end
        end
        
        if antifire == true then
            if game.Players.LocalPlayer.Character:FindFirstChild("Torso") then
                if game.Players.LocalPlayer.Character.Torso:FindFirstChild("Fire") then
                    Chat("unfire me")
                end
            end
        end
        
        if antifreeze == true then
            if game.Players.LocalPlayer.Character:FindFirstChild("ice") then
                Chat("thaw me")
            end
        end
        
        if antifly == true then
            if not game.Players.LocalPlayer.Character:FindFirstChild("Seizure") and game.Players.LocalPlayer.Character.Humanoid:GetState().Name == "PlatformStanding" then
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
        
        if antimsg == true then
            for i, v in pairs(game.Players.LocalPlayer.PlayerGui:GetDescendants()) do
                if v.Name == "MessageGUI" or v.Name == "Message" or v.Name == "HintGUI" or v.Name == "Ice" then
                    v:Destroy()
                end
            end
        end
        
        if antipunish == true then
            if game.Lighting:FindFirstChild(game.Players.LocalPlayer.Name) then
                Chat("unpunish me")
            end
        end
        
        if antirocket == true then
            if game.Players.LocalPlayer.Character:FindFirstChild("Rocket") then
                local oldposition = Player.Character.HumanoidRootPart.CFrame
                game.Players:Chat("reload me")
                Player.Character.HumanoidRootPart.CFrame = oldposition
            end
        end
        
        if antiseizure == true then
            if game.Players.LocalPlayer.Character:FindFirstChild("Seizure") then
                Chat("unseizure me")
            end
        end
        
        if antismoke == true then
            if game.Players.LocalPlayer.Character:FindFirstChild("Torso") then
                if game.Players.LocalPlayer.Character.Torso:FindFirstChild("Smoke") then
                    Chat("unsmoke me")
                end
            end
        end
        
        if antisparkles == true then
            if game.Players.LocalPlayer.Character.Torso:FindFirstChild("Sparkles") then
                Chat("unsparkles me")
            end
        end
        
        if antispeed == true then
            if not game.Players.LocalPlayer.Character.Humanoid.WalkSpeed == 16 then
                game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
            end
        end
        
        if antiswag == true then
            if game.Players.LocalPlayer.Character:FindFirstChild("EpicCape") then
                Chat("normal me")
            end
        end
        
        if antijail == true then
            if game:GetService("Workspace").Terrain["_Game"].Folder:FindFirstChild(game.Players.LocalPlayer.Name .. "'s jail") then
                Chat("unjail me")
            end
        end
        if antiname == true then
          local player = game.Players:FindFirstChild(game.Players.LocalPlayer.Name)
          if player and player.Character then
                  local modelName = player.Character.Name
                  local actualName = player.Name
                  if modelName ~= actualName then
                        Chat("reset me")
                  end
          end
        end
        if antisit == true then
             local player = game.Players.LocalPlayer
             if player.Character then
                    local humanoid = player.Character:WaitForChild("Humanoid", 5)
                    if humanoid and humanoid.Sit then
                        humanoid.Sit = false
                    end
             end
        end
        if antistun == true then
            local player = game.Players.LocalPlayer
             if player.Character then
                    local humanoid = player.Character:WaitForChild("Humanoid", 5)
                    if humanoid and humanoid.PlatformStand then
                        humanoid.PlatformStand = false
                    end
             end
        end

    end
end

Antis()
