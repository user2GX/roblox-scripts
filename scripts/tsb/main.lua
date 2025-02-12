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

local RunService = game:GetService("RunService")
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

local isPlateEnabled = false

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
        HotbarAbilities_NonUlt.Ability1.Base.ToolName.Text = Text
    end,
})

local Ability2Input = MainTab:CreateInput({
    Name = "Ability 2",
    CurrentValue = HotbarAbilities_NonUlt.Ability1.Text,
    PlaceholderText = "Powerful Cut",
    RemoveTextAfterFocusLost = false,
    Flag = "Ability2Flag",
    Callback = function(Text)
        print(Text)
        HotbarAbilities_NonUlt.Ability2.Text = Text
        HotbarAbilities_NonUlt.Ability2.Base.ToolName.Text = Text
    end,
})

local Ability3Input = MainTab:CreateInput({
    Name = "Ability 3",
    CurrentValue = HotbarAbilities_NonUlt.Ability1.Text,
    PlaceholderText = "Precise Chop",
    RemoveTextAfterFocusLost = false,
    Flag = "Ability3Flag",
    Callback = function(Text)
        print(Text)
        HotbarAbilities_NonUlt.Ability3.Text = Text
        HotbarAbilities_NonUlt.Ability3.Base.ToolName.Text = Text
    end,
})

local Ability4Input = MainTab:CreateInput({
    Name = "Ability 4",
    CurrentValue = HotbarAbilities_NonUlt.Ability1.Text,
    PlaceholderText = "Last Counter",
    RemoveTextAfterFocusLost = false,
    Flag = "Ability4Flag",
    Callback = function(Text)
        print(Text)
        HotbarAbilities_NonUlt.Ability4.Text = Text
        HotbarAbilities_NonUlt.Ability4.Base.ToolName.Text = Text
    end,
})

local MainTab_Map = MainTab:CreateSection("Map")

local isPlateEnabled = false

local EnablePlateToggle = MainTab:CreateToggle({
    Name = "Enable plate",
    CurrentValue = false,
    Flag = "PlateToggle1",
    Callback = function(Value)
        print(Value)
        local model = workspace:FindFirstChild("Plate")
        if not Value then
            if model then
                model:Destroy()
            end
            isPlateEnabled = false
        else
            if not model then
                local plateModel = Instance.new("Model", workspace)
                plateModel.Name = "Plate"

                local Part1 = Instance.new("Part", plateModel)
                Part1.Anchored = true
                Part1.Transparency = 0.6
                Part1.CastShadow = false
                Part1.CFrame = CFrame.new(310.65155, 493.010651, -209.594543)
                Part1.Size = Vector3.new(155.5, 1, 147)
            end
            isPlateEnabled = true
        end
    end
})

-- settings tab
local SettingsTab = Window:CreateTab("Settings", "cog")
local DestroyUIButton = SettingsTab:CreateButton({
    Name = "Destroy UI",
    Callback = function()
        Rayfield:Destroy()
    end,
})