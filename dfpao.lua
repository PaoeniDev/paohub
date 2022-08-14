-- Teleport :
local PlaceID = game.PlaceId
local AllIDs = {}
local foundAnything = ""
local actualHour = os.date("!*t").hour
local Deleted = false
local File = pcall(function()
    AllIDs = game:GetService('HttpService'):JSONDecode(readfile("NotSameServers.json"))
end)
if not File then
    table.insert(AllIDs, actualHour)
    writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
end
function TPReturner()
    local Site;
    if foundAnything == "" then
        Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
    else
        Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
    end
    local ID = ""
    if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
        foundAnything = Site.nextPageCursor
    end
    local num = 0;
    for i,v in pairs(Site.data) do
        local Possible = true
        ID = tostring(v.id)
        if tonumber(v.maxPlayers) > tonumber(v.playing) then
            for _,Existing in pairs(AllIDs) do
                if num ~= 0 then
                    if ID == tostring(Existing) then
                        Possible = false
                    end
                else
                    if tonumber(actualHour) ~= tonumber(Existing) then
                        local delFile = pcall(function()
                            delfile("NotSameServers.json")
                            AllIDs = {}
                            table.insert(AllIDs, actualHour)
                        end)
                    end
                end
                num = num + 1
            end
            if Possible == true then
                table.insert(AllIDs, ID)
                wait()
                pcall(function()
                    writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
                    wait()
                    game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
                end)
                wait(4)
            end
        end
    end
end

function Teleport()
    while wait() do
        pcall(function()
            TPReturner()
            if foundAnything ~= "" then
                TPReturner()
            end
        end)
    end
end

-- Auto Clicker :
local uis = game:GetService("UserInputService")
local VIM = game:GetService("VirtualInputManager")
local X, Y
local Player = game:GetService("Players").LocalPlayer
local Mouse = Player:GetMouse()
local tpcheck = false
_G.autoclickdf = false
uis.InputBegan:Connect(function(key, gpe)
    if not gpe and key.KeyCode == Enum.KeyCode.T then
        X, Y = Mouse.X, Mouse.Y
        if _G.autoclickdf then
            _G.autoclickdf = false
            Player.Character.HumanoidRootPart.Anchored = false
        else
            _G.autoclickdf = true
            Player.Character.HumanoidRootPart.Anchored = true
        end
    end
    if not gpe and key.KeyCode == Enum.KeyCode.K then
		if tpcheck then
			Teleport()
			print("Teleporting...")
		else
			tpcheck = true
			wait(0.5)
			tpcheck = false
		end
    end
end)

while wait() do
    if _G.autoclickdf == true then
        VIM:SendMouseButtonEvent(X, Y, 0, true, game, 1)
        VIM:SendMouseButtonEvent(X, Y, 0, false, game, 1)
        wait()
    end
end
