noobs = false -- dont change pls

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

noobs = true

plr.Chatted:Connect(function(msg)
    if noobs then 
        for _, v in pairs(game.Players:GetPlayers()) do
            if v.Name == randomPlayer then
            local connection = v.Chatted:Connect(function(message)
                if message:lower() == "gif" then
                    noobs = false
                    wewillbehappy()
                end
                if message:lower() == "jif" then
                    noobs = false
                    wewillnotbehappy()
                end
            end)
            table.insert(connections, connection)
            end
        end
    end
end)

function wewillbehappy()
    task.wait(2)
    game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("No death for you!", "All")
end

function wewillnotbehappy()
    task.wait(2)
    game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("The all seeing eye is coming...", "All")
    task.wait(2)
    game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Game over.", "All")
    task.wait(2)
    game.Players:Chat("fogend 0")
    game.Players:Chat("time 0")
    game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("FATAL ERROR! JOIN SC TODAY.", "All")
    game.Players:Chat("clone all all all")
    game.Players:Chat("dog all all all")
    game.Players:Chat("clone all all all")
    game.Players:Chat("dog all all all")
    game.Players:Chat("clone all all all")
    game.Players:Chat("dog all all all")
    game.Players:Chat("clone all all all")
    game.Players:Chat("dog all all all")
end
