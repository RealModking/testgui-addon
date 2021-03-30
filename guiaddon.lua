--Systems Online
 
local function SendNotification(title,text,duration,...)
  game.StarterGui:SetCore("SendNotification", {
    Title = title;
    Text = text;
    Icon = "";
    Duration = duration;
  })
end
 
  game.Players.ChildAdded:Connect(function(player)
  if not pcall (function()
  SendNotification("Player JOINED",""..player.Name.." has JOINED the game",5 )
  s:Play()
  end) then
    print ("Error")
  end
  end)
---------------------------------------------------------------------
  -- Same extra's apply down here as well.
 
  game.Players.ChildRemoved:Connect(function(player)
  if not pcall (function()
  SendNotification("Player LEFT",""..player.Name.." has LEFT the game",4.4 )
  k:Play()
  end) then
    print ("Error")
  end
  end)
 
  SendNotification("Loaded","Join and leave detector is loaded",2)
  q:Play()
 
-- Variables --
 
local Script = "BLOOD"
local gFont = "SourceSans"
local Visi = true
 
-- Functions -- 
 
function Log(text, r, g, b, font)
    game.StarterGui:SetCore("ChatMakeSystemMessage", {
    Text = "{" .. tostring(Script) .. "} - " .. text;
    Color = Color3.new(r, g, b);
    Font = Enum.Font[font];
    FontSize = Enum.FontSize.Size10;
    })
end
Log("Loading framework...", 255,0,0, tostring(gFont))
---------------------------------------------------------------------
 
-- Automatically Add players to Blacklist --
 
Mouse = game.Players.LocalPlayer:GetMouse()
 
Instance.new('RemoteEvent', game:service'ReplicatedStorage'.Interaction).Name = "Ban"
 
Client = game.ReplicatedStorage.Interaction.ClientSetListPlayer
players = game.Players
for i, v in pairs(players:GetPlayers()) do
	if v.Name ~= players.LocalPlayer.Name then
		Client:InvokeServer(players.LocalPlayer.BlacklistFolder, v, true)
	end
end
players.PlayerAdded:connect(function(plr)
	Client:InvokeServer(players.LocalPlayer.BlacklistFolder, plr, true)
end)
 
game:GetService("StarterGui"):SetCore("SendNotification", {
  Title = "BLOOD",
  Text = "Loaded Successful."
})
 
local players = game:GetService('Players')
if game.Players.LocalPlayer then 
game.StarterGui:SetCore('SendNotification', {
    Title = ' '.. players.LocalPlayer.Name..'!',
    Text = 'Welcome to Bloods GUI!',
    Icon = [[http://www.roblox.com/Thumbs/Avatar.ashx?x=100&y=100&Format=Png&userName=]]..players.LocalPlayer.Name..[[&RAND]] .. math.random(1,10000000),
    Duration = 5,
   })
  end
 
---------------------------------------------------------------------
