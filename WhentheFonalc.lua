local function crazy_i_was_crazy_once()
while true and crazy == true do
  Chat("h I'm going to do a thing") 
  task.wait(4)

  for i = 1,50 do
    Chat("h WOWWWWWWW")
    Chat("m WOWWWWWWW")
    Chat("pm all WOWWWWWWW")
  end

  task.wait(4)

  Chat("h Did you notice that?")

  task.wait(4)

  Chat("h let's try again...") 

  task.wait(4)

  for i = 1,50 do
    Chat("h WOWWWWWWW")
    Chat("m WOWWWWWWW")
    Chat("pm all WOWWWWWWW")
  end

  task.wait(4)

  Chat("h Saw it now, did you?")

  task.wait(4)

  Chat("h No?")

  task.wait(4)

  Chat("h fine...")

  task.wait(4)

end
end

local function Chat(msg)
    game.Players:Chat(msg)
end

game.Players.LocalPlayer.Chatted:Connect(function(msg)
    local command = string.lower(msg)
    if command == ".CRAZY" then
        crazy = true
        crazy_i_was_crazy_once()
    end
    if command == ".uncrazy" then
        crazy = false
    end
end)

-- gaymen the dog
