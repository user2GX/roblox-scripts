--[[
    made by 2gx for lumber unsecure
    2024                                                                                                                                                                        
]]--
print("Lumber Unsecure v1.0.0")
print("script by 2gx")

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/user2GX/roblox-scripts/main/scripts/lumberunsecure/source.lua"))()
local Player = game:GetService("Players").LocalPlayer

local Window = Library.CreateLib("2gxHub", "Synapse")

-- land tab
local LandTab = Window:NewTab("Land")
local LandTabS = LandTab:NewSection("Land")

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
    for s, d in pairs(game.workspace.Properties:GetChildren()) do         if d:FindFirstChild("Owner") and d:FindFirstChild("OriginSquare") and d.Owner.Value == Player then             local PlotPos = d.OriginSquare.Position             game:GetService("ReplicatedStorage").PropertyPurchasing.ClientExpandedProperty:FireServer(d,                 CFrame.new(PlotPos.X + 40, PlotPos.Y, PlotPos.Z))             game:GetService("ReplicatedStorage").PropertyPurchasing.ClientExpandedProperty:FireServer(d,                 CFrame.new(PlotPos.X - 40, PlotPos.Y, PlotPos.Z))             game:GetService("ReplicatedStorage").PropertyPurchasing.ClientExpandedProperty:FireServer(d,                 CFrame.new(PlotPos.X, PlotPos.Y, PlotPos.Z + 40))             game:GetService("ReplicatedStorage").PropertyPurchasing.ClientExpandedProperty:FireServer(d,                 CFrame.new(PlotPos.X, PlotPos.Y, PlotPos.Z - 40))             game:GetService("ReplicatedStorage").PropertyPurchasing.ClientExpandedProperty:FireServer(d,                 CFrame.new(PlotPos.X + 40, PlotPos.Y, PlotPos.Z + 40))             game:GetService("ReplicatedStorage").PropertyPurchasing.ClientExpandedProperty:FireServer(d,                 CFrame.new(PlotPos.X + 40, PlotPos.Y, PlotPos.Z - 40))             game:GetService("ReplicatedStorage").PropertyPurchasing.ClientExpandedProperty:FireServer(d,                 CFrame.new(PlotPos.X - 40, PlotPos.Y, PlotPos.Z + 40))             game:GetService("ReplicatedStorage").PropertyPurchasing.ClientExpandedProperty:FireServer(d,                 CFrame.new(PlotPos.X - 40, PlotPos.Y, PlotPos.Z - 40))             game:GetService("ReplicatedStorage").PropertyPurchasing.ClientExpandedProperty:FireServer(d,                 CFrame.new(PlotPos.X + 80, PlotPos.Y, PlotPos.Z))             game:GetService("ReplicatedStorage").PropertyPurchasing.ClientExpandedProperty:FireServer(d,                 CFrame.new(PlotPos.X - 80, PlotPos.Y, PlotPos.Z))             game:GetService("ReplicatedStorage").PropertyPurchasing.ClientExpandedProperty:FireServer(d,                 CFrame.new(PlotPos.X, PlotPos.Y, PlotPos.Z + 80))             game:GetService("ReplicatedStorage").PropertyPurchasing.ClientExpandedProperty:FireServer(d,                 CFrame.new(PlotPos.X, PlotPos.Y, PlotPos.Z - 80))             game:GetService("ReplicatedStorage").PropertyPurchasing.ClientExpandedProperty:FireServer(d,                 CFrame.new(PlotPos.X + 80, PlotPos.Y, PlotPos.Z + 80))             game:GetService("ReplicatedStorage").PropertyPurchasing.ClientExpandedProperty:FireServer(d,                 CFrame.new(PlotPos.X + 80, PlotPos.Y, PlotPos.Z - 80))             game:GetService("ReplicatedStorage").PropertyPurchasing.ClientExpandedProperty:FireServer(d,                 CFrame.new(PlotPos.X - 80, PlotPos.Y, PlotPos.Z + 80))             game:GetService("ReplicatedStorage").PropertyPurchasing.ClientExpandedProperty:FireServer(d,                 CFrame.new(PlotPos.X - 80, PlotPos.Y, PlotPos.Z - 80))             game:GetService("ReplicatedStorage").PropertyPurchasing.ClientExpandedProperty:FireServer(d,                 CFrame.new(PlotPos.X + 40, PlotPos.Y, PlotPos.Z + 80))             game:GetService("ReplicatedStorage").PropertyPurchasing.ClientExpandedProperty:FireServer(d,                 CFrame.new(PlotPos.X - 40, PlotPos.Y, PlotPos.Z + 80))             game:GetService("ReplicatedStorage").PropertyPurchasing.ClientExpandedProperty:FireServer(d,                 CFrame.new(PlotPos.X + 80, PlotPos.Y, PlotPos.Z + 40))             game:GetService("ReplicatedStorage").PropertyPurchasing.ClientExpandedProperty:FireServer(d,                 CFrame.new(PlotPos.X + 80, PlotPos.Y, PlotPos.Z - 40))             game:GetService("ReplicatedStorage").PropertyPurchasing.ClientExpandedProperty:FireServer(d,                 CFrame.new(PlotPos.X - 80, PlotPos.Y, PlotPos.Z + 40))             game:GetService("ReplicatedStorage").PropertyPurchasing.ClientExpandedProperty:FireServer(d,                 CFrame.new(PlotPos.X - 80, PlotPos.Y, PlotPos.Z - 40))             game:GetService("ReplicatedStorage").PropertyPurchasing.ClientExpandedProperty:FireServer(d,                 CFrame.new(PlotPos.X + 40, PlotPos.Y, PlotPos.Z - 80))             game:GetService("ReplicatedStorage").PropertyPurchasing.ClientExpandedProperty:FireServer(d,                 CFrame.new(PlotPos.X - 40, PlotPos.Y, PlotPos.Z - 80))         end     end
end)

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
ItemsTab_SpawnSection:NewTextBox("Item", "Item", function(txt)
	itemChoice = txt
end)

ItemsTab_SpawnSection:NewSlider("Item Amount", "Item Amount", 100, 0, function(a)
    itemAmount = a
end)

ItemsTab_SpawnSection:NewButton("Spawn Blueprint", "Spawn Blueprint", function()
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

SettingsTab_UISection:NewButton("Reload UI", "Reloads the UI.", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/user2GX/roblox-scripts/main/scripts/lumberunsecure/main.lua"))()
    Window:Destroy()
end)