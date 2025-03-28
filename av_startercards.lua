repeat task.wait() until game:IsLoaded()

local player = game:GetService("Players").LocalPlayer
local playerGUI = player:WaitForChild("PlayerGui")

local CardsFrame = playerGUI.Frames.Modifiers

CardsFrame.VoteTypeLabel:GetPropertyChangedSignal("Visible"):Connect(function()
  if CardsFrame.VoteTypeLabel.Visible == true then
    for i, v in pairs(CardsFrame.Main:GetChildren()) do
      if v:IsA("Frame") then
        print(v.Name)
      end
    end
  end
end)

print("pao.")
