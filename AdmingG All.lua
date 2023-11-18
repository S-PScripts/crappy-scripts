plr.Chatted:Connect(function(msg)
		spawn(function()
			for  _, v in pairs(game.Players:GetPlayers()) do
				if admin == true then
          
					local command = string.gsub(msg:lower(), "me", plr.Name)
					if string.sub(command, 1, 1) == ":" then
						command = ""
						game.Players:Chat("pm "..plr.Name.." [AdminG]: Please use commands without : . Thanks!")
					end
            
					if string.sub(command, 1, 1) == "/" then
						command = ""
					end
            
			--[[		if string.sub(command, 1, 1) == prefix then
						command = ""
					end]]

					if string.sub(command, 1, 5) == "music" then
						local MUSIC = string.sub(command, 7)
						game.Players:Chat("music "..MUSIC)
              
					elseif string.sub(command, 1, 2) == "m " then
						local message = string.sub(command, 3)
						game.Players:Chat('m '..plr.Name..': '..message)
              
					elseif string.sub(command, 1, 7) == "size me" then
						local NUMBER = string.sub(command, 9)
						game.Players:Chat("size "..plr.Name.." "..NUMBER)
              
					elseif string.sub(command, 1, 12) == "jumppower me" then
						local JPP = string.sub(command, 14)
						game.Players:Chat("jumppower "..plr.Name.." "..JPP)
              
					elseif string.sub(command, 1, 7) == "name me" then
						local NAME = string.sub(command, 9)
						game.Players:Chat("name "..plr.Name.." "..NAME)
              
					elseif string.sub(command, 1, 7) == "message" then
						local message = string.sub(command, 9)
						game.Players:Chat('message '..plr.Name..': '..message)
              
					elseif string.sub(command, 1, 3) == "pm " then
						game.Players:Chat("pm "..plr.Name.." [AdminG]: I can't make you private message because due to limitations. Sorry!")
              
					elseif string.sub(command, 1, 5) == "hint " then
						local message = string.sub(command, 6)
						game.Players:Chat('h '..plr.Name..': '..message)
              
					elseif string.sub(command, 1, 2) == "h " then
						local message = string.sub(command, 3)
						game.Players:Chat('h '..plr.Name..': '..message)
              
					elseif string.sub(command, 1, 4) == "logs" then
						game.Players:Chat("pm "..plr.Name.." [AdminG]: I can't make you see logs because it's client sided. Sorry!")
              
					elseif string.sub(command, 1, 4) == "cmds" then
						game.Players:Chat("pm "..plr.Name.." [AdminG]: I can't make you see commands because it's client sided. Sorry!")
              
					elseif string.sub(command, 1, 8) == "commands" then
						game.Players:Chat("pm "..plr.Name.." [AdminG]: I can't make you see commands because it's client sided. Sorry!")
              
					elseif string.sub(command, 1, 9) == "musiclist" then
						game.Players:Chat("pm "..plr.Name.." [AdminG]: I can't make you see the music list because it's client sided. Sorry!")
              
					elseif string.sub(command, 1, 11) == "packagelist" then
						game.Players:Chat("pm "..plr.Name.." [AdminG]: I can't make you see the package list because it's client sided. Sorry!")
              
					else
						game.Players:Chat(command)
					end
				end
			end
		end)
end)

local Players = game:GetService("Players")

game.Players.LocalPlayer.Chatted:Connect(function(msg)
    local command = string.lower(msg)
    if string.sub(msg:lower(), 0, 10) == ".admina" then
       admin = true
    end
    if string.sub(msg:lower(), 0, 12) == ".unadmina" then
       admin = false
    end
end)
