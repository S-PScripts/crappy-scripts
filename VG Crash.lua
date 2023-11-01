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
