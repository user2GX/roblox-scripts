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
game.StarterGui:SetCore("SendNotification", {
    Title = "2gxHub";
    Text = "You are using the old loadstring! The new one was copied to your clipboard.";
    Icon = "rbxassetid://89450855285797";
    Duration = 5;
})
toclipboard("""
loadstring(game:HttpGet("https://raw.githubusercontent.com/user2GX/roblox-scripts/main/main.lua"))()
""")