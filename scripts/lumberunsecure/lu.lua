--[[
    made by 2gx for lumber unsecure
    2024                                                                                                                                                                        
]]--
print("Lumber Unsecure v1.0.0")
print("script by 2gx")

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/user2GX/roblox-scripts/main/scripts/lumberunsecure/source.lua"))()
local Player = game:GetService("Players").LocalPlayer

local Window = Library.CreateLib("2gxHub", "DarkTheme")
getgenv().Dragger = false

-- player tab

local PlayerTab = Window:NewTab("Player")
local PlayerTab_TeleportSection = PlayerTab:NewSection("Teleport")
local PlayerTab_UtilitiesSection = PlayerTab:NewSection("Utilities")

local playersList = {}

local playerDropdown = PlayerTab_TeleportSection:NewDropdown("Players", "Select a player to teleport to", playersList, function(selectedPlayer)
    local player = game.Players:FindFirstChild(selectedPlayer)
    if player and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = player.Character.HumanoidRootPart.CFrame
    end
end)

local function updatePlayerDropdown()
    local updatedPlayersList = {}
    for _, player in pairs(game.Players:GetPlayers()) do
        table.insert(updatedPlayersList, player.Name)
    end
    playerDropdown:Refresh(updatedPlayersList)
end

game.Players.PlayerAdded:Connect(updatePlayerDropdown)
game.Players.PlayerRemoving:Connect(updatePlayerDropdown)
updatePlayerDropdown()

function Dragger()
    game.Workspace.ChildAdded:Connect(function(a)
        if a.Name == "Dragger" and getgenv().Dragger then
            a.Color = Color3.fromRGB(TheR or 255, TheG or 255, TheB or 255)
            local bg = a:WaitForChild("BodyGyro")
            local bp = a:WaitForChild("BodyPosition")

            while a and getgenv().Dragger do
                task.wait()
                bp.P = 120000
                bp.D = 1000
                bp.maxForce = Vector3.new(math.huge, math.huge, math.huge)
                bg.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
            end

            if a then
                bp.P = 10000
                bp.D = 800
                bp.maxForce = Vector3.new(17000, 17000, 17000)
                bg.maxTorque = Vector3.new(200, 200, 200)
            end
        end
    end)
end

Dragger()

-- land tab
local LandTab = Window:NewTab("Land")
local LandTabS = LandTab:NewSection("Land")
local LandTab_TeleportSection = LandTab:NewSection("Teleport")

local propertyList = {}

local function expandProperty(property, plotPos)
    local repStorage = game:GetService("ReplicatedStorage")
    repStorage.PropertyPurchasing.ClientExpandedProperty:FireServer(property, CFrame.new(plotPos.X + 40, plotPos.Y, plotPos.Z))
    repStorage.PropertyPurchasing.ClientExpandedProperty:FireServer(property, CFrame.new(plotPos.X - 40, plotPos.Y, plotPos.Z))
    repStorage.PropertyPurchasing.ClientExpandedProperty:FireServer(property, CFrame.new(plotPos.X, plotPos.Y, plotPos.Z + 40))
    repStorage.PropertyPurchasing.ClientExpandedProperty:FireServer(property, CFrame.new(plotPos.X, plotPos.Y, plotPos.Z - 40))
    repStorage.PropertyPurchasing.ClientExpandedProperty:FireServer(property, CFrame.new(plotPos.X + 40, plotPos.Y, plotPos.Z + 40))
    repStorage.PropertyPurchasing.ClientExpandedProperty:FireServer(property, CFrame.new(plotPos.X + 40, plotPos.Y, plotPos.Z - 40))
    repStorage.PropertyPurchasing.ClientExpandedProperty:FireServer(property, CFrame.new(plotPos.X - 40, plotPos.Y, plotPos.Z + 40))
    repStorage.PropertyPurchasing.ClientExpandedProperty:FireServer(property, CFrame.new(plotPos.X - 40, plotPos.Y, plotPos.Z - 40))
    repStorage.PropertyPurchasing.ClientExpandedProperty:FireServer(property, CFrame.new(plotPos.X + 80, plotPos.Y, plotPos.Z))
    repStorage.PropertyPurchasing.ClientExpandedProperty:FireServer(property, CFrame.new(plotPos.X - 80, plotPos.Y, plotPos.Z))
    repStorage.PropertyPurchasing.ClientExpandedProperty:FireServer(property, CFrame.new(plotPos.X, plotPos.Y, plotPos.Z + 80))
    repStorage.PropertyPurchasing.ClientExpandedProperty:FireServer(property, CFrame.new(plotPos.X, plotPos.Y, plotPos.Z - 80))
    repStorage.PropertyPurchasing.ClientExpandedProperty:FireServer(property, CFrame.new(plotPos.X + 80, plotPos.Y, plotPos.Z + 80))
    repStorage.PropertyPurchasing.ClientExpandedProperty:FireServer(property, CFrame.new(plotPos.X + 80, plotPos.Y, plotPos.Z - 80))
    repStorage.PropertyPurchasing.ClientExpandedProperty:FireServer(property, CFrame.new(plotPos.X - 80, plotPos.Y, plotPos.Z + 80))
    repStorage.PropertyPurchasing.ClientExpandedProperty:FireServer(property, CFrame.new(plotPos.X - 80, plotPos.Y, plotPos.Z - 80))
    repStorage.PropertyPurchasing.ClientExpandedProperty:FireServer(property, CFrame.new(plotPos.X + 40, plotPos.Y, plotPos.Z + 80))
    repStorage.PropertyPurchasing.ClientExpandedProperty:FireServer(property, CFrame.new(plotPos.X - 40, plotPos.Y, plotPos.Z + 80))
    repStorage.PropertyPurchasing.ClientExpandedProperty:FireServer(property, CFrame.new(plotPos.X + 80, plotPos.Y, plotPos.Z + 40))
    repStorage.PropertyPurchasing.ClientExpandedProperty:FireServer(property, CFrame.new(plotPos.X + 80, plotPos.Y, plotPos.Z - 40))
    repStorage.PropertyPurchasing.ClientExpandedProperty:FireServer(property, CFrame.new(plotPos.X - 80, plotPos.Y, plotPos.Z + 40))
    repStorage.PropertyPurchasing.ClientExpandedProperty:FireServer(property, CFrame.new(plotPos.X - 80, plotPos.Y, plotPos.Z - 40))
    repStorage.PropertyPurchasing.ClientExpandedProperty:FireServer(property, CFrame.new(plotPos.X + 40, plotPos.Y, plotPos.Z - 80))
    repStorage.PropertyPurchasing.ClientExpandedProperty:FireServer(property, CFrame.new(plotPos.X - 40, plotPos.Y, plotPos.Z - 80))
end

LandTabS:NewButton("Free Land", "Free Land", function()
    for i, v in next, game.Workspace.Properties:GetChildren() do
         if v:FindFirstChild("Owner") and v.Owner.Value == nil then
             game:GetService("ReplicatedStorage").PropertyPurchasing.ClientPurchasedProperty:FireServer(v,v.OriginSquare.Position)
             Player.Character.HumanoidRootPart.CFrame = v.OriginSquare.CFrame + Vector3.new(0, 3.1, -5)
             break
         end
     end
end)

LandTabS:NewButton("Max Land", "Max Land", function()
    for s, d in pairs(game.workspace.Properties:GetChildren()) do
         if d:FindFirstChild("Owner") and d:FindFirstChild("OriginSquare") and d.Owner.Value == Player then
             local PlotPos = d.OriginSquare.Position
             expandProperty(d, PlotPos)
         end
     end
end)

LandTab_TeleportSection:NewButton("Teleport to your plot", "Teleports you to your plot.", function()
    local player = game.Players.LocalPlayer
    for _, property in pairs(game.Workspace.Properties:GetChildren()) do
        local ownerValue = property:FindFirstChild("Owner")
        if ownerValue and ownerValue.Value == player then
            local primaryPart = property.PrimaryPart
            if primaryPart then
                player.Character.HumanoidRootPart.CFrame = primaryPart.CFrame + Vector3.new(0, 5, 0)
            end
            break
        end
    end
end)

local propertyDropdown = LandTab_TeleportSection:NewDropdown("Properties", "Select a property", propertyList, function(selectedProperty)
    local player = game.Players.LocalPlayer
    for _, property in pairs(game.Workspace.Properties:GetChildren()) do
        local ownerValue = property:FindFirstChild("Owner")
        if ownerValue and ownerValue.Value and ownerValue.Value.Name == selectedProperty then
            local primaryPart = property.PrimaryPart
            if primaryPart then
                player.Character.HumanoidRootPart.CFrame = primaryPart.CFrame + Vector3.new(0, 5, 0)
            end
        end
    end
end)

local function updatePropertyDropdown()
    local updatedPropertyList = {}
    for _, property in pairs(game.Workspace.Properties:GetChildren()) do
        local ownerValue = property:FindFirstChild("Owner")
        if ownerValue and ownerValue.Value then
            table.insert(updatedPropertyList, ownerValue.Value.Name)
        end
    end
    propertyDropdown:Refresh(updatedPropertyList)
end

game.Players.PlayerAdded:Connect(updatePropertyDropdown)
game.Players.PlayerRemoving:Connect(updatePropertyDropdown)

for _, property in pairs(game.Workspace.Properties:GetChildren()) do
    local ownerValue = property:FindFirstChild("Owner")
    if ownerValue then
        ownerValue.Changed:Connect(updatePropertyDropdown)
    end
end

updatePropertyDropdown()

-- blueprint tab
local BlueprintTab = Window:NewTab("Blueprints")
local BlueprintTabS = BlueprintTab:NewSection("Blueprints")

local itemChoice
local itemAmount

BlueprintTabS:NewButton("Get all blueprints", "Get all blueprints", function()
    for i,v in pairs(game.ReplicatedStorage.Purchasables.Structures.BlueprintStructures:GetChildren()) do
        local clone = v:Clone()
        clone.Parent = Player.PlayerBlueprints.Blueprints
    end
end)

-- items tab
local ItemsTab = Window:NewTab("Items")
local ItemsTab_SpawnSection = ItemsTab:NewSection("Spawn")
local ItemsTab_TeleportSection = ItemsTab:NewSection("Teleport")
local itemChoice
local tpItemChoice
local itemDropdown
local tpItemDropdown

local function updateObjDropdown()
    local options = {}

    local purchasables = game:GetService("ReplicatedStorage"):FindFirstChild("Purchasables")
    if purchasables then
        local otherFolder = purchasables:FindFirstChild("Other")
        if otherFolder then
            for _, item in ipairs(otherFolder:GetChildren()) do
                if item:IsA("Folder") and item.Name ~= "Gifts" then
                    table.insert(options, item.Name)
                end
            end
        end

        local toolsFolder = purchasables:FindFirstChild("Tools")
        if toolsFolder then
            local allToolsFolder = toolsFolder:FindFirstChild("AllTools")
            if allToolsFolder then
                for _, item in ipairs(allToolsFolder:GetChildren()) do
                    if item:IsA("Folder") then
                        table.insert(options, item.Name)
                    end
                end
            end
        end
    end

    if itemDropdown then
        itemDropdown:Refresh(options)
    else
        itemDropdown = ItemsTab_SpawnSection:NewDropdown("Object", "Select an object", options, function(selected)
            itemChoice = selected
        end)
        tpItemDropdown = ItemsTab_TeleportSection:NewDropdown("Object", "Select an object", options, function(selected)
            tpItemChoice = selected
        end)
    end
end

updateObjDropdown()

ItemsTab_SpawnSection:NewSlider("Object count", "Amount of objects", 100, 0, function(a) 
    itemAmount = a
end)

ItemsTab_SpawnSection:NewButton("Spawn object", "Spawns the object", function()
    for i = 1, itemAmount do
        game:GetService("ReplicatedStorage").PlaceStructure.ClientPlacedBlueprint:FireServer("Floor1Tiny", Player.Character.Head.CFrame, Player)
        task.wait()
    end
    Added = game:GetService("Workspace").PlayerModels.ChildAdded:Connect(function(v)
        local Owner, Type = v:WaitForChild("Owner"), v:WaitForChild("Type")
        if Owner.Value == Player and Type.Value == "Blueprint" then
            game:GetService("ReplicatedStorage").PlaceStructure.ClientPlacedStructure:FireServer(itemChoice, Player.Character.Head.CFrame, Player, nil, v, true)
        end
    end)
    task.wait(1)
    Added:Disconnect()
end)

ItemsTab_TeleportSection:NewButton("Bring wood", "Bring wood", function()
    for _, Object in pairs(game.Workspace.PlayerModels:GetChildren()) do
        if Object:findFirstChild("Owner") then
            if Object.Owner.Value == Player and if Object.Name = tpItemChoice then
                Object:MoveTo(game.Players.LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0, 20, 0))
                for i=1,100 do
                    game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(Object)
                end
            end
        end
    end
end)
-- wood tab
local WoodTab = Window:NewTab("Wood")
local WoodTabS = WoodTab:NewSection("Wood")
local WoodTabSb = WoodTab:NewSection("Bring")

WoodTabS:NewButton("Sell wood", "Sell wood", function()
    for _, Log in pairs(workspace.LogModels:GetChildren()) do
        if Log.Name:sub(1, 6) == "Loose_" and Log:findFirstChild("Owner") then
            if Log.Owner.Value == Player then
                for i,v in pairs(Log:GetChildren()) do
                    if v.Name=="WoodSection" then
                        spawn(function()
                            for i=1,10 do
                                wait()
                                v.CFrame=CFrame.new(Vector3.new(315, -0.296, 85.791))*CFrame.Angles(math.rad(90),0,0)
                            end
                        end)
                    end
                end
                spawn(function()
                    for i=1,20 do
                        wait()
                        game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(Log)
                    end
                end)
            end
        end
    end
end)

WoodTabS:NewButton("Sell planks", "Sell planks", function()
	for _, Plank in pairs(game.Workspace.PlayerModels:GetChildren()) do
		if Plank.Name=="Plank" and Plank:findFirstChild("Owner") then
			if Plank.Owner.Value == Player then
				for i,v in pairs(Plank:GetChildren()) do
					if v.Name=="WoodSection" then
						spawn(function()
							for i=1,10 do
								wait()
								v.CFrame=CFrame.new(Vector3.new(315, -0.296, 85.791))*CFrame.Angles(math.rad(90),0,0)
							end
						end)
					end
				end
				spawn(function()
					for i=1,20 do
						wait()
						game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(Plank)
					end
				end)
			end
		end
	end
end)

WoodTabSb:NewButton("Bring wood", "Bring wood", function()
    for _, Log in pairs(game.Workspace.LogModels:GetChildren()) do
        if Log.Name:sub(1, 6) == "Loose_" and Log:findFirstChild("Owner") then
            if Log.Owner.Value == Player then
                Log:MoveTo(game.Players.LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0, 20, 0))
                for i=1,100 do
                    game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(Log)
                end
            end
        end
    end
end)

WoodTabSb:NewButton("Move planks", "Move planks", function()
	for _, Plank in pairs(game.Workspace.PlayerModels:GetChildren()) do
		if Plank.Name=="Plank" and Plank:findFirstChild("Owner") then
			if Plank.Owner.Value == game.Players.LocalPlayer then
				sendNotice = game.ReplicatedStorage.Notices.SendUserNotice
				sendNotice:Fire("Please click where you want the planks to move to.")
				local ButtonPress
				ButtonPress = game.Players.LocalPlayer:GetMouse().Button1Down:Connect(function()
					Square = game.Players.LocalPlayer:GetMouse().Target
					if (Square.Name == "OriginSquare" or Square.Name == "Square") then
						ButtonPress:Disconnect()
						Plank:MoveTo(Square.Position)
						for i=1,100 do
							game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(Plank)
						end
					end
				end)
			end
		end
	end
end)

-- settings tab

local SettingsTab = Window:NewTab("Settings")
local SettingsTab_UISection = SettingsTab:NewSection("UI")

SettingsTab_UISection:NewButton("Destroy UI", "Destroys the UI.", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/user2GX/roblox-scripts/main/scripts/lumberunsecure/lu.lua"))()
    wait()
    for _, screenGui in pairs(game:GetService("CoreGui"):GetChildren()) do
        if screenGui:IsA("ScreenGui") and screenGui.Name:match("^%d+$") then
            local mainFrame = screenGui:FindFirstChild("Main")
            if mainFrame and mainFrame:IsA("Frame") then
                local pagesFrame = mainFrame:FindFirstChild("pages")
                if pagesFrame and pagesFrame:IsA("Frame") then
                    local pagesFolder = pagesFrame:FindFirstChild("Pages") 
                    if pagesFolder and pagesFolder:IsA("Folder") then
                        local mainHeader = mainFrame:FindFirstChild("MainHeader")
                        if mainHeader then
                            local title = mainHeader:FindFirstChild("title")
                            if title and title.Text == "2gxHub" then
                                screenGui:Destroy()
                            end
                        end
                    end
                end
            end
        end
    end
end)
