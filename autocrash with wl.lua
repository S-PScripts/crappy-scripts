-- this is trash
local crashwl = {"t_echr", "BANNter_Original","SZCVAK", "Di33le2","Altsarecooleh","MrPetDog12345","Phoenictron","Ripend","Imaimashi","thekillercrum","crumsbot2","aligotoofed","sneakcal264"}
continue = true
for i, player in pairs(game.Players:GetPlayers()) do
    if table.find(crashwl, player.Name) then
       continue = false
       local Servers = game.HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/112420803/servers/Public?sortOrder=Asc&limit=100"))
	     for i,v in pairs(Servers.data) do
  	       if v.playing ~= v.maxPlayers then
      	      game:GetService('TeleportService'):TeleportToPlaceInstance(game.PlaceId, v.id)
           end
       end
     end
end

if continue == true then
    --[[game.Players:Chat("clr")
    game.Players:Chat("fix")
    game.Players:Chat("time 0")   
    game.Players:Chat("fogend")
    game.Players:Chat("music 0000000000000000000006529070845")]]
    wait(0.5)
    counter = 0
    while counter < 1000 do
        game.Players:Chat("clone all all all" .. math.random(1, 1000))
        game.Players:Chat("dog all all all" .. math.random(1, 1000))
        counter = counter + 1
    end
    local Servers = game.HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/112420803/servers/Public?sortOrder=Asc&limit=100"))
  	for i,v in pairs(Servers.data) do
	    if v.playing ~= v.maxPlayers then
  	       game:GetService('TeleportService'):TeleportToPlaceInstance(game.PlaceId, v.id)
      end
    end
end
