antidisco = true
antiflash = true


local function Chat(msg)
      game.Players:Chat(msg)
end

game.Players.LocalPlayer.Chatted:Connect(function(msg)
        local command = string.lower(msg)
        if command == ".antidisco" then
            antidisco = true
        end
        if command == ".unantidisco" then
            antidisco = false
        end
            
        if command == ".antiflash" then
            antiflash = true
        end
        if command == ".antiflash" then
            antiflash = true
        end
end)

local function Antis()
    while true do
        task.wait()
        for i,v in pairs(game:GetService("Workspace").Terrain["_Game"].Folder:GetChildren()) do
            if v:IsA('Script') then
                  if antidisco == true then    
                          if v.Name == "Disco" then
                              Chat("fix")
                          end
                  end
                  if antiflash == true then    
                          if v.Name == "Flash" then
                              Chat("fix")
                          end
                  end
            end
        end
  end
end

Antis()
