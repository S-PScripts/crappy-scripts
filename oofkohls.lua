if game.PlaceId == 112420803 then
warn('oofkolhs v1 | Edited: Loading...')
wait(3)
-----------------------------------------------------------------------------------------------------------------------
--[[
                                                                   
              ,,   ,,                                              
`7MMF'        db  *MM                                              
  MM               MM                                              
  MM        `7MM   MM,dMMb.  `7Mb,od8  ,6"Yb.  `7Mb,od8 `7M'   `MF'
  MM          MM   MM    `Mb   MM' "' 8)   MM    MM' "'   VA   ,V  
  MM      ,   MM   MM     M8   MM      ,pm9MM    MM        VA ,V   
  MM     ,M   MM   MM.   ,M9   MM     8M   MM    MM         VVV    
.JMMmmmmMMM .JMML. P^YbmdP'  .JMML.   `Moo9^Yo..JMML.       ,V     
                                                           ,V      
                                                        OOb"       
]]
-----------------------------------------------------------------------------------------------------------------------
local library = loadstring(game:HttpGet("https://pastebin.com/raw/MuJ0Nr9V", true))()
local zalgo = game:HttpGet("https://pastebin.com/raw/d7eTDKbJ")
library.options.underlinecolor = "rainbow"
local oofp = library:CreateWindow('Player')
local oofw = library:CreateWindow('Workspace')
local oofg = library:CreateWindow('Game')
local ooff = library:CreateWindow('Functions')
local oofe = library:CreateWindow('Extra')
local oofc = library:CreateWindow("Commands")
local ooft = library:CreateWindow("Gears")
local oofm = library:CreateWindow("GUI")



local oofgp = game:GetService("Players")
local oofap = oofgp:GetPlayers()
local oofpl = oofgp.LocalPlayer
local oofch = oofpl.Character
local oofcp = oofch:WaitForChild("HumanoidRootPart",5)
local oofga = game:GetService("Workspace")["Terrain"]["_Game"]
local ooffo = oofga.Folder
local oofaf = oofga["Admin"]
local oofgl = game.Lighting
  
  
  




fireclickdetector = fireclickdetector or click_detector
banned = {""}

local function ServerCheck()
if oofaf:FindFirstChild("Regen") and oofaf.Regen:FindFirstChild("ClickDetector") then
fireclickdetector(oofaf.Regen.ClickDetector, 0)
wait(0.1)
if oofaf.Pads:FindFirstChild("Touch to get admin") then
if oofaf.Pads["Touch to get admin"]:FindFirstChild("Head") then
return true
else
return false
end
else
return false
end
else
return false
end
end

local function SendNotification(title,text,duration,...)
game.StarterGui:SetCore("SendNotification", {
Title = title;
Text = text;
Icon = "";
Duration = duration;
})
end

function isPerm()
return game:GetService("MarketplaceService"):UserOwnsGamePassAsync(tonumber(oofgp.LocalPlayer.UserId), 66254)
end

if isPerm() == false then do
if ServerCheck() then
local pad = oofaf.Pads["Touch to get admin"].Head
oofgp.LocalPlayer.Character:MoveTo(pad.Position)
wait(1)
oofgp.LocalPlayer.Character:MoveTo(oofcp.Position) -- Gives you Admin
else
SendNotification("Unable to Teleport","No Admin Pads available")
end
end
end
-----------------------------------------------------------------------------------------------------------------------
--[[
                                                                   
                                                               ,,  
  .g8"""bgd                                                  `7MM  
.dP'     `M                                                    MM  
dM'       `   .gP"Ya  `7MMpMMMb.   .gP"Ya  `7Mb,od8  ,6"Yb.    MM  
MM           ,M'   Yb   MM    MM  ,M'   Yb   MM' "' 8)   MM    MM  
MM.    `7MMF'8M""""""   MM    MM  8M""""""   MM      ,pm9MM    MM  
`Mb.     MM  YM.    ,   MM    MM  YM.    ,   MM     8M   MM    MM  
  `"bmmmdPY   `Mbmmd' .JMML  JMML. `Mbmmd' .JMML.   `Moo9^Yo..JMML.
                                                                   
                                                                   
]]
--[[-------------------------------------------------------------------------------------------------------------------
    _        _           _        
   /_\    __| |  _ __   (_)  _ _  
  / _ \  / _` | | '  \  | | | ' \ 
 /_/ \_\ \__,_| |_|_|_| |_| |_||_|
                                  
]]oofp:Section('Admin')



-- Get Admin | Button
local tpadmin = oofp:Button("Get Admin", function()
if ServerCheck() then
local pad = oofaf.Pads["Touch to get admin"].Head
oofgp.LocalPlayer.Character:MoveTo(pad.Position)
wait(1)
oofgp.LocalPlayer.Character:MoveTo(oofcp.Position) -- Gives you Admin
else
SendNotification("Unable to Teleport","No Admin Pads available")
end
end)



-- Regen Admin Pads | Button
local regenadmin = oofp:Button("Regen Admin Pads", function()
if ServerCheck() then else SendNotification("Regen Failed", "Regen Pad unavailble.") end
end)



-- Loop Regen Admin Pads | Toggle
loopregenadminpads = false
local loopregenadminpadstoggle = oofp:Toggle("Loop Regen Admin Pads", {flag = 'loopregenadminpadstoggle'}, function()
if loopregenadminpads == false then
loopregenadminpads = true
else
loopregenadminpads = false
end

if loopregenadminpads == true then do
local loopregenadminpadscoroutine = coroutine.wrap(function()
while wait() do
if loopregenadminpads == false then break end
if ServerCheck() then else SendNotification("Regen Failed", "Regen Pad unavailble.") end
end
end)()
end
end

if loopregenadminpads == false then
end
end)



-- Visible Spawn Pads | Toggle
visiblespawnpadstoggle = false
local visiblespawnpads = oofp:Toggle('Visible Spawn Pads', {flag = "visiblespawnpads"}, function()
if visiblespawnpadstoggle == false then
visiblespawnpadstoggle = true
else
visiblespawnpadstoggle = false
end

if visiblespawnpadstoggle == true then do
for i,v in pairs(game["Workspace"]["Terrain"]["_Game"]["Workspace"]:GetChildren()) do
for i = 1, 1 do
if v:IsA("SpawnLocation") then do
v.Transparency = 0
end end
end
end
end
end

if visiblespawnpadstoggle == false then do
for i,v in pairs(game["Workspace"]["Terrain"]["_Game"]["Workspace"]:GetChildren()) do
for i = 1, 1 do
if v:IsA("SpawnLocation") then do
v.Transparency = 1
end end
end
end
end
end
end)
-----------------------------------------------------------------------------------------------------------------------
--[[-------------------------------------------------------------------------------------------------------------------
  ___   _                               __  __                     
 | _ \ | |  __ _   _  _   ___   _ _    |  \/  |  ___   _ _    _  _ 
 |  _/ | | / _` | | || | / -_) | '_|   | |\/| | / -_) | ' \  | || |
 |_|   |_| \__,_|  \_, | \___| |_|     |_|  |_| \___| |_||_|  \_,_|
                   |__/                                            
]]oofp:Section('Player Menu')



local Players = oofgp
list1 = {}

for i=1, #oofap do
table.insert(list1, oofap[i].Name)
end

Players.PlayerAdded:Connect(function(player)
table.insert(list1, player.Name)
end)

Players.PlayerRemoving:Connect(function(player)
for i,v in pairs(list1) do
if v == player.Name then
table.remove(list1, i)
end
end
end)



-- Dropdown
local PlayerList = oofp:Dropdown("Players", {
location = _G;
flag = "selectp";
list = list1;
}, function(new)
end)



-- Lag Player: pm/ | Toggle
zalgospam = false
local zalgospamtoggle = oofp:Toggle('Lag Player: pm/', {flag = 'zalgospamtoggle'}, function()
if zalgospam == false then
zalgospam = true
else
zalgospam = false
end

if zalgospam == true then do
local zalgospamcoroutine = coroutine.wrap(function()
while wait() do
if zalgospam == false then break end

oofgp:Chat("pm/"..tostring(_G.selectp).."/"..zalgo)

end
end)()
end
end

if zalgospam == false then do
end
end
end)



-- Lag Player: pm | Toggle
zalgospam = false
local zalgospamtoggle = oofp:Toggle('Lag Player: pm', {flag = 'zalgospamtoggle'}, function()
if zalgospam == false then
zalgospam = true
else
zalgospam = false
end

if zalgospam == true then do
local zalgospamcoroutine = coroutine.wrap(function()
while wait() do
if zalgospam == false then break end

oofgp:Chat("pm "..tostring(_G.selectp).." "..zalgo)

end
end)()
end
end

if zalgospam == false then do
end
end
end)



-- Respawn Player | Button
oofp:Button("Respawn Player", function()
oofgp:Chat("respawn "..tostring(_G.selectp))
end)



-- Tp to Player | Button
oofp:Button("Tp to Player", function()
oofgp:Chat("tp me "..tostring(_G.selectp))
end)



-- Boxify Player | Button
oofp:Button("Boxify Player", function()
oofgp:Chat("size "..tostring(_G.selectp).." 0.3")
oofgp:Chat("size "..tostring(_G.selectp).." 0.3")
oofgp:Chat("size "..tostring(_G.selectp).." 0.3")
oofgp:Chat("size "..tostring(_G.selectp).." 0.3")
oofgp:Chat("size "..tostring(_G.selectp).." 0.3")
oofgp:Chat("size "..tostring(_G.selectp).." 2")
oofgp:Chat("size "..tostring(_G.selectp).." 2")
oofgp:Chat("size "..tostring(_G.selectp).." 2")
oofgp:Chat("size "..tostring(_G.selectp).." 2")
oofgp:Chat("size "..tostring(_G.selectp).." 2")
end)



-- Ice Cube Player | Button
oofp:Button("Ice Cube Player", function()
oofgp:Chat("freeze "..tostring(_G.selectp))
wait(.25)
oofgp:Chat("size "..tostring(_G.selectp).." 9")
wait(.25)
oofgp:Chat("size "..tostring(_G.selectp).." 10")
end)
-----------------------------------------------------------------------------------------------------------------------
--[[
                                                                                                 
                                                                                                 
`7MMF'     A     `7MF'                   `7MM                                                    
  `MA     ,MA     ,V                       MM                                                    
   VM:   ,VVM:   ,V    ,pW"Wq.  `7Mb,od8   MM  ,MP',pP"Ybd `7MMpdMAo.  ,6"Yb.   ,p6"bo   .gP"Ya  
    MM.  M' MM.  M'   6W'   `Wb   MM' "'   MM ;Y   8I   `"   MM   `Wb 8)   MM  6M'  OO  ,M'   Yb 
    `MM A'  `MM A'    8M     M8   MM       MM;Mm   `YMMMa.   MM    M8  ,pm9MM  8M       8M"""""" 
     :MM;    :MM;     YA.   ,A9   MM       MM `Mb. L.   I8   MM   ,AP 8M   MM  YM.    , YM.    , 
      VF      VF       `Ybmd9'  .JMML.   .JMML. YA.M9mmmP'   MMbmmd'  `Moo9^Yo. YMbmd'   `Mbmmd' 
                                                             MM                                  
                                                           .JMML.                                
]]
--[[-------------------------------------------------------------------------------------------------------------------
  __  __                       ___   _             __    __ 
 |  \/  |  ___  __ __  ___    / __| | |_   _  _   / _|  / _|
 | |\/| | / _ \ \ V / / -_)   \__ \ |  _| | || | |  _| |  _|
 |_|  |_| \___/  \_/  \___|   |___/  \__|  \_,_| |_|   |_|  
                                                            
]]oofw:Section("Move Stuff")



-- Bind to Platform | Button
oofw:Button("Bind to Platform", function()
oofgp:Chat("stun me")
wait(1)
oofgp:Chat("punish me")
wait(1)
oofgp:Chat("unpunish me")
end)



-- Dropdown
local MovesList = oofw:Dropdown("Movements", {
location = _G;
flag = "selectm";
list = {
"Rotate to Spawn";
"Move to Spawn";
"Rotate to Player";
"Move to Player";
"Flip Platform";
"Anti-Bind Platform";
}
}, function(new)
end)



-- Execute | Button
oofw:Button("Execute", function()



if _G.selectm == "Rotate Platform to Spawn" then do
oofgp:Chat("respawn "..tostring(_G.selectplr))
wait(.1)
oofgp:Chat("tp me "..tostring(_G.selectplr))
wait(.1)
oofgp:Chat("seizure me")
wait(.1)
oofgp:Chat("reset me")
end
end

if _G.selectm == "Move Platform to Spawn" then do
oofgp:Chat("respawn "..tostring(_G.selectplr))
wait(.1)
oofgp:Chat("tp me "..tostring(_G.selectplr))
wait(.1)
oofgp:Chat("reset me")
end
end

if _G.selectm == "Rotate Platform to Player" then do
oofgp:Chat("tp me "..tostring(_G.selectplr))
wait(.1)
oofgp:Chat("seizure me")
wait(.1)
oofgp:Chat("reset me")
end
end

if _G.selectm == "Move Platform to Player" then do
oofgp:Chat("tp me "..tostring(_G.selectplr))
end
end

if _G.selectm == "Flip Platform" then do
oofgp:Chat("seizure me")
end
end

if _G.selectm == "Anti-Bind Platform" then do
oofgp:Chat("trip me")
end
end



end)
-----------------------------------------------------------------------------------------------------------------------
--[[-------------------------------------------------------------------------------------------------------------------
  ___          _          _       ___                            _     _      _               
 | _ \  __ _  (_)  _ _   | |_    | __| __ __  ___   _ _   _  _  | |_  | |_   (_)  _ _    __ _ 
 |  _/ / _` | | | | ' \  |  _|   | _|  \ V / / -_) | '_| | || | |  _| | ' \  | | | ' \  / _` |
 |_|   \__,_| |_| |_||_|  \__|   |___|  \_/  \___| |_|    \_, |  \__| |_||_| |_| |_||_| \__, |
                                                          |__/                          |___/ 
]]oofw:Section("Paint Everything")



-- Dropdown
local ColorList = oofw:Dropdown("Colors", {
location = _G;
flag = "selectc";
list = {
"Original";
"Random";
"Rainbow";
"";
"Alder"; "Artichoke"; "Baby blue"; "Beige"; "Black"; "Black metallic"; "Br. reddish orange"; "Br. yellowish green"; "Br. yellowish orange"; "Brick yellow"; "Bright blue"; "Bright bluish green"; "Bright bluish violet"; "Bright green"; "Bright orange"; "Bright purple"; "Bright red"; "Bright reddish lilac"; "Bright reddish violet"; "Bright violet"; "Bright yellow"; "Bronze"; "Brown"; "Burgundy"; "Burlap"; "Burnt Sienna"; "Buttermilk"; "CGA brown"; "Cadet blue"; "Camo"; "Carnation pink"; "Cashmere"; "Cloudy grey"; "Cocoa"; "Cool yellow"; "Copper"; "Cork"; "Crimson"; "Curry"; "Cyan"; "Daisy orange"; "Dark Curry"; "Dark Royal blue"; "Dark blue"; "Dark green"; "Dark grey"; "Dark grey metallic"; "Dark indigo"; "Dark nougat"; "Dark orange"; "Dark red"; "Dark stone grey"; "Dark taupe"; "Deep blue"; "Deep orange"; "Deep orange"; "Dirt brown"; "Dove blue"; "Dusty Rose"; "Earth blue"; "Earth green"; "Earth orange"; "Earth yellow"; "Eggplant"; "Electric blue"; "Faded green"; "Fawn brown"; "Fire Yellow"; "Flame reddish orange"; "Flame yellowish orange"; "Flint"; "Fog"; "Forest green"; "Fossil"; "Ghost grey"; "Gold"; "Gold"; "Grey"; "Grime"; "Gun metallic"; "Hot pink"; "Hurricane grey"; "Institutional white"; "Khaki"; "Lapis"; "Laurel green"; "Lavender"; "Lemon metalic"; "Lig. Yellowich orange"; "Lig. yellowish green"; "Light Royal blue"; "Light blue"; "Light bluish green"; "Light bluish violet"; "Light brick yellow"; "Light green Mint"; "Light grey"; "Light grey metallic"; "Light lilac"; "Light orange"; "Light orange brown"; "Light pink"; "Light purple"; "Light red"; "Light reddish violet"; "Light stone grey"; "Light yellow"; "Lilac"; "Lilac"; "Lily white"; "Lime green"; "Linen"; "Magenta"; "Maroon"; "Mauve"; "Med. bluish green"; "Med. reddish violet"; "Med. yellowish green"; "Med. yellowish orange"; "Medium Royal blue"; "Medium blue"; "Medium bluish violet"; "Medium green"; "Medium lilac"; "Medium orange"; "Medium red"; "Medium stone grey"; "Mid gray"; "Mint"; "Moss"; "Mulberry"; "Navy blue"; "Neon green"; "Neon orange"; "New Yeller"; "Nougat"; "Olive"; "Olivine"; "Oyster"; "Parsley green"; "Pastel Blue"; "Pastel blue-green"; "Pastel brown"; "Pastel green"; "Pastel light blue"; "Pastel orange"; "Pastel violet"; "Pastel yellow"; "Pearl"; "Persimmon"; "Phosph. White"; "Pine Cone"; "Pink"; "Plum"; "Quill grey"; "Really black"; "Really blue"; "Really red"; "Red flip/flop"; "Reddish brown"; "Reddish lilac"; "Royal blue"; "Royal purple"; "Rust"; "Rust"; "Sage green"; "Salmon"; "Sand blue"; "Sand blue metallic"; "Sand green"; "Sand red"; "Sand violet"; "Sand violet metallic"; "Sand yellow"; "Sand yellow metallic"; "Sea green"; "Seashell"; "Shamrock"; "Silver"; "Silver flip/flop"; "Slime green"; "Smoky grey"; "Steel blue"; "Storm blue"; "Sunrise"; "Tawny"; "Teal"; "Terra Cotta"; "Toothpaste"; "Tr. Blue"; "Tr. Bright bluish violet"; "Tr. Brown"; "Tr. Flu. Blue"; "Tr. Flu. Green"; "Tr. Flu. Red"; "Tr. Flu. Reddish orange"; "Tr. Flu. Yellow"; "Tr. Green"; "Tr. Lg blue"; "Tr. Medi. reddish violet"; "Tr. Red"; "Tr. Yellow"; "Transparent"; "Turquoise"; "Warm yellowish orange"; "Wheat"; "White"; "Yellow flip/flop";
}
}, function(new)
end)



rainbowcolour = Color3.fromHSV(1, 1, 1)



local rainbowroad = coroutine.wrap(function()
while wait() do
local hue = tick() % 5 / 5
rainbowcolour = Color3.fromHSV(hue, 1, 1)
end
end)()



local v1 = "PaintPart"



-- Start | Button
oofw:Button("Start", function()



function transformToColor3(col) --Function to convert, just cuz c;
local r = col.r --Red value
local g = col.g --Green value
local b = col.b --Blue value
return Color3.new(r,g,b); --Color3 datatype, made of the RGB inputs
end

oofgp:Chat("gear me 00000000000000000018474459")
wait(1)
oofgp.LocalPlayer.Character.Humanoid:EquipTool(oofgp.LocalPlayer.Backpack.PaintBucket)

local remote = game:GetService("Workspace")[oofgp.LocalPlayer.Name].PaintBucket:WaitForChild("Remotes").ServerControls



if _G.selectc == "Rainbow" then do
for i,v in pairs(game:GetService("Workspace").Terrain:GetDescendants()) do
if v:IsA("Part") then
local v2 =
{
["Part"] = v,
["Color"] = rainbowcolour
}
remote:InvokeServer(v1, v2)
end
end
end
end

if _G.selectc == "Random" then do
for i,v in pairs(game:GetService("Workspace").Terrain:GetDescendants()) do
if v:IsA("Part") then
local v3 =
{
["Part"] = v,
["Color"] = Color3.new(math.random(0, 255), math.random(0, 255), math.random(0, 255))
}
remote:InvokeServer(v1, v3)
end
end
end
end

-----------------------------------------------------------------------------------------------------------------------

if _G.selectc == "Original" then do

-----------------------------------------------------------------------------------------------------------------------

local oofws = game.Workspace.Terrain["_Game"].Workspace
local oofad = oofws["Admin Dividers"]
local oofbh = oofws["Basic House"]
local oofbb = oofws["Building Bricks"]
local oofoy = oofws.Obby
local oofob = oofws["Obby Box"]

-----------------------------------------------------------------------------------------------------------------------

for i,v in pairs(oofws:GetChildren()) do
if v:IsA("Part") then
local v4 =
{
["Part"] = v,
["Color"] = transformToColor3(BrickColor.new("Bright green"))
}
remote:InvokeServer(v1, v4)
end
end

-----------------------------------------------------------------------------------------------------------------------

for i,v in pairs(oofad:GetChildren()) do
if v:IsA("Part") then
local v5 =
{
["Part"] = v,
["Color"] = transformToColor3(BrickColor.new("Dark stone grey"))
}
remote:InvokeServer(v1, v5)
end
end

-----------------------------------------------------------------------------------------------------------------------

for i,v in pairs(oofbh:GetDescendants()) do
if v:IsA("Part") then

if v.Name == "SmoothBlockModel103" or v.Name == "SmoothBlockModel105" or v.Name == "SmoothBlockModel106" or v.Name == "SmoothBlockModel108" or v.Name == "SmoothBlockModel11" or v.Name == "SmoothBlockModel113" or v.Name == "SmoothBlockModel114" or v.Name == "SmoothBlockModel115" or v.Name == "SmoothBlockModel116" or v.Name == "SmoothBlockModel118" or v.Name == "SmoothBlockModel122" or v.Name == "SmoothBlockModel126" or v.Name == "SmoothBlockModel129" or v.Name == "SmoothBlockModel13" or v.Name == "SmoothBlockModel130" or v.Name == "SmoothBlockModel131" or v.Name == "SmoothBlockModel132" or v.Name == "SmoothBlockModel134" or v.Name == "SmoothBlockModel135" or v.Name == "SmoothBlockModel14" or v.Name == "SmoothBlockModel140" or v.Name == "SmoothBlockModel142" or v.Name == "SmoothBlockModel147" or v.Name == "SmoothBlockModel15" or v.Name == "SmoothBlockModel154" or v.Name == "SmoothBlockModel155" or v.Name == "SmoothBlockModel164" or v.Name == "SmoothBlockModel166" or v.Name == "SmoothBlockModel173" or v.Name == "SmoothBlockModel176" or v.Name == "SmoothBlockModel179" or v.Name == "SmoothBlockModel185" or v.Name == "SmoothBlockModel186" or v.Name == "SmoothBlockModel190" or v.Name == "SmoothBlockModel191" or v.Name == "SmoothBlockModel196" or v.Name == "SmoothBlockModel197" or v.Name == "SmoothBlockModel198" or v.Name == "SmoothBlockModel20" or v.Name == "SmoothBlockModel201" or v.Name == "SmoothBlockModel203" or v.Name == "SmoothBlockModel205" or v.Name == "SmoothBlockModel207" or v.Name == "SmoothBlockModel208" or v.Name == "SmoothBlockModel209" or v.Name == "SmoothBlockModel210" or v.Name == "SmoothBlockModel211" or v.Name == "SmoothBlockModel213" or v.Name == "SmoothBlockModel218" or v.Name == "SmoothBlockModel22" or v.Name == "SmoothBlockModel223" or v.Name == "SmoothBlockModel224" or v.Name == "SmoothBlockModel226" or v.Name == "SmoothBlockModel26" or v.Name == "SmoothBlockModel29" or v.Name == "SmoothBlockModel30" or v.Name == "SmoothBlockModel31" or v.Name == "SmoothBlockModel36" or v.Name == "SmoothBlockModel37" or v.Name == "SmoothBlockModel38" or v.Name == "SmoothBlockModel39" or v.Name == "SmoothBlockModel41" or v.Name == "SmoothBlockModel48" or v.Name == "SmoothBlockModel49" or v.Name == "SmoothBlockModel51" or v.Name == "SmoothBlockModel56" or v.Name == "SmoothBlockModel67" or v.Name == "SmoothBlockModel68" or v.Name == "SmoothBlockModel69" or v.Name == "SmoothBlockModel70" or v.Name == "SmoothBlockModel72" or v.Name == "SmoothBlockModel75" or v.Name == "SmoothBlockModel8" or v.Name == "SmoothBlockModel81" or v.Name == "SmoothBlockModel85" or v.Name == "SmoothBlockModel93" or v.Name == "SmoothBlockModel98" then
--for x,c in pairs (oofbhBY) do
--if c == v.Name then
local v6 =
{
["Part"] = v,
["Color"] = transformToColor3(BrickColor.new("Brick yellow"))
}
remote:InvokeServer(v1, v6)
--end
--end
end

if v.Name == "SmoothBlockModel40" then
--for x,c in pairs (oofbhBG) do
--if c == v.Name then
local v7 =
{
["Part"] = v,
["Color"] = transformToColor3(BrickColor.new("Bright green"))
}
remote:InvokeServer(v1, v7)
--end
--end
end

if v.Name == "SmoothBlockModel100" or v.Name == "SmoothBlockModel102" or v.Name == "SmoothBlockModel104" or v.Name == "SmoothBlockModel107" or v.Name == "SmoothBlockModel109" or v.Name == "SmoothBlockModel110" or v.Name == "SmoothBlockModel111" or v.Name == "SmoothBlockModel119" or v.Name == "SmoothBlockModel12" or v.Name == "SmoothBlockModel120" or v.Name == "SmoothBlockModel123" or v.Name == "SmoothBlockModel124" or v.Name == "SmoothBlockModel125" or v.Name == "SmoothBlockModel127" or v.Name == "SmoothBlockModel128" or v.Name == "SmoothBlockModel133" or v.Name == "SmoothBlockModel136" or v.Name == "SmoothBlockModel137" or v.Name == "SmoothBlockModel138" or v.Name == "SmoothBlockModel139" or v.Name == "SmoothBlockModel141" or v.Name == "SmoothBlockModel143" or v.Name == "SmoothBlockModel149" or v.Name == "SmoothBlockModel151" or v.Name == "SmoothBlockModel152" or v.Name == "SmoothBlockModel153" or v.Name == "SmoothBlockModel156" or v.Name == "SmoothBlockModel157" or v.Name == "SmoothBlockModel158" or v.Name == "SmoothBlockModel16" or v.Name == "SmoothBlockModel163" or v.Name == "SmoothBlockModel167" or v.Name == "SmoothBlockModel168" or v.Name == "SmoothBlockModel169" or v.Name == "SmoothBlockModel17" or v.Name == "SmoothBlockModel170" or v.Name == "SmoothBlockModel172" or v.Name == "SmoothBlockModel177" or v.Name == "SmoothBlockModel18" or v.Name == "SmoothBlockModel180" or v.Name == "SmoothBlockModel184" or v.Name == "SmoothBlockModel187" or v.Name == "SmoothBlockModel188" or v.Name == "SmoothBlockModel189" or v.Name == "SmoothBlockModel19" or v.Name == "SmoothBlockModel193" or v.Name == "SmoothBlockModel2" or v.Name == "SmoothBlockModel200" or v.Name == "SmoothBlockModel202" or v.Name == "SmoothBlockModel21" or v.Name == "SmoothBlockModel214" or v.Name == "SmoothBlockModel215" or v.Name == "SmoothBlockModel216" or v.Name == "SmoothBlockModel219" or v.Name == "SmoothBlockModel220" or v.Name == "SmoothBlockModel221" or v.Name == "SmoothBlockModel222" or v.Name == "SmoothBlockModel225" or v.Name == "SmoothBlockModel227" or v.Name == "SmoothBlockModel229" or v.Name == "SmoothBlockModel23" or v.Name == "SmoothBlockModel230" or v.Name == "SmoothBlockModel231" or v.Name == "SmoothBlockModel25" or v.Name == "SmoothBlockModel28" or v.Name == "SmoothBlockModel32" or v.Name == "SmoothBlockModel33" or v.Name == "SmoothBlockModel34" or v.Name == "SmoothBlockModel42" or v.Name == "SmoothBlockModel44" or v.Name == "SmoothBlockModel47" or v.Name == "SmoothBlockModel54" or v.Name == "SmoothBlockModel55" or v.Name == "SmoothBlockModel58" or v.Name == "SmoothBlockModel59" or v.Name == "SmoothBlockModel6" or v.Name == "SmoothBlockModel61" or v.Name == "SmoothBlockModel62" or v.Name == "SmoothBlockModel63" or v.Name == "SmoothBlockModel74" or v.Name == "SmoothBlockModel76" or v.Name == "SmoothBlockModel77" or v.Name == "SmoothBlockModel78" or v.Name == "SmoothBlockModel79" or v.Name == "SmoothBlockModel80" or v.Name == "SmoothBlockModel84" or v.Name == "SmoothBlockModel86" or v.Name == "SmoothBlockModel87" or v.Name == "SmoothBlockModel88" or v.Name == "SmoothBlockModel90" or v.Name == "SmoothBlockModel91" or v.Name == "SmoothBlockModel92" or v.Name == "SmoothBlockModel94" or v.Name == "SmoothBlockModel95" or v.Name == "SmoothBlockModel96" then
--for x,c in pairs (oofbhBR) do
--if c == v.Name then
local v8 =
{
["Part"] = v,
["Color"] = transformToColor3(BrickColor.new("Bright red"))
}
remote:InvokeServer(v1, v8)
--end
--end
end

if v.Name == "SmoothBlockModel10" or v.Name == "SmoothBlockModel101" or v.Name == "SmoothBlockModel117" or v.Name == "SmoothBlockModel121" or v.Name == "SmoothBlockModel144" or v.Name == "SmoothBlockModel145" or v.Name == "SmoothBlockModel146" or v.Name == "SmoothBlockModel148" or v.Name == "SmoothBlockModel150" or v.Name == "SmoothBlockModel159" or v.Name == "SmoothBlockModel161" or v.Name == "SmoothBlockModel171" or v.Name == "SmoothBlockModel174" or v.Name == "SmoothBlockModel175" or v.Name == "SmoothBlockModel181" or v.Name == "SmoothBlockModel182" or v.Name == "SmoothBlockModel183" or v.Name == "SmoothBlockModel192" or v.Name == "SmoothBlockModel194" or v.Name == "SmoothBlockModel195" or v.Name == "SmoothBlockModel199" or v.Name == "SmoothBlockModel204" or v.Name == "SmoothBlockModel206" or v.Name == "SmoothBlockModel212" or v.Name == "SmoothBlockModel217" or v.Name == "SmoothBlockModel228" or v.Name == "SmoothBlockModel24" or v.Name == "SmoothBlockModel27" or v.Name == "SmoothBlockModel35" or v.Name == "SmoothBlockModel4" or v.Name == "SmoothBlockModel43" or v.Name == "SmoothBlockModel45" or v.Name == "SmoothBlockModel46" or v.Name == "SmoothBlockModel50" or v.Name == "SmoothBlockModel53" or v.Name == "SmoothBlockModel57" or v.Name == "SmoothBlockModel60" or v.Name == "SmoothBlockModel64" or v.Name == "SmoothBlockModel65" or v.Name == "SmoothBlockModel66" or v.Name == "SmoothBlockModel7" or v.Name == "SmoothBlockModel71" or v.Name == "SmoothBlockModel73" or v.Name == "SmoothBlockModel82" or v.Name == "SmoothBlockModel83" or v.Name == "SmoothBlockModel89" or v.Name == "SmoothBlockModel99" then
--for x,c in pairs (oofbhDO) do
--if c == v.Name then
local v9 =
{
["Part"] = v,
["Color"] = transformToColor3(BrickColor.new("Dark orange"))
}
remote:InvokeServer(v1, v9)
--end
--end
end

if v.Name == "SmoothBlockModel1" or v.Name == "SmoothBlockModel3" or v.Name == "SmoothBlockModel5" or v.Name == "SmoothBlockModel9" then
--for x,c in pairs (oofbhDSG) do
--if c == v.Name then
local v10 =
{
["Part"] = v,
["Color"] = transformToColor3(BrickColor.new("Dark stone grey"))
}
remote:InvokeServer(v1, v10)
--end
--end
end

if v.Name == "SmoothBlockModel112" then
--for x,c in pairs (oofbhMB) do
--if c == v.Name then
local v11 =
{
["Part"] = v,
["Color"] = transformToColor3(BrickColor.new("Medium blue"))
}
remote:InvokeServer(v1, v11)
--end
--end
end

if v.Name == "SmoothBlockModel52" or v.Name == "SmoothBlockModel97" then
--for x,c in pairs (oofbhRB) do
--if c == v.Name then
local v12 =
{
["Part"] = v,
["Color"] = transformToColor3(BrickColor.new("Reddish brown"))
}
remote:InvokeServer(v1, v12)
--end
--end
end

if v.Name == "SmoothBlockModel160" or v.Name == "SmoothBlockModel162" or v.Name == "SmoothBlockModel165" or v.Name == "SmoothBlockModel178" then
--for x,c in pairs (oofbhSR) do
--if c == v.Name then
local v13 =
{
["Part"] = v,
["Color"] = transformToColor3(BrickColor.new("Sand red"))
}
remote:InvokeServer(v1, v13)
--end
--end
end

end
end

-----------------------------------------------------------------------------------------------------------------------

for i,v in pairs(oofbb:GetDescendants()) do
if v:IsA("Part") then

if v.Name == "Part29" or v.Name == "Part31" or v.Name == "Part55" then
--for x,c in pairs (oofbbDSG) do
--if c == v.Name then
local v14 =
{
["Part"] = v,
["Color"] = transformToColor3(BrickColor.new("Dark stone grey"))
}
remote:InvokeServer(v1, v14)
--end
--end
end

if v.Name == "Part11" or v.Name == "Part18" or v.Name == "Part25" or v.Name == "Part3" or v.Name == "Part43" then
--for x,c in pairs (oofbbDB) do
--if c == v.Name then
local v15 =
{
["Part"] = v,
["Color"] = transformToColor3(BrickColor.new("Deep blue"))
}
remote:InvokeServer(v1, v15)
--end
--end
end

if v.Name == "Part13" or v.Name == "Part21" or v.Name == "Part23" or v.Name == "Part7" then
--for x,c in pairs (oofbbIW) do
--if c == v.Name then
local v16 =
{
["Part"] = v,
["Color"] = transformToColor3(BrickColor.new("Institutuional white"))
}
remote:InvokeServer(v1, v16)
--end
--end
end

if v.Name == "Part17" or v.Name == "Part26" or v.Name == "Part38" or v.Name == "Part5" or v.Name == "Part9" then
--for x,c in pairs (oofbbLG) do
--if c == v.Name then
local v17 =
{
["Part"] = v,
["Color"] = transformToColor3(BrickColor.new("Lime green"))
}
remote:InvokeServer(v1, v17)
--end
--end
end

if v.Name == "Part30" or v.Name == "Part32" or v.Name == "Part33" or v.Name == "Part34" or v.Name == "Part35" or v.Name == "Part36" or v.Name == "Part39" or v.Name == "Part40" or v.Name == "Part41" or v.Name == "Part42" or v.Name == "Part46" or v.Name == "Part47" or v.Name == "Part48" or v.Name == "Part49" or v.Name == "Part50" or v.Name == "Part51" or v.Name == "Part52" or v.Name == "Part53" or v.Name == "Part54" or v.Name == "Part56" or v.Name == "Part57" or v.Name == "Part58" or v.Name == "Part59" or v.Name == "Part60" or v.Name == "Part61" or v.Name == "Part38" or v.Name == "Part5" or v.Name == "Part9" then
--for x,c in pairs (oofbbMSG) do
--if c == v.Name then
local v18 =
{
["Part"] = v,
["Color"] = transformToColor3(BrickColor.new("Medium Stone grey"))
}
remote:InvokeServer(v1, v18)
--end
--end
end

if v.Name == "Part12" or v.Name == "Part15" or v.Name == "Part24" or v.Name == "Part44" or v.Name == "Part6" then
--for x,c in pairs (oofbbNY) do
--if c == v.Name then
local v19 =
{
["Part"] = v,
["Color"] = transformToColor3(BrickColor.new("New yeller"))
}
remote:InvokeServer(v1, v19)
--end
--end
end

if v.Name == "Part14" or v.Name == "Part19" or v.Name == "Part2" or v.Name == "Part27" then
--for x,c in pairs (oofbbRB) do
--if c == v.Name then
local v20 =
{
["Part"] = v,
["Color"] = transformToColor3(BrickColor.new("Really black"))
}
remote:InvokeServer(v1, v20)
--end
--end
end

if v.Name == "Part1" or v.Name == "Part10" or v.Name == "Part16" or v.Name == "Part22" or v.Name == "Part37" then
--for x,c in pairs (oofbbRR) do
--if c == v.Name then
local v21 =
{
["Part"] = v,
["Color"] = transformToColor3(BrickColor.new("Really red"))
}
remote:InvokeServer(v1, v21)
--end
--end
end

if v.Name == "Part20" or v.Name == "Part28" or v.Name == "Part4" or v.Name == "Part45" or v.Name == "Part8" then
--for x,c in pairs (oofbbT) do
--if c == v.Name then
local v22 =
{
["Part"] = v,
["Color"] = transformToColor3(BrickColor.new("Toothpaste"))
}
remote:InvokeServer(v1, v22)
--end
--end
end

end
end

-----------------------------------------------------------------------------------------------------------------------

for i,v in pairs(oofoy:GetChildren()) do
if v:IsA("Part") then
local v23 =
{
["Part"] = v,
["Color"] = transformToColor3(BrickColor.new("Really red"))
}
remote:InvokeServer(v1, v23)
end
end

-----------------------------------------------------------------------------------------------------------------------

for i,v in pairs(oofob:GetChildren()) do
if v:IsA("Part") then
local v24 =
{
["Part"] = v,
["Color"] = transformToColor3(BrickColor.new("Teal"))
}
remote:InvokeServer(v1, v24)
end
end

-----------------------------------------------------------------------------------------------------------------------

end
end



if _G.selectc ~= "Random" and _G.selectc ~= "Rainbow" and _G.selectc ~= "Original" then do
for i,v in pairs(game:GetService("Workspace").Terrain:GetDescendants()) do
if v:IsA("Part") then
local v25 =
{
["Part"] = v,
["Color"] = transformToColor3(BrickColor.new(tostring(_G.selectc)))
}
remote:InvokeServer(v1, v25)
end
end
end
end



end)
-----------------------------------------------------------------------------------------------------------------------
--[[-------------------------------------------------------------------------------------------------------------------
 __      __         _                    ___         _          __ 
 \ \    / /  __ _  | |_   ___   _ _     / __|  _ _  (_)  ___   / _|
  \ \/\/ /  / _` | |  _| / -_) | '_|   | (_ | | '_| | | / -_) |  _|
   \_/\_/   \__,_|  \__| \___| |_|      \___| |_|   |_| \___| |_|  
                                                                   
]]oofw:Section("Water Grief")



-- Barrage | Button
oofw:Button("Barrage", function()

-----------------------------------------------------------------------------------------------------------------------

oofgp:Chat("gear me 000000000000000000236438668")
wait(.5)
oofgp.LocalPlayer.Character.Humanoid:EquipTool(oofgp.LocalPlayer.Backpack.SeaThemedCrossbow)
wait(.1)
local Remote = workspace.IIIIlIlIIIIlllIlIIIl.SeaThemedCrossbow.Remote
Remote:FireServer(
"LeftDown",
Vector3.new(-120, 0.7, -40)
)
wait(2)
oofgp:Chat("ungear me")
wait(.1)
oofgp:Chat("gear me 000000000000000000236438668")
wait(.5)
oofgp.LocalPlayer.Character.Humanoid:EquipTool(oofgp.LocalPlayer.Backpack.SeaThemedCrossbow)
wait(.1)
local Remote = workspace.IIIIlIlIIIIlllIlIIIl.SeaThemedCrossbow.Remote
Remote:FireServer(
"LeftDown",
Vector3.new(-80, 0.7, -40)
)
wait(2)
oofgp:Chat("ungear me")
wait(.1)
oofgp:Chat("gear me 000000000000000000236438668")
wait(.5)
oofgp.LocalPlayer.Character.Humanoid:EquipTool(oofgp.LocalPlayer.Backpack.SeaThemedCrossbow)
wait(.1)
local Remote = workspace.IIIIlIlIIIIlllIlIIIl.SeaThemedCrossbow.Remote
Remote:FireServer(
"LeftDown",
Vector3.new(-40, 0.7, -40)
)
wait(2)
oofgp:Chat("ungear me")
wait(.1)
oofgp:Chat("gear me 000000000000000000236438668")
wait(.5)
oofgp.LocalPlayer.Character.Humanoid:EquipTool(oofgp.LocalPlayer.Backpack.SeaThemedCrossbow)
wait(.1)
local Remote = workspace.IIIIlIlIIIIlllIlIIIl.SeaThemedCrossbow.Remote
Remote:FireServer(
"LeftDown",
Vector3.new(0, 0.7, -40)
)
wait(2)
oofgp:Chat("ungear me")
wait(.1)
oofgp:Chat("gear me 000000000000000000236438668")
wait(.5)
oofgp.LocalPlayer.Character.Humanoid:EquipTool(oofgp.LocalPlayer.Backpack.SeaThemedCrossbow)
wait(.1)
local Remote = workspace.IIIIlIlIIIIlllIlIIIl.SeaThemedCrossbow.Remote
Remote:FireServer(
"LeftDown",
Vector3.new(40, 0.7, -40)
)
wait(2)
oofgp:Chat("ungear me")
wait(.1)

-----------------------------------------------------------------------------------------------------------------------

oofgp:Chat("gear me 000000000000000000236438668")
wait(.5)
oofgp.LocalPlayer.Character.Humanoid:EquipTool(oofgp.LocalPlayer.Backpack.SeaThemedCrossbow)
wait(.1)
local Remote = workspace.IIIIlIlIIIIlllIlIIIl.SeaThemedCrossbow.Remote
Remote:FireServer(
"LeftDown",
Vector3.new(-120, 0.7, 0)
)
wait(2)
oofgp:Chat("ungear me")
wait(.1)
oofgp:Chat("gear me 000000000000000000236438668")
wait(.5)
oofgp.LocalPlayer.Character.Humanoid:EquipTool(oofgp.LocalPlayer.Backpack.SeaThemedCrossbow)
wait(.1)
local Remote = workspace.IIIIlIlIIIIlllIlIIIl.SeaThemedCrossbow.Remote
Remote:FireServer(
"LeftDown",
Vector3.new(-80, 0.7, 0)
)
wait(2)
oofgp:Chat("ungear me")
wait(.1)
oofgp:Chat("gear me 000000000000000000236438668")
wait(.5)
oofgp.LocalPlayer.Character.Humanoid:EquipTool(oofgp.LocalPlayer.Backpack.SeaThemedCrossbow)
wait(.1)
local Remote = workspace.IIIIlIlIIIIlllIlIIIl.SeaThemedCrossbow.Remote
Remote:FireServer(
"LeftDown",
Vector3.new(-40, 0.7, 0)
)
wait(2)
oofgp:Chat("ungear me")
wait(.1)
oofgp:Chat("gear me 000000000000000000236438668")
wait(.5)
oofgp.LocalPlayer.Character.Humanoid:EquipTool(oofgp.LocalPlayer.Backpack.SeaThemedCrossbow)
wait(.1)
local Remote = workspace.IIIIlIlIIIIlllIlIIIl.SeaThemedCrossbow.Remote
Remote:FireServer(
"LeftDown",
Vector3.new(0, 0.7, 0)
)
wait(2)
oofgp:Chat("ungear me")
wait(.1)
oofgp:Chat("gear me 000000000000000000236438668")
wait(.5)
oofgp.LocalPlayer.Character.Humanoid:EquipTool(oofgp.LocalPlayer.Backpack.SeaThemedCrossbow)
wait(.1)
local Remote = workspace.IIIIlIlIIIIlllIlIIIl.SeaThemedCrossbow.Remote
Remote:FireServer(
"LeftDown",
Vector3.new(40, 0.7, 0)
)
wait(2)
oofgp:Chat("ungear me")
wait(.1)

-----------------------------------------------------------------------------------------------------------------------

oofgp:Chat("gear me 000000000000000000236438668")
wait(.5)
oofgp.LocalPlayer.Character.Humanoid:EquipTool(oofgp.LocalPlayer.Backpack.SeaThemedCrossbow)
wait(.1)
local Remote = workspace.IIIIlIlIIIIlllIlIIIl.SeaThemedCrossbow.Remote
Remote:FireServer(
"LeftDown",
Vector3.new(-120, 0.7, 40)
)
wait(2)
oofgp:Chat("ungear me")
wait(.1)
oofgp:Chat("gear me 000000000000000000236438668")
wait(.5)
oofgp.LocalPlayer.Character.Humanoid:EquipTool(oofgp.LocalPlayer.Backpack.SeaThemedCrossbow)
wait(.1)
local Remote = workspace.IIIIlIlIIIIlllIlIIIl.SeaThemedCrossbow.Remote
Remote:FireServer(
"LeftDown",
Vector3.new(-80, 0.7, 40)
)
wait(2)
oofgp:Chat("ungear me")
wait(.1)
oofgp:Chat("gear me 000000000000000000236438668")
wait(.5)
oofgp.LocalPlayer.Character.Humanoid:EquipTool(oofgp.LocalPlayer.Backpack.SeaThemedCrossbow)
wait(.1)
local Remote = workspace.IIIIlIlIIIIlllIlIIIl.SeaThemedCrossbow.Remote
Remote:FireServer(
"LeftDown",
Vector3.new(-40, 0.7, 40)
)
wait(2)
oofgp:Chat("ungear me")
wait(.1)
oofgp:Chat("gear me 000000000000000000236438668")
wait(.5)
oofgp.LocalPlayer.Character.Humanoid:EquipTool(oofgp.LocalPlayer.Backpack.SeaThemedCrossbow)
wait(.1)
local Remote = workspace.IIIIlIlIIIIlllIlIIIl.SeaThemedCrossbow.Remote
Remote:FireServer(
"LeftDown",
Vector3.new(0, 0.7, 40)
)
wait(2)
oofgp:Chat("ungear me")
wait(.1)
oofgp:Chat("gear me 000000000000000000236438668")
wait(.5)
oofgp.LocalPlayer.Character.Humanoid:EquipTool(oofgp.LocalPlayer.Backpack.SeaThemedCrossbow)
wait(.1)
local Remote = workspace.IIIIlIlIIIIlllIlIIIl.SeaThemedCrossbow.Remote
Remote:FireServer(
"LeftDown",
Vector3.new(40, 0.7, 40)
)
wait(2)
oofgp:Chat("ungear me")
wait(.1)

-----------------------------------------------------------------------------------------------------------------------

oofgp:Chat("gear me 000000000000000000236438668")
wait(.5)
oofgp.LocalPlayer.Character.Humanoid:EquipTool(oofgp.LocalPlayer.Backpack.SeaThemedCrossbow)
wait(.1)
local Remote = workspace.IIIIlIlIIIIlllIlIIIl.SeaThemedCrossbow.Remote
Remote:FireServer(
"LeftDown",
Vector3.new(-120, 0.7, 80)
)
wait(2)
oofgp:Chat("ungear me")
wait(.1)
oofgp:Chat("gear me 000000000000000000236438668")
wait(.5)
oofgp.LocalPlayer.Character.Humanoid:EquipTool(oofgp.LocalPlayer.Backpack.SeaThemedCrossbow)
wait(.1)
local Remote = workspace.IIIIlIlIIIIlllIlIIIl.SeaThemedCrossbow.Remote
Remote:FireServer(
"LeftDown",
Vector3.new(-80, 0.7, 80)
)
wait(2)
oofgp:Chat("ungear me")
wait(.1)
oofgp:Chat("gear me 000000000000000000236438668")
wait(.5)
oofgp.LocalPlayer.Character.Humanoid:EquipTool(oofgp.LocalPlayer.Backpack.SeaThemedCrossbow)
wait(.1)
local Remote = workspace.IIIIlIlIIIIlllIlIIIl.SeaThemedCrossbow.Remote
Remote:FireServer(
"LeftDown",
Vector3.new(-40, 0.7, 80)
)
wait(2)
oofgp:Chat("ungear me")
wait(.1)
oofgp:Chat("gear me 000000000000000000236438668")
wait(.5)
oofgp.LocalPlayer.Character.Humanoid:EquipTool(oofgp.LocalPlayer.Backpack.SeaThemedCrossbow)
wait(.1)
local Remote = workspace.IIIIlIlIIIIlllIlIIIl.SeaThemedCrossbow.Remote
Remote:FireServer(
"LeftDown",
Vector3.new(0, 0.7, 80)
)
wait(2)
oofgp:Chat("ungear me")
wait(.1)
oofgp:Chat("gear me 000000000000000000236438668")
wait(.5)
oofgp.LocalPlayer.Character.Humanoid:EquipTool(oofgp.LocalPlayer.Backpack.SeaThemedCrossbow)
wait(.1)
local Remote = workspace.IIIIlIlIIIIlllIlIIIl.SeaThemedCrossbow.Remote
Remote:FireServer(
"LeftDown",
Vector3.new(40, 0.7, 80)
)
wait(2)
oofgp:Chat("ungear me")
wait(.1)

-----------------------------------------------------------------------------------------------------------------------

oofgp:Chat("gear me 000000000000000000236438668")
wait(.5)
oofgp.LocalPlayer.Character.Humanoid:EquipTool(oofgp.LocalPlayer.Backpack.SeaThemedCrossbow)
wait(.1)
local Remote = workspace.IIIIlIlIIIIlllIlIIIl.SeaThemedCrossbow.Remote
Remote:FireServer(
"LeftDown",
Vector3.new(-120, 0.7, 120)
)
wait(2)
oofgp:Chat("ungear me")
wait(.1)
oofgp:Chat("gear me 000000000000000000236438668")
wait(.5)
oofgp.LocalPlayer.Character.Humanoid:EquipTool(oofgp.LocalPlayer.Backpack.SeaThemedCrossbow)
wait(.1)
local Remote = workspace.IIIIlIlIIIIlllIlIIIl.SeaThemedCrossbow.Remote
Remote:FireServer(
"LeftDown",
Vector3.new(-80, 0.7, 120)
)
wait(2)
oofgp:Chat("ungear me")
wait(.1)
oofgp:Chat("gear me 000000000000000000236438668")
wait(.5)
oofgp.LocalPlayer.Character.Humanoid:EquipTool(oofgp.LocalPlayer.Backpack.SeaThemedCrossbow)
wait(.1)
local Remote = workspace.IIIIlIlIIIIlllIlIIIl.SeaThemedCrossbow.Remote
Remote:FireServer(
"LeftDown",
Vector3.new(-30, 0.7, 120)
)
wait(2)
oofgp:Chat("ungear me")
wait(.1)
oofgp:Chat("gear me 000000000000000000236438668")
wait(.5)
oofgp.LocalPlayer.Character.Humanoid:EquipTool(oofgp.LocalPlayer.Backpack.SeaThemedCrossbow)
wait(.1)
local Remote = workspace.IIIIlIlIIIIlllIlIIIl.SeaThemedCrossbow.Remote
Remote:FireServer(
"LeftDown",
Vector3.new(0, 0.7, 120)
)
wait(2)
oofgp:Chat("ungear me")
wait(.1)
oofgp:Chat("gear me 000000000000000000236438668")
wait(.5)
oofgp.LocalPlayer.Character.Humanoid:EquipTool(oofgp.LocalPlayer.Backpack.SeaThemedCrossbow)
wait(.1)
local Remote = workspace.IIIIlIlIIIIlllIlIIIl.SeaThemedCrossbow.Remote
Remote:FireServer(
"LeftDown",
Vector3.new(40, 0.7, 120)
)
wait(2)
oofgp:Chat("ungear me")
wait(.1)

-----------------------------------------------------------------------------------------------------------------------

end)
-----------------------------------------------------------------------------------------------------------------------
--[[
                                                 
                                                 
  .g8"""bgd                                      
.dP'     `M                                      
dM'       `   ,6"Yb.  `7MMpMMMb.pMMMb.   .gP"Ya  
MM           8)   MM    MM    MM    MM  ,M'   Yb 
MM.    `7MMF' ,pm9MM    MM    MM    MM  8M"""""" 
`Mb.     MM  8M   MM    MM    MM    MM  YM.    , 
  `"bmmmdPY  `Moo9^Yo..JMML  JMML  JMML. `Mbmmd' 
                                                 
                                                 
]]
--[[-------------------------------------------------------------------------------------------------------------------
  ___                          _      
 / __|  ___   _  _   _ _    __| |  ___
 \__ \ / _ \ | || | | ' \  / _` | (_-<
 |___/ \___/  \_,_| |_||_| \__,_| /__/
                                      
]]oofg:Section('Sounds')



-- Dropdown
local SoundsList = oofg:Dropdown("Settings", {
location = _G;
flag = "selects";
list = {
"Play All Sounds";
"Stop All Sounds";
"Play Music";
"Stop Music";
}
}, function(new)
end)



-- Execute | Button
oofg:Button("Execute", function()



if _G.selects == "Play All Sounds" then do
for i,v in pairs(game:GetDescendants()) do
if v:IsA("Sound") then
v:Play()
end
end
end
end

if _G.selects == "Stop All Sounds" then do
for i,v in pairs(game:GetDescendants()) do
if v:IsA("Sound") then
v:Stop()
end
end
end
end

if _G.selects == "Play Music" then do
for i,v in pairs(game:GetService("Workspace").Terrain["_Game"].Folder:GetDescendants()) do
if v:IsA("Sound") then
v:Play()
end
end
end
end

if _G.selects == "Stop Music" then do
for i,v in pairs(game:GetService("Workspace").Terrain["_Game"].Folder:GetDescendants()) do
if v:IsA("Sound") then
v:Stop()
end
end
end
end



end)



-- Loop Stop Sounds | Toggle
loopstopsounds = false
local Loopstoptoggle = oofg:Toggle("Loop Stop Sounds", {flag = 'Loopstoptoggle'}, function()
if loopstopsounds == false then
loopstopsounds = true
else
loopstopsounds = false
end

if loopstopsounds == true then do
local loopstopsoundscoroutine = coroutine.wrap(function()
while wait() do
if loopstopsounds == false then break end
for i,v in pairs(game:GetDescendants()) do
if v:IsA("Sound") then
v:Stop()
end
end
end
end)()
end
end

if loopstopsounds == false then
end
end)



-- Earrape | Toggle
earrapesound = false
local Earrapetoggle = oofg:Toggle("Earrape", {flag = 'Earrapetoggle'}, function()
if earrapesound == false then
earrapesound = true
else
earrapesound = false
end

if earrapesound == true then do
local earrapesoundcoroutine = coroutine.wrap(function()
while wait(.1) do
if earrapesound == false then break end
for i,v in pairs(game:GetDescendants()) do
if v:IsA("Sound") then
v:Play()
end
end
end
end)()
end
end

if earrapesound == false then
end
end)
-----------------------------------------------------------------------------------------------------------------------
--[[-------------------------------------------------------------------------------------------------------------------
  _  _                  _____   _                _                
 | || |  ___   __ _    |_   _| | |_    ___      /_\    _  _  __ __
 | __ | / _ \ / _` |     | |   | ' \  / -_)    / _ \  | || | \ \ /
 |_||_| \___/ \__, |     |_|   |_||_| \___|   /_/ \_\  \_,_| /_\_\
              |___/                                               
]]oofg:Section('Hog The Aux')



local AudioID = oofg:Box('Audio ID', {
location = _G;
flag = "audid";
type = 'number';
}, function(new)
end)



-- Toggle | Toggle
hogtheauxcord = false
local hogtheauxcordtoggle = oofg:Toggle("Toggle", {flag = 'hogtheauxcordtoggle'}, function()
if hogtheauxcord == false then
hogtheauxcord = true
else
hogtheauxcord = false
end

if hogtheauxcord == true then do
local hogtheauxcordcoroutine = coroutine.wrap(function()
while wait(.1) do
if hogtheauxcord == false then break end
for i,v in pairs(game:GetDescendants()) do
if not ooffo:WaitForChild("Sound",.1) then
oofgp:Chat("music 0000000000000000005819335910"..tostring(_G.audid))
end
if v:IsA("Sound") then
if v.Parent == ooffo then
if v.SoundId ~= "http://www.roblox.com/asset/?id="..tostring(_G.audid) then
oofgp:Chat("music 000000000000000000"..tostring(_G.audid))
end
if not v.Playing then
v:Play()
end
elseif v.Parent ~= ooffo then
v:Stop()
end
end
end
end
end)()
end
end

if hogtheauxcord == false then
end
end)
-----------------------------------------------------------------------------------------------------------------------
--[[-------------------------------------------------------------------------------------------------------------------
    _             _      _                         
   /_\    _ __   | |__  (_)  ___   _ _    __   ___ 
  / _ \  | '  \  | '_ \ | | / -_) | ' \  / _| / -_)
 /_/ \_\ |_|_|_| |_.__/ |_| \___| |_||_| \__| \___|
                                                   
]]oofg:Section('Ambience')



-- Dropdown
local AmbientList = oofg:Dropdown("Types", {
location = _G;
flag = "selecta";
list = {
"Sunset 1";
"Sunset 2";
"Red ang Blue";
"Green and Purple";
"Yellow and Indigo";
"Rainbow";
"Day Cycle";
"Sinister Fog";
"The Fog";
"Pitch Black";
"Rock Bottom";
"Hide and Seek";
"2Spooky4Me";
}
}, function(new)
end)



minutesAfterMidnight = 0



-- Execute: Button
oofg:Button("Execute", function()



if _G.selecta == "Sunset 1" then do
--[[oofgp:Chat("music 4534931409")
wait(33.3)]]
oofgp:Chat("fix")
wait()
oofgp:Chat("time 6.20")
oofgp:Chat("colorshifttop 600 400 0")
oofgp:Chat("colorshiftbottom 600 400 0")
end
end

if _G.selecta == "Sunset 2" then do
oofgp:Chat("fix")
wait()
oofgp:Chat("time 17")
oofgp:Chat("colorshifttop 600 400 0")
oofgp:Chat("colorshiftbottom 600 400 0")
end
end

if _G.selecta == "Red ang Blue" then do
oofgp:Chat("fix")
wait()
oofgp:Chat("time 6.20")
oofgp:Chat("colorshifttop 999 0 0")
oofgp:Chat("colorshiftbottom 0 0 999")
end
end

if _G.selecta == "Green and Purple" then do
oofgp:Chat("fix")
wait()
oofgp:Chat("time 6.20")
oofgp:Chat("colorshifttop 0 999 0")
oofgp:Chat("colorshiftbottom 999 0 999")
end
end

if _G.selecta == "Yellow and Indigo" then do
oofgp:Chat("fix")
wait()
oofgp:Chat("time 6.20")
oofgp:Chat("colorshiftbottom 0 999 999")
oofgp:Chat("colorshifttop 999 999 0")
end
end

if _G.selecta == "Rainbow" then do
oofgp:Chat("Ambient "..math.random(1,255).." "..math.random(1,255).." "..math.random(1,255))
wait(.1)
if oofgl.Brightness ~= 1 then
oofgp:Chat("brightness 1")
end
oofgp:Chat("time "..math.random(1,3600))
wait(.1)
oofgp:Chat("colorshiftbottom "..math.random(1,9999).." "..math.random(1,9999).." "..math.random(1,9999))
wait(.1)
oofgp:Chat("colorshifttop "..math.random(1,9999).." "..math.random(1,9999).." "..math.random(1,9999))
wait(.1)
oofgp:Chat("fogcolor "..math.random(1,255).." "..math.random(1,255).." "..math.random(1,255))
wait(.1)
oofgp:Chat("fogend "..math.random(0,500))
wait(.1)
oofgp:Chat("fogstart "..math.random(0,25))
wait(.1)
oofgp:Chat("outdoorambient "..math.random(1,255).." "..math.random(1,255).." "..math.random(1,255))
end
end

if _G.selecta == "Day Cycle" then do
minutesAfterMidnight = minutesAfterMidnight + 5
local minutesNormalised = minutesAfterMidnight % (60 * 24)
local seconds = minutesNormalised * 60
local hours = string.format("%02.f", math.floor(seconds/3600))
local mins = string.format("%02.f", math.floor(seconds/60 - (hours*60)))
local secs = string.format("%02.f", math.floor(seconds - hours*3600 - mins *60))
local timeString = hours..":"..mins..":"..secs
oofgp:Chat("time "..timeString)
end
end

if _G.selecta == "Sinister Fog" then do
oofgp:Chat("fix")
wait()
oofgp:Chat("time 0")
oofgp:Chat("fogend 25")
oofgp:Chat("fogcolor 0 0 0")
oofgp:Chat("outdoorambient 255 0 0")
end
end

if _G.selecta == "The Fog" then do
oofgp:Chat("fix")
wait()
oofgp:Chat("time 0")
oofgp:Chat("fogend 50")
oofgp:Chat("fogcolor 250 250 250")
end
end

if _G.selecta == "Pitch Black" then do
oofgp:Chat("fix")
wait()
oofgp:Chat("time 0")
oofgp:Chat("colorshifttop 100000000 1000000000 10000000000000")
oofgp:Chat("colorshiftbottom 100000000 1000000000 10000000000000")
end
end

if _G.selecta == "Rock Bottom" then do
oofgp:Chat("fix")
wait()
oofgp:Chat("time 0")
oofgp:Chat("brightness 0")
oofgp:Chat("fogcolor 0 0 0")
oofgp:Chat("outdoorambient 0 0 0")
oofgp:Chat("music 0000000000000000005819335910")
end
end

if _G.selecta == "Hide and Seek" then do
oofgp:Chat("fix")
wait()
oofgp:Chat("time 0")
oofgp:Chat("fogcolor 0 0 0")
oofgp:Chat("fogend 25")
oofgp:Chat("fogstart 25")
end
end

if _G.selecta == "2Spooky4Me" then do
if ServerCheck() then else SendNotification("Regen Failed", "Regen Pad unavailble.") end
oofgp:Chat("fix")
wait()
oofgp:Chat("m "..zalgo)
oofgp:Chat("time 0")
oofgp:Chat("fogend 25")
oofgp:Chat("fogcolor 0 0 0")
oofgp:Chat("outdoorambient 0 0 0")
oofgp:Chat("music 000000000000000000950296099")
end
end



end)



-- Toggle | Toggle
toggleamb = false
local toggleambtoggle = oofg:Toggle("Toggle", {flag = 'toggleambtoggle'}, function()
if toggleamb == false then
toggleamb = true
else
toggleamb = false
end

if toggleamb == true then do
local toggleambcoroutine = coroutine.wrap(function()
while wait() do
if toggleamb == false then break end



for i,v in pairs(oofga.Folder:GetChildren()) do
if v:IsA('Script') then
if v.Name == 'Disco' then
oofgp:Chat('undisco')
end
if v.Name == 'Flash' then
oofgp:Chat('unflash')
end
end
end



if _G.selecta == "Sunset 1" then do
if oofgl.Ambient ~= Color3.new(0,0,0) then
oofgp:Chat("ambient 0 0 0")
end
if oofgl.Brightness ~= 1 then
oofgp:Chat("brightness 1")
end
if oofgl.TimeOfDay ~= "06:20:00" then
oofgp:Chat("time 6.20")
else
end
if oofgl["ColorShift_Bottom"] ~= Color3.fromRGB(600,400,0) then
oofgp:Chat("colorshiftbottom 600 400 0")
end
if oofgl["ColorShift_Top"] ~= Color3.fromRGB(600,400,0) then
oofgp:Chat("colorshifttop 600 400 0")
end
if oofgl.FogColor ~= Color3.new(0.75294125080109,0.75294125080109,0.75294125080109) then
oofgp:Chat("fogcolor 192 192 192")
end
if oofgl.FogEnd ~= 100000 then
oofgp:Chat("fogend 100000")
end
if oofgl.FogStart ~= 0 then
oofgp:Chat("fogstart 0")
end
if oofgl.OutdoorAmbient ~= Color3.fromRGB(128,128,128) then
oofgp:Chat("outdoorambient 128 128 128")
end
end
end

if _G.selecta == "Sunset 2" then do
if oofgl.Ambient ~= Color3.new(0,0,0) then
oofgp:Chat("ambient 0 0 0")
end
if oofgl.Brightness ~= 1 then
oofgp:Chat("brightness 1")
end
if oofgl.ClockTime ~= 17 then
oofgp:Chat("time 17")
end
if oofgl["ColorShift_Bottom"] ~= Color3.fromRGB(600,400,0) then
oofgp:Chat("colorshiftbottom 600 400 0")
end
if oofgl["ColorShift_Top"] ~= Color3.fromRGB(600,400,0) then
oofgp:Chat("colorshifttop 600 400 0")
end
if oofgl.FogColor ~= Color3.new(0.75294125080109,0.75294125080109,0.75294125080109) then
oofgp:Chat("fogcolor 192 192 192")
end
if oofgl.FogEnd ~= 100000 then
oofgp:Chat("fogend 100000")
end
if oofgl.FogStart ~= 0 then
oofgp:Chat("fogstart 0")
end
if oofgl.OutdoorAmbient ~= Color3.fromRGB(128,128,128) then
oofgp:Chat("outdoorambient 128 128 128")
end
end
end

if _G.selecta == "Red ang Blue" then do
if oofgl.Ambient ~= Color3.new(0,0,0) then
oofgp:Chat("ambient 0 0 0")
end
if oofgl.Brightness ~= 1 then
oofgp:Chat("brightness 1")
end
if oofgl.TimeOfDay ~= "06:20:00" then
oofgp:Chat("time 6.20")
end
if oofgl["ColorShift_Bottom"] ~= Color3.fromRGB(0,0,999) then
oofgp:Chat("colorshiftbottom 0 0 999")
end
if oofgl["ColorShift_Top"] ~= Color3.fromRGB(999,0,0) then
oofgp:Chat("colorshifttop 999 0 0")
end
if oofgl.FogColor ~= Color3.new(0.75294125080109,0.75294125080109,0.75294125080109) then
oofgp:Chat("fogcolor 192 192 192")
end
if oofgl.FogEnd ~= 100000 then
oofgp:Chat("fogend 100000")
end
if oofgl.FogStart ~= 0 then
oofgp:Chat("fogstart 0")
end
if oofgl.OutdoorAmbient ~= Color3.fromRGB(128,128,128) then
oofgp:Chat("outdoorambient 128 128 128")
end
end
end

if _G.selecta == "Green and Purple" then do
if oofgl.Ambient ~= Color3.new(0,0,0) then
oofgp:Chat("ambient 0 0 0")
end
if oofgl.Brightness ~= 1 then
oofgp:Chat("brightness 1")
end
if oofgl.TimeOfDay ~= "06:20:00" then
oofgp:Chat("time 6.20")
end
if oofgl["ColorShift_Bottom"] ~= Color3.fromRGB(999,0,999) then
oofgp:Chat("colorshiftbottom 999 0 999")
end
if oofgl["ColorShift_Top"] ~= Color3.fromRGB(0,999,0) then
oofgp:Chat("colorshifttop 0 999 0")
end
if oofgl.FogColor ~= Color3.new(0.75294125080109,0.75294125080109,0.75294125080109) then
oofgp:Chat("fogcolor 192 192 192")
end
if oofgl.FogEnd ~= 100000 then
oofgp:Chat("fogend 100000")
end
if oofgl.FogStart ~= 0 then
oofgp:Chat("fogstart 0")
end
if oofgl.OutdoorAmbient ~= Color3.fromRGB(128,128,128) then
oofgp:Chat("outdoorambient 128 128 128")
end
end
end

if _G.selecta == "Yellow and Indigo" then do
if oofgl.Ambient ~= Color3.new(0,0,0) then
oofgp:Chat("ambient 0 0 0")
end
if oofgl.Brightness ~= 1 then
oofgp:Chat("brightness 1")
end
if oofgl.TimeOfDay ~= "06:20:00" then
oofgp:Chat("time 6.20")
end
if oofgl["ColorShift_Bottom"] ~= Color3.fromRGB(0,999,999) then
oofgp:Chat("colorshiftbottom 0 999 999")
end
if oofgl["ColorShift_Top"] ~= Color3.fromRGB(999,999,0) then
oofgp:Chat("colorshifttop 999 999 0")
end
if oofgl.FogColor ~= Color3.new(0.75294125080109,0.75294125080109,0.75294125080109) then
oofgp:Chat("fogcolor 192 192 192")
end
if oofgl.FogEnd ~= 100000 then
oofgp:Chat("fogend 100000")
end
if oofgl.FogStart ~= 0 then
oofgp:Chat("fogstart 0")
end
if oofgl.OutdoorAmbient ~= Color3.fromRGB(128,128,128) then
oofgp:Chat("outdoorambient 128 128 128")
end
end
end

if _G.selecta == "Rainbow" then do
oofgp:Chat("time "..math.random(1,3600))
wait(.1)
oofgp:Chat("fogend 100")
wait(.1)
oofgp:Chat("colorshifttop "..math.random(1,9999).." "..math.random(1,9999).." "..math.random(1,9999))
wait(.1)
oofgp:Chat("colorshiftbottom "..math.random(1,9999).." "..math.random(1,9999).." "..math.random(1,9999))
wait(.1)
oofgp:Chat("fogcolor "..math.random(1,255).." "..math.random(1,255).." "..math.random(1,255))
wait(.1)
oofgp:Chat("Ambient "..math.random(1,255).." "..math.random(1,255).." "..math.random(1,255))
end
end

if _G.selecta == "Day Cycle" then do
minutesAfterMidnight = minutesAfterMidnight  + 5
local minutesNormalised = minutesAfterMidnight % (60 * 24)
local seconds = minutesNormalised * 60
local hours = string.format("%02.f", math.floor(seconds/3600))
local mins = string.format("%02.f", math.floor(seconds/60 - (hours*60)))
local secs = string.format("%02.f", math.floor(seconds - hours*3600 - mins *60))
local timeString = hours..":"..mins..":"..secs
oofgp:Chat("time "..timeString)
end
end

if _G.selecta == "Sinister Fog" then do
if oofgl.Ambient ~= Color3.new(0,0,0) then
oofgp:Chat("ambient 0 0 0")
end
if oofgl.Brightness ~= 1 then
oofgp:Chat("brightness 1")
end
if oofgl.ClockTime ~= 0 then
oofgp:Chat("time 0")
end
if oofgl["ColorShift_Bottom"] ~= Color3.new(0,0,0) then
oofgp:Chat("colorshiftbottom 0 0 0")
end
if oofgl["ColorShift_Top"] ~= Color3.new(0,0,0) then
oofgp:Chat("colorshifttop 0 0 0")
end
if oofgl.FogColor ~= Color3.new(0,0,0) then
oofgp:Chat("fogcolor 0 0 0")
end
if oofgl.FogEnd ~= 25 then
oofgp:Chat("fogend 25")
end
if oofgl.FogStart ~= 0 then
oofgp:Chat("fogstart 0")
end
if oofgl.OutdoorAmbient ~= Color3.fromRGB(255,0,0) then
oofgp:Chat("outdoorambient 255 0 0")
end
end
end

if _G.selecta == "The Fog" then do
if oofgl.Ambient ~= Color3.new(0,0,0) then
oofgp:Chat("ambient 0 0 0")
end
if oofgl.Brightness ~= 1 then
oofgp:Chat("brightness 1")
end
if oofgl.ClockTime ~= 0 then
oofgp:Chat("time 0")
end
if oofgl["ColorShift_Bottom"] ~= Color3.new(0,0,0) then
oofgp:Chat("colorshiftbottom 0 0 0")
end
if oofgl["ColorShift_Top"] ~= Color3.new(0,0,0) then
oofgp:Chat("colorshifttop 0 0 0")
end
if oofgl.FogColor ~= Color3.fromRGB(255,255,255) then
oofgp:Chat("fogcolor 255 255 255")
end
if oofgl.FogEnd ~= 50 then
oofgp:Chat("fogend 50")
end
if oofgl.FogStart ~= 0 then
oofgp:Chat("fogstart 0")
end
if oofgl.OutdoorAmbient ~= Color3.fromRGB(128,128,128) then
oofgp:Chat("outdoorambient 128 128 128")
end
end
end

if _G.selecta == "Pitch Black" then do
if oofgl.Ambient ~= Color3.new(0,0,0) then
oofgp:Chat("ambient 0 0 0")
end
if oofgl.Brightness ~= 0 then
oofgp:Chat("brightness 0")
end
if oofgl.ClockTime ~= 0 then
oofgp:Chat("time 0")
end
if oofgl["ColorShift_Bottom"] ~= Color3.fromRGB(100000000,1000000000,10000000000000) then
oofgp:Chat("colorshiftbottom 100000000 1000000000 10000000000000")
end
if oofgl["ColorShift_Top"] ~= Color3.fromRGB(100000000,1000000000,10000000000000) then
oofgp:Chat("colorshifttop 100000000 1000000000 10000000000000")
end
if oofgl.FogColor ~= Color3.new(0,0,0) then
oofgp:Chat("fogcolor 0 0 0")
end
if oofgl.FogEnd ~= 0 then
oofgp:Chat("fogend 0")
end
if oofgl.FogStart ~= 0 then
oofgp:Chat("fogstart 0")
end
if oofgl.OutdoorAmbient ~= Color3.fromRGB(0,0,0) then
oofgp:Chat("outdoorambient 0 0 0")
end
end
end

if _G.selecta == "Rock Bottom" then do
for i,v in pairs(game:GetDescendants()) do
if not ooffo:WaitForChild("Sound",.1) then
oofgp:Chat("music 0000000000000000005819335910")
end
if v:IsA("Sound") then
if v.Parent == ooffo then
if v.SoundId ~= 'http://www.roblox.com/asset/?id=5819335910' then
oofgp:Chat("music 0000000000000000005819335910")
end
if not v.Playing then
v:Play()
end
elseif v.Parent ~= ooffo then
v:Stop()
end
end
end
if oofgl.Ambient ~= Color3.new(0,0,0) then
oofgp:Chat("ambient 0 0 0")
end
if oofgl.Brightness ~= 0 then
oofgp:Chat("brightness 0")
end
if oofgl.ClockTime ~= 0 then
oofgp:Chat("time 0")
end
if oofgl["ColorShift_Bottom"] ~= Color3.new(0,0,0) then
oofgp:Chat("colorshiftbottom 0 0 0")
end
if oofgl["ColorShift_Top"] ~= Color3.new(0,0,0) then
oofgp:Chat("colorshifttop 0 0 0")
end
if oofgl.FogColor ~= Color3.new(0,0,0) then
oofgp:Chat("fogcolor 0 0 0")
end
if oofgl.FogEnd ~= 100000 then
oofgp:Chat("fogend 100000")
end
if oofgl.FogStart ~= 0 then
oofgp:Chat("fogstart 0")
end
if oofgl.OutdoorAmbient ~= Color3.fromRGB(0,0,0) then
oofgp:Chat("outdoorambient 0 0 0")
end
end
end

if _G.selecta == "Hide and Seek" then do
if oofgl.Ambient ~= Color3.new(0,0,0) then
oofgp:Chat("ambient 0 0 0")
end
if oofgl.Brightness ~= 1 then
oofgp:Chat("brightness 1")
end
if oofgl.ClockTime ~= 0 then
oofgp:Chat("time 0")
end
if oofgl["ColorShift_Bottom"] ~= Color3.new(0,0,0) then
oofgp:Chat("colorshiftbottom 0 0 0")
end
if oofgl["ColorShift_Top"] ~= Color3.new(0,0,0) then
oofgp:Chat("colorshifttop 0 0 0")
end
if oofgl.FogColor ~= Color3.new(0,0,0) then
oofgp:Chat("fogcolor 0 0 0")
end
if oofgl.FogEnd ~= 25 then
oofgp:Chat("fogend 25")
end
if oofgl.FogStart ~= 25 then
oofgp:Chat("fogstart 25")
end
if oofgl.OutdoorAmbient ~= Color3.fromRGB(128,128,128) then
oofgp:Chat("outdoorambient 128 128 128")
end
end
end

if _G.selecta == "2Spooky4Me" then do
if ServerCheck() then else SendNotification("Regen Failed", "Regen Pad unavailble.") end
for i,v in pairs(game:GetDescendants()) do
if not ooffo:WaitForChild("Sound",.1) then
oofgp:Chat("music 000000000000000000950296099")
end
if v:IsA("Sound") then
if v.Parent == ooffo then
if v.SoundId ~= 'http://www.roblox.com/asset/?id=950296099' then
oofgp:Chat("music 000000000000000000950296099")
end
if not v.Playing then
v:Play()
end
elseif v.Parent ~= ooffo then
v:Stop()
end
end
end
if not oofpl.PlayerGui:WaitForChild("MessageGUI",.5) then
oofgp:Chat("m "..zalgo)
end
if oofgl.Ambient ~= Color3.new(0,0,0) then
oofgp:Chat("ambient 0 0 0")
end
if oofgl.Brightness ~= 1 then
oofgp:Chat("brightness 1")
end
if oofgl.ClockTime ~= 0 then
oofgp:Chat("time 0")
end
if oofgl["ColorShift_Bottom"] ~= Color3.new(0,0,0) then
oofgp:Chat("colorshiftbottom 0 0 0")
end
if oofgl["ColorShift_Top"] ~= Color3.new(0,0,0) then
oofgp:Chat("colorshifttop 0 0 0")
end
if oofgl.FogColor ~= Color3.new(0,0,0) then
oofgp:Chat("fogcolor 0 0 0")
end
if oofgl.FogEnd ~= 25 then
oofgp:Chat("fogend 25")
end
if oofgl.FogStart ~= 0 then
oofgp:Chat("fogstart 0")
end
if oofgl.OutdoorAmbient ~= Color3.new(0,0,0) then
oofgp:Chat("outdoorambient 0 0 0")
end

end
end



end
end)()
end
end

if toggleamb == false then
end
end)
-----------------------------------------------------------------------------------------------------------------------
--[[
                                                                                        
                                                      ,,                                
`7MM"""YMM                                    mm      db                                
  MM    `7                                    MM                                        
  MM   d   `7MM  `7MM  `7MMpMMMb.   ,p6"bo  mmMMmm  `7MM   ,pW"Wq.  `7MMpMMMb.  ,pP"Ybd 
  MM""MM     MM    MM    MM    MM  6M'  OO    MM      MM  6W'   `Wb   MM    MM  8I   `" 
  MM   Y     MM    MM    MM    MM  8M         MM      MM  8M     M8   MM    MM  `YMMMa. 
  MM         MM    MM    MM    MM  YM.    ,   MM      MM  YA.   ,A9   MM    MM  L.   I8 
.JMML.       `Mbod"YML..JMML  JMML. YMbmd'    `Mbmo .JMML. `Ybmd9'  .JMML  JMML.M9mmmP' 
                                                                                        
                                                                                        
]]
--[[-------------------------------------------------------------------------------------------------------------------
  ___               _                _     _              
 | _ \  _ _   ___  | |_   ___   __  | |_  (_)  ___   _ _  
 |  _/ | '_| / _ \ |  _| / -_) / _| |  _| | | / _ \ | ' \ 
 |_|   |_|   \___/  \__| \___| \__|  \__| |_| \___/ |_||_|
                                                          
]]ooff:Section('Protection')



-- Anti Afk: Toggle
antiafk = false
local antiafktoggle = ooff:Toggle("Anti Afk", {flag = 'antiafktoggle'}, function()
if antiafk == false then
antiafk = true
else
antiafk = false
end

if antiafk == true then do
local antiafkcoroutine = coroutine.wrap(function()
while wait() do
if antiafk == false then break end

local VirtualUser = game:service'VirtualUser'
oofpl.Idled:connect(function()
VirtualUser:CaptureController()
VirtualUser:ClickButton2(Vector2.new())
end)

end
end)()
end
end

if antiafk == false then
end
end)



-- Anti Punish | Toggle
antipunishtoggle = false
local antipunish = ooff:Toggle('Anti Punish', {flag = 'antipunish'}, function()
if antipunishtoggle == false then
antipunishtoggle = true
else
antipunishtoggle = false
end

if antipunishtoggle == true then do
local antipunishcoroutine = coroutine.wrap(function()
while wait(.25) do
if antipunishtoggle == false then break end
if game.Lighting:FindFirstChild(game.Players.LocalPlayer.Name) then
oofgp:Chat(("unpunish me"))
end
end
end)()
end
end

if antipunishtoggle == false then do
end
end
end)



-- Anti Kill | Toggle
antikill = false
local antikilltoggle = ooff:Toggle("Anti Kill", {flag = 'antikilltoggle'}, function()
if antikill == false then
antikill = true
else
antikill = false
end

if antikill == true then do
local antikillcoroutine = coroutine.wrap(function()
while wait(.25) do
if antikill == false then break end

if game.Players.LocalPlayer.Character then
if game.Players.LocalPlayer.Character.Humanoid.Health == 0 then
oofgp:Chat(("reset me"))
end
end

end
end)()
end
end

if antikill == false then
end
end)



-- Anti Abuse | Toggle
antiabuse = false
local antiabusetoggle = ooff:Toggle('Anti Abuse', {flag = "antiabusetoggle"}, function()
if antiabuse == false then
antiabuse = true
else
antiabuse = false
end

if antiabuse == true then do
local antiabusecoroutine = coroutine.wrap(function()
while wait() do
if antiabuse == false then break end

if game.Players.PlayerAdded then
oofap = oofgp:GetPlayers()
end

for i, player in pairs(oofap) do
if player.Character then

if player.Backpack:FindFirstChild("PortableJustice") then
local plrname = player.Name
oofgp:Chat(("ungear "..plrname))
oofgp:Chat(("h Anti-Abuse | Tripped by: "..plrname.." | Reason: PortableJustice found in backpack."))
end

if player.Backpack:FindFirstChild("SpyDrone") then
local plrname = player.Name
oofgp:Chat(("ungear "..plrname))
oofgp:Chat(("h Anti-Abuse | Tripped by: "..plrname.." | Reason: SpyDrone found in backpack."))
end

end
end

end
end)()
end
end

if antiabuse == false then do
end
end
end)



-- Anti Server Crash | Toggle
anticrash = false
local anticrashtoggle = ooff:Toggle('Anti Server Crash', {flag = "anticrashtoggle"}, function()
if anticrash == false then
anticrash = true
else
anticrash = false
end

if anticrash == true then do
local anticrashcoroutine = coroutine.wrap(function()
while wait() do
if anticrash == false then break end

if game.Players.PlayerAdded then
oofap = oofgp:GetPlayers()
end

for i, player in pairs(oofap) do
if player.Character then

if player.Character:FindFirstChild("VampireVanquisher") then
local plrname = player.Name
oofgp:Chat(("ungear "..plrname))
oofgp:Chat(("h Anti-Server Crash | Tripped by: "..plrname.." | Reason: VampireVanquisher was equipped."))
end

if player.Backpack:FindFirstChild("DriveBloxUltimateCar") then
local plrname = player.Name
oofgp:Chat(("ungear all"))
oofgp:Chat(("h Anti-Server Crash | Tripped by: "..plrname.." | Reason: DriveBloxUltimateCar found in backpack."))
end

if player.Character:FindFirstChild("HumanoidRootPart") then
if player.Character.HumanoidRootPart.Size.Y <= 0.3 then
local plrname = player.Name
oofgp:Chat(("unsize "..plrname))
oofgp:Chat(("h Anti-Server Crash | Tripped by: "..plrname.." | Reason: HumanoidRootPart less than or equal."))
end
end

end
end

end
end)()
end
end

if anticrash == false then do
end
end
end)



-- Anti m/pm/h/blind | Toggle
antispam = false
local antispamtoggle = ooff:Toggle("Anti m/pm/h/blind", {flag = 'antispamtoggle'}, function()
if antispam == false then
antispam = true
else
antispam = false
end

if antispam == true then do
local antispamcoroutine = coroutine.wrap(function()
while wait() do
if antispam == false then break end

for i,v in pairs(oofpl.PlayerGui:GetDescendants()) do
if v.Name == "MessageGUI" or v.Name == "Message" or v.Name == "EFFECTGUIBLIND" or v.Name == "ChatBubble" or v.Name == "HintGUI" then
v:Destroy()
end
end

for i,v in pairs(game.Workspace.Terrain["_Game"].Folder:GetDescendants()) do
if v.Name == "Message" then
v:Destroy()
end
end

end
end)()
end
end

if antispam == false then
end
end)



-- Anti sm/f/sp/ex/ff | Toggle
antieffects = false
local antieffectstoggle = ooff:Toggle("Anti sm/f/sp/ex/ff", {flag = 'antieffectstoggle'}, function()
if antieffects == false then
antieffects = true
else
antieffects = false
end

if antieffects == true then do
local antieffectscoroutine = coroutine.wrap(function()
while wait() do
if antieffects == false then break end

for i,v in pairs(game.Workspace:GetDescendants()) do
if v.Name == "Smoke" or v.Name == "Fire" or v.Name == "Sparkles" or v.Name == "Explosion" or v.Name == "ForceField" then
v:Destroy()
end
end

end
end)()
end
end

if antieffects == false then
end
end)



-- Wipe Logs | Button
ooff:Button("Wipe Logs", function()
oofgp:Chat("pm Wipe Logs: Start")
wait()
oofgp:Chat("pm Clearing...1")
wait()
oofgp:Chat("pm Clearing...2")
wait()
oofgp:Chat("pm Clearing...3")
wait()
oofgp:Chat("pm Clearing...4")
wait()
oofgp:Chat("pm Clearing...5")
wait()
oofgp:Chat("pm Clearing...6")
wait()
oofgp:Chat("pm Clearing...7")
wait()
oofgp:Chat("pm Clearing...8")
wait()
oofgp:Chat("pm Clearing...9")
wait()
oofgp:Chat("pm Clearing...10")
wait()
oofgp:Chat("pm Clearing...11")
wait()
oofgp:Chat("pm Clearing...12")
wait()
oofgp:Chat("pm Clearing...13")
wait()
oofgp:Chat("pm Clearing...14")
wait()
oofgp:Chat("pm Clearing...15")
wait()
oofgp:Chat("pm Clearing...16")
wait()
oofgp:Chat("pm Clearing...17")
wait()
oofgp:Chat("pm Clearing...18")
wait()
oofgp:Chat("pm Clearing...19")
wait()
oofgp:Chat("pm Clearing...20")
wait()
oofgp:Chat("pm Clearing...21")
wait()
oofgp:Chat("pm Clearing...22")
wait()
oofgp:Chat("pm Clearing...23")
wait()
oofgp:Chat("pm Clearing...24")
wait()
oofgp:Chat("pm Clearing...25")
wait()
oofgp:Chat("pm Clearing...26")
wait()
oofgp:Chat("pm Clearing...27")
wait()
oofgp:Chat("pm Clearing...28")
wait()
oofgp:Chat("pm Clearing...29")
wait()
oofgp:Chat("pm Clearing...30")
wait()
oofgp:Chat("pm Clearing...31")
wait()
oofgp:Chat("pm Clearing...32")
wait()
oofgp:Chat("pm Clearing...33")
wait()
oofgp:Chat("pm Clearing...34")
wait()
oofgp:Chat("pm Clearing...35")
wait()
oofgp:Chat("pm Clearing...36")
wait()
oofgp:Chat("pm Clearing...37")
wait()
oofgp:Chat("pm Clearing...38")
wait()
oofgp:Chat("pm Clearing...39")
wait()
oofgp:Chat("pm Clearing...40")
wait()
oofgp:Chat("pm Clearing...41")
wait()
oofgp:Chat("pm Clearing...42")
wait()
oofgp:Chat("pm Clearing...43")
wait()
oofgp:Chat("pm Clearing...44")
wait()
oofgp:Chat("pm Clearing...45")
wait()
oofgp:Chat("pm Clearing...46")
wait()
oofgp:Chat("pm Clearing...47")
wait()
oofgp:Chat("pm Clearing...48")
wait()
oofgp:Chat("pm Clearing...49")
wait()
oofgp:Chat("pm Clearing...50")
wait()
oofgp:Chat("pm Wipe Logs: End")
end)
-----------------------------------------------------------------------------------------------------------------------
--[[-------------------------------------------------------------------------------------------------------------------
  ___   _   _                _       ___                       
 / __| (_) | |  ___   _ _   | |_    / __|  _ __   __ _   _ __  
 \__ \ | | | | / -_) | ' \  |  _|   \__ \ | '_ \ / _` | | '  \ 
 |___/ |_| |_| \___| |_||_|  \__|   |___/ | .__/ \__,_| |_|_|_|
                                          |_|                  
]]ooff:Section('Silent Spam')



-- Dropdown
local SilentSpamList = ooff:Dropdown("Intervals", {
location = _G;
flag = "selectss";
list = {
"0 Sec Wait";
"5 Sec Wait";
"10 Sec Wait";
"30 Sec Wait";
}
}, function(new)
end)



-- Open | Button
ooff:Button("Open", function()

if _G.selectss == "0 Sec Wait" then do
loadstring(game:HttpGet('https://pastebin.com/raw/9SPMjxq2', true))()
end
end

if _G.selectss == "5 Sec Wait" then do
loadstring(game:HttpGet('https://pastebin.com/raw/Av2ZMhQ3', true))()
end
end

if _G.selectss == "10 Sec Wait" then do
loadstring(game:HttpGet('https://pastebin.com/raw/7tAV4kVB', true))()
end
end

if _G.selectss == "30 Sec Wait" then do
loadstring(game:HttpGet('https://pastebin.com/raw/WXDi7pw9', true))()
end
end

end)
-----------------------------------------------------------------------------------------------------------------------
--[[
                                                 
                                                 
`7MM"""YMM               mm                      
  MM    `7               MM                      
  MM   d    `7M'   `MF'mmMMmm  `7Mb,od8  ,6"Yb.  
  MMmmMM      `VA ,V'    MM      MM' "' 8)   MM  
  MM   Y  ,     XMX      MM      MM      ,pm9MM  
  MM     ,M   ,V' VA.    MM      MM     8M   MM  
.JMMmmmmMMM .AM.   .MA.  `Mbmo .JMML.   `Moo9^Yo.
                                                 
                                                 
]]
--[[-------------------------------------------------------------------------------------------------------------------
    _     _                  _             
   /_\   | |__   _  _   ___ (_) __ __  ___ 
  / _ \  | '_ \ | || | (_-< | | \ V / / -_)
 /_/ \_\ |_.__/  \_,_| /__/ |_|  \_/  \___|
                                           
]]oofe:Section('Abusive')



-- Dropdown
local CrashServerList = oofe:Dropdown("Types", {
location = _G;
flag = "selectcs";
list = {
"Crash Server";
"Crash Server 2";
"Spooky Crash";
}
}, function(new)
end)



-- Execute: Button
oofe:Button("Execute", function()

if _G.selectcs == "Crash Server" then do
oofgp:Chat("gear me 00000000000000000094794847")
wait(.5)
oofgp.LocalPlayer.Character.Humanoid:EquipTool(oofgp.LocalPlayer.Backpack.VampireVanquisher)
wait()
oofgp:Chat("size me .3")
oofgp:Chat("size me .3")
oofgp:Chat("size me .3")
oofgp:Chat("size me .3")
oofgp:Chat("size me .3")
oofgp:Chat("size me .3")
oofgp:Chat("size me .3")
oofgp:Chat("size me .3")
oofgp:Chat("size me .3")
oofgp:Chat("size me .3")
end
end

if _G.selectcs == "Crash Server 2" then do
oofgp:Chat("size me .3")
oofgp:Chat("size me .3")
oofgp:Chat("size me .3")
oofgp:Chat("freeze me")
oofgp:Chat("size me 10")
oofgp:Chat("size me 10")
oofgp:Chat("size me 10")
oofgp:Chat("clone me")
end
end

if _G.selectcs == "Spooky Crash" then do
oofgp:Chat("gear me 00000000000000000094794847")
oofgp:Chat("h/"..zalgo)
wait(1)
for i,v in pairs(game:GetDescendants()) do
if v:IsA("Sound") then
v:Stop()
end
end
oofgp:Chat("fix")
wait()
oofgp:Chat("time 0")
oofgp:Chat("fogend 25")
oofgp:Chat("fogcolor 0 0 0")
oofgp:Chat("outdoorambient 0 0 0")
oofgp:Chat("music 950296099")
wait()
oofgp.LocalPlayer.Character.Humanoid:EquipTool(oofgp.LocalPlayer.Backpack.VampireVanquisher)
wait()
oofgp:Chat("size me .3")
oofgp:Chat("size me .3")
oofgp:Chat("size me .3")
oofgp:Chat("size me .3")
oofgp:Chat("size me .3")
oofgp:Chat("size me .3")
oofgp:Chat("size me .3")
oofgp:Chat("size me .3")
oofgp:Chat("size me .3")
oofgp:Chat("size me .3")
end
end

end)



-- Crash Server 3 | Toggle
crashserver3 = false
local crashserver3toggle = oofe:Toggle("Crash Server 3", {flag = 'crashserver3toggle'}, function()
if crashserver3 == false then
crashserver3 = true
else
crashserver3 = false
end

if crashserver3 == true then do
local crashserver3coroutine = coroutine.wrap(function()
while wait() do
if crashserver3 == false then break end
oofgp:Chat("gear all 000000000000000000253519495")
end
end)()
end
end

if crashserver3 == false then
end
end)



-- Break Everyones Cam | Button
oofe:Button("Break Everyones Cam ", function()
oofgp:Chat("gear all 0000000000000000004842207161")
oofgp:Chat("h Right Mouse Button has been disabled.")
oofpl.Backpack:WaitForChild("AR")
oofpl.Backpack.AR.Parent = character
wait(.3)
if character:FindFirstChild("AR") then
character.AR.Parent = oofpl.Backpack
end
oofgp:Chat("h Right click is now broken.")
end)



-- Message Spam | Toggle
messagespam = false
local messagespamtoggle = oofe:Toggle("Message Spam", {flag = 'messagespamtoggle'}, function()
if messagespam == false then
messagespam = true
else
messagespam = false
end

if messagespam == true then do
local messagespamcoroutine = coroutine.wrap(function()
while wait() do
if messagespam == false then break end
oofgp:Chat("m ")
end
end)()
end
end

if messagespam == false then
end
end)



-- Fun Police | Toggle
funpolice = false
local funpolicetoggle = oofe:Toggle("Fun Police", {flag = 'funpolicetoggle'}, function()
if funpolice == false then
funpolice = true
else
funpolice = false
end

if funpolice == true then do
local funpolicecoroutine = coroutine.wrap(function()
while wait() do
if funpolice == false then break end

-------------------------------------------------------PlayerGui-------------------------------------------------------

for i,v in pairs(oofpl.PlayerGui:GetDescendants()) do
if v.Name == "MessageGUI" then
oofgp:Chat("clr")
oofgp:Chat("h/Fun Police | Tripped | Reason: Message was detected.")
wait(.25)
end
if v.Name == "EFFECTGUIBLIND" then
oofgp:Chat("unblind all")
oofgp:Chat("h/Fun Police | Tripped | Reason: Blind was detected.")
wait(.25)
end
end

------------------------------------------------------GetPlayers-------------------------------------------------------

if game.Players.PlayerAdded then
oofap = oofgp:GetPlayers()
end

--------------------------------------------------------Locals---------------------------------------------------------

for i, player in pairs(oofap) do
if player.Character then
local plrname = player.Name
local oofcha = player.Character
local oofhum = oofcha:WaitForChild("Humanoid", 1)
local oofhea = oofcha:WaitForChild("Head", 1)
local ooftor = oofcha:WaitForChild("Torso", 1)
local oofhrp = oofcha:WaitForChild("HumanoidRootPart", 1)
local oofbdc = oofcha:WaitForChild("Body Colors", 1)

--------------------------------------------------------Folder---------------------------------------------------------

for i,v in pairs(oofga.Folder:GetChildren()) do
if v:IsA("Model") then
if v.Name == plrname.."'s jail" then
oofgp:Chat("clr")
oofgp:Chat("h/Fun Police | Tripped by: "..plrname.." | Reason: Jail was detected.")
wait(.25)
end
if v.Name == plrname then
oofgp:Chat("clr")
oofgp:Chat("h/Fun Police | Tripped by: "..plrname.." | Reason: Clone was detected.")
wait(.25)
end
end
if v:IsA("Sound") then
oofgp:Chat("music")
oofgp:Chat("h/Fun Police | Tripped | Reason: Music was detected.")
wait(.25)
end
if v:IsA("Script") then
if v.Name == "Disco" then
oofgp:Chat("undisco")
oofgp:Chat("h/Fun Police | Tripped | Reason: Disco was detected.")
wait(.25)
end
if v.Name == "Flash" then
oofgp:Chat("unflash")
oofgp:Chat("h/Fun Police | Tripped | Reason: Flash was detected.")
wait(.25)
end
end
end

--------------------------------------------------------UserId---------------------------------------------------------

if player.UserId ~= player.CharacterAppearanceId then
oofgp:Chat("unchar "..plrname)
oofgp:Chat("h/Fun Police | Tripped by: "..plrname.." | Reason: Character change was detected.")
wait(.25)
end

-------------------------------------------------------Backpack--------------------------------------------------------

for i,v in pairs(player.Backpack:GetChildren()) do
if v:IsA("Tool") then
oofgp:Chat("ungear "..plrname)
oofgp:Chat("h/Fun Police | Tripped by: "..plrname.." | Reason: Tool was found in backpack.")
wait(.25)
end
end

-------------------------------------------------------Lighting--------------------------------------------------------

if oofgl then
if oofgl.Ambient ~= Color3.new(0,0,0) then
oofgp:Chat("ambient 0 0 0")
oofgp:Chat("h/Fun Police | Tripped | Reason: Ambient was changed.")
wait(.25)
end
if oofgl.Brightness ~= 1 then
oofgp:Chat("brightness 1")
oofgp:Chat("h/Fun Police | Tripped | Reason: Brightness was changed.")
wait(.25)
end
if oofgl.ClockTime ~= 14 then
oofgp:Chat("fix")
oofgp:Chat("h/Fun Police | Tripped | Reason: ClockTime was changed.")
wait(.25)
end
if oofgl["ColorShift_Bottom"] ~= Color3.new(0,0,0) then
oofgp:Chat("colorshiftbottom 0 0 0")
oofgp:Chat("h/Fun Police | Tripped | Reason: ColorShift_Bottom was changed.")
wait(.25)
end
if oofgl["ColorShift_Top"] ~= Color3.new(0,0,0) then
oofgp:Chat("colorshifttop 0 0 0")
oofgp:Chat("h/Fun Police | Tripped | Reason: ColorShift_Top was changed.")
wait(.25)
end
if oofgl.FogColor ~= Color3.new(0.75294125080109,0.75294125080109,0.75294125080109) then
oofgp:Chat("fogcolor 192 192 192")
oofgp:Chat("h/Fun Police | Tripped | Reason: FogColor was changed.")
wait(.25)
end
if oofgl.FogEnd ~= 100000 then
oofgp:Chat("fogend 100000")
oofgp:Chat("h/Fun Police | Tripped | Reason: FogEnd was changed.")
wait(.25)
end
if oofgl.FogStart ~= 0 then
oofgp:Chat("fogstart 0")
oofgp:Chat("h/Fun Police | Tripped | Reason: FogStart was changed.")
wait(.25)
end
if oofgl.OutdoorAmbient ~= Color3.fromRGB(128,128,128) then
oofgp:Chat("outdoorambient 128 128 128")
oofgp:Chat("h/Fun Police | Tripped | Reason: OutdoorAmbient was changed.")
wait(.25)
end
for i,v in pairs(oofgl:GetChildren()) do
if v.Name == plrname then
oofgp:Chat("unpunish "..plrname)
oofgp:Chat("h/Fun Police | Tripped by: "..plrname..' | Reason: Player was found in "Lighting".')
wait(.25)
end
end
end

-------------------------------------------------------Character-------------------------------------------------------

for i,v in pairs(oofcha:GetDescendants()) do
if v:IsA("Seat") then
oofgp:Chat("undog "..plrname)
oofgp:Chat("h/Fun Police | Tripped by: "..plrname.." | Reason: Seat was found on character.")
wait(.25)
end
if v:IsA("ForceField") then
oofgp:Chat("unff "..plrname)
oofgp:Chat("h/Fun Police | Tripped by: "..plrname.." | Reason: ForceField was found on character.")
wait(.25)
end
if v:IsA("Tool") then
oofgp:Chat("ungear "..plrname)
oofgp:Chat("h/Fun Police | Tripped by: "..plrname.." | Reason: Gear was found on character.")
wait(.25)
end
if v.Name == "ice" then
oofgp:Chat("thaw "..plrname)
oofgp:Chat("h/Fun Police | Tripped by: "..plrname.." | Reason: Ice was found on character.")
wait(.25)
end
if v.Name == "NameTag" then
oofgp:Chat("unname "..plrname)
oofgp:Chat("h/Fun Police | Tripped by: "..plrname.." | Reason: Name change was detected.")
wait(.25)
end
if v:IsA("Pants") then
if v.Name == "Addon" then
if v.PantsTemplate == "http://www.roblox.com/asset/?id=109163376" then
oofgp:Chat("reset "..plrname)
oofgp:Chat("h/Fun Police | Tripped by: "..plrname.." | Reason: Swagify was detected.")
wait(.25)
end
end
end
if v.Name == "EpicCape" then
if v.BrickColor.Name ~= "Pink" then
oofgp:Chat("uncape "..plrname)
oofgp:Chat("h/Fun Police | Tripped by: "..plrname.." | Reason: Cape was found on character.")
wait(.25)
end
end
end

-------------------------------------------------------Humanoid--------------------------------------------------------

if oofhum then
if oofhum.JumpPower ~= 50 then
oofgp:Chat("normaljump "..plrname)
oofgp:Chat("h/Fun Police | Tripped by: "..plrname.." | Reason: JumpPower was changed.")
wait(.25)
end
if oofhum.Health ~= 100 then
oofgp:Chat("reset "..plrname)
oofgp:Chat("h/Fun Police | Tripped by: "..plrname.." | Reason: Health was changed.")
wait(.25)
end
if oofhum.WalkSpeed ~= 16 then
oofgp:Chat("speed "..plrname.." 16")
oofgp:Chat("h/Fun Police | Tripped by: "..plrname.." | Reason: WalkSpeed was changed.")
wait(.25)
end
if oofhum.Sit == true then
oofgp:Chat("jump "..plrname)
oofgp:Chat("h/Fun Police | Tripped by: "..plrname.." | Reason: Player was sitting.")
wait(.25)
end
if oofhum.PlatformStand == true then
oofgp:Chat("unstun "..plrname)
oofgp:Chat("h/Fun Police | Tripped by: "..plrname.." | Reason: Player was stunned.")
wait(.25)
end
end

---------------------------------------------------------Head----------------------------------------------------------

if oofhea then
if oofhea.Mesh then
if oofhea.Mesh.Scale.Z == 3 or oofhea.Mesh.Scale.Z == .75 then
oofgp:Chat("normalhead "..plrname)
oofgp:Chat("h/Fun Police | Tripped by: "..plrname.." | Reason: Head size was changed.")
wait(.25)
end
end
if oofhea.Transparency ~= 0 then
if oofhea.Transparency ~= .5 then
oofgp:Chat("visible "..plrname)
oofgp:Chat("h/Fun Police | Tripped by: "..plrname.." | Reason: Invisibility was detected.")
wait(.25)
end
end
end

---------------------------------------------------------Torso---------------------------------------------------------

if ooftor then
local oofori = ooftor.Orientation
if oofhum.FloorMaterial == Enum.Material.Air then
if oofori.X > 80 and oofori.X < 90 then
oofgp:Chat("respawn "..plrname)
oofgp:Chat("h/Fun Police | Tripped by: "..plrname.." | Reason: Player was on their back.")
wait(.25)
end
if oofori.X > 10 and oofori.X < 80 then
oofgp:Chat("unfly "..plrname)
oofgp:Chat("unskydive "..plrname)
oofgp:Chat("h/Fun Police | Tripped by: "..plrname.." | Reason: Player was flying.")
wait(.25)
end
if oofori.X < -80 and oofori.X > -90 then
oofgp:Chat("respawn "..plrname)
oofgp:Chat("h/Fun Police | Tripped by: "..plrname.." | Reason: Player was on their face.")
wait(.25)
end
if oofori.X < -10 and oofori.X > -80 then
oofgp:Chat("unfly "..plrname)
oofgp:Chat("unskydive "..plrname)
oofgp:Chat("h/Fun Police | Tripped by: "..plrname.." | Reason: Player was flying.")
wait(.25)
end
if oofori.X > -10 and oofori.X < 10 and oofori.Z == -180 then
oofgp:Chat("respawn "..plrname)
oofgp:Chat("h/Fun Police | Tripped by: "..plrname.." | Reason: Player was upside down.")
wait(.25)
end
if ooftor.Position.Y > 1900 then
oofgp:Chat("unskydive "..plrname)
oofgp:Chat("h/Fun Police | Tripped by: "..plrname.." | Reason: Player was skydiving.")
wait(.25)
end
--[[if oofori.X > -10 and oofori.X < 10 and oofori.Z == 0 then
oofgp:Chat("unskydive "..plrname)
oofgp:Chat("h/Fun Police: Tripped by "..plrname.." | Reason: Player jumped.")
wait(.25)
end]]
end
for i,v in pairs(ooftor:GetChildren()) do
if v:IsA("PointLight") then
oofgp:Chat("unglow "..plrname)
oofgp:Chat("h/Fun Police | Tripped by: "..plrname.." | Reason: Glow was detected on character.")
wait(.25)
end
if v:IsA("ParticleEmitter") then
oofgp:Chat("unparticle "..plrname)
oofgp:Chat("h/Fun Police | Tripped by: "..plrname.." | Reason: Particle was detected on character.")
wait(.25)
end
if v:IsA("Fire") then
oofgp:Chat("unfire "..plrname)
oofgp:Chat("h/Fun Police | Tripped by: "..plrname.." | Reason: Fire was detected on character.")
wait(.25)
end
if v:IsA("Smoke") then
oofgp:Chat("unsmoke "..plrname)
oofgp:Chat("h/Fun Police | Tripped by: "..plrname.." | Reason: Smoke was detected on character.")
wait(.25)
end
if v:IsA("Sparkles") then
oofgp:Chat("unsparkles "..plrname)
oofgp:Chat("h/Fun Police | Tripped by: "..plrname.." | Reason: Sparkles was detected on character.")
wait(.25)
end
if v:IsA("BodyForce") then
if v.Force.Y ~= 1 then
oofgp:Chat("setgrav "..plrname.." 0")
oofgp:Chat("h/Fun Police | Tripped by: "..plrname.." | Reason: Gravity was changed.")
wait(.25)
end
end
if v:IsA("BodyGyro") then
if v.Name == "SPINNER" then
oofgp:Chat("unspin "..plrname)
oofgp:Chat("h/Fun Police | Tripped by: "..plrname.." | Reason: Spin was detected on character")
wait(.25)
end
end
end
if oofbdc then
if ooftor.BrickColor.Name ~= oofbdc.TorsoColor.Name then
oofgp:Chat("reset "..plrname)
oofgp:Chat("h/Fun Police | Tripped by: "..plrname.." | Reason: Player was modified.")
wait(.25)
end
end
if ooftor.Reflectance ~= 0 then
oofgp:Chat("reset "..plrname)
oofgp:Chat("h/Fun Police | Tripped by: "..plrname.." | Reason: Player was modified.")
wait(.25)
end
end

---------------------------------------------------HumanoidRootPart----------------------------------------------------

if oofhrp then
for i,v in pairs(oofhrp:GetChildren()) do
if v.Name == "Trail" then
oofgp:Chat("untrail "..plrname)
oofgp:Chat("h/Fun Police | Tripped by: "..plrname.." | Reason: Trail was detected on character.")
wait(.25)
end
if oofhrp.Size.Y ~= 2 then
oofgp:Chat("unsize "..plrname)
oofgp:Chat("h/Fun Police | Tripped by: "..plrname.." | Reason: Player size was modified.")
wait(.25)
end
end
end

----------------------------------------------------------End----------------------------------------------------------

end
end



end
end)()
end
end

if funpolice == false then
end
end)



-- Mimic: Toggle
mimicc = false
local mimicctoggle = oofe:Toggle("Mimic", {flag = 'mimicctoggle'}, function()
if mimicc == false then
mimicc = true
else
mimicc = false
end

if mimicc == true then do



if game.Players.PlayerAdded then
oofap = oofgp:GetPlayers()
end

for _, plr in pairs(oofap) do
local connection
connection = plr.Chatted:Connect(function(msg)
if plr.Name ~= oofpl.Name and mimicc == true then
oofgp:Chat("h/"..plr.Name.." said: "..msg)
end
if mimicc == false then
connection:Disconnect()
end
end)
end



end
end


end)
-----------------------------------------------------------------------------------------------------------------------
--[[-------------------------------------------------------------------------------------------------------------------
  ___                _       ___                       
 | _ \  __ _   _ _  | |_    / __|  _ __   __ _   _ __  
 |  _/ / _` | | '_| |  _|   \__ \ | '_ \ / _` | | '  \ 
 |_|   \__,_| |_|    \__|   |___/ | .__/ \__,_| |_|_|_|
                                  |_|                  
]]oofe:Section('Part Spam')



-- Dropdown
local PartSpamList = oofe:Dropdown("Types", {
location = _G;
flag = "selectps";
list = {
"Pebbles";
"Sticks";
"Platform";
"Boulders";
}
}, function(new)
end)



-- Toggle | Toggle
toggleps = false
local toggleambtoggle = oofe:Toggle("Toggle", {flag = 'toggleambtoggle'}, function()
if toggleps == false then
toggleps = true
else
toggleps = false
end

if toggleps == true then do
local toggleambcoroutine = coroutine.wrap(function()
while wait() do
if toggleps == false then break end



if _G.selectps == "Pebbles" then do
oofgp:Chat("part/0/0/0")
end
end

if _G.selectps == "Sticks" then do
oofgp:Chat("part/10/0/0")
end
end

if _G.selectps == "Platform" then do
oofgp:Chat("part/10/0/10")
end
end

if _G.selectps == "Boulders" then do
oofgp:Chat("part/10/10/10")
end
end



end
end)()
end
end

if toggleps == false then
end
end)
-----------------------------------------------------------------------------------------------------------------------
--[[-------------------------------------------------------------------------------------------------------------------
  _  _                        _                 
 | || |  __ _   _ _   _ __   | |  ___   ___  ___
 | __ | / _` | | '_| | '  \  | | / -_) (_-< (_-<
 |_||_| \__,_| |_|   |_|_|_| |_| \___| /__/ /__/
                                                
]]oofe:Section('Harmless')



-- Clone Glitch | Button
oofe:Button("Clone Glitch", function()
oofgp:Chat("speed all 0")
oofgp:Chat("punish all")
oofgp:Chat("clone all")
oofgp:Chat("jail all")
wait(1)
oofgp:Chat("unpunish all")
oofgp:Chat("removejails")
oofgp:Chat("speed all 15")
end)



-- Revive All | Toggle
reviveall = false
local revivealltoggle = oofe:Toggle("Revive All", {flag = 'revivealltoggle'}, function()
if reviveall == false then
reviveall = true
else
reviveall = false
end

if reviveall == true then do
local reviveallcoroutine = coroutine.wrap(function()
while wait(.25) do
if reviveall == false then break end

if game.Players.PlayerAdded then
oofap = oofgp:GetPlayers()
end

for i, player in pairs(oofap) do
if player.Character then
if player.Character.Humanoid.Health == 0 then
local plrname = player.Name
oofgp:Chat(("reset "..plrname))
end
end
end

end
end)()
end
end

if reviveall == false then
end
end)
-----------------------------------------------------------------------------------------------------------------------
--[[
                                                                                                  
                                                                                      ,,          
  .g8"""bgd                                                                         `7MM          
.dP'     `M                                                                           MM          
dM'       `  ,pW"Wq.  `7MMpMMMb.pMMMb.  `7MMpMMMb.pMMMb.   ,6"Yb.  `7MMpMMMb.    ,M""bMM  ,pP"Ybd 
MM          6W'   `Wb   MM    MM    MM    MM    MM    MM  8)   MM    MM    MM  ,AP    MM  8I   `" 
MM.         8M     M8   MM    MM    MM    MM    MM    MM   ,pm9MM    MM    MM  8MI    MM  `YMMMa. 
`Mb.     ,' YA.   ,A9   MM    MM    MM    MM    MM    MM  8M   MM    MM    MM  `Mb    MM  L.   I8 
  `"bmmmd'   `Ybmd9'  .JMML  JMML  JMML..JMML  JMML  JMML.`Moo9^Yo..JMML  JMML. `Wbmd"MML.M9mmmP' 
                                                                                                  
                                                                                                  
]]
--[[-------------------------------------------------------------------------------------------------------------------
   ___           _        _       _   _            
  / _ \   _  _  (_)  __  | |__   | | | |  ___  ___ 
 | (_) | | || | | | / _| | / /   | |_| | (_-< / -_)
  \__\_\  \_,_| |_| \__| |_\_\    \___/  /__/ \___|
                                                   
]]oofc:Section('Quick Use')



-- clr | Toggle
clrcmd = false
local clrcmdtoggle = oofc:Toggle("clr", {flag = 'clrcmdtoggle'}, function()
if clrcmd == false then
clrcmd = true
else
clrcmd = false
end

if clrcmd == true then do
local clrcmdcoroutine = coroutine.wrap(function()
while wait() do
if clrcmd == false then break end
oofgp:Chat("clr")
end
end)()
end
end

if clrcmd == false then
end
end)



-- fix | Toggle
fixcmd = false
local fixcmdtoggle = oofc:Toggle("fix", {flag = 'fixcmdtoggle'}, function()
if fixcmd == false then
fixcmd = true
else
fixcmd = false
end

if fixcmd == true then do
local fixcmdcoroutine = coroutine.wrap(function()
while wait() do
if fixcmd == false then break end
oofgp:Chat("fix")
end
end)()
end
end

if fixcmd == false then
end
end)



-- fly me | Button
oofc:Button("fly me", function()
oofgp:Chat("fly me")
end)



-- reload me | Button
oofc:Button("reload me", function()
oofgp:Chat("reload me")
end)



-- ungear me | Toggle
ungearme = false
local ungearmetoggle = oofc:Toggle("ungear me", {flag = 'ungearmetoggle'}, function()
if ungearme == false then
ungearme = true
else
ungearme = false
end

if ungearme == true then do
local ungearmecoroutine = coroutine.wrap(function()
while wait() do
if ungearme == false then break end
oofgp:Chat("ungear me")
wait(1)
end
end)()
end
end

if ungearme == false then
end
end)
-----------------------------------------------------------------------------------------------------------------------
--[[-------------------------------------------------------------------------------------------------------------------
  ___               _      
 | _ )  __ _   ___ (_)  __ 
 | _ \ / _` | (_-< | | / _|
 |___/ \__,_| /__/ |_| \__|
                           
]]oofc:Section('Basic')



-- Dropdown
local CommandList = oofc:Dropdown("Commands", {
location = _G;
flag = "selectcmd";
list = {
"clone me";
"ff me";
"freeze me";
"thaw me";
"invisible me";
"jail me";
"logs";
"noclip me";
"clip me";
"respawn me";
"skydive me";
"unskydive me";
}
}, function(new)
end)



-- Execute | Button
oofc:Button("Execute", function()
oofgp:Chat(tostring(_G.selectcmd))
end)



-- Toggle: Toggle
togglec = false
local togglectoggle = oofc:Toggle("Toggle", {flag = 'togglectoggle'}, function()
if togglec == false then
togglec = true
else
togglec = false
end

if togglec == true then do
local toggleccoroutine = coroutine.wrap(function()
while wait() do
if togglec == false then break end
oofgp:Chat(tostring(_G.selectcmd))
end
end)()
end
end

if togglec == false then
end
end)
-----------------------------------------------------------------------------------------------------------------------
--[[-------------------------------------------------------------------------------------------------------------------
   ___               _                 
  / __|  _  _   ___ | |_   ___   _ __  
 | (__  | || | (_-< |  _| / _ \ | '  \ 
  \___|  \_,_| /__/  \__| \___/ |_|_|_|
                                       
]]oofc:Section('Custom')



-- tp me me me | Button
oofc:Button("tp me me me", function()
oofgp:Chat("tp me me me")
end)



-- tp me random | Button
oofc:Button("tp me random", function()
oofgp:Chat("tp me random")
end)
-----------------------------------------------------------------------------------------------------------------------
--[[
                                                
                                                
  .g8"""bgd                                     
.dP'     `M                                     
dM'       `   .gP"Ya   ,6"Yb.  `7Mb,od8 ,pP"Ybd 
MM           ,M'   Yb 8)   MM    MM' "' 8I   `" 
MM.    `7MMF'8M""""""  ,pm9MM    MM     `YMMMa. 
`Mb.     MM  YM.    , 8M   MM    MM     L.   I8 
  `"bmmmdPY   `Mbmmd' `Moo9^Yo..JMML.   M9mmmP' 
                                                
                                                
]]
--[[-------------------------------------------------------------------------------------------------------------------
  ___                       
 / __|  _ __   __ _   _ __  
 \__ \ | '_ \ / _` | | '  \ 
 |___/ | .__/ \__,_| |_|_|_|
       |_|                  
]]ooft:Section('Spam')



-- Dropdown
local GearTList = ooft:Dropdown("Gears", {
location = _G;
flag = "selecttgear";
list = {
"Airstrike";
"Bad Bunny";
"Barrel O' Monkeys";
"Bombo's Survival R.T.";
"Caltrops";
"FtV: Alpaca Plushie";
"Ghost Dragon";
"Land Shark Shooter";
"Noobcaik";
"Overseer Short Sword";
"PE Whistle";
"Remote Mine";
"Scroll of Sevenless";
"Skeleton Scythe";
"Subspace Tripmine";
"T: the Chaos Edge";
"Wormhole Tunneler";
"Zombie Staff";
}
}, function(new)
end)



-- Toggle | Toggle
togglefun = false
local togglefuntoggle = ooft:Toggle("Toggle", {flag = 'togglefuntoggle'}, function()
if togglefun == false then
togglefun = true
else
togglefun = false
end

if togglefun == true then do
local togglefuncoroutine = coroutine.wrap(function()
while wait() do
if togglefun == false then break end



if _G.selecttgear == "Airstrike" then do
oofgp:Chat("gear me 00000000000000000088885539")
end
end

if _G.selecttgear == "Bad Bunny" then do
oofgp:Chat("gear me 00000000000000000024839406")
end
end

if _G.selecttgear == "Barrel O' Monkeys" then do
oofgp:Chat("gear me 00000000000000000031314849")
end
end

if _G.selecttgear == "Bombo's Survival R.T." then do
oofgp:Chat("gear me 000000000000000000243788010")
end
end

if _G.selecttgear == "Caltrops" then do
oofgp:Chat("gear me 00000000000000000015176169")
end
end

if _G.selecttgear == "FtV: Alpaca Plushie" then do
oofgp:Chat("gear me 000000000000000000292969139")
end
end

if _G.selecttgear == "Ghost Dragon" then do
oofgp:Chat("gear me 00000000000000000094233391")
end
end

if _G.selecttgear == "Land Shark Shooter" then do
oofgp:Chat("gear me 000000000000000000118281463")
end
end

if _G.selecttgear == "Noobcaik" then do
oofgp:Chat("gear me 000000000000000000107458461")
end
end

if _G.selecttgear == "Overseer Short Sword" then do
oofgp:Chat("gear me 000000000000000000156467990")
end
end

if _G.selecttgear == "PE Whistle" then do
oofgp:Chat("gear me 000000000000000000128160832")
end
end

if _G.selecttgear == "Remote Mine" then do
oofgp:Chat("gear me 00000000000000000033383241")
end
end

if _G.selecttgear == "Scroll of Sevenless" then do
oofgp:Chat("gear me 000000000000000000125013830")
end
end

if _G.selecttgear == "Skeleton Scythe" then do
oofgp:Chat("gear me 00000000000000000095951330")
end
end

if _G.selecttgear == "Subspace Tripmine" then do
oofgp:Chat("gear me 00000000000000000011999247")
end
end

if _G.selecttgear == "T: the Chaos Edge" then do
oofgp:Chat("gear me 00000000000000000093136746")
end
end

if _G.selecttgear == "Wormhole Tunneler" then do
oofgp:Chat("gear me 00000000000000000034870758")
end
end

if _G.selecttgear == "Zombie Staff" then do
oofgp:Chat("gear me 00000000000000000026421972")
end
end



end
end)()
end
end

if togglefun == false then
end
end)
-----------------------------------------------------------------------------------------------------------------------
--[[-------------------------------------------------------------------------------------------------------------------
  ___               
 | __|  _  _   _ _  
 | _|  | || | | ' \ 
 |_|    \_,_| |_||_|
                    
]]ooft:Section('Spam')



-- Dropdown
local GearSList = ooft:Dropdown("Gears", {
location = _G;
flag = "selectegear";
list = {
"ALS Ice Bucket C.";
"Azure Dragon's Magic S.";
"Blizzard Wand";
"Boombox Gear 3.0";
"Camping Machete";
"Clone Part";
"Confusoray 672";
"Crossbow of the Sea";
"Dagger of Shattered D.";
"Dual Darkhearts";
"Gear suppressor 777";
"Laser Finger Pointers";
"Paint Bucket";
"Portable Justice";
"stampbuild";
"Statue Staff of Stony J.";
"Super Spy Drone";
"Transmorph Ray Gun";
}
}, function(new)
end)



-- Execute: Button
ooft:Button("Execute", function()



if _G.selectegear == "ALS Ice Bucket C." then do
oofgp:Chat("gear me 000000000000000000173751087")
end
end

if _G.selectegear == "Azure Dragon's Magic S." then do
oofgp:Chat("gear me 000000000000000000268586231")
end
end

if _G.selectegear == "Blizzard Wand" then do
oofgp:Chat("gear me 00000000000000000068354832")
end
end

if _G.selectegear == "Boombox Gear 3.0" then do
oofgp:Chat("gear me 000000000000000000193769809")
end
end

if _G.selectegear == "Camping Machete" then do
oofgp:Chat("gear me 000000000000000000123234673")
end
end

if _G.selectegear == "Clone Part" then do
oofgp:Chat("gear me 00000000000000000016200402")
end
end

if _G.selectegear == "Confusoray 672" then do
oofgp:Chat("gear me 00000000000000000048596305")
end
end

if _G.selectegear == "Crossbow of the Sea" then do
oofgp:Chat("gear me 000000000000000000236438668")
end
end

if _G.selectegear == "Dagger of Shattered D." then do
oofgp:Chat("gear me 00000000000000000071037101")
end
end

if _G.selectegear == "Dual Darkhearts" then do
oofgp:Chat("gear me 000000000000000000108149175")
end
end

if _G.selectegear == "Gear suppressor 777" then do
oofgp:Chat("gear me 000000000000000000104642700")
end
end

if _G.selectegear == "Laser Finger Pointers" then do
oofgp:Chat("gear me 000000000000000000115377964")
end
end

if _G.selectegear == "Paint Bucket" then do
oofgp:Chat("gear me 00000000000000000018474459")
end
end

if _G.selectegear == "Portable Justice" then do
oofgp:Chat("gear me 00000000000000000082357101")
end
end

if _G.selectegear == "Portable Justice" then do
oofgp:Chat("gear me 00000000000000000082357101")
end
end

if _G.selectegear == "stampbuild" then do
oofgp:Chat("gear me 00000000000000000055028088")
end
end

if _G.selectegear == "Super Spy Drone" then do
oofgp:Chat("gear me 000000000000000000987032734")
end
end

if _G.selectegear == "Transmorph Ray Gun" then do
oofgp:Chat("gear me 00000000000000000029099749")
end
end



end)
-----------------------------------------------------------------------------------------------------------------------
--[[-------------------------------------------------------------------------------------------------------------------
  ___               _               _                           
 | _ \  ___   _ _  (_)  __ _   ___ | |_   _ _   ___   _ _    ___
 |  _/ / -_) | '_| | | / _` | (_-< |  _| | '_| / _ \ | ' \  (_-<
 |_|   \___| |_|   |_| \__,_| /__/  \__| |_|   \___/ |_||_| /__/
                                                                
]]ooft:Section('Periastrons')



-- Dropdown
local PeriastronList = ooft:Dropdown("Periastrons", {
location = _G;
flag = "selectpgear";
list = {
"Amethyst P. Kappa";
"Azure P. Alpha";
"Chartreuse P. Gamma";
"Fake Char. P. Gamma";
"Crimson P. Mu";
"Fall P. Xi";
"Festive P. Chi";
"Grimgold P. Beta";
"Ivory P.";
"Joyful P. Epsilon";
"Noir P. Psi";
"Rainbow P. Omega";
}
}, function(new)
end)



-- Toggle | Toggle
toggleperi = false
local toggleperitoggle = ooft:Toggle("Toggle", {flag = 'toggleperitoggle'}, function()
if toggleperi == false then
toggleperi = true
else
toggleperi = false
end

if toggleperi == true then do
local togglepericoroutine = coroutine.wrap(function()
while wait() do
if toggleperi == false then break end



if _G.selectpgear == "Amethyst P. Kappa" then do
oofgp:Chat("gear me 00000000000000000093136802")
end
end

if _G.selectpgear == "Azure P. Alpha" then do
oofgp:Chat("gear me 00000000000000000069499437")
end
end

if _G.selectpgear == "Chartreuse P. Gamma" then do
oofgp:Chat("gear me 00000000000000000080661504")
end
end

if _G.selectpgear == "Fake Char. P. Gamma" then do
oofgp:Chat("gear me 00000000000000000080597060")
end
end

if _G.selectpgear == "Crimson P. Mu" then do
oofgp:Chat("gear me 00000000000000000099119240")
end
end

if _G.selectpgear == "Fall P. Xi" then do
oofgp:Chat("gear me 0000000000000000002544549379")
end
end

if _G.selectpgear == "Festive P. Chi" then do
oofgp:Chat("gear me 000000000000000000139577901")
end
end

if _G.selectpgear == "Grimgold P. Beta" then do
oofgp:Chat("gear me 00000000000000000073829193")
end
end

if _G.selectpgear == "Ivory P." then do
oofgp:Chat("gear me 000000000000000000108158379")
end
end

if _G.selectpgear == "Joyful P. Epsilon" then do
oofgp:Chat("gear me 000000000000000000233520257")
end
end

if _G.selectpgear == "Noir P. Psi" then do
oofgp:Chat("gear me 000000000000000000120307951")
end
end

if _G.selectpgear == "Rainbow P. Omega" then do
oofgp:Chat("gear me 000000000000000000159229806")
end
end



end
end)()
end
end

if toggleperi == false then
end
end)
-----------------------------------------------------------------------------------------------------------------------
--[[-------------------------------------------------------------------------------------------------------------------
  _  __  _   _        
 | |/ / (_) | |_   ___
 | ' <  | | |  _| (_-<
 |_|\_\ |_|  \__| /__/
                      
]]ooft:Section('Kits')



-- Dropdown
local KitList = ooft:Dropdown("Type", {
location = _G;
flag = "selectkit";
list = {
"Quick 1";
"Quick 2";
}
}, function(new)
end)



-- Execute | Button
ooft:Button("Execute", function()



if _G.selectkit == "Quick 1" then do
oofgp:Chat("gear me 00000000000000000019704064")
wait(.25)
oofgp:Chat("gear me 00000000000000000032356064")
wait(.25)
oofgp:Chat("gear me 00000000000000000032356064")
wait(.25)
oofgp:Chat("gear me 00000000000000000032356064")
wait(.25)
oofgp:Chat("gear me 00000000000000000019704064")
wait(.25)
oofgp:Chat("gear me 00000000000000000032356064")
wait(.25)
oofgp:Chat("gear me 00000000000000000032356064")
wait(.25)
oofgp:Chat("gear me 00000000000000000032356064")
wait(.25)
oofgp:Chat("fly me")
end
end

if _G.selectkit == "Quick 2" then do
oofgp:Chat("gear me 00000000000000000074385399")
wait(.25)
oofgp:Chat("gear me 000000000000000000119917513")
wait(.25)
oofgp:Chat("gear me 000000000000000000287426148")
wait(.25)
oofgp:Chat("gear me 000000000000000000287426148")
wait(.25)
oofgp:Chat("gear me 000000000000000000287426148")
wait(.25)
oofgp:Chat("gear me 000000000000000000287426148")
wait(.25)
oofgp:Chat("gear me 000000000000000000287426148")
wait(.25)
oofgp:Chat("gear me 000000000000000000287426148")
wait(.25)
oofgp:Chat("gear me 000000000000000000287426148")
wait(.25)
oofgp:Chat("gear me 000000000000000000287426148")
wait(.25)
oofgp:Chat("fly me")
end
end



end)
-----------------------------------------------------------------------------------------------------------------------
--[[-------------------------------------------------------------------------------------------------------------------
  ___                      _     _                   
 | __|  _  _   _ _    __  | |_  (_)  ___   _ _    ___
 | _|  | || | | ' \  / _| |  _| | | / _ \ | ' \  (_-<
 |_|    \_,_| |_||_| \__|  \__| |_| \___/ |_||_| /__/
                                                     
]]ooft:Section('Functions')



-- Equip All Periastrons | Button
ooft:Button("Equip All Periastrons", function()
oofgp:Chat("gear me 00000000000000000093136802")
oofgp:Chat("gear me 00000000000000000069499437")
oofgp:Chat("gear me 00000000000000000080661504")
oofgp:Chat("gear me 00000000000000000099119240")
oofgp:Chat("gear me 00000000000000000080597060")
oofgp:Chat("gear me 0000000000000000002544549379")
oofgp:Chat("gear me 000000000000000000139577901")
oofgp:Chat("gear me 00000000000000000073829193")
oofgp:Chat("gear me 000000000000000000108158379")
oofgp:Chat("gear me 000000000000000000233520257")
oofgp:Chat("gear me 000000000000000000120307951")
oofgp:Chat("gear me 000000000000000000159229806")
end)



-- Spam Q Abilities | Button
ooft:Button("Spam Q Abilities", function()
for i,v in pairs(oofpl.Backpack:GetChildren()) do
if v:IsA("Tool") then
for i,w in pairs(workspace[game.Players.LocalPlayer.Name]:GetChildren()) do
if w:IsA("Tool") then
local wkspt = w
oofpl.Character.Humanoid:EquipTool(v)
local Remote = wkspt.Remote
wait(.1)
Remote:FireServer(
Enum.KeyCode.Q
)
end
end
end
end
end)



-- Spam E Abilities | Button
ooft:Button("Spam E Abilities", function()
for i,v in pairs(oofpl.Backpack:GetChildren()) do
if v:IsA("Tool") then
for i,w in pairs(workspace[game.Players.LocalPlayer.Name]:GetChildren()) do
if w:IsA("Tool") then
local wkspt = w
oofpl.Character.Humanoid:EquipTool(v)
local Remote = wkspt.Remote
wait(.1)
Remote:FireServer(
Enum.KeyCode.E
)
end
end
end
end
end)
-----------------------------------------------------------------------------------------------------------------------
--[[
                                 
                                 
  .g8"""bgd  `7MMF'   `7MF'`7MMF'
.dP'     `M    MM       M    MM  
dM'       `    MM       M    MM  
MM             MM       M    MM  
MM.    `7MMF'  MM       M    MM  
`Mb.     MM    YM.     ,M    MM  
  `"bmmmdPY     `bmmmmd"'  .JMML.
                                 
                                 
]]
--[[-------------------------------------------------------------------------------------------------------------------
   ___           _     _                   
  / _ \   _ __  | |_  (_)  ___   _ _    ___
 | (_) | | '_ \ |  _| | | / _ \ | ' \  (_-<
  \___/  | .__/  \__| |_| \___/ |_||_| /__/
         |_|                               
]]oofm:Section('Options')



-- Destroy GUI: Button
oofm:Button("Destroy GUI", function()
game.CoreGui.ScreenGui:Destroy()
end)



-- Rejoin Server: Button
oofm:Button("Rejoin Server", function()
if #oofgp:GetPlayers() <= 1 then
oofgp.LocalPlayer:Kick("\nRejoining...")
wait()
game:GetService('TeleportService'):Teleport(game.PlaceId, oofgp.LocalPlayer)
else
game:GetService('TeleportService'):TeleportToPlaceInstance(game.PlaceId, game.JobId, oofgp.LocalPlayer)
end
end)
-----------------------------------------------------------------------------------------------------------------------
warn('oofkolhs v1 | Edited: Loaded!')
end





--[[-------------------------------------------------------------------------------------------------------------------
                                                                                           
                                                     ,,                                    
MMP""MM""YMM                                       `7MM             mm                     
P'   MM   `7                                         MM             MM                     
     MM       .gP"Ya  `7MMpMMMb.pMMMb.  `7MMpdMAo.   MM   ,6"Yb.  mmMMmm   .gP"Ya  ,pP"Ybd 
     MM      ,M'   Yb   MM    MM    MM    MM   `Wb   MM  8)   MM    MM    ,M'   Yb 8I   `" 
     MM      8M""""""   MM    MM    MM    MM    M8   MM   ,pm9MM    MM    8M"""""" `YMMMa. 
     MM      YM.    ,   MM    MM    MM    MM   ,AP   MM  8M   MM    MM    YM.    , L.   I8 
   .JMML.     `Mbmmd' .JMML  JMML  JMML.  MMbmmd'  .JMML.`Moo9^Yo.  `Mbmo  `Mbmmd' M9mmmP' 
                                          MM                                               
                                        .JMML.                                             
                                                                                           
-----------------------------------------------------------------------------------------------------------------------



placeHolder:Section('Place Holder')



- - - - -



-- Place Holder: Toggle
placeholder = false
local placeholdertoggle = placeHolder:Toggle("Place Holder", {flag = 'placeholdertoggle'}, function()
if placeholder == false then
placeholder = true
else
placeholder = false
end

if placeholder == true then do
local placeholdercoroutine = coroutine.wrap(function()
while wait() do
if placeholder == false then break end

***script/function here***

end
end)()
end
end

if placeholder == false then
end
end)



- - - - -



-- Place Holder: Button
placeHolder:Button("Place Holder", function()

***script/function here***

end)



- - - - -



-- Dropdown
local PlaceHolderList = placeHolder:Dropdown("", {
location = _G;
flag = "selectph";
list = {
"";
}
}, function(new)
end)



if _G.selectph == "" then do

end
end



-----------------------------------------------------------------------------------------------------------------------
                                                                               
                                                                           ,,  
 .M"""bgd                                                                `7MM  
,MI    "Y                                                                  MM  
`MMb.      ,p6"bo  `7Mb,od8  ,6"Yb.  `7MMpdMAo. `7MMpdMAo.  .gP"Ya    ,M""bMM  
  `YMMNq. 6M'  OO    MM' "' 8)   MM    MM   `Wb   MM   `Wb ,M'   Yb ,AP    MM  
.     `MM 8M         MM      ,pm9MM    MM    M8   MM    M8 8M"""""" 8MI    MM  
Mb     dM YM.    ,   MM     8M   MM    MM   ,AP   MM   ,AP YM.    , `Mb    MM  
P"Ybmmd"   YMbmd'  .JMML.   `Moo9^Yo.  MMbmmd'    MMbmmd'   `Mbmmd'  `Wbmd"MML.
                                       MM         MM                           
                                     .JMML.     .JMML.                         
                                                                               
-----------------------------------------------------------------------------------------------------------------------



Shutdown: Button
local shutdown = admin:Button("Shutdown", function()
local times = 10
for i = 1, times do
for i,v in pairs(game.Players:GetChildren()) do
if v.Name ~= plr.Name then
  local remote = plr.Backpack:WaitForChild("Delete"):WaitForChild("delete")
  wait(0.1)
  remote:FireServer(v)
end
end
plr:Kick("Game has shutdown.")
end
end)



Server Lock: Toggle
slocktoggle = false
local slock = admin:Toggle('Slock', {flag = "slock"}, function()
if slocktoggle == false then
slocktoggle = true
else
slocktoggle = false
end

if slocktoggle == true then do
oofgp.PlayersAdded:connect(function(slockedplr)
local remote = plr:WaitForChild("Backpack"):WaitForChild("Delete"):WaitForChild("delete")
remote:FireServer(slockedplr)
end)
end
end

if slocktoggle == false then do
end
end
end)



Workspace Unlock: Toggle
workspaceunlocktoggle = false
local workspaceunlock = admin:Toggle('Workspace Unlock', {flag = "workspaceunlock"}, function()
if workspaceunlocktoggle == false then
workspaceunlocktoggle = true
else
workspaceunlocktoggle = false
end

if workspaceunlocktoggle == true then do
function unlockall(root)
for _,v in pairs(root:GetChildren()) do
if v:IsA("Part") then
v.Locked = false
end
unlockall(v)
end
end
unlockall(game.Workspace)
end
end

if workspaceunlocktoggle == false then do
function lockall(root)
for _,v in pairs(root:GetChildren()) do
if v:IsA("Part") then
v.Locked = true
end
lockall(v)
end
end
lockall(game.Workspace)
end
end
end)



Auto Btools: Toggle
autobtoolstoggle = false
local autobtools = admin:Toggle('Auto Btools', {flag = "autobtools"}, function()
if autobtoolstoggle == false then
autobtoolstoggle = true
else
autobtoolstoggle = false
end

if autobtoolstoggle == true then do
game.Players:Chat("btools me")
game.Players.LocalPlayer.CharacterAdded:connect(function(player)
if player.Name == game.Players.LocalPlayer.Name then
game.Players:Chat("btools me")
end
end)
end
end
end)



Persistent Admin: Toggle
persistantadmintoggle = false
local persistantadmin = admin:Toggle('Persistent Admin', {flag = "persistantadmin"}, function()
if persistantadmintoggle == false then
persistantadmintoggle = true
else
persistantadmintoggle = false
end

if persistantadmintoggle == true then do
local persistantadmincoroutine = coroutine.wrap(function()
if ServerCheck() then
local pad = game:GetService("Workspace")["Terrain"]["_Game"]["Admin"]["Pads"]["Touch to get admin"]
if pad:FindFirstChild(" ") then
pad[" "]:destroy()
end
while wait() do
if persistantadmintoggle == false then break end
pad.Head.Size = Vector3.new(0.1,0.1,0.1)
pad.Head.CanCollide = false
pad.Head.CFrame = CFrame.new(character["Left Leg"].Position)
end
end
end)()
end
end

if persistantadmintoggle == false then do
end
end
end)



Kick Player: Button
local kick1button = serverd:Button("Kick Player", function()
local remote = plr:WaitForChild("Backpack"):WaitForChild("Delete"):WaitForChild("delete")
remote:FireServer(oofgp[_G.selectplr])
end)



Kick All: Button
local kickallbutton = serverd:Button("Kick All", function()
for i,v in pairs(game.Players:GetPlayers()) do
if v.Name ~= plr.Name then
local remote = plr:WaitForChild("Backpack"):WaitForChild("Delete"):WaitForChild("delete")
remote:FireServer(v)
end
end
end)



Ban Player: Button
local ban1button = serverd:Button("Ban Player", function()
table.insert(banned, _G.selectplr)
local remote = plr:WaitForChild("Backpack"):WaitForChild("Delete"):WaitForChild("delete")
remote:FireServer(oofgp[_G.selectplr])
end)



Crash Server: Button
local clipm = serverd:Button("Crash Server", function()
local crashservercoroutine = coroutine.wrap(function()
while wait() do
oofgp:Chat("swagify all")
end
end)()
end
end)



- - - - -



extra:Section("Music GUI")



music = {}

local HS = game:GetService('HttpService')
local musicTable = HS:JSONDecode(game:HttpGetAsync('https://epicgameronmylevel696969.000webhostapp.com/Data.json'))
function testContentDeleted(songid)
local sound = Instance.new("Sound", game:GetService("Lighting"))
sound.SoundId = "rbxassetid://"..songid
sound.Volume = 0
sound:Play()
wait(0.1)
if sound.TimeLength < 0.05 then
sound:Destroy()
return false
else
sound:Destroy()
return true
end
end

function updateMusicTable()
for i,v in pairs(musicTable) do
if testContentDeleted(musicTable[i].SoundId) == false then
musicTable[i] = nil
end
end
end

updateMusicTable()
for i = 1, #musicTable do
if musicTable[i] then
table.insert(music, musicTable[i].Name)
end
end

function getSong()
for i = 1, #musicTable do
if musicTable[i] then
if musicTable[i].Name == _G.selectmusic then
return musicTable[i].SoundId
end
end
end
end



-- Dropdown
local selectMusicDropdown = extra:Dropdown("Select Music", {
location = _G;
flag = "selectmusic";
list = music;
}, function(new)
end)



-- Play: Button
local playbutton = extra:Button("Play", function()
oofgp:Chat(":music "..tostring(getSong()))
end)



-- Update: Button
local updatebutton = extra:Button("Update", function()
music = {}
for i = 1, #musicTable do
if musicTable[i] then
table.insert(music, musicTable[i].Name)
end
end
end)



-----------------------------------------------------------------------------------------------------------------------
                                       
`7MMF'     A     `7MF'`7MMF'`7MM"""Mq. 
  `MA     ,MA     ,V    MM    MM   `MM.
   VM:   ,VVM:   ,V     MM    MM   ,M9 
    MM.  M' MM.  M'     MM    MMmmdM9  
    `MM A'  `MM A'      MM    MM       
     :MM;    :MM;       MM    MM       
      VF      VF      .JMML..JMML.     
                                       
-----------------------------------------------------------------------------------------------------------------------



-- Break Everyones Cam 2 | Toggle
bec2 = false
local bec2toggle = oofe:Toggle("Break Everyones Cam 2", {flag = 'bec2toggle'}, function()
if bec2 == false then
bec2 = true
else
bec2 = false
end

if bec2 == true then do
local oofplayers = {}
local bec2coroutine = coroutine.wrap(function()
while wait() do
if bec2 == false then
oofgp:Chat(("ungear all"))
break
end

if game.Players.PlayerAdded then
allplr = GetPlayers:GetPlayers()
end

for i, player in pairs(allplr) do
local plrname = player.Name

if player.Character then
if player.Character:FindFirstChild("HumanoidRootPart") then

if player.Backpack:FindFirstChild("SpyDrone") == nil and player.Character:FindFirstChild("SpyDrone") == nil and table.find(oofplayers, plrname) == nil then
oofgp:Chat(("gear "..plrname.." 000000000000000000987032734"))
wait(.1)
end

if player.Character.Humanoid.TargetPoint.Y >= .7 then
table.insert(oofplayers, plrname)
print(player.Character.Humanoid.TargetPoint.Y)
wait(.1)
end

end
end
end

end
end)()
end
end

if bec2 == false then
end
end)



-- Hog the Aux Cord | Toggle
hogtheauxcord = false
local hogtheauxcordtoggle = oofg:Toggle("Hog the Aux Cord", {flag = 'hogtheauxcordtoggle'}, function()
if hogtheauxcord == false then
hogtheauxcord = true
else
hogtheauxcord = false
end

if hogtheauxcord == true then do
local hogtheauxcordcoroutine = coroutine.wrap(function()
while wait(.1) do
if hogtheauxcord == false then break end



function oofsnd()
for i,v in pairs(game:GetDescendants()) do
if v:IsA("Sound") then
if v.Parent == ooffo then
if v.SoundId ~= 'http://www.roblox.com/asset/?id='..tostring(_G.audid) then
oofgp:Chat("music 000000000000000000"..tostring(_G.audid))
v.TimePosition = oofgtp()
end
if not v.Playing then
v.TimePosition = oofgtp()
v:Play()
end
elseif v.Parent ~= ooffo then
v:Stop()
end
end
end
end

function oofgtp()
if not ooffo:WaitForChild("Sound",.1) then
oofgp:Chat("music 000000000000000000"..tostring(_G.audid))
elseif ooffo:WaitForChild("Sound",.1) then
local oofctp = ooffo.Sound.TimePosition
oofsnd()
return oofctp
end
end

oofgtp()

end

end)()
end
end

if hogtheauxcord == false then
end
end)
]]---------------------------------------------------------------------------------------------------------------------
