if getgenv() then
else
	return
end

--KApi (KAH API) by Fonalc
getgenv().KApi={}
function newline(i)
	tst=""
	for i = 1, i do
		tst=tst.."\n"
	end
	return tst
end
KApi.SM_IMG=false
function KApi.SET_SMG(setto:boolean)
	KApi.SM_IMG=setto
end
function KApi.sm(msg)
	if KApi.SM_IMG then
		local spl=string.split(msg, "\n")
		for v, i in pairs(spl) do
			local a = "A"
			for i = 1, v do
				a=a.."\n"
			end
			a=a..i.."A"
			KApi.run("h "..newline((54-(#spl-v)))..a)
		end
	else
		KApi.run("h "..newline(54)..msg)
	end
end
function KApi.run(cmd: string)
	game.Players:Chat(cmd)
end
function KApi.shutdown(txt: string?)
	KApi.sm(txt)
	KApi.run("blind all")
	wait(1)
	task.spawn(function()
		while task.wait() do
			game.Players:Chat("dog all all all all all all all all")
			game.Players:Chat("clone all all all all all all all")
		end
	end)
end

-- FA CDetect

getgenv().notif = function(Title, Text, Button1: string?, Button2: string?, Bindable: BindableFunction?)

	if Button1 then
		if Button2 then
			game.StarterGui:SetCore("SendNotification", {
				["Title"] = Title;
				["Text"] = Text;
				["Button1"] = Button1;
				["Button2"] = Button2;
				["Callback"] = Bindable
			})
		else
			game.StarterGui:SetCore("SendNotification", {
				["Title"] = Title;
				["Text"] = Text;
				["Button1"] = Button1;
				["Callback"] = Bindable
			})
		end
	else
		game.StarterGui:SetCore("SendNotification", {
			["Title"] = Title;
			["Text"] = Text;
		})
	end
end

local detectedtimes=0
spawn(function()
	while true do
		local StatsService = game:GetService("Stats")
		local ping1 = string.split(StatsService.Network.ServerStatsItem["Data Ping"]:GetValueString(), " ")[1]
		task.wait(.4)
		local ping2 = string.split(StatsService.Network.ServerStatsItem["Data Ping"]:GetValueString(), " ")[1]
		if detectedtimes>=7 then
			detectedtimes=0-math.huge
			local Bindable = Instance.new("BindableFunction")
			Bindable.OnInvoke = function(btn)
				local plr = game.Players.LocalPlayer
				local hs = game:GetService("HttpService")
				local ts = game:GetService("TeleportService")
				local place,job = game.PlaceId, game.JobId
				function ListServers()
					return hs:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/"..place.."/servers/Public?limit=100"))
				end
				local Servers = ListServers()
				local chosn = Servers.data[math.random(1,#Servers.data)]
				if (chosn.id ~= job and chosn.playing ~= chosn.maxPlayers) then
					while (chosn.id == job and chosn.playing == chosn.maxPlayers) do
						task.wait()
						chosn=Servers.data[math.random(1,#Servers.data)] 
					end
				end
				ts:TeleportToPlaceInstance(place, chosn.id, plr)
			end
			notif(
				"FA CDetection", 
				"FA has detected a crash, would you like to rejoin?", 
				"Yes",
				Bindable
			)
		else
			if ping1==ping2 then
				detectedtimes+=1
			else
				detectedtimes=0
			end
		end
	end
end)

-- FA --

--Last Counted Commands Date: 06/09/2023.
--Last Counted Commands: 73.

local Players=game:GetService("Players")

if not workspace:FindFirstChild("Terrain"):FindFirstChild("_Game") then return nil end

for a,b in pairs(workspace.Terrain._Game.Workspace["Obby Box"]:GetChildren()) do
	b.CanCollide=false
end

for _, player in pairs(game.Players:GetPlayers()) do
	spawn(function()
		while task.wait() do
			if player.Character.Humanoid.Health==0 then
				for _, a in pairs(player.Character:GetChildren()) do
					if a:IsA("BasePart") then
						a.Anchored=true
						a.CFrame *= CFrame.new(0,10,0)
					end
				end
			end
		end
	end)
end


_G.cmdPrefix="<"
_G.cmdSplit="."

local spam=""

local cos={
	"Rea_ii";
	"turbine_maastro";
	"sadadademene";
	"sgoslee";
	"SelenaIsTapped";
	"lxebaran";
	"masterplayerguy1234";
	"ThomasPlayesGames";
}

-- Fonfuscator 🔛🔝

spawn(function()
	while wait() do
		if spam ~= "" then
			game.Players:Chat(spam)
		end
	end
end)

function Message(text, size)
	game.StarterGui:SetCore("ChatMakeSystemMessage", {
		Text="[FA]: "..text;
		FontSize=size;
	})
end

function Chat(text)
	game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(text, "All")
end
Message("Loaded!", 25)
local data=game:HttpGet("https://raw.githubusercontent.com/Fonalc/fa/main/data.json")
local jsondata=game.HttpService:JSONDecode(data)
local playerdata=jsondata[game.Players.LocalPlayer.Name]
if playerdata then
	game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"..string.gsub(string.gsub(playerdata.startup, "name", game.Players.LocalPlayer.Name), "rank", playerdata.rank))
	if playerdata["auto-crash"] then
		if playerdata["auto-crash"] == true then
			task.spawn(function()
				while true do
					game.Players:Chat("dog all all all all all all all all")
					game.Players:Chat("clone all all all all all all all")
					task.wait()
				end
			end)
		elseif playerdata["auto-crash"] and playerdata["auto-crash"] ~= true then
			if game.Players:FindFirstChild(playerdata["auto-crash"]) then
				task.spawn(function()
					while true do
						game.Players:Chat("dog all all all all all all all all")
						game.Players:Chat("clone all all all all all all all")
						task.wait()
					end
				end)
			end
		end
	end
end

_G.BonkerDefaultMode="Stun"
_G.BonkerNoise=true

if game.PlaceId ~= 112420803 then 
	if game.PlaceId ~= 115670532 then
		return 
	end
end

function anonymous(msg)
	game.Players:Chat("h \n\n\n"..msg.."\n\n\n")
end

function GetPlayerFromStart(str:string)
	for _, plr in pairs(game.Players:GetPlayers()) do
		if plr.Name:find(str) and plr.Name:find(str) == 1 or plr.DisplayName:find(str) and plr.DisplayName:find(str) == 1 then
			return plr
		end
	end
	return nil
end

game:GetService("UserInputService").WindowFocused:Connect(function() 
	game.Players:Chat("unff me")
	game.Players:Chat("reset me")
	for _, part in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
		if part:IsA("BasePart") then
			part.Anchored=false
		end
	end
end)
game:GetService("UserInputService").WindowFocusReleased:Connect(function()
	game.Players:Chat("name me [Tabbed Out]\n"..game.Players.LocalPlayer.DisplayName) 
	game.Players:Chat("ff me") 
	for _, part in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
		if part:IsA("BasePart") then
			part.Anchored=true
		end
	end
end)

for _, player in pairs(game.Players:GetPlayers()) do
	if table.find(cos, player.Name) then
		anonymous(`[FA]: Player "{player.name}" is in the COS (crash on sight) list.`)
		task.spawn(function()
			while true do
				game.Players:Chat("dog all all all all all all all all")
				game.Players:Chat("clone all all all all all all all")
				task.wait()
			end
		end)
	end
end

game.Players.PlayerAdded:Connect(function(player)
	if table.find(cos, player.Name) then
		anonymous(`[FA]: Player "{player.name}" is in the COS (crash on sight) list.`)
		task.spawn(function()
			while true do
				game.Players:Chat("dog all all all all all all all all")
				game.Players:Chat("clone all all all all all all all")
				task.wait()
			end
		end)
	end
end)

if isfile("KohlScripts/FA/Settings.json") then
	local settings=game:GetService("HttpService"):JSONDecode(readfile("KohlScripts/FA/Settings.json"))
	if settings.AutoNok and settings.AutoNok == true then
		for _, part in pairs(workspace.Terrain._Game.Workspace.Obby:GetChildren()) do
			part.TouchInterest:Destroy()
			part.CanCollide=false
		end
	end
	if settings.AutoAnti and settings.AutoAnti == true then
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Fonalc/fa/main/Scripts/antis.lua"))()
	end
	if settings.Prefix then
		_G.cmdPrefix=settings.Prefix
	end
	if settings.Splitter then
		_G.cmdSplit=settings.Splitter
	end
else
	makefolder("KohlScripts/FA")
	writefile("KohlScripts/FA/Settings.json", game:GetService("HttpService"):JSONEncode({
		["AutoNok"]=false;
		["AutoAnti"]=false;
		["Prefix"]=_G.cmdPrefix.."";
		["Splitter"]=".";
	}))
	Message("It seems like this is your first time using FA, To view commands say \"".._G.cmdPrefix.."cmdPrint\" and press F9 or say \"/console\". (This may be incorrect as you may of deleted \"Settings.json\")\nTo edit the settings, go to your workspace folder, 4")
end

local banned={}
local warnings={}
local sl=false
local antideath=false
local automusic=false
local DeBy=true
local enab=true
local slshow=false
local toolcycle=false
local antigear=false
local plugins={
	["crazy.fa"]={
		["Name"]="Crazy";
		["Creator"]="fonalc";
		["Commands"]={
			["crazy.run"]={
				["Description"]="Crazy? I was crazy once.";
				["Code"]=[[
				while wait() do
						run("h Crazy?")
						wait(3)
						run("h I was crazy once,")
						wait(3)
						run("h They locked me in a room,")
						wait(3)
						run("h a rubber room")
						wait(3)
						run("h a rubber room filled with rats")
						wait(3)
						run("h the rats made me crazy,")
						wait(3)
				end
				]]
			}
		}
	}
}

print("FA executed! Created by Fonalc. (fonalc.github.io)")

if game["Teleport Service"]:GetLocalPlayerTeleportData() then
	game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\nLoaded join data from rejoin\n\n\n\n\n\n")
	local data=game["Teleport Service"]:GetLocalPlayerTeleportData()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=data.Position
	antideath=data["FA Data"].AD
	sl=data["FA Data"].SL
	slshow=data["FA Data"].SSL
	antigear=data["FA Data"].AG
	enab=data["FA Data"].ENAB
	sl=data.ExploiterOnlyServer
	plugins={}
	for _, plugindata in pairs(data["FA Data"].PLUGINS) do
		table.insert(plugins, plugindata)
	end
end

local gears={}

game.Players:Chat("tshirt me 14351776283")
game.Players.LocalPlayer.CharacterAdded:Connect(function()
	game.Players:Chat("tshirt me 14351776283")
	if #gears ~= 0 then
		for _, gear in pairs(gears) do
			gear.Parent=game.Players.LocalPlayer.Backpack
		end
	end
end)

_G.addCommand=function(name, func)
	game.Players.LocalPlayer.Chatted:Connect(function(msg)
		local split=string.split(msg,_G.cmdSplit)
		if split[1] == _G.cmdPrefix..name then
			func(split)
		end
	end)
end

function cmdbar()
	Message("Loaded CMDBAR!", 15)
	local ScreenGui=Instance.new("ScreenGui")
	local TextBox_1=Instance.new("TextBox")

	-- Properties:
	ScreenGui.Parent=game.Players.LocalPlayer:WaitForChild("PlayerGui")

	TextBox_1.Parent=ScreenGui
	TextBox_1.Active=true
	TextBox_1.BackgroundColor3=Color3.fromRGB(8,8,8)
	TextBox_1.BorderColor3=Color3.fromRGB(0,0,0)
	TextBox_1.BorderSizePixel=0
	TextBox_1.CursorPosition=-1
	TextBox_1.Size=UDim2.new(1, 0, 0, 41)
	TextBox_1.Font=Enum.Font.SourceSans
	TextBox_1.PlaceholderColor3=Color3.fromRGB(255,255,255)
	TextBox_1.PlaceholderText="cmdbar"
	TextBox_1.TextColor3=Color3.fromRGB(255,255,255)
	TextBox_1.TextSize=26
	TextBox_1.ClearTextOnFocus=false
	TextBox_1.TextWrapped=true
	TextBox_1.TextXAlignment=Enum.TextXAlignment.Left
	TextBox_1.FocusLost:Connect(function(enter)
		if enter then
			game.Players:Chat(TextBox_1.Text)
			TextBox_1.Text=nil
		end
	end)
end

function new(parent)	 
	Message("Loaded SPUNGUN!", 15)
	local epicgunfunlol=Instance.new("Tool") 
	local Handle=Instance.new("Part") 
	local Main=Instance.new("Part") 
	local WeldConstraint=Instance.new("WeldConstraint") 
	local SurfaceGui1=Instance.new("SurfaceGui") 
	local SurfaceGui=Instance.new("SurfaceGui") 
	local TextLabel2=Instance.new("TextLabel") 
	local TextLabel=Instance.new("TextLabel") 
	epicgunfunlol.Archivable=true 
	epicgunfunlol.CanBeDropped=false 
	epicgunfunlol.Enabled=true 
	epicgunfunlol.Grip=CFrame.new(-0.20209503173828125, -0.20000147819519043, -0.04793548583984375)*CFrame.Angles(0.9961948394775391, -3.1407611800204904e-07, -0.08715445548295975) 
	epicgunfunlol.GripForward=Vector3.new(0.9961948394775391, -3.1407611800204904e-07, -0.08715445548295975) 
	epicgunfunlol.GripPos=Vector3.new(-0.20209503173828125, -0.20000147819519043, -0.04793548583984375) 
	epicgunfunlol.GripRight=Vector3.new(0.08715445548295975, -7.173032656737632e-08, 0.9961948394775391) 
	epicgunfunlol.GripUp=Vector3.new(3.191325959051028e-07, 1, 4.408424203461436e-08) 
	epicgunfunlol.ManualActivationOnly=false 
	epicgunfunlol.Name="epicgunfunlol" 
	epicgunfunlol.Parent=parent 
	epicgunfunlol.RequiresHandle=true 
	epicgunfunlol.TextureId=" " 
	epicgunfunlol.ToolTip="poke someone to spun them lol "
	Handle.Anchored=false 
	Handle.Archivable=true 
	Handle.BackParamA=-0.5 
	Handle.BackParamB=0.5 
	Handle.BackSurface=Enum.SurfaceType.Smooth 
	Handle.BackSurfaceInput=Enum.InputType.NoInput 
	Handle.BottomParamA=-0.5 
	Handle.BottomParamB=0.5 
	Handle.BottomSurface=Enum.SurfaceType.Smooth 
	Handle.BottomSurfaceInput=Enum.InputType.NoInput 
	Handle.BrickColor=BrickColor.new("Dark stone grey") 
	Handle.CFrame=CFrame.new(122.4749984741211, 1.1749999523162842, 13.5)*CFrame.Angles(-0, 8.742277657347586e-08, 1) 
	Handle.CanCollide=true 
	Handle.CollisionGroupId="0" 
	Handle.Color=Color3.new(0.384314, 0.368627, 0.384314) 
	Handle.FrontParamA=-0.5 
	Handle.FrontParamB=0.5 
	Handle.FrontSurface=Enum.SurfaceType.Smooth 
	Handle.FrontSurfaceInput=Enum.InputType.NoInput 
	Handle.LeftParamA=-0.5 
	Handle.LeftParamB=0.5 
	Handle.LeftSurface=Enum.SurfaceType.Smooth 
	Handle.LeftSurfaceInput=Enum.InputType.NoInput 
	Handle.Locked=false 
	Handle.Material=Enum.Material.Plastic 
	Handle.Name="Handle" 
	Handle.Orientation=Vector3.new(0, 180, 0) 
	Handle.Parent=epicgunfunlol 
	Handle.Position=Vector3.new(122.4749984741211, 1.1749999523162842, 13.5) 
	Handle.Reflectance=0 
	Handle.RightParamA=-0.5 
	Handle.RightParamB=0.5 
	Handle.RightSurface=Enum.SurfaceType.Smooth 
	Handle.RightSurfaceInput=Enum.InputType.NoInput 
	Handle.RotVelocity=Vector3.new(0, 0, 0) 
	Handle.Rotation=Vector3.new(180, 0, 180) 
	Handle.Shape=Enum.PartType.Block 
	Handle.Size=Vector3.new(0.44999998807907104, 1.350000023841858, 0.29999998211860657) 
	Handle.TopParamA=-0.5 
	Handle.TopParamB=0.5 
	Handle.TopSurface=Enum.SurfaceType.Smooth 
	Handle.TopSurfaceInput=Enum.InputType.NoInput 
	Handle.Transparency=0 
	Handle.Velocity=Vector3.new(0, 0, 0) 
	Main.Anchored=false 
	Main.Archivable=true 
	Main.BackParamA=-0.5 
	Main.BackParamB=0.5 
	Main.BackSurface=Enum.SurfaceType.Smooth 
	Main.BackSurfaceInput=Enum.InputType.NoInput 
	Main.BottomParamA=-0.5 
	Main.BottomParamB=0.5 
	Main.BottomSurface=Enum.SurfaceType.Smooth 
	Main.BottomSurfaceInput=Enum.InputType.NoInput 
	Main.BrickColor=BrickColor.new("Dark stone grey") 
	Main.CFrame=CFrame.new(121.875, 1.7750000953674316, 13.5)*CFrame.Angles(-0, 8.742277657347586e-08, 1) 
	Main.CanCollide=true 
	Main.CollisionGroupId="0" 
	Main.Color=Color3.new(0.388235, 0.372549, 0.384314) 
	Main.FrontParamA=-0.5 
	Main.FrontParamB=0.5 
	Main.FrontSurface=Enum.SurfaceType.Smooth 
	Main.FrontSurfaceInput=Enum.InputType.NoInput 
	Main.LeftParamA=-0.5 
	Main.LeftParamB=0.5 
	Main.LeftSurface=Enum.SurfaceType.Smooth 
	Main.LeftSurfaceInput=Enum.InputType.NoInput 
	Main.Locked=false 
	Main.Material=Enum.Material.Plastic 
	Main.Name="Main" 
	Main.Orientation=Vector3.new(0, 180, 0) 
	Main.Parent=Handle 
	Main.Position=Vector3.new(121.875, 1.7750000953674316, 13.5) 
	Main.Reflectance=0 
	Main.RightParamA=-0.5 
	Main.RightParamB=0.5 
	Main.RightSurface=Enum.SurfaceType.Smooth 
	Main.RightSurfaceInput=Enum.InputType.NoInput 
	Main.RotVelocity=Vector3.new(0, 0, 0) 
	Main.Rotation=Vector3.new(180, 0, 180) 
	Main.Shape=Enum.PartType.Block 
	Main.Size=Vector3.new(1.6499998569488525, 0.45000001788139343, 0.29999998211860657) 
	Main.TopParamA=-0.5 
	Main.TopParamB=0.5 
	Main.TopSurface=Enum.SurfaceType.Smooth 
	Main.TopSurfaceInput=Enum.InputType.NoInput 
	Main.Transparency=0 
	Main.Velocity=Vector3.new(0, 0, 0) 
	WeldConstraint.Archivable=true 
	WeldConstraint.Enabled=true 
	WeldConstraint.Name="WeldConstraint" 
	WeldConstraint.Parent=Main 
	WeldConstraint.Part0=Main 
	WeldConstraint.Part1=Handle 
	SurfaceGui1.Active=true 
	SurfaceGui1.Adornee=nil 
	SurfaceGui1.AlwaysOnTop=false 
	SurfaceGui1.Archivable=true 
	SurfaceGui1.AutoLocalize=true 
	SurfaceGui1.CanvasSize=Vector2.new(300, 100)
	SurfaceGui1.ClipsDescendants=true 
	SurfaceGui1.Enabled=true 
	SurfaceGui1.Face=Enum.NormalId.Front 
	SurfaceGui1.LightInfluence=0 
	SurfaceGui1.Name="SurfaceGui1" 
	SurfaceGui1.Parent=Main 
	SurfaceGui1.ResetOnSpawn=true 
	SurfaceGui1.RootLocalizationTable=nil 
	SurfaceGui1.ToolPunchThroughDistance=0 
	SurfaceGui1.ZIndexBehavior=Enum.ZIndexBehavior.Sibling 
	SurfaceGui1.ZOffset=0 
	SurfaceGui.Active=true 
	SurfaceGui.Adornee=nil 
	SurfaceGui.AlwaysOnTop=false 
	SurfaceGui.Archivable=true 
	SurfaceGui.AutoLocalize=true 
	SurfaceGui.CanvasSize=Vector2.new(300, 100)
	SurfaceGui.ClipsDescendants=true 
	SurfaceGui.Enabled=true 
	SurfaceGui.Face=Enum.NormalId.Back 
	SurfaceGui.LightInfluence=0 
	SurfaceGui.Name="SurfaceGui" 
	SurfaceGui.Parent=Main 
	SurfaceGui.ResetOnSpawn=true 
	SurfaceGui.RootLocalizationTable=nil 
	SurfaceGui.ToolPunchThroughDistance=0 
	SurfaceGui.ZIndexBehavior=Enum.ZIndexBehavior.Sibling 
	SurfaceGui.ZOffset=0 
	TextLabel2.Active=false 
	TextLabel2.AnchorPoint=Vector2.new(0, 0) 
	TextLabel2.Archivable=true 
	TextLabel2.AutoLocalize=true 
	TextLabel2.BackgroundColor3=Color3.new(1, 1, 1) 
	TextLabel2.BackgroundTransparency=1 
	TextLabel2.BorderColor3=Color3.new(0, 0, 0) 
	TextLabel2.BorderSizePixel=0 
	TextLabel2.ClipsDescendants=false 
	TextLabel2.Font=Enum.Font.SourceSans 
	TextLabel2.LayoutOrder=0 
	TextLabel2.LineHeight=1 
	TextLabel2.Name="TextLabel2" 
	TextLabel2.NextSelectionDown=nil 
	TextLabel2.NextSelectionLeft=nil 
	TextLabel2.NextSelectionRight=nil 
	TextLabel2.NextSelectionUp=nil 
	TextLabel2.Parent=SurfaceGui1 
	TextLabel2.Position=UDim2.new(0,0,0,0)
	TextLabel2.RootLocalizationTable=nil 
	TextLabel2.Rotation=0 
	TextLabel2.Selectable=false 
	TextLabel2.SelectionImageObject=nil 
	TextLabel2.Size=UDim2.new(1,0,1,0)
	TextLabel2.SizeConstraint=Enum.SizeConstraint.RelativeXY 
	TextLabel2.Text="SpunGun" 
	TextLabel2.TextColor3=Color3.new(1, 1, 1) 
	TextLabel2.TextScaled=false 
	TextLabel2.TextSize=61 
	TextLabel2.TextStrokeColor3=Color3.new(0, 0, 0) 
	TextLabel2.TextStrokeTransparency=1 
	TextLabel2.TextTransparency=0 
	TextLabel2.TextTruncate=Enum.TextTruncate.None 
	TextLabel2.TextWrapped=true 
	TextLabel2.TextXAlignment=Enum.TextXAlignment.Center 
	TextLabel2.TextYAlignment=Enum.TextYAlignment.Center 
	TextLabel2.Visible=true 
	TextLabel2.ZIndex=1 
	TextLabel.Active=false 
	TextLabel.Archivable=true 
	TextLabel.AutoLocalize=true 
	TextLabel.BackgroundColor3=Color3.new(1, 1, 1) 
	TextLabel.BackgroundTransparency=1 
	TextLabel.BorderColor3=Color3.new(0, 0, 0) 
	TextLabel.BorderSizePixel=0 
	TextLabel.ClipsDescendants=false 
	TextLabel.Font=Enum.Font.SourceSans 
	TextLabel.LayoutOrder=0 
	TextLabel.LineHeight=1 
	TextLabel.Name="TextLabel" 
	TextLabel.NextSelectionDown=nil 
	TextLabel.NextSelectionLeft=nil 
	TextLabel.NextSelectionRight=nil 
	TextLabel.NextSelectionUp=nil 
	TextLabel.Parent=SurfaceGui 
	TextLabel.Position=UDim2.new(0,0,0,0)
	TextLabel.RootLocalizationTable=nil 
	TextLabel.Rotation=0 
	TextLabel.Selectable=false 
	TextLabel.SelectionImageObject=nil 
	TextLabel.Size=UDim2.new(1,0,1,0)
	TextLabel.SizeConstraint=Enum.SizeConstraint.RelativeXY 
	TextLabel.Text="SpunGun" 
	TextLabel.TextColor3=Color3.new(1, 1, 1) 
	TextLabel.TextScaled=false 
	TextLabel.TextSize=61 
	TextLabel.TextStrokeColor3=Color3.new(0, 0, 0) 
	TextLabel.TextStrokeTransparency=1 
	TextLabel.TextTransparency=0 
	TextLabel.TextTruncate=Enum.TextTruncate.None 
	TextLabel.TextWrapped=true 
	TextLabel.TextXAlignment=Enum.TextXAlignment.Center 
	TextLabel.TextYAlignment=Enum.TextYAlignment.Center 
	TextLabel.Visible=true 
	TextLabel.ZIndex=1
	return Handle
end

function shaders()
	Message("Loaded SHADERS!", 15)
	local Lighting=game.Lighting
	local Sky=Instance.new("Sky") 
	local Bloom=Instance.new("BloomEffect") 
	local Blur=Instance.new("BlurEffect") 
	local ColorCorrection=Instance.new("ColorCorrectionEffect") 
	local SunRays=Instance.new("SunRaysEffect") 
	Lighting.Ambient=Color3.new(0, 0, 0) 
	Lighting.Brightness=2 
	Lighting.ClockTime=17.58277702331543 
	Lighting.ColorShift_Bottom=Color3.new(0, 0, 0) 
	Lighting.ColorShift_Top=Color3.new(0, 0, 0) 
	Lighting.ExposureCompensation=0.25 
	Lighting.FogColor=Color3.new(0.752941, 0.721569, 0.639216) 
	Lighting.FogEnd=2500 
	Lighting.FogStart=0 
	Lighting.GeographicLatitude=0 
	Lighting.GlobalShadows=true 
	Lighting.OutdoorAmbient=Color3.new(0.568627, 0.396078, 0.329412) 
	Lighting.Outlines=false 
	Lighting.TimeOfDay="17:34:58"
	Sky.Archivable=true 
	Sky.CelestialBodiesShown=true 
	Sky.MoonAngularSize=0 
	Sky.MoonTextureId="rbxasset://sky/moon.jpg" 
	Sky.Name="Sky" 
	Sky.Parent=Lighting 
	Sky.SkyboxBk="rbxassetid://600830446" 
	Sky.SkyboxDn="rbxassetid://600831635" 
	Sky.SkyboxFt="rbxassetid://600832720" 
	Sky.SkyboxLf="rbxassetid://600886090" 
	Sky.SkyboxRt="rbxassetid://600833862" 
	Sky.SkyboxUp="rbxassetid://600835177" 
	Sky.StarCount=5000 
	Sky.SunAngularSize=15 
	Sky.SunTextureId="rbxasset://sky/sun.jpg" 
	Bloom.Archivable=true 
	Bloom.Enabled=true 
	Bloom.Intensity=1 
	Bloom.Name="Bloom" 
	Bloom.Parent=Lighting 
	Bloom.Size=56 
	Bloom.Threshold=1.6859999895095825 
	Blur.Archivable=true 
	Blur.Enabled=true 
	Blur.Name="Blur" 
	Blur.Parent=Lighting 
	Blur.Size=2 
	ColorCorrection.Archivable=true 
	ColorCorrection.Brightness=0 
	ColorCorrection.Contrast=0 
	ColorCorrection.Enabled=true 
	ColorCorrection.Name="ColorCorrection" 
	ColorCorrection.Parent=Lighting 
	ColorCorrection.Saturation=0 
	ColorCorrection.TintColor=Color3.new(1, 0.886275, 0.886275) 
	SunRays.Archivable=true 
	SunRays.Enabled=true 
	SunRays.Intensity=0.03999999910593033 
	SunRays.Name="SunRays" 
	SunRays.Parent=Lighting 
	SunRays.Spread=1
	game.Players:Chat("h \n\n\n\n\n\n\nShining Parts, Game may lag/crash.")
	for _, a in pairs(workspace.Terrain._Game.Workspace:GetDescendants()) do
		if a:IsA("BasePart") then
			a.Reflectance=0.25
		end
	end
end

spawn(function()
	while wait() do
		if slshow then
			game.Players:Chat(`h \n\n\n\n\n\n\nServer Lock:\n {tostring(sl)}\n\n\n\n\n\n`)
			wait(2)
		end
	end
end)
spawn(function()
	while wait() do
		for _, plr in pairs(game.Players:GetPlayers()) do
			if table.find(banned, plr.Name) then
				game.Players:Chat("blind "..plr.Name)
				game.Players:Chat("setgrav "..plr.Name.." -9e9")
				game.Players:Chat("speed "..plr.Name.." 0")
				wait(0.2)
			end
		end
	end
end)

spawn(function()
	while wait() do
		if game.Players.LocalPlayer.Character.Humanoid.Health == 0 and antideath then
			game.Players:Chat("reset me")
		elseif game.Players.LocalPlayer.Character.Humanoid.Health == 0 and not antideath then
			for _, a in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
				table.insert(gears, a)
			end
		end
	end
end)

local become=nil

game:GetService("RunService").Stepped:Connect(function()
	for _, plr in pairs(game.Players:GetPlayers()) do
		if become then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=become.HumanoidRootPart.CFrame
			game.Players.LocalPlayer.Character.Head.CFrame=become.Head.CFrame
			game.Players.LocalPlayer.Character.Torso.CFrame=become.Torso.CFrame
			game.Players.LocalPlayer.Character["Left Arm"].CFrame=become["Left Arm"].CFrame
			game.Players.LocalPlayer.Character["Right Arm"].CFrame=become["Right Arm"].CFrame
			game.Players.LocalPlayer.Character["Left Leg"].CFrame=become["Left Leg"].CFrame
			game.Players.LocalPlayer.Character["Right Leg"].CFrame=become["Right Leg"].CFrame
		end
	end
end)

local cycle=true


-- AC (Anti-Crash)

game:GetService("RunService").Stepped:Connect(function()
	for _, plr in pairs(game.Players:GetPlayers()) do
		if plr.Backpack:FindFirstChild("VampireVanquisher") then
			game.Players:Chat("ungear "..plr.Name)
			game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n"..plr.DisplayName.." that VampireVanquisher makes u sus.")
		end
	end
end)

game:GetService("RunService").Stepped:Connect(function()
	for _, plr in pairs(game.Players:GetPlayers()) do
		if plr.Character and plr.Character:FindFirstChild("VampireVanquisher") then
			game.Players:Chat("ungear "..plr.Name)
			game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n"..plr.DisplayName.." that VampireVanquisher makes u sus.")
		end
	end
end)

game:GetService("RunService").Stepped:Connect(function()
	for _, plr in pairs(game.Players:GetPlayers()) do
		if antigear and #plr.Backpack:GetChildren() ~= 0 then
			game.Players:Chat("ungear "..plr.Name)
		end
	end
end)

local fakeLeft=false
function admin(msg, localPlr, Type): ()
	if msg == _G.cmdPrefix.."fakejoin" and fakeLeft == true  then
		game.Players:Chat("h \n\n\n\n\n\n\n"..localPlr.Name.." joined.")
		game.Players:Chat("visible "..localPlr.Name)
		fakeLeft=false
	end
	if not enab then
		return nil
	end
	if msg == _G.cmdPrefix.."fakeleave" then
		game.Players:Chat("h \n\n\n\n\n\n\n"..localPlr.Name.." left.")
		game.Players:Chat("invisible "..localPlr.Name)
		fakeLeft=true
	end
	local split=string.split(msg, _G.cmdSplit)
	local splitchar=string.split(msg, "")
	for An, Plugin in pairs(plugins) do
		if An and Plugin then
			for Name, Command in pairs(Plugin.Commands) do
				if msg == Name then
					loadstring([[
					function run(a)
						game.Players:Chat(a)
					end
					
					]]..Command.Code)()
				end
			end
		else
			game.Players:Chat("h PLUGIN "..An.." FAILED TO RUN.")
		end
	end
	if split[1] == _G.cmdPrefix.."factory_reset" then
		delfile("KohlScripts/FA/Settings.json")
		game["Teleport Service"]:TeleportToPlaceInstance(game.PlaceId, game.JobId,nil,nil,{
			["ExploiterOnlyServer"]=false,
			["Gears"]=game.Players.LocalPlayer.Backpack:GetChildren();
			["Position"]=game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame;
			["FA Data"]={
				["AD"]=false;
				["SL"]=false;
				["SSL"]=false;
				["AG"]=false;
				["ENAB"]=true;
				["PLUGINS"]={};
			}
		})
		return
	end
	if split[1] == _G.cmdPrefix.."set-setting" then
		local file=readfile("KohlScripts/FA/Settings.json")
		local decode=game:GetService("HttpService"):JSONDecode(file)
		local tab={}
		local edited=false
		for Name, Value in pairs(decode) do
			tab[Name]=Value
			if Name==split[2] then
				tab[Name]=split[3];
				edited=true
			end
		end
		if edited == false then 
			warn("Settings.json was not edited as "..split[2].." is not apart of the original file.")
		else
			print("Edited file successfully.")
		end
		writefile("KohlScripts/FA/Settings.json", game:GetService("HttpService"):JSONEncode(tab))
	end
	if split[1] == _G.cmdPrefix.."spun" then
		if split[2] == "all" then
			Message("Spunned All!", 15)
			for _, plr in pairs(game.Players:GetPlayers()) do
				if plr and not plr.Character:FindFirstChild("Shirt Graphic") or plr.Character["Shirt Graphic"].Graphic ~= "http://www.roblox.com/asset/?id=14351776240" then
					game.Players:Chat("h \n\n\n\n\n\n\n"..plr.Name.." was banned lol.")
					game.Players:Chat("pm "..plr.Name.." ur banned lol.")
					table.insert(banned, plr.Name)
				end
			end
		elseif split[2] == "others" then
			Message("Spunned Others!", 15)
			for _, plr in pairs(game.Players:GetPlayers()) do
				if plr and plr.Name ~= localPlr.Name then
					if plr and not plr.Character:FindFirstChild("Shirt Graphic") or plr.Character["Shirt Graphic"].Graphic ~= "http://www.roblox.com/asset/?id=14351776240" then
						game.Players:Chat("h \n\n\n\n\n\n\n"..plr.Name.." was banned lol.")
						game.Players:Chat("pm "..plr.Name.." ur banned lol.")
						table.insert(banned, plr.Name)
					end
				end
			end
		else
			local plr=GetPlayerFromStart(split[2])
			if plr and not plr.Character:FindFirstChild("Shirt Graphic") or plr.Character["Shirt Graphic"].Graphic ~= "http://www.roblox.com/asset/?id=14351776240" then
				Message("Spunned "..plr.Name.."!", 15)
				game.Players:Chat("h \n\n\n\n\n\n\n"..plr.Name.." was banned lol.")
				game.Players:Chat("pm "..plr.Name.." ur banned.")
				table.insert(banned, plr.Name)
			elseif plr.Character:FindFirstChild("Shirt Graphic") and  plr.Character["Shirt Graphic"].Graphic == "http://www.roblox.com/asset/?id=14351776240" then
				game.Players:Chat("h \n\n\n\n\n\n\nCannot spun another FA user.")
			end
		end
	end
	if split[1] == _G.cmdPrefix.."sspun" then
		local plr=GetPlayerFromStart(split[2])
		if split[2] == "all" then
			Message("SSpunned All!", 15)
			for _, plr in pairs(game.Players:GetPlayers()) do
				if plr and table.find(banned, plr.Name) then
					game.Players:Chat("h \n\n\n\n\n\n\n"..plr.Name.." was unbanned lol.")
					game.Players:Chat("pm "..plr.Name.." ur unbanned lol.")
					game.Players:Chat("respawn "..plr.Name)
					table.remove(banned, table.find(banned, plr.Name))
				end
			end
		elseif split[2] == "clear" then
			table.clear(banned)
			Message("Cleared Banned!", 15)
		elseif split[2] == "log" then
			for _, a in pairs(banned) do
				print(a)
			end
			Message("Logged Bans (check console)!", 15)
		else	
			local plr=GetPlayerFromStart(split[2])
			if plr then
				Message("SSpunned "..plr.Name.."!", 15)
				game.Players:Chat("h \n\n\n\n\n\n\n"..plr.Name.." was unbanned lol.")
				game.Players:Chat("pm "..plr.Name.." ur unbanned.")
				game.Players:Chat("respawn "..plr.Name)
				table.remove(banned, table.find(banned, plr.Name))
			end
		end
	end
	if split[1] == _G.cmdPrefix.."hasfa" then
		local plr=GetPlayerFromStart(split[2])
		if plr then
			if plr.Character:FindFirstChild("Shirt Graphic") then
				if plr.Character["Shirt Graphic"].Graphic ~= "http://www.roblox.com/asset/?id=14351776240" then
					game.Players:Chat("h False")
				elseif plr.Character["Shirt Graphic"].Graphic == "http://www.roblox.com/asset/?id=14351776240" then
					game.Players:Chat("h True")
				end
			else
				game.Players:Chat("h True")
			end
		end
	end
	if split[1] == _G.cmdPrefix.."flyingcar" then
		game.Players:Chat("size me 0.3")
		game.Players:Chat("size me 0.3")
		game.Players:Chat("size me 0.3")
		game.Players:Chat("freeze me")
		game.Players:Chat("dog me")
		game.Players:Chat("unsize me")
		game.Players:Chat("thaw me")
		wait(1)
		game.Players:Chat("unsize me")
	end
	if split[1] == _G.cmdPrefix.."findgear" then
		local JSON=game:HttpGet("https://catalog.roblox.com/v1/search/items/details?Category=11&Subcategory=5&CreatorTargetId=1&SortType=0&SortAggregation=5&Limit=10&Keyword="..split[3])
		local TABLE=game:GetService("HttpService"):JSONDecode(JSON)
		local LIST=""
		for v, a in pairs(TABLE.data) do
			LIST=LIST.."\n"..v..": "..a.name..","	
		end
		Message("Gears: "..LIST.."\n Chat a number.", 15)
		local number, _=game.Players.LocalPlayer.Chatted:Wait()
		if tonumber(number) <= #TABLE.data and tonumber(number) >= 0 then
			local ID=TABLE.data[tonumber(number)].id
			game.Players:Chat("h Gave "..TABLE.data[tonumber(number)].name.." to "..split[2])
			game.Players:Chat("gear "..split[2].." 0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"..ID)
		else
			game.Players:Chat("h \n\n\n\n\n\n\nNot in range.")
		end
	end
	if split[1] == _G.cmdPrefix.."findmusic" then
		local JSON=game:HttpGet("https://search.roblox.com/catalog/json?Category=9&ResultsPerPage=1&Limit=10&Keyword="..split[2])
		local TABLE=game:GetService("HttpService"):JSONDecode(JSON)
		game.Players:Chat("h Now Playing:\n"..TABLE[1].Name)
		game.Players:Chat("music 0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"..TABLE[1].AssetId)
	end
	if split[1] == _G.cmdPrefix.."spam" then
		table.remove(split, 1)
		spam=table.concat(split, ".")
	end
	if split[1] == _G.cmdPrefix.."stop" then
		spam=""
	end
	if split[1] == _G.cmdPrefix.."nok" then
		for _, part in pairs(workspace.Terrain._Game.Workspace.Obby:GetChildren()) do
			part.TouchInterest:Destroy()
			part.CanCollide=false
		end
	end
	if split[1] == _G.cmdPrefix.."perm" then
		local plr=GetPlayerFromStart(split[2])
		if plr then
			plr.Chatted:Connect(function(msg)
				game.Players:Chat(msg:gsub("me", plr.Name))
			end)
		end
	end
	if split[1] == _G.cmdPrefix.."become" then
		if game.Players:FindFirstChild(split[2]) then
			become=game.Players:FindFirstChild(split[2]).Character
		end
	end
	if split[1] == _G.cmdPrefix.."becomeoff" then
		become=nil
	end
	if split[1] == _G.cmdPrefix.."cycletools" then
		cycle=true
		while cycle do wait()
			for _, a in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
				wait(0.05)
				game.Players.LocalPlayer.Character.Humanoid:EquipTool(a)
			end
		end
	end
	if split[1] == _G.cmdPrefix.."boncrash" then
		local plr=GetPlayerFromStart(split[2])
		if plr then
			while wait() do
				game.Players:Chat("bonfire "..plr.Name)
			end
		end
	end
	if split[1] == _G.cmdPrefix.."repeat" then
		for i=1, tonumber(split[2]), 1 do
			game.Players:Chat(split[3]:gsub("index", i))
			if split[4] then
				wait(split[4])
			end
		end
	end
	if split[1] == _G.cmdPrefix.."cycleoff" then
		cycle=false
	end
	if split[1] == _G.cmdPrefix.."SNAP" then
		local Player=game.Players.LocalPlayer
		local Character=Player.Character
		local Animator=Character.Humanoid.Animator
		local Animation=Instance.new("Animation")
		Animation.AnimationId=14718544995
		Animation.Name="SNAP.SS.CUTSCENE"
		Animation.Parent=workspace.Terrain._Game.Folder
		local AnimationTrack=Animator:LoadAnimation(Animation)
		AnimationTrack:Play()
		local Lighting=game:GetService("Lighting")
		Lighting.Ambient=Color3.new(1, 0, 0) 
		Lighting.Brightness=0 
		Lighting.ClockTime=0 
		Lighting.ColorShift_Bottom=Color3.new(0, 0, 0) 
		Lighting.ColorShift_Top=Color3.new(0, 0, 0) 
		Lighting.ExposureCompensation=-1.7699999809265137 
		Lighting.FogColor=Color3.new(0, 0, 0) 
		Lighting.FogEnd=200 
		Lighting.FogStart=0 
		Lighting.GeographicLatitude=2 
		Lighting.GlobalShadows=true
		Lighting.OutdoorAmbient=Color3.new(1, 0, 0) 
		Lighting.Outlines=false 
		Lighting.TimeOfDay="00:00:00"
		AnimationTrack.Ended:Wait()
		Character.Humanoid.WalkSpeed=8
		spawn(function()
			while wait() do
				game.Players:Chat("speed others 0")
				game.Players:Chat("time 0")
				game.Players:Chat("Ambient 255 0 0")
				game.Players:Chat("OutdoorAmbient 0 0 0")
			end
		end)
	end
	if split[1] == _G.cmdPrefix.."killbrick" then
		loadstring(game:GetObjects("rbxassetid://6695644299")[1].Source)()
		local Killer=Instance.new("Part", workspace)
		Killer.Name="KillBrick"
		Killer.CFrame=game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		Killer.CanCollide=false
		Killer.Anchored=true
		Killer.BrickColor=BrickColor.Red()
		Killer.Transparency=0.5
		Killer.Touched:Connect(function(base)
			if base.Parent:FindFirstChild("Humanoid") then
				game.Players:Chat("kill "..base.Parent.Name)
			end
		end)
	end
	if split[1] == _G.cmdPrefix.."sl-1" then
		sl=true
	end
	if split[1] == _G.cmdPrefix.."sl-0" then
		sl=false
	end
	if split[1] == _G.cmdPrefix.."ag-1" then
		antigear=true
		game.Players:Chat("h \n\n\n\n\n\n\nAnti-Gear On.")
	end
	if split[1] == _G.cmdPrefix.."ag-0" then
		antigear=false
		game.Players:Chat("h \n\n\n\n\n\n\nAnti-Gear Off.")
	end
	if split[1] == _G.cmdPrefix.."ad-0" then
		antideath=false
		game.Players:Chat("h \n\n\n\n\n\n\nAnti-Death Off.")
	end
	if split[1] == _G.cmdPrefix.."ad-1" then
		antideath=true
		game.Players:Chat("h \n\n\n\n\n\n\nAnti-Death On.")
	end
	if split[1] == _G.cmdPrefix.."railspam" then
		for i=1, 50, 1 do
			game.Players:Chat("gear me 79446473")
		end
		while game.Players.LocalPlayer.Character.Humanoid.Health ~= 0 do wait()
			for _, a in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
				wait(0.05)
				game.Players.LocalPlayer.Character.Humanoid:EquipTool(a)
			end
		end
	end
	if split[1] == _G.cmdPrefix.."reload" then
		game.Players:Chat("h \n\n\n\n\n\n\nReloading FA.")
		wait(2)
		enab=false
		loadstring(game:HttpGet("https://githubusercontent.com/Fonalc/fa/main/main.lua"))()
	end
	if split[1] == _G.cmdPrefix.."help" then
		local old=localPlr.Character.HumanoidRootPart.CFrame
		localPlr.Character.HumanoidRootPart.CFrame=CFrame.new(-40, 8, 50)
		wait(0.2)
		game.Players:Chat("tp all me")
		wait(0.4)
		localPlr.Character.HumanoidRootPart.CFrame=old
	end
	if split[1] == _G.cmdPrefix.."lag" then
		local plr=GetPlayerFromStart(split[2])
		if plr then
			spawn(function()
				game.Players:Chat("skydive "..plr.Name)
				game.Players:Chat("jail "..plr.Name)
				repeat
					game.Players:Chat("smoke "..plr.Name)
					game.Players:Chat("ff "..plr.Name)
					game.Players:Chat("speed "..plr.Name.." 0")
					wait()
				until not plr.Character
			end)
		end
	end
	if split[1] == _G.cmdPrefix.."givefa" then
		if split[2] == "all" then
			for _, plr in pairs(game.Players:GetPlayers()) do
				if plr then
					game.Players:Chat("h \n\n\n\n\n\n\n"..plr.Name.." has FA.")
					game.Players:Chat("pm "..plr.Name.." you have FA now!!")
					plr.Chatted:Connect(function(mesg)
						admin(mesg, plr, "given")
					end)
				end
			end
		else
			local plr=GetPlayerFromStart(split[2])
			if plr then
				game.Players:Chat("h \n\n\n\n\n\n\n"..plr.Name.." has FA.")
				game.Players:Chat("pm "..plr.Name.." you have FA now!!")
				plr.Chatted:Connect(function(mesg)
					admin(mesg, plr, "given")
				end)
			end
		end
	end
	if split[1] == _G.cmdPrefix.."shaders" then
		shaders()
	end
	if split[1] == _G.cmdPrefix.."bombcon" then
		local bomber=""
		for i=1, 100 do
			bomber=bomber..split[2].."\n"
		end
		game.Players:Chat("music "..bomber)
	end
	if split[1] == _G.cmdPrefix.."so_no_legs" then
		game.Players.LocalPlayer.Character["Left Leg"]:Destroy()
		game.Players.LocalPlayer.Character["Right Leg"]:Destroy()
	end
	if split[1] == _G.cmdPrefix.."am" then
		automusic=true
		local Sound=workspace.Terrain._Game.Folder:FindFirstChild("Sound")
		while automusic do wait()
			if not Sound or Sound.SoundId ~= "http://www.roblox.com/asset/?id="..tonumber(split[2]) or not Sound.IsPlaying then
				game.Players:Chat("music "..tonumber(split[2]))
			elseif not Sound.IsPlaying and Sound then
				Sound:Play()
			end
		end
	end
	if split[1] == _G.cmdPrefix.."amoff" then
		automusic=false
	end
	if split[1] == _G.cmdPrefix.."plugin" then
		local add=game:GetService("HttpService"):JSONDecode(game:HttpGet("https://raw.githubusercontent.com/"..split[2]..".fa"))
		if add then
			local name=add.Name
			if not plugins[name] then
				game.Players:Chat("h Installed "..name..", Check cmdPrint to check the commands!")
				plugins[name]=add
			else
				game.Players:Chat("h Updated "..name..".")
				plugins[name]=add
			end
		else
      print("error, go to fonalc.github.io to see what it should look like")
		end
	end
	if split[1] == _G.cmdPrefix.."cmdPrint" then
		local list=""
		for PName, Plugin in pairs(plugins) do
			list=list.."\n -- "..Plugin.Name.." -- "
			for Name, Command in pairs(Plugin.Commands) do
				list=list.."\n"..Name.." -- "..Command.Description
			end
		end	
			print("Thank you for using FA (Fonalc's Admin), Here are the commands.")
			print(_G.cmdPrefix.."spun".._G.cmdSplit.."[player name] --SPun (or Special Punish), Makes them forever stuck in the abyss.")
			print(_G.cmdPrefix.."sspun".._G.cmdSplit.."[player name] --SSPun, Releases them from the abyss.")
			print(_G.cmdPrefix.."Ssl-1  --<Show SL  --Shows the current state of SL (server lock).")
			print(_G.cmdPrefix.."Ssl-0  --<Hide SL  --Hides the current state of SL (server lock).")
			print(_G.cmdPrefix.."sl-1  --<SL>, Lock the server.")
			print(_G.cmdPrefix.."sl-0  --<SL>, Unlocks the server.")
			print(_G.cmdPrefix.."ad-1  --<AD>, Turn on Anti-Death.")
			print(_G.cmdPrefix.."ad-0  --<AD>, Turn off Anti-Death.")
			print(_G.cmdPrefix.."reload  --Reloads the admin, Used for updates.")
			print(_G.cmdPrefix.."help  --Teleports everyone to the house.")
			print(_G.cmdPrefix.."lag".._G.cmdSplit.."[player name] --Lags the player with FF and SMOKE, Spams it until the player leave or until you leave.")
			print(_G.cmdPrefix.."givefa".._G.cmdSplit.."[player name] --Shares FA with another player (fa may bug out for other player).")
			print(_G.cmdPrefix.."count  --Counts every player in the server, Recommended for testing if loaded.")
			print(_G.cmdPrefix.."spungun  --Gives you a Spun Gun (Spuns whoever you touch, Main Only!).")
			print(_G.cmdPrefix.."skybase  --Turns whatever surface you are standing on into a skybase (buggy).")
			print(_G.cmdPrefix.."vcrash  --Attempts Quick Crash.")
			print(_G.cmdPrefix.."shutdown  --THE FASTEST CRASH EVER, (CANNOT BE STOPPED.)")
			print(_G.cmdPrefix.."bossfight  --Starts a bossfight, may break while attaching.")
			print(_G.cmdPrefix.."flyingcar  --Puts your body high up but your head on the floor")
			print(_G.cmdPrefix.."music1  --Plays a bypassed audio.")
			print(_G.cmdPrefix.."play  --Plays the music currently loaded.")
			print(_G.cmdPrefix.."stop  --Stops the music currently loaded.")
			print(_G.cmdPrefix.."volup  --Ups the volume of the music loaded by 0.25.")
			print(_G.cmdPrefix.."voldw  --Downs the volume of the music loaded by 0.25.")
			print(_G.cmdPrefix.."clmusic".._G.cmdSplit.."[id] --Play music on the client.")
			print(_G.cmdPrefix.."clmusicstop  --Stops current music on the client.")
			print(_G.cmdPrefix.."attach  --Attaches you to the surface your on.")
			print(_G.cmdPrefix.."shaders  --Loads SHADERS!")
			print(_G.cmdPrefix.."cmds  --Shows CMDS slowly.")
			print(_G.cmdPrefix.."cmdPrint  --Prints CMDS.")
			print(_G.cmdPrefix.."become  --Become a player, Buggy!")
			print(_G.cmdPrefix.."perm".._G.cmdSplit.."[name] --Gives a player perm admin, This works by running any command off of your admin (meaning players can use fa, the word \"me\" gets replaced with them.)")
			print("-- INSTALLED PLUGINS COMMANDS --")
			print(list)
	end
	if split[1] == _G.cmdPrefix.."count" then
		if #game.Players:GetPlayers() <= game.Players.MaxPlayers then
			game.Players:Chat("h \n\n\n\n\n\n\nServer full.")
		else
			game.Players:Chat("h \n\n\n\n\n\n\nServer Count: "..#game.Players:GetPlayers().."/"..game.Players.MaxPlayers)
		end
	end
	if split[1] == _G.cmdPrefix.."script" then
		local script=game:HttpGet("https://raw.githubusercontent.com/Fonalc/fa/main/Scripts/"..split[2]..".lua")
		loadstring(script)()
	end
	--Velocity command made by OddyNuff (@daytontalbot)
	if split[1] == _G.cmdPrefix.."fixvel" then
		local mapFolder=game:GetService("Workspace").Terrain._Game.Workspace
		for _,v in pairs(mapFolder:GetDescendants()) do
			task.spawn(function()
				if v:IsA("Part") then
					v.Velocity=Vector3.new(0, 0, 0)
				end
			end)
		end
	end
	if split[1] == _G.cmdPrefix.."warn" then
		local plr=GetPlayerFromStart(split[2])
		if plr then
			if not warnings[plr.Name] then
				warnings[plr.Name] = 0
			end
			if split[3]:find("=") and split[3]:find("=") == 1 then
				warnings[plr.Name]=split[3]:gsub("=", "")
			end
			if split[3] == "+" then
				warnings[plr.Name] += 1
			end
			if split[3] == "x" then
				table.remove(warnings, table.find(warnings, plr.Name))
			end
			if warnings[plr.Name] == 3 then
				game.Players:Chat("h \n\n\n\n\n\n\n"..plr.Name.." was banned due to having 3 warnings.")
				game.Players:Chat("pm "..plr.Name.." ur banned, be better boy next time ok?")
				table.insert(banned, plr.Name)
			else
				game.Players:Chat("h "..plr.Name.." now has "..(warnings[plr.Name]:gsub("+", "")):gsub("=", "").." warnings.")
			end
		end
	end
	if split[1] == _G.cmdPrefix.."spungun" and Type == "main" then
		local tat=new(localPlr.Backpack)
		tat.Touched:Connect(function(base)
			if game.Players:FindFirstChild(base.Parent.Name) and not table.find(banned, base.Parent.Name) then
				if not base.Parent:FindFirstChild("Shirt Graphic") or base.Parent["Shirt Graphic"].Graphic ~= "http://www.roblox.com/asset/?id=14351776240" then
					table.insert(banned, base.Parent.Name)
					game.Players:Chat("h \n\n\n\n\n\n\n"..base.Parent.Name.." was spunned by the spungun.")
					game.Players:Chat("pm "..base.Parent.Name.." ur spunned.")
				end
			end
		end)
	end
	if split[1] == _G.cmdPrefix.."skybase" then
		game.Players:Chat("sit me")
		wait(0.5)
		game.Players:Chat("punish me")
		game.Players:Chat("unpunish me")
		for a=1, 50, 1 do
			game.Players:Chat("skydive me")
		end
	end
	if split[1] == _G.cmdPrefix.."attach" then
		game.Players:Chat("sit me")
		wait(0.5)
		game.Players:Chat("punish me")
		game.Players:Chat("unpunish me")
	end
	if split[1] == _G.cmdPrefix.."bossfight" then
		game.Players:Chat("blind others")
		game.Players:Chat("speed others 0")
		game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nBoss Fight Loading... 8.75 Seconds Expected!")
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=CFrame.new(-51, 5, 44)
		wait(0.5)
		game.Players:Chat("sit me")
		wait(3.25)
		game.Players:Chat("punish me")
		game.Players:Chat("unpunish me")
		for a=1, 500, 1 do
			game.Players:Chat("skydive me")
		end
		game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nWhile we wait, Please note if you kill anyone. You will be banned..")
		wait(0.5)
		game.Players:Chat("reset me")
		wait(1)
		game.Players:Chat("size me 2")
		game.Players:Chat("name me !")
		game.Players:Chat("health me 2000")
		game.Players:Chat("health others 1200")
		game.Players:Chat("m prepare, players will be released shortly...")
		wait(7)
		game.Players:Chat("speed all 16")
		game.Players:Chat("unblind others")
		game.Players:Chat("sword all")
		game.Players:Chat("tp all me")
		game.Players:Chat("h GO!")
		local a=1
		repeat 
			wait(1)
			a+=1
		until game.Players.LocalPlayer.Character.Humanoid.Health == 0 or a==55
		if a==55 then
			game.Players:Chat("h TIME UP! BOSS WINS, PLAYERS LOSE!")
		else
			game.Players:Chat("h PLAYERS WIN, BOSS LOSE!")
		end
		wait(4)
		game.Players:Chat("respawn all")
	end
	-- Music/Sound --
	if split[1] == _G.cmdPrefix.."music1" then
		game.Players:Chat("music 6917155909")
	end
	if split[1] == _G.cmdPrefix.."music2" then
		game.Players:Chat("music 9038620433")
	end
	if split[1] == _G.cmdPrefix.."music3" then
		game.Players:Chat("music 6819593773")
	end
	if split[1] == _G.cmdPrefix.."music4" then
		game.Players:Chat("music 8147012902")
	end
	if split[1] == _G.cmdPrefix.."music5" then
		game.Players:Chat("music 6893776529")
	end
	if split[1] == _G.cmdPrefix.."music6" then
		game.Players:Chat("music 6788646778")
	end
	if split[1] == _G.cmdPrefix.."music7" then
		game.Players:Chat("music 7280017311")
	end
	if split[1] == _G.cmdPrefix.."music8" then
		game.Players:Chat("music 9124780123")
	end
	if split[1] == _G.cmdPrefix.."music9" then
		game.Players:Chat("music 6897686359")
	end
	if split[1] == _G.cmdPrefix.."stop" then
		if workspace.Terrain._Game.Folder:FindFirstChild("Sound") then
			workspace.Terrain._Game.Folder.Sound:Stop()
		end
	end
	if split[1] == _G.cmdPrefix.."imp" then
		local plr=GetPlayerFromStart(split[2])
		if plr then
			anonymous(plr.Name..": "..split[3])
		end
	end
	if split[1] == _G.cmdPrefix.."play" then
		if workspace.Terrain._Game.Folder:FindFirstChild("Sound") then
			workspace.Terrain._Game.Folder.Sound:Play()
		end
	end
	if split[1] == _G.cmdPrefix.."volup" then
		if workspace.Terrain._Game.Folder:FindFirstChild("Sound") then
			workspace.Terrain._Game.Folder.Sound.Volume += 0.25
		end
	end
	if split[1] == _G.cmdPrefix.."voldw" then
		if workspace.Terrain._Game.Folder:FindFirstChild("Sound") then
			workspace.Terrain._Game.Folder.Sound.Volume -= 0.25
		end
	end
	if split[1] == _G.cmdPrefix.."id" then
		if workspace.Terrain._Game.Folder:FindFirstChild("Sound") then
			game.Players:Chat("h \n\n\nCurrent ID: "..workspace.Terrain._Game.Folder.Sound.SoundId.."\n\n\n\n\n")
		end
	end
	if split[1] == _G.cmdPrefix.."cmdbar" then
		cmdbar()
	end
	if split[1] == _G.cmdPrefix.."shutdown" then
		game.Players:Chat("/e dance")
		task.wait()
		task.spawn(function()
			while true do
				game.Players:Chat("dog all all all all all all all all")
				game.Players:Chat("clone all all all all all all all")
				task.wait()
			end
		end)
	end
	if split[1] == _G.cmdPrefix.."clmusic" then
		if workspace.Terrain._Game.Folder:FindFirstChild("localSound") then
			local sound=workspace.Terrain._Game.Folder:FindFirstChild("localSound")
			sound:Stop()
			sound:Destroy()
		end
		local soud=Instance.new("Sound", workspace.Terrain._Game.Folder)
		soud.Name="localSound"
		soud.SoundId="rbxassetid://"..split[2]
		soud:Play()
	end
	if split[1] == _G.cmdPrefix.."clmusicstop" then
		if workspace.Terrain._Game.Folder:FindFirstChild("localSound") then
			local sound=workspace.Terrain._Game.Folder:FindFirstChild("localSound")
			sound:Stop()
			sound:Destroy()
		end
	end
	if split[1] == _G.cmdPrefix.."rj" then
		game["Teleport Service"]:TeleportToPlaceInstance(game.PlaceId, game.JobId,nil,nil,{
			["ExploiterOnlyServer"]=false,
			["Gears"]=game.Players.LocalPlayer.Backpack:GetChildren();
			["Position"]=game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame;
			["FA Data"]={
				["AD"]=antideath;
				["SL"]=sl;
				["SSL"]=slshow;
				["AG"]=antigear;
				["ENAB"]=enab;
				["PLUGINS"]=plugins;
			}
		})
	end
	if split[1] == _G.cmdPrefix.."lua" then
		table.remove(split, 1)
		loadstring([[
		local players=game.Players
		local scripts={
				["iy"]={
					["run"]=function()
						loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
					end,
				};
		}
		function run(a)
			game.Players:Chat(a)
		end
		function Message(text, size)
			game.StarterGui:SetCore("ChatMakeSystemMessage", {
				Text="[FA]: "..text;
				FontSize=size;
			})
		end
		function Chat(text)
			game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(text, "All")
		end
		
	]]..table.concat(split, "."))()
	end
	if split[1] == _G.cmdPrefix.."exit" then
		game.Players.LocalPlayer:Kick("Quitted.")
	end
end

game.Players.LocalPlayer.Chatted:Connect(function(msg)
	admin(msg, game.Players.LocalPlayer, "main")
end)
game.Players.PlayerAdded:Connect(function(plr)
	local success
	success=pcall(function()
		if sl == "exploit" then
			if table.find({
				"bcakroms2";
				"BANNter_Original";
				"aligotoofed";
				"somerandom828";
				}, plr.Name) then
				game.Players:Chat("h \n\n\n\n\n\n\n"..plr.Name.." joined.")	
			else
				if sl and not plr:IsFriendsWith(2249914791) then
					game.Players:Chat("h \n\n\n\n\n\n\n\n"..plr.Name.." tried joinin.")
					game.Players:Chat("punish "..plr.Name)
					game.Players:Chat("pm "..plr.Name.." server locked srry.")
					wait(2)
					game.Players:Chat("unpunish "..plr.Name)
					table.insert(banned, plr.Name)
				elseif not sl then
					if not fakeLeft then
						game.Players:Chat("h \n\n\n\n\n\n\n"..plr.Name.." joined.")	
					end
				end
			end
		end
	end)
end)
game.Players.PlayerRemoving:Connect(function(plr)
	if sl then
		if banned[plr.Name] then
			table.remove(banned, table.find(banned, plr.Name))
		end
	end
	if not fakeLeft then
		game.Players:Chat("h \n\n\n\n\n\n\n"..plr.Name.." left.")	
	end
end)
