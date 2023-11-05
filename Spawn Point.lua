game.Players.LocalPlayer.Chatted:Connect(function(msg)
          local command = string.lower(msg)
          if command == ".setspawn" then
               spawn = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
          end
          if command == ".gotospawn" then
               game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(spawn)
          end
end)

-- this isn't a spawn point that makes you go to the saved spawn when you die
