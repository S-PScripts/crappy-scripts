-- updated from the one in my other repo to not stop you from crashing with vg
-- still bad because only works with vv, not the sword and shield

antivg=true
game:GetService("RunService").RenderStepped:Connect(function()
        for _, Player in pairs(game.Players:GetChildren()) do
            if Player.Backpack:FindFirstChild("VampireVanquisher") or Player.Character:FindFirstChild("VampireVanquisher") and antivg then
               if Player ~= game.Players.LocalPlayer then
                game.Players:Chat("removegear ".. Player.Name)
                game.Players:Chat("refresh ".. Player.Name)
                game.Players:Chat("punish ".. Player.Name)
                game.Players:Chat("h \n\n\n ".. Player.Name.. " just tried to use the Vampire Vanquisher! Why did they do that? \n\n\n")
               end
            end
        end
end)
