--[[ updated from the one in my other repo to not stop you from crashing with vg
it is more lightweight then the other one but maybe not as good ]]

antivg=true
game:GetService("RunService").RenderStepped:Connect(function()
        for _, Player in pairs(game.Players:GetChildren()) do
            if Player.Backpack:FindFirstChild("VampireVanquisher") or Player.Character:FindFirstChild("VampireVanquisher") and antivg then
               if Player ~= game.Players.LocalPlayer then
                game.Players:Chat("ungear ".. Player.Name)
                game.Players:Chat("punish ".. Player.Name)
                game.Players:Chat("h \n\n\n ".. Player.Name.. " just tried to use the Vampire Vanquisher! Why did they do that? \n\n\n")
               end
            end
            if Player.Backpack:FindFirstChild("OrinthianSwordAndShield") or Player.Character:FindFirstChild("OrinthianSwordAndShield") and antivg then
               if Player ~= game.Players.LocalPlayer then
                game.Players:Chat("ungear ".. Player.Name)
                game.Players:Chat("punish ".. Player.Name)
                game.Players:Chat("h \n\n\n ".. Player.Name.. " just tried to use the Orinthian Sword and Shield! Why did they do that? \n\n\n")
               end
            end
        end
end)

game.Players.LocalPlayer.Chatted:Connect(function(msg)
    local command = string.lower(msg)
    if command == ".anticrash2" then
        antivg = true
    end
    if command == ".unanticrash2" then
        antivg = false
    end
end)
