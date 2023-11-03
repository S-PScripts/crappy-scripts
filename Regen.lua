-- if you want to stop simple abusers lol
game.Players.LocalPlayer.Chatted:Connect(function(msg)
          local command = string.lower(msg)
          if command == ".regen" then
               fireclickdetector(game:GetService("Workspace").Terrain["_Game"].Admin.Regen.ClickDetector, 0)
          end
          if command == ".house" then
               game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-31.0896435, 8.22999477, 70.522644, -0.999961913, 4.495271e-08, -0.0087288795, 4.55292621e-08, 1, -6.58523618e-08, 0.0087288795, -6.62472743e-08, -0.999961913)
          end
end)
