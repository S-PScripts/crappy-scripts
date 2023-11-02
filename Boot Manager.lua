myversion = "v1.9"
currentversion = "v2.0" --you keep this on a seperate loadstring. you obsfucate the code with myversion. if a user attempts to boot an old obfsucated version it will fail

errorcode = "ERROR: Invalid Version."
if not myversion == currentversion then
    error = true
    print(errorcode,"Version Detected:",myversion)
    print("Current Version:",currentversion)
end

if error == true then
		game.Players.LocalPlayer:Kick(errorcode,"Use",currentversion,"instead of",myversion"!")
    -- while true do end
end
