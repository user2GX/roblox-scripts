--[[

2gxHub
by 2gx, me

Supported Games:
    - Lumber Unsecure
    - Survive The End of Roblox

]]
print("2gxHub loaded.")
if game.PlaceId == 10042772221 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/user2GX/roblox-scripts/main/scripts/lumberunsecure/lu.lua"))()
elseif game.PlaceId == 4261560642 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/user2GX/roblox-scripts/main/scripts/survivetheend/main.lua"))()
else
    game.StarterGui:SetCore("SendNotification", {
        Title = "2gxHub";
        Text = "2gxHub does NOT support this game!";
        Icon = "rbxassetid://112162358356932";
        Duration = 2;
    })
end
