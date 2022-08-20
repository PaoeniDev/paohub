local player = game:GetService("Players").LocalPlayer
local playerChar = player.Character or player.CharacterAdded:Wait()
local playerBody = playerChar:WaitForChild("HumanoidRootPart")
player.CharacterAdded:Connect(function(character)
  playerChar = character
  playerBody = character:WaitForChild("HumanoidRootPart")
end)

local function fireproximityprompt(Obj : ProximityPrompt, Amount : number, Skip : boolean)
	if Obj.ClassName == "ProximityPrompt" then 
		Amount = Amount or 1
		local PromptTime = Obj.HoldDuration
		if Skip then 
			Obj.HoldDuration = 0
		end
		for i = 1, Amount do 
			Obj:InputHoldBegin()
			if not Skip then 
				wait(Obj.HoldDuration)
			end
			Obj:InputHoldEnd()
		end
		Obj.HoldDuration = PromptTime
	else 
		error("userdata<ProximityPrompt> expected")
	end
end

local UI = loadstring(game:HttpGet'https://raw.githubusercontent.com/bloodball/UI-Librarys/main/Dynago%20UI%20lib.')()
getgenv().Config = {
  Meteor = false,
  Chest = false,
  Sand = false,
  Item = false,
  GodMode = false,
  e = false,
  r = false,
  t = false,
  y = false,
  f = false,
  g = false,
  h = false,
  j = false,
  b = false
}


local Windows = UI.Load("Pao SC")
local Main_Page = Windows.AddPage("Main", false)
Main_Page.AddToggle(
  "GodMode",
  false,
  function(v)
    Config.GodMode = v
  end
)

local Farm_Page = Windows.AddPage("Auto Farm", true)
Farm_Page.AddLabel("Auto Farm (Click to Select)")
Farm_Page.AddToggle(
  "Meteor Farm",
  false,
  function(v)
    Config.Meteor = v
  end
)

Farm_Page.AddToggle(
  "Chest Farm",
  false,
  function(v)
    Config.Chest = v
  end
)

Farm_Page.AddToggle(
  "Sand Debris Farm",
  false,
  function(v)
    Config.Sand = v
  end
)

Farm_Page.AddToggle(
  "Item Farm",
  false,
  function(v)
    Config.Item = v
  end
)

local resultTable = {
  Meteor = {},
  Chest = {},
  Sand = {},
  Item = {}
}

while true do
  if playerChar then
    if Config.Meteor then
      for i,v in pairs(game:GetService("Workspace").ItemSpawns.Meteors:GetDescendants()) do
        if v.Name == "Meteor" then
          playerBody.CFrame = v.CFrame + Vector3.new(0,7,0)
        end
      end
      for i,v in pairs(game:GetService("Workspace").ItemSpawns.Meteors:GetDescendants()) do
        if v:FindFirstChild("Interaction") then
          fireproximityprompt(v.Interaction, 1, true)
        end
      end
    end
    if Config.Chest then
      for i,v in pairs(game:GetService("Workspace").ItemSpawns.Chests:GetDescendants()) do
        if v.Name == "RootPart" then
            playerBody.CFrame = v.CFrame + Vector3.new(0,7,0)
        end
      end
      for i,v in pairs(game:GetService("Workspace").ItemSpawns.Chests:GetDescendants()) do
        if v:FindFirstChild("Interaction") then
            fireproximityprompt(v.Interaction, 1, true)
        end
      end
    end
    if Config.Sand then
      for i,v in pairs(game:GetService("Workspace").ItemSpawns["Sand Debris"]:GetDescendants()) do
        if v.Name == "SandDebris" then
            playerBody.CFrame = v.CFrame + Vector3.new(0,0,5)
        end
      end
      for i,v in pairs(game:GetService("Workspace").ItemSpawns["Sand Debris"]:GetDescendants()) do
        if v:FindFirstChild("Interaction") then
            fireproximityprompt(v.Interaction, 1, true)
        end
      end
    end
    if Config.Item then
      for i,v in pairs(game:GetService("Workspace").ItemSpawns.StandardItems:GetDescendants()) do
        if v.Name == "SpawnLocation" then
            if #v:GetChildren() > 0 then
                playerBody.CFrame = v:GetChildren()[1].CFrame
            end
        end
      end
      for i,v in pairs(game:GetService("Workspace").ItemSpawns.StandardItems:GetDescendants()) do
        if v:FindFirstChild("Interaction") then
            fireproximityprompt(v.Interaction, 1, true)
        end
      end
    end
    if Config.GodMode then
      if playerChar.Values:FindFirstChild("Block") then
        playerChar.Values.Block:Destroy()
      end
    end
  end
  wait()
end
