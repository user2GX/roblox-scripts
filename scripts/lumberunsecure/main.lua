--[[

2gxHub
by 2gx, me

Legend:
- means complete
* means in development

Supported Games:
    - Lumber Unsecure
    - Survive The End of Roblox
    * The Strongest Battlegrounds

]]
print("2gxHub loaded.")
if game.PlaceId == 10042772221 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/user2GX/roblox-scripts/main/scripts/lumberunsecure/lu.lua"))()
elseif game.PlaceId == 4261560642 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/user2GX/roblox-scripts/main/scripts/survivetheend/main.lua"))()
elseif game.PlaceId == 10449761463 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/user2GX/roblox-scripts/main/scripts/tsb/main.lua"))()
else
    game.StarterGui:SetCore("SendNotification", {
        Title = "2gxHub";
        Text = "2gxHub does not support this game!";
        Icon = "rbxassetid://89450855285797";
        Duration = 2;
    })
end
