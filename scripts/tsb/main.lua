local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/user2GX/roblox-scripts/main/scripts/tsb/source.lua'))()
local Window = Rayfield:CreateWindow({
    Name = "2gxHub",
    Icon = "atom",
    LoadingTitle = "2gxHub",
    LoadingSubtitle = "by 2gx",
    Theme = "Dark",
 
    DisableRayfieldPrompts = false,
    DisableBuildWarnings = false,
 
    ConfigurationSaving = {
       Enabled = true,
       FolderName = nil,
       FileName = "2gxHubConfig"
    }
 })

-- variables

local Players = game:GetService("Players")
local Player = Players.LocalPlayer
local PlayerGui = Player:WaitForChild("PlayerGui")
local ScreenGuis = {
    Hotbar = PlayerGui:WaitForChild("Hotbar")
}

local BackpackFrame = ScreenGuis.Hotbar:WaitForChild("Backpack")
local HotbarFrame = BackpackFrame:WaitForChild("Hotbar")
local HotbarAbilities_NonUlt = {
    Ability1 = HotbarFrame:WaitForChild("1"),
    Ability2 = HotbarFrame:WaitForChild("2"),
    Ability3 = HotbarFrame:WaitForChild("3"),
    Ability4 = HotbarFrame:WaitForChild("4")
}

-- main tab
local MainTab = Window:CreateTab("Main", "blocks")
local MainTab_Hotbar = MainTab:CreateSection("Hotbar")

local Ability1Input = MainTab:CreateInput({
    Name = "Ability 1",
    CurrentValue = HotbarAbilities_NonUlt.Ability1.Text,
    PlaceholderText = "Rapid Slice",
    RemoveTextAfterFocusLost = false,
    Flag = "Ability1Flag",
    Callback = function(Text)
        print(Text)
        HotbarAbilities_NonUlt.Ability1.Text = Text
    end,
 })

-- settings tab
local SettingsTab = Window:CreateTab("Settings", "cog")
local DestroyUIButton = SettingsTab:CreateButton({
    Name = "Destroy UI",
    Callback = function()
        Rayfield:Destroy()
    end,
})