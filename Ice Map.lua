Workspace = game:GetService("Workspace").Terrain["_Game"].Folder
local plasticTool = "Placeholder"
game.Players:Chat('gear me 2758794374')
repeat task.wait() until LocalPlayer.Backpack:FindFirstChild("2019BloxyAward")
plasticTool = LocalPlayer.Backpack:FindFirstChild("2019BloxyAward")
task.wait(0)
plasticTool.Parent = LocalPlayer.Character
task.wait(0)
for _,part in pairs(Workspace:GetDescendants()) do
      thread(function()
          if part:IsA("Part") then
             local MassCheck = part:Clone()
             MassCheck.Material = Enum.Material.Ice
              if MassCheck:GetMass() <= 5 then
                return
              end
              repeat 
                  plasticTool:Activate()
                    task.wait(0)
                    firetouchinterest(plasticTool:WaitForChild("Handle"), part, 0)
                    firetouchinterest(plasticTool:WaitForChild("Handle"), part, 1)
              until
                  (part.Material == Enum.Material.Ice and part.BrickColor == BrickColor.new("Bright yellow")) or plasticTool.Parent ~= LocalPlayer.Character
           end
      end)
 end
