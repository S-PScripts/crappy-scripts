anticlone = true
antifire = true
antifreeze = true
antifly = true
antikill = true
antijump = true
antipunish = true
antirocket = true
antiseizure = true
antismoke = true
antisparkles = true
antispeed = true
antiswag = true
antijail = true
antiparticles = true
antiglow = true
antihealthc = true

local function Chat(msg)
      game.Players:Chat(msg)
end

game.Players.LocalPlayer.Chatted:Connect(function(msg)
        local command = string.lower(msg)
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
        if command == ".antijump" then
            antijump = true
        end
        if command == ".unantijump" then
            antijump = false
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
        for _, player in ipairs(game.Players:GetPlayers()) do
 
        if anticlone == true then
            if game:GetService("Workspace").Terrain["_Game"].Folder:FindFirstChild(player.Name) then
                Chat("unclone"..player.Name)
            end
        end
        
        if antifire == true then
            if player.Name.Character:FindFirstChild("Torso") then
                if player.Name.Character.Torso:FindFirstChild("Fire") then
                    Chat("unfire "..player.Name)
                end
            end
        end
        
        if antifreeze == true then
            if player.Name.Character:FindFirstChild("ice") then
                Chat("thaw "..player.Name)
            end
        end
        
        if antifly == true then
            if not player.Name.Character:FindFirstChild("Seizure") and player.Name.Character.Humanoid:GetState().Name == "PlatformStanding" then
                Chat("unfly"..player.Name)
                Chat("clip "..player.Name)
            end
        end
        
        if antikill == true then
            if player.Name.Character then
                if player.Name.Character.Humanoid.Health == 0 then
                    Chat("reset "..player.Name)
                end
            end
        end

        if antijump == true then
            if not player.Name.Character.Humanoid.JumpPower == 100 then
                Chat("norrmaljump "..player.Name)
            end
        end

        if antipunish == true then
            if game.Lighting:FindFirstChild(player.Name) then
                Chat("unpunish "..player.Name)
            end
        end
        
        if antirocket == true then
            if player.Name.Character:FindFirstChild("Rocket") then
                Chat("reload "..player.Name)
            end
        end
        
        if antiseizure == true then
            if player.Name.Character:FindFirstChild("Seizure") then
                Chat("unseizure "..player.Name)
            end
        end
        
        if antismoke == true then
            if player.Name.Character:FindFirstChild("Torso") then
                if player.Name.Character.Torso:FindFirstChild("Smoke") then
                    Chat("unsmoke "..player.Name)
                end
            end
        end
        
        if antisparkles == true then
            if player.Name.Torso:FindFirstChild("Sparkles") then
                Chat("unsparkles "..player.Name)
            end
        end
        
        if antispeed == true then
            if not player.Name.Character.Humanoid.WalkSpeed == 16 then
                Chat("speed "..player.Name.." 16")
            end
        end
        
        if antiswag == true then
            if player.Name.Character:FindFirstChild("EpicCape") then
                Chat("normal "..player.Name)
            end
        end
        
        if antijail == true then
            if game:GetService("Workspace").Terrain["_Game"].Folder:FindFirstChild(player.Name.. "'s jail") then
                Chat("unjail "..player.Name)
            end
        end
                  
        if antiglow == true then
            if player.Name.Character:FindFirstChild("PointLight") then
                  Chat("unglow "..player.Name)

            end
        end
      
        if antiparticles == true then
            if player.Name.Character:FindFirstChild("ParticleEmitter") then
                  Chat("unparticle "..player.Name)
            end
        end
                  
        if antihealthc == true then
            if not player.Name.Character.Humanoid.Health == 100 then
                  Chat("health"..player.Name.." 100")
            end
        end
                  
        end
    end
end

Antis()
