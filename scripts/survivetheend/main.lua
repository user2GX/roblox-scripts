local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/user2GX/roblox-scripts/main/scripts/survivetheend/source.lua')))()
local Window = OrionLib:MakeWindow({Name = "Survive The End Of Roblox", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest", IntroText = "2gxHub"})

--[[

Variables

]]--

local isRampEnabled = false

--[[

Tab 1 CODE

]]--

local Tab = Window:MakeTab({
	Name = "Teleports",
	PremiumOnly = false
})

local Tab2 = Window:MakeTab({
	Name = "Scripts",
	PremiumOnly = false
})

local Tab2Utils = Tab2:AddSection({
	Name = "Utilities"
})

Tab2Utils:AddButton({
	Name = "Infinite Yield",
	Callback = function()
      	loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/refs/heads/master/source"))()
  	end    
})

Tab2Utils:AddButton({
	Name = "getcurrentpos",
	Callback = function()
		local playerCharacter = workspace:FindFirstChild(game.Players.LocalPlayer.Name)
		if playerCharacter then
			local rootPart = playerCharacter:FindFirstChild("HumanoidRootPart")
			if rootPart then
				toclipboard(cframeStr)

				OrionLib:MakeNotification({
					Name = "getcurrentpos",
					Content = "Copied current position in CFrame to your clipboard.",
					Time = 2
				})
			end
		end
	end    
})

local EasterEggs1 = Tab:AddSection({
	Name = "Easter Eggs"
})

local Endings1 = Tab:AddSection({
	Name = "Endings"
})

local Survival1 = Tab:AddSection({
	Name = "Survival"
})

local Areas1 = Tab:AddSection({
	Name = "Areas"
})

--# easter eggs

EasterEggs1:AddButton({
	Name = "Belgium",
	Callback = function()
      	workspace[game.Players.LocalPlayer.Name]:FindFirstChild("Torso").CFrame = CFrame.new(1003.70905, 103.967529, -8820.05469, -0.998895466, 7.54963523e-08, -0.0469873063, 7.39708952e-08, 1, 3.42041204e-08, 0.0469873063, 3.06906465e-08, -0.998895466)
  	end    
})

EasterEggs1:AddButton({
	Name = "Coolsville",
	Callback = function()
      	workspace[game.Players.LocalPlayer.Name]:FindFirstChild("Torso").CFrame = CFrame.new(-549.850708, 117.987137, 1004.92993, -0.997542202, -3.43022855e-09, -0.0700684339, -7.90727119e-12, 1, -4.8842832e-08, 0.0700684339, -4.87222316e-08, -0.997542202)
  	end    
})

--# endings

Endings1:AddButton({
	Name = "Airport",
	Callback = function()
      	workspace[game.Players.LocalPlayer.Name]:FindFirstChild("Torso").CFrame = CFrame.new(265.119812, 3.99999976, -187.175858, -0.0941031948, 1.95867305e-08, -0.995562434, -7.99011417e-08, 1, 2.72265019e-08, 0.995562434, 8.21086772e-08, -0.0941031948)
  	end    
})

Endings1:AddButton({
	Name = "Roblox HQ (Roof)",
	Callback = function()
      	workspace[game.Players.LocalPlayer.Name]:FindFirstChild("Torso").CFrame = CFrame.new(281.250488, 94.9999924, 157.650879, 0.933392167, 3.89288282e-08, -0.358858049, -6.58815296e-08, 1, -6.28785557e-08, 0.358858049, 8.23324626e-08, 0.933392167)
  	end    
})

Endings1:AddButton({
	Name = "Roblox HQ (Top)",
	Callback = function()
      	workspace[game.Players.LocalPlayer.Name]:FindFirstChild("Torso").CFrame = CFrame.new(292.120056, 140, 180.769638, -0.594564557, -2.60886646e-09, -0.804047883, 6.78087915e-08, 1, -5.3386831e-08, 0.804047883, -8.62634337e-08, -0.594564557)
  	end    
})

Endings1:AddButton({
	Name = "Roblox HQ (Bottom)",
	Callback = function()
      	workspace[game.Players.LocalPlayer.Name]:FindFirstChild("Torso").CFrame = CFrame.new(305.72052, 4, 160.836243, -0.0367551371, 8.92331986e-09, 0.999324322, 1.3900924e-08, 1, -8.41807779e-09, -0.999324322, 1.3582123e-08, -0.0367551371)
  	end    
})

--# survival

Survival1:AddButton({
	Name = "Bloxy Tower",
	Callback = function()
      	workspace[game.Players.LocalPlayer.Name]:FindFirstChild("Torso").CFrame = CFrame.new(396.946991, 61.9863167, -102.797661, -0.998575568, 1.55440105e-08, -0.053355936, 1.57786104e-08, 1, -3.97562516e-09, 0.053355936, -4.81184426e-09, -0.998575568)
        OrionLib:MakeNotification({
	        Name = "Information",
	        Content = "Bloxy Tower survives most weather! Only hug a wall during blizzard, and sit down during the hurricane.",
	        Image = "rbxassetid://4483345998",
	        Time = 5
        })
  	end    
})

Survival1:AddButton({
	Name = "Lighthouse (Bottom)",
	Callback = function()
      	workspace[game.Players.LocalPlayer.Name]:FindFirstChild("Torso").CFrame = CFrame.new(-815.58136, 76.9973297, -802.429688, 0.998662829, -4.87252183e-10, -0.0516965501, 1.7347794e-10, 1, -6.07402662e-09, 0.0516965501, 6.05693673e-09, 0.998662829)
        OrionLib:MakeNotification({
	        Name = "Information",
	        Content = "Lighthouse is safe from the tsunami and flood.",
	        Image = "rbxassetid://4483345998",
	        Time = 5
        })
  	end    
})

Survival1:AddButton({
    Name = "Lighthouse (Top)",
	Callback = function()
      	workspace[game.Players.LocalPlayer.Name]:FindFirstChild("Torso").CFrame = CFrame.new(-816.356262, 158.999542, -827.09613, -0.0103487484, -2.28614532e-08, 0.999946475, 4.8134936e-08, 1, 2.33608404e-08, -0.999946475, 4.83741118e-08, -0.0103487484)
        OrionLib:MakeNotification({
	        Name = "Information",
	        Content = "Lighthouse is safe from the tsunami and flood.",
	        Image = "rbxassetid://4483345998",
	        Time = 5
        })
  	end    
})

Survival1:AddButton({
	Name = "Tower",
	Callback = function()
      	workspace[game.Players.LocalPlayer.Name]:FindFirstChild("Torso").CFrame = CFrame.new(-95.4566879, 200.967239, 629.351685, 0.0145272836, -1.60681708e-08, -0.9998945, 1.44434997e-09, 1, -1.60488813e-08, 0.9998945, -1.21105093e-09, 0.0145272836)
        OrionLib:MakeNotification({
	        Name = "Information",
	        Content = "This tower appears to be taller than the flood when the game ends, so this is an alternative to the lighthouse.",
	        Image = "rbxassetid://4483345998",
	        Time = 5
        })
  	end    
})

--# areas 

Areas1:AddButton({
	Name = "RoMotors",
	Callback = function()
		workspace[game.Players.LocalPlayer.Name]:FindFirstChild("Torso").CFrame = CFrame.new(85.843956, 3.500000, -204.925522, 0.999870, -0.000000, 0.016143, 0.000000, 1.000000, -0.000000, -0.016143, 0.000000, 0.999870)
		OrionLib:MakeNotification({
			Name = "Information",
			Content = "This area allows you to spawn in cars.",
			Image = "rbxassetid://4483345998",
			Time = 5
		})
	end
})

EasterEggs1:AddButton({
	Name = "Random Spawn",
	Callback = function()
		local spawns = workspace:FindFirstChild("Map"):FindFirstChild("Spawns"):GetChildren()
		local validSpawns = {}

		for _, spawn in ipairs(spawns) do
			if spawn:IsA("SpawnLocation") then
				table.insert(validSpawns, spawn)
			end
		end

		if #validSpawns > 0 then
			local randomSpawn = validSpawns[math.random(1, #validSpawns)]
			local playerCharacter = workspace[game.Players.LocalPlayer.Name]
			if playerCharacter then
				local torso = playerCharacter:FindFirstChild("Torso") or playerCharacter:FindFirstChild("HumanoidRootPart")
				if torso then
					torso.CFrame = randomSpawn.CFrame
				end
			end
		end
	end    
})



--[[

Tab 2 CODE

]]--

local Tab2 = Window:MakeTab({
	Name = "Settings",
	PremiumOnly = false
})

local UI1 = Tab2:AddSection({
	Name = "UI"
})

UI1:AddButton({
	Name = "Reload UI",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/user2GX/roblox-scripts/refs/heads/main/scripts/survivetheend/main.lua"))()
        OrionLib:Destroy()
  	end    
})

UI1:AddButton({
	Name = "Destroy UI",
	Callback = function()
        OrionLib:Destroy()
  	end    
})

--[[

Tab 3 CODE
and some extras

]]--

local Tab3 = Window:MakeTab({
	Name = "Advanced",
	PremiumOnly = false
})

local Positions1 = Tab3:AddSection({
	Name = "Positions"
})

local SavedPositionLabel = Positions1:AddLabel("Saved Position: None")
local SavedCFrame = nil

Positions1:AddButton({
	Name = "Save position",
	Callback = function()
		local playerCharacter = workspace:FindFirstChild(game.Players.LocalPlayer.Name)
		if playerCharacter then
			local torso = playerCharacter:FindFirstChild("Torso") or playerCharacter:FindFirstChild("HumanoidRootPart")
			if torso then
				SavedCFrame = torso.CFrame
				SavedPositionLabel:Set("Saved Position: " .. tostring(SavedCFrame))
			end
		end
	end    
})

Positions1:AddButton({
	Name = "Teleport to saved position",
	Callback = function()
		if SavedCFrame then
			local playerCharacter = workspace:FindFirstChild(game.Players.LocalPlayer.Name)
			if playerCharacter then
				local torso = playerCharacter:FindFirstChild("Torso") or playerCharacter:FindFirstChild("HumanoidRootPart")
				if torso then
					torso.CFrame = SavedCFrame
				end
			end
		end
	end    
})

--[[

Tab 4
players

]]--

local PlayersTab = Window:MakeTab({
	Name = "Players",
	PremiumOnly = false
})

local TeleportSection = PlayersTab:AddSection({
	Name = "Teleport"
})

local PlayerList = {}
local PlayerDropdown

local function UpdatePlayerList()
	PlayerList = {}
	for _, player in pairs(game.Players:GetPlayers()) do
		table.insert(PlayerList, player.Name)
	end
	if PlayerDropdown then
		PlayerDropdown:Refresh(PlayerList, true)
	end
end

PlayerDropdown = TeleportSection:AddDropdown({
	Name = "Select Player",
	Default = "",
	Options = PlayerList,
	Callback = function(selectedPlayer)
		local localPlayer = game.Players.LocalPlayer
		local targetPlayer = game.Players:FindFirstChild(selectedPlayer)

		if targetPlayer and localPlayer then
			local targetCharacter = targetPlayer.Character
			local localCharacter = localPlayer.Character
			if targetCharacter and localCharacter then
				local targetTorso = targetCharacter:FindFirstChild("Torso") or targetCharacter:FindFirstChild("HumanoidRootPart")
				local localTorso = localCharacter:FindFirstChild("Torso") or localCharacter:FindFirstChild("HumanoidRootPart")
				if targetTorso and localTorso then
					localTorso.CFrame = targetTorso.CFrame
				end
			end
		end
	end    
})

game.Players.PlayerAdded:Connect(UpdatePlayerList)
game.Players.PlayerRemoving:Connect(UpdatePlayerList)
UpdatePlayerList()

--[[

Tab 5 CODE
extras

]]--

local Tab5 = Window:MakeTab({
	Name = "Extras"
})

local Tab5_MapSection = Tab5:AddSection({
	Name = "Map"
})

Tab5_MapSection:AddToggle({
	Name = "Enable ramp by dock",
	Default = false,
	Callback = function(Value) 
		print("current ramp status: " .. if Value == true then return "enabled" else return "disabled" end)
		isRampEnabled = Value
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
