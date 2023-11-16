local stoneTool1 = "PL"
local stoneTool2 = "PL"
game.Players:Chat("ungear me")
game.Players:Chat('gear me 59190534')
game.Players:Chat('gear me 59190534')
repeat task.wait() until #LocalPlayer.Backpack:GetChildren() >= 2
stoneTool1 = LocalPlayer.Backpack:GetChildren()[1]
stoneTool2 = LocalPlayer.Backpack:GetChildren()[2]
task.wait()
stoneTool1.Parent = LocalPlayer.Character
stoneTool2.Parent = LocalPlayer.Character
task.wait()
thread(function()
      stoneTool1.ServerControl:InvokeServer("KeyPress", {["Key"] = "x", ["Down"] = true})
end)
thread(function()
      stoneTool2.ServerControl:InvokeServer("KeyPress", {["Key"] = "x", ["Down"] = true})
end)
print("Click on mobile yourself")
