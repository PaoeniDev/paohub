-- Core
local player = game.Players.LocalPlayer
local char = player.Character
if not player:FindFirstChild("PaoHub") then
   error("Dont bypasing code!")
   return;
end

-- Init
local UserInputService = game:GetService("UserInputService")
local DiscordLib = loadstring(game:HttpGet "https://pastebin.com/raw/SwYK8BEJ")()
local Window = DiscordLib:Window("Pao Hub")
local Server = Window:Server("Pao Hub", "")

-- Game & Script List
local ScriptTable = {
   ["Blox Fruit"] = {
      {
         Show = "String Hub [Mobile & PC]",
         Link = "https://raw.githubusercontent.com/OPPV01/DEX/main/Protected.lua.txt"
      },
      {
         Show = "Mukuro [PC]",
         Link = "https://raw.githubusercontent.com/xQuartyx/DonateMe/main/BF"
      }
   },
   ["Demon Fall"] = {
      {
         Show = "Lazy Hub",
         Link = "https://github.com/LioK251/Scripts/raw/main/lazyhub.lua"
      },
      {
         Show = "Ghost Fall [Recommended]",
         Link = "https://raw.githubusercontent.com/ghost-home/public/main/demonfall.lua"
      }
   },
   ["Goal Kick Simulator"] = {
      {
         Show = "Soggyware Hub [PC | Recommend]",
         Link = "https://raw.githubusercontent.com/SunkenMuch/Soggyware/main/Main"
      },
      {
         Show = "Pufferfish Hub [PC]",
         Link = "https://raw.githubusercontent.com/Cospog/pufferfish/main/goalKick.lua"
      },
      {
         Show = "Black Gui [PC]",
         Link = "https://raw.githubusercontent.com/thedragonslayer2/Key-System/main/Load.lua"
      }
   },
   ["Arsenal"] = {
      {
         Show = "OwlHub [PC | Recommend]",
         Link = "https://raw.githubusercontent.com/CriShoux/OwlHub/master/OwlHub.txt"
      },
      {
         Show = "Dark Hub [PC]",
         Link = "https://darkhub.xyz/remote-script.lua"
      },
      {
         Show = "Dex Hub [PC]",
         Link = "https://raw.githubusercontent.com/HonestlyDex/DexHub/main/V3.lua"
      }
   },
   ["King Legacy"] = {
      {
         Show = "Mukuro [PC | Recommend]",
         Link = "https://raw.githubusercontent.com/xQuartyx/DonateMe/main/KL"
      }
   },
   ["Your Bizzare Adventure"] = {
      {
         Show = "Pink Gui [PC | Recommend]",
         Link = "https://raw.githubusercontent.com/zakater5/LuaRepo/main/YBA/MainGui.lua"
      }
   },
   ["Test Place"] = {
      {
         Show = "Pink Gui [PC | Recommend]",
         Link = "https://raw.githubusercontent.com/zakater5/LuaRepo/main/YBA/MainGui.lua"
      }
   }
}

local GameTable = {
   { name = "Blox Fruit", id = 2753915549 },
   { name = "Blox Fruit", id = 4442272183 },
   { name = "Blox Fruit", id = 7449423635 },
   { name = "Demon Fall", id = 5094651510 },
   { name = "Goal Kick Simulator", id = 9281034297 },
   { name = "Arsenal", id = 286090429},
   { name = "King Legacy", id = 4520749081 },
   { name = "King Legacy", id = 6381829480 },
   { name = "Your Bizzare Adventure", id = 2809202155 },
   { name = "Test Place", id = 7269990871 },
   --{ name = "Grand Piece Online", id = 5931540094 },
   --{ name = "King Legacy", id = 5931540094 }
}

-- Basic Function
local function Webhook(title, message)
   local webhookcheck =
   is_sirhurt_closure and "Sirhurt" or pebc_execute and "ProtoSmasher" or syn and "Synapse X" or
   secure_load and "Sentinel" or
   KRNL_LOADED and "Krnl" or
   SONA_LOADED and "Sona" or
   "Kid with shit exploit"
   local url = "https://discord.com/api/webhooks/995558538422272121/UXBv9tILwqwt1fLhKyfzqBj2os8hQTufvFRT4TrD6w5ZDmXG79sehDkIGRDb5zX9qAOM"
   local data = {
   ["embeds"] = {{
      ["author"] = {
         ["name"] = title,
         ["icon_url"] = "https://www.roblox.com/headshot-thumbnail/image?userId="..player.UserId.."&width=100&height=100&format=png"
     },
     ["color"] = tonumber(0xFF1100),
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
   "Anti AFK",
   function()
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
      end
   end
)

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

-- Other
local Other = Window:Server("Other", "")
local reportScript = Other:Channel("Report Script Error")
reportScript:Textbox(
   "Script Error",
   "Name of the Script:",
   true,
   function(scriptName)
      local success, errorMessage = pcall(function()
         Webhook("Report Script", "Error Script: "..scriptName)
      end)
      if not success then
         errorMsg("Error to send!")
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
            if not success then
               DiscordLib:Notification("Notification", "Error while execute script! Send this error to Pao#8691", "Okay!")
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
      print(#GameTable)
      addAllGames()
   end
end
