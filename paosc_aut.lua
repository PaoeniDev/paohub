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
  FarmMob = false,
  SelectedMob = "",
  SkillWhenFarm = false,
  click = false,
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

local AutoFarm_Page = Windows.AddPage("Auto Farm", false)
AutoFarm_Page.AddLabel("Auto Farm NPC")
AutoFarm_Page.AddDropdown(
  "Select NPC",
  {
    "Dio",
    "Diavolo",
    "Thug"
  },
  function(v)
    if v == "Thug" then
      Config.SelectedMob = "Thug4"
    else
      Config.SelectedMob = v
    end
  end
)
AutoFarm_Page.AddToggle(
  "Auto Farm",
  false,
  function(v)
    if Config.SelectedMob == "" then
      game.StarterGui:SetCore("SendNotification", {
        Title = "PaoHub",
        Text = "Please select the npc first!",
        Duration = 5
      })
    else
      Config.FarmMob = v
    end
  end
)

local AutoSkill_Page = Windows.AddPage("Auto Skill", false)
AutoSkill_Page.AddLabel("Auto Skill (Press to Active a Key)")
AutoSkill_Page.AddToggle(
  "Click / M1",
  false,
  function(v)
    Config.click = v
  end
)
AutoSkill_Page.AddToggle(
  "E",
  false,
  function(v)
    Config.e = v
  end
)
AutoSkill_Page.AddToggle(
  "R",
  false,
  function(v)
    Config.r = v
  end
)
AutoSkill_Page.AddToggle(
  "T",
  false,
  function(v)
    Config.t = v
  end
)
AutoSkill_Page.AddToggle(
  "Y",
  false,
  function(v)
    Config.y = v
  end
)
AutoSkill_Page.AddToggle(
  "F",
  false,
  function(v)
    Config.f = v
  end
)
AutoSkill_Page.AddToggle(
  "G",
  false,
  function(v)
    Config.g = v
  end
)
AutoSkill_Page.AddToggle(
  "H",
  false,
  function(v)
    Config.h = v
  end
)
AutoSkill_Page.AddToggle(
  "J",
  false,
  function(v)
    Config.j = v
  end
)
AutoSkill_Page.AddToggle(
  "B",
  false,
  function(v)
    Config.b = v
  end
)
AutoSkill_Page.AddToggle(
  "Only Active when Auto Farm",
  false,
  function(v)
    Config.SkillWhenFarm = v
  end
)

local Farm_Page = Windows.AddPage("Item Farm", true)
Farm_Page.AddLabel("Item Farm (Click to Select)")
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
  if Config.Meteor and playerChar then
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
  if Config.Chest and playerChar then
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
  if Config.Sand and playerChar then
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
  if Config.Item and playerChar then
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
  if Config.GodMode and playerChar then
    if playerChar:FindFirstChild("Values") and playerChar.Values:FindFirstChild("Block") then
      playerChar.Values.Block:Destroy()
    end
  end
  if Config.FarmMob and playerChar then
    if game:GetService("Workspace").Living:FindFirstChild(Config.SelectedMob) and game:GetService("Workspace").Living:WaitForChild(Config.SelectedMob):FindFirstChild("HumanoidRootPart") then
      playerBody.CFrame = game:GetService("Workspace").Living:FindFirstChild(Config.SelectedMob).HumanoidRootPart.CFrame * CFrame.new(0, 0, 5)
      if Config.click then
        game:GetService("ReplicatedStorage").Remotes.InputFunc:InvokeServer("LMB")
      end
      if Config.e then
        game:GetService("ReplicatedStorage").Remotes.InputFunc:InvokeServer("E")
      end
      if Config.r then
        game:GetService("ReplicatedStorage").Remotes.InputFunc:InvokeServer("R")
      end
      if Config.t then
        game:GetService("ReplicatedStorage").Remotes.InputFunc:InvokeServer("T")
      end
      if Config.y then
        game:GetService("ReplicatedStorage").Remotes.InputFunc:InvokeServer("Y")
      end
      if Config.f then
        game:GetService("ReplicatedStorage").Remotes.InputFunc:InvokeServer("F")
      end
      if Config.g then
        game:GetService("ReplicatedStorage").Remotes.InputFunc:InvokeServer("G")
      end
      if Config.h then
        game:GetService("ReplicatedStorage").Remotes.InputFunc:InvokeServer("H")
      end
      if Config.j then
        game:GetService("ReplicatedStorage").Remotes.InputFunc:InvokeServer("J")
      end
      if Config.b then
        game:GetService("ReplicatedStorage").Remotes.InputFunc:InvokeServer("B")
      end
    end
  end
  if Config.SkillWhenFarm == false and playerChar then
    if Config.click then
      game:GetService("ReplicatedStorage").Remotes.InputFunc:InvokeServer("LMB")
    end
    if Config.e then
      game:GetService("ReplicatedStorage").Remotes.InputFunc:InvokeServer("E")
    end
    if Config.r then
      game:GetService("ReplicatedStorage").Remotes.InputFunc:InvokeServer("R")
    end
    if Config.t then
      game:GetService("ReplicatedStorage").Remotes.InputFunc:InvokeServer("T")
    end
    if Config.y then
      game:GetService("ReplicatedStorage").Remotes.InputFunc:InvokeServer("Y")
    end
    if Config.f then
      game:GetService("ReplicatedStorage").Remotes.InputFunc:InvokeServer("F")
    end
    if Config.g then
      game:GetService("ReplicatedStorage").Remotes.InputFunc:InvokeServer("G")
    end
    if Config.h then
      game:GetService("ReplicatedStorage").Remotes.InputFunc:InvokeServer("H")
    end
    if Config.j then
      game:GetService("ReplicatedStorage").Remotes.InputFunc:InvokeServer("J")
    end
    if Config.b then
      game:GetService("ReplicatedStorage").Remotes.InputFunc:InvokeServer("B")
    end
  end
  wait()
end
