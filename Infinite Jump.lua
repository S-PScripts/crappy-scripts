-- "dude i'm not using scripts" ... user in question jumping in the air like 50 times

game.Players.LocalPlayer.Chatted:Connect(function(msg)
    local command = string.lower(msg)
    if command == ".jumpy" then
        IJUMP = true
        game:GetService("UserInputService").JumpRequest:Connect(function()
            if IJUMP == true then
               game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass('Humanoid'):ChangeState("Jumping")
            end
        end)
    end
    if command == ".nojumpy" then
        IJUMP = false
    end
end)
