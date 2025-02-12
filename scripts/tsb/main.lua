local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/user2GX/roblox-scripts/main/scripts/tsb/source.lua')))()
local Window = OrionLib:MakeWindow({Name = "2gxHub", HidePremium = false, SaveConfig = true, ConfigFolder = "2gxHubConfig", IntroEnabled = false})

-- vars

local Players = game:GetService("Player")
local Player = Players.LocalPlayer
local PlayerGui = Player:FindFirstChild("PlayerGui")

-- main tab
local MainTab = Window:MakeTab({
	Name = "Main"
})

local MainTab_Hotbar = MainTab:AddSection({
	Name = "Hotbar"
})

local HotbarGui = PlayerGui:FindFirstChild("Hotbar")
local BackpackUI = HotbarGui:FindFirstChild("Backpack")
local HotbarFrame = BackpackUI:FindFirstChild("Hotbar")
local Hotbar_NonUlt = {
    Option1 = HotbarFrame:FindFirstChild("1"),
    Option2 = HotbarFrame:FindFirstChild("2"),
    Option3 = HotbarFrame:FindFirstChild("3"),
    Option4 = HotbarFrame:FindFirstChild("4")
}

MainTab_Hotbar:AddTextbox({
	Name = "Ability 1",
	Default = Hotbar_NonUlt.Option1.Text,
	Callback = function(Value)
		print(Value)
        Hotbar_NonUlt.Option1.Text = value
	end	  
})

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