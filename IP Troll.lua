game.Players.LocalPlayer.Chatted:Connect(function(msg)
    local command = string.lower(msg)
    if command == ".ipbomb" then
      ohshat()
    end
end)


local function ohshat()
  
local number = math.random(1,255)
local number2 = math.random(1,255)
local number3 = math.random(1,255)
local number4 = math.random(1,255)
print(number.."."..number2.."."..number3.."."..number4)
game.Players:Chat('h \n\n\n Everyone, check logs! \n\n\n')

for i = 1,25 do
    game.Players:Chat('tp',number,".",number2,".",number3,".",number4)]
end

time.wait(4)
game.Players:Chat('h \n\n\n Whoops, that was the wrong thing! \n\n\n')
task.wait(4)

local Players = game:GetService("Players"):GetPlayers()
local randomPlayer = "Placeholder"

if #Players > 0 then
    randomPlayer = Players[math.random(#Players)]
end

game.Players:Chat('h \n\n\n Hopefully'..randomPlayer..'forgives me... \n\n\n')
if randomPlayer == game.Players.LocalPlayer then
   task.wait(4)
   game.Players:Chat("h \n\n\n Wait a second... that's me!!!!!!!")
end

end
