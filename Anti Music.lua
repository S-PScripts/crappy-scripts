local function ihatemusic()  
  while true do
    if antimusic == true then
		  if game:GetService("Workspace").Terrain["_Game"].Folder:FindFirstChild("Sound") then
				 game.Players:Chat("music use a boombox instead")
      end
    end
    time.wait(0)
  end
end

game.Players.LocalPlayer.Chatted:Connect(function(msg)
    local command = string.lower(msg)
    if command == ".antimusic" then
       antimusic = true
    end
    if command == ".unantimusic" then
       antimusic = false
    end
end)

ihatemusic()  
