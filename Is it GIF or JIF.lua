game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Hey you", "All")
task.wait(2)
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Yes, you!", "All")
task.wait(2)
local Players = game:GetService("Players"):GetPlayers()
local randomPlayer = "Placeholder"
task.wait(2)
if #Players > 0 then
    repeat
    randomPlayer = Players[math.random(#Players)] 
    until randomPlayer ~= game.Players.LocalPlayer
end
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("I'm talking about you"..randomPlayer.."!", "All")

task.wait(2)

game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("How do you pronounce GIF?", "All")

task.wait(2)
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Is it GIF or JIF?", "All")

task.wait(2)
