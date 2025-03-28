repeat
    task.wait()
until game:IsLoaded()

local player = game:GetService("Players").LocalPlayer
local playerGUI = player:WaitForChild("PlayerGui")

local CardsFrame = playerGUI.Frames.Modifiers
local id = math.random(0, 9999)

getgenv().pao_runningID = id

function choose(modifier)
    local args = {
        [1] = "Choose",
        [2] = modifier
    }

    game:GetService("ReplicatedStorage").Networking.ModifierEvent:FireServer(unpack(args))
end

CardsFrame.VoteTypeLabel:GetPropertyChangedSignal("Visible"):Connect(function()
    if getgenv().pao_runningID == id and CardsFrame.VoteTypeLabel.Visible == true then

      local done = false

      for _, p in pairs(getgenv().priority) do
        if done then break end
        for __, v in pairs(CardsFrame.Main:GetChildren()) do
          if v:IsA("Frame") and p == v.Name then

            done = true
            choose(p)

            break
          end
        end
      end

      if not done then
        print("NOT FOUND")
      end
    end
end)

print("pao.")
