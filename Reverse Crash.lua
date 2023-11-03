local noobs = true
local connections = {}

plr.Chatted:Connect(function(msg)
    if noobs then 
        for _, v in pairs(game.Players:GetPlayers()) do
            local connection = v.Chatted:Connect(function(message)
                if message:lower():find("94794847") and v ~= game.Players.LocalPlayer then
                   game.Players:Chat('h bro trying to crash haha i crashed first')
                   Crash()
                end
            end)
            table.insert(connections, connection)
        end
    end
end)

local function Crash()
      game.Players:Chat(":gear me 000000000000000000000000000000000000094794847")
      local Backpack = game.Players.LocalPlayer:FindFirstChildOfClass("Backpack")
       game.Players.LocalPlayer.Backpack:WaitForChild("VampireVanquisher")
      for _, v in ipairs(Backpack:GetChildren()) do
             v.Parent = game.Players.LocalPlayer.Character
           v:Activate()
      end
      wait(.15)
      task.spawn(function()
          while true do
               game.Players:Chat("unsize me me me")
               task.wait()
          end
      end)
end
