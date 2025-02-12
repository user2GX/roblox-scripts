local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/user2GX/roblox-scripts/main/scripts/tsb/source.lua')))()
local Window = OrionLib:MakeWindow({Name = "2gxHub", HidePremium = false, SaveConfig = true, ConfigFolder = "2gxHubConfig", IntroEnabled = false})

--[[
Name = <string> - The name of the UI.
HidePremium = <bool> - Whether or not the user details shows Premium status or not.
SaveConfig = <bool> - Toggles the config saving in the UI.
ConfigFolder = <string> - The name of the folder where the configs are saved.
IntroEnabled = <bool> - Whether or not to show the intro animation.
IntroText = <string> - Text to show in the intro animation.
IntroIcon = <string> - URL to the image you want to use in the intro animation.
Icon = <string> - URL to the image you want displayed on the window.
CloseCallback = <function> - Function to execute when the window is closed.
]]