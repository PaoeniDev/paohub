--Check
repeat wait()
until game:IsLoaded()

-- Core
local ver = "1.3"
local player = game.Players.LocalPlayer
local char = player.Character
local mouse = player:GetMouse()
if not char or not char.Parent then
   char = player.CharacterAdded:wait()
end
player.CharacterAdded:Connect(function(character)
   char = character
end)
if not player:FindFirstChild("PaoHub") then
   error("Dont bypasing code!")
   return;
end

-- Init
local UserInputService = game:GetService("UserInputService")
local PaoLib = loadstring(game:HttpGet "https://raw.githubusercontent.com/PaoBlox/paohub/main/tplowerserver.lua")()
local DiscordLib = loadstring(game:HttpGet "https://raw.githubusercontent.com/PaoBlox/paohub/main/discordui.lua")()
local Window = DiscordLib:Window("Pao Hub")
local Server = Window:Server("Pao Hub", "http://www.roblox.com/asset/?id=10173339222")
print("Loaded PaoHub v"..ver)

-- Game & Script List
local success, list = pcall(function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/PaoBlox/paohub/main/list.lua"))()
end)
if not success then
   player:Kick("Error while load script! Please rejoin")
end
local ScriptTable = _G.ScriptTable
local GameTable = _G.GameTable

-- Basic Function
local function Webhook(title, message, type)
   local color
   if type == "Basic" then
      color = 5763719
   else
      color = 15548997
   end
   local webhookcheck =
   is_sirhurt_closure and "Sirhurt" or pebc_execute and "ProtoSmasher" or syn and "Synapse X" or
   secure_load and "Sentinel" or
   KRNL_LOADED and "Krnl" or
   SONA_LOADED and "Sona" or
   "Kid with shit exploit"
   local url = "https://discord.com/api/webhooks/1007552904665763861/-onOmuGUUB--3j0gfsM38mah5Qwyz_zsOnsmeOOlgCwXP7ZhsETBaP3Fzqp_nUhJaUa8"
   local data = {
   ["embeds"] = {{
      ["author"] = {
         ["name"] = title,
         ["icon_url"] = "https://www.roblox.com/headshot-thumbnail/image?userId="..player.UserId.."&width=100&height=100&format=png"
     },
     ["color"] = color,
     ["fields"] = {
      {
      ["name"] = "Player Name:",
      ["value"] = player.Name,
      ["inline"] = true
      },
      {
      ["name"] = "User ID:",
      ["value"] = player.UserId,
      ["inline"] = true
      },
      {
         ["name"] = "Message:",
         ["value"] = message,
         ["inline"] = true
         },
     }
   }},

   }
local newdata = game:GetService("HttpService"):JSONEncode(data)

local headers = {
["content-type"] = "application/json"
}
request = http_request or request or HttpPost or syn.request
local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
request(abcdef)
end

local function errorMsg(message)
   DiscordLib:Notification("Error Notification", message, "Okay!")
end

local function basicMsg(message)
   DiscordLib:Notification("Notification", message, "Okay!")
end

-- Main
local Main = Server:Channel("Main Script")

local Hide = Main:Bind(
   "Hide Gui",
   Enum.KeyCode.P,
   function()
      DiscordLib:Hide()
   end
)

local AntiAFK = Main:Button(
   "Anti AFK (Non-Active)",
   function(btn)
      local success, errorMessage = pcall(function()
         local vu = game:GetService("VirtualUser")
			game:GetService("Players").LocalPlayer.Idled:Connect(function()
				vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
				wait(1)
				vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
			end)
			--print("Anti AFK Activated")
      end)
      if success then
         basicMsg("Anti AFK Successfully Active")
         btn.Text = "Anti AFK (Active)"
         _G.AntiAFKAKTIF = true
      end
   end
)

if _G.AntiAFKAKTIF then
   AntiAFK.Text = "Anti AFK (Active)"
end

local FPSLimit = Main:Textbox(
   "Set FPS Limit",
   "Default: 60 (Number Only)",
   true,
   function(fps)
		if tonumber(fps) then
		   local success, errorMessage = pcall(function()
				setfpscap(tonumber(fps))
			end)
			if not success then
            basicMsg("Your Executor is doesnt support!")
			else
            basicMsg("Changed Limit FPS to "..fps)
			end
		else
         errorMsg("Number Only!")
		end
   end
)

local WalkSpeed = Main:Slider(
   "WalkSpeed",
   1,
   1000,
   16,
   function(value)
      repeat wait()
         player.Character.Humanoid.WalkSpeed = value
      until player.Character
   end
)

local JumpPower = Main:Slider(
   "JumpPower",
   1,
   1000,
   16,
   function(value)
      repeat wait()
         player.Character.Humanoid.JumpPower = value
      until player.Character
   end
)

local ESP = Main:Button(
   "Player ESP (Non-Active)",
   function(btn)
      local success, errorMessage = pcall(function()
         if _G.ESPAKTIF == false then
            loadstring(game:HttpGet('https://raw.githubusercontent.com/PaoBlox/paohub/main/esp.lua'))()
         end
      end)
      if success then
         basicMsg("Anti AFK Successfully Active")
         btn.Text = "Anti AFK (Active)"
         _G.ESPAKTIF = true
      else
         errorMsg("Error while execute script!")
      end
   end
)

local TPKey = Main:Bind(
   "Click + Key Teleport (Keybind)",
   Enum.KeyCode.V,
   function()
      
   end
)

Main:Toggle(
   "Click + Key Teleport (Toggle)",
   false,
   function(toggle)
      _G.tpactive = toggle
   end
)

local ClickDeleteKey = Main:Bind(
   "Click + Key Delete (Keybind)",
   Enum.KeyCode.R,
   function()
      
   end
)

Main:Toggle(
   "Click + Key Delete (Toggle)",
   false,
   function(toggle)
      _G.dcactive = toggle
   end
)

pcall(function()
   if KRNL_LOADED then
      Main:Button(
         "Save Game / Instance",
         function(btn)
            loadstring(game:HttpGet("https://raw.githubusercontent.com/PaoBlox/paohub/main/savegame.lua"))()
         end
)
   end
end)

Main:Button(
   "Teleport to Lower Server",
   function()
      local success, errorMessage = pcall(function()
         PaoLib:TeleportLS()
      end)
      if not success then
         errorMsg("Error when Teleporting!")
         error(errorMessage)
      end
   end
)

Main:Button(
   "Rejoin",
   function()
      local success, errorMessage = pcall(function()
         PaoLib:Rejoin()
      end)
      if not success then
         errorMsg("Error when Teleporting!")
         error(errorMessage)
      end
   end
)

if _G.ESPAKTIF then
   ESP.Text = "Player ESP (Active)"
end

local function isKeyDown(key)
	return UserInputService:IsKeyDown(key)
end

mouse.Button1Down:Connect(function()
   if isKeyDown(TPKey:Key()) and _G.tpactive then
      char:MoveTo(mouse.Hit.p)
   end
   if isKeyDown(ClickDeleteKey:Key()) and _G.dcactive then
      local obj = mouse.Target
      obj:Destroy()
   end
end)

-- Other
local Other = Window:Server("Other", "http://www.roblox.com/asset/?id=6031075938")
local reportScript = Other:Channel("Report Script Error")
reportScript:Textbox(
   "Script Error",
   "Name of the Script:",
   true,
   function(scriptName)
      local success, errorMessage = pcall(function()
         Webhook("Report Script", "Error Script: "..scriptName, "Error")
         basicMsg("Script Error has been reported!")
      end)
      if not success then
         errorMsg("Error to send!")
      end
   end
)

local suggestGame = Other:Channel("Suggest Game")
suggestGame:Textbox(
   "Suggest Game",
   "Name of the Game:",
   true,
   function(gameName)
      local success, errorMessage = pcall(function()
         Webhook("Suggest Game", "Suggested Game: "..gameName, "Basic")
         basicMsg("Thanks for the suggestion!")
      end)
      if not success then
         errorMsg("Error to send suggest!")
      end
   end
)


-- Add Script
local function addScript(name, channel)
   for i,v in pairs(ScriptTable[name]) do
      channel:Button(
         v.Show,
         function()
            local success, errorMessage = pcall(function()
               loadstring(game:HttpGet(v.Link))()
            end)
            if success then
               return print("Successfully Execute a Script!")
            else
               errorMsg("Error while execute script! Send this error to Pao#8691")
               return error(errorMessage)
               --DiscordLib:Notification("Notification", "Error while execute script! Send this error to Pao#8691", "Okay!")
            end
         end
      )
   end
end

-- Add Game
local addedGame = {}

local function checkGame(name)
   for i,v in pairs(addedGame) do
      if name == addedGame[i] then
         return true
      elseif i == #addedGame then
         return false
      end
   end
end

local function addGame(name)
   if not checkGame(name) then
      local Game = Server:Channel(name)
      table.insert(addedGame, name)
      addScript(name, Game)
   end
end

local function addAllGames()
   for i, game in pairs(GameTable) do
      addGame(GameTable[i].name)
   end
end

for i, v in pairs(GameTable) do
   if game.PlaceId == GameTable[i].id then
      addGame(GameTable[i].name)
      break
   end
   if i == #GameTable then
      addAllGames()
   end
end
