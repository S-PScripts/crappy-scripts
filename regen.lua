-- if you want to stop simple abusers lol
game.Players.LocalPlayer.Chatted:Connect(function(msg)
          local command = string.lower(msg)
          if command == ".regen" then
               fireclickdetector(game:GetService("Workspace").Terrain["_Game"].Admin.Regen.ClickDetector, 0)
          end
end)
