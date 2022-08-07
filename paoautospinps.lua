-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Top = Instance.new("Frame")
local MainGUI = Instance.new("Frame")
local Clan1 = Instance.new("TextBox")
local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
local Clan2 = Instance.new("TextBox")
local UIAspectRatioConstraint_2 = Instance.new("UIAspectRatioConstraint")
local Clan3 = Instance.new("TextBox")
local UIAspectRatioConstraint_3 = Instance.new("UIAspectRatioConstraint")
local Speed = Instance.new("TextBox")
local UIAspectRatioConstraint_4 = Instance.new("UIAspectRatioConstraint")
local TextLabel = Instance.new("TextLabel")
local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
local UIAspectRatioConstraint_5 = Instance.new("UIAspectRatioConstraint")
local Activation = Instance.new("TextButton")
local UITextSizeConstraint_2 = Instance.new("UITextSizeConstraint")
local UICorner = Instance.new("UICorner")
local UIAspectRatioConstraint_6 = Instance.new("UIAspectRatioConstraint")
local TextLabel_2 = Instance.new("TextLabel")
local UITextSizeConstraint_3 = Instance.new("UITextSizeConstraint")
local UIAspectRatioConstraint_7 = Instance.new("UIAspectRatioConstraint")
local CloseGUI = Instance.new("ImageButton")
local UIAspectRatioConstraint_8 = Instance.new("UIAspectRatioConstraint")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Top.Name = "Top"
Top.Parent = ScreenGui
Top.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Top.BorderSizePixel = 0
Top.Position = UDim2.new(0.453627169, 0, 0.219801977, 0)
Top.Size = UDim2.new(0.355371892, 0, 0.0574257411, 0)

MainGUI.Name = "MainGUI"
MainGUI.Parent = Top
MainGUI.BackgroundColor3 = Color3.fromRGB(62, 62, 62)
MainGUI.BorderSizePixel = 0
MainGUI.Position = UDim2.new(0, 0, 1, 0)
MainGUI.Size = UDim2.new(1, 0, 10.034483, 0)

Clan1.Name = "Clan1"
Clan1.Parent = MainGUI
Clan1.BackgroundColor3 = Color3.fromRGB(98, 98, 98)
Clan1.BorderColor3 = Color3.fromRGB(0, 0, 0)
Clan1.BorderSizePixel = 4
Clan1.Position = UDim2.new(0.10459502, 0, 0.0457550883, 0)
Clan1.Size = UDim2.new(0.790697694, 0, 0.0996563584, 0)
Clan1.Font = Enum.Font.SourceSansBold
Clan1.PlaceholderText = "Desired Clan 1"
Clan1.Text = ""
Clan1.TextColor3 = Color3.fromRGB(255, 255, 255)
Clan1.TextScaled = true
Clan1.TextSize = 14.000
Clan1.TextWrapped = true

UIAspectRatioConstraint.Parent = Clan1
UIAspectRatioConstraint.AspectRatio = 10.552

Clan2.Name = "Clan2"
Clan2.Parent = MainGUI
Clan2.BackgroundColor3 = Color3.fromRGB(98, 98, 98)
Clan2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Clan2.BorderSizePixel = 4
Clan2.Position = UDim2.new(0.102416016, 0, 0.193109944, 0)
Clan2.Size = UDim2.new(0.790697694, 0, 0.0996563584, 0)
Clan2.Font = Enum.Font.SourceSansBold
Clan2.PlaceholderText = "Desired Clan 2"
Clan2.Text = ""
Clan2.TextColor3 = Color3.fromRGB(255, 255, 255)
Clan2.TextScaled = true
Clan2.TextSize = 14.000
Clan2.TextWrapped = true

UIAspectRatioConstraint_2.Parent = Clan2
UIAspectRatioConstraint_2.AspectRatio = 10.552

Clan3.Name = "Clan3"
Clan3.Parent = MainGUI
Clan3.BackgroundColor3 = Color3.fromRGB(98, 98, 98)
Clan3.BorderColor3 = Color3.fromRGB(0, 0, 0)
Clan3.BorderSizePixel = 4
Clan3.Position = UDim2.new(0.102416016, 0, 0.347749114, 0)
Clan3.Size = UDim2.new(0.790697694, 0, 0.0996563584, 0)
Clan3.Font = Enum.Font.SourceSansBold
Clan3.PlaceholderText = "Desired Clan 3"
Clan3.Text = ""
Clan3.TextColor3 = Color3.fromRGB(255, 255, 255)
Clan3.TextScaled = true
Clan3.TextSize = 14.000
Clan3.TextWrapped = true

UIAspectRatioConstraint_3.Parent = Clan3
UIAspectRatioConstraint_3.AspectRatio = 10.552

Speed.Name = "Speed"
Speed.Parent = MainGUI
Speed.BackgroundColor3 = Color3.fromRGB(98, 98, 98)
Speed.BorderColor3 = Color3.fromRGB(0, 0, 0)
Speed.BorderSizePixel = 4
Speed.Position = UDim2.new(0.102416039, 0, 0.495515466, 0)
Speed.Size = UDim2.new(0.434108526, 0, 0.0996563584, 0)
Speed.Font = Enum.Font.SourceSansBold
Speed.PlaceholderText = "Spin Speed"
Speed.Text = "0.1"
Speed.TextColor3 = Color3.fromRGB(255, 255, 255)
Speed.TextScaled = true
Speed.TextSize = 14.000
Speed.TextWrapped = true

UIAspectRatioConstraint_4.Parent = Speed
UIAspectRatioConstraint_4.AspectRatio = 5.793

TextLabel.Parent = MainGUI
TextLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.558139563, 0, 0.477663219, 0)
TextLabel.Size = UDim2.new(0.335917324, 0, 0.130584195, 0)
TextLabel.Font = Enum.Font.SourceSansBold
TextLabel.Text = "Recommended 0.1 or Lower"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 15.000
TextLabel.TextWrapped = true

UITextSizeConstraint.Parent = TextLabel
UITextSizeConstraint.MaxTextSize = 15

UIAspectRatioConstraint_5.Parent = TextLabel
UIAspectRatioConstraint_5.AspectRatio = 3.421

Activation.Name = "Activation"
Activation.Parent = MainGUI
Activation.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Activation.Position = UDim2.new(0.125281364, 0, 0.660482824, 0)
Activation.Size = UDim2.new(0.742096126, 0, 0.267421484, 0)
Activation.Font = Enum.Font.SourceSansBold
Activation.Text = "OFF"
Activation.TextColor3 = Color3.fromRGB(255, 255, 255)
Activation.TextScaled = true
Activation.TextSize = 46.000
Activation.TextWrapped = true

UITextSizeConstraint_2.Parent = Activation
UITextSizeConstraint_2.MaxTextSize = 46

UICorner.CornerRadius = UDim.new(0, 15)
UICorner.Parent = Activation

UIAspectRatioConstraint_6.Parent = Activation
UIAspectRatioConstraint_6.AspectRatio = 3.690

TextLabel_2.Parent = Top
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Size = UDim2.new(0.516795874, 0, 1, 0)
TextLabel_2.ZIndex = -1
TextLabel_2.Font = Enum.Font.SourceSansBold
TextLabel_2.Text = "Auto Spin Clan / Family"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextSize = 20.000
TextLabel_2.TextWrapped = true

UITextSizeConstraint_3.Parent = TextLabel_2
UITextSizeConstraint_3.MaxTextSize = 20

UIAspectRatioConstraint_7.Parent = TextLabel_2
UIAspectRatioConstraint_7.AspectRatio = 6.897

CloseGUI.Name = "CloseGUI"
CloseGUI.Parent = Top
CloseGUI.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CloseGUI.BackgroundTransparency = 1.000
CloseGUI.Position = UDim2.new(0.922111869, 0, 0, 0)
CloseGUI.Size = UDim2.new(0.0778881162, 0, 1.00000012, 0)
CloseGUI.ZIndex = -1
CloseGUI.Image = "rbxassetid://9876911282"

UIAspectRatioConstraint_8.Parent = CloseGUI
UIAspectRatioConstraint_8.AspectRatio = 1.039

--Script:

local function randomString()
	local alphabet = {}
	local randString = ""

	for i=97, 122 do
		local char = utf8.char(i)
		table.insert(alphabet, char)
	end

	local maxChar = math.random(1,10)

	for i=1, maxChar do
		local rand = math.random(1, #alphabet)
		randString = randString..alphabet[rand]
		if i == maxChar then
			return(randString.."p1")
		end
	end
end

ScreenGui.Name = randomString()

local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")

local function MakeDraggable(topbarobject, object)
	local Dragging = nil
	local DragInput = nil
	local DragStart = nil
	local StartPosition = nil

	local function Update(input)
		local Delta = input.Position - DragStart
		local pos =
			UDim2.new(
				StartPosition.X.Scale,
				StartPosition.X.Offset + Delta.X,
				StartPosition.Y.Scale,
				StartPosition.Y.Offset + Delta.Y
			)
		object.Position = pos
	end

	topbarobject.InputBegan:Connect(
		function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
				Dragging = true
				DragStart = input.Position
				StartPosition = object.Position

				input.Changed:Connect(
					function()
						if input.UserInputState == Enum.UserInputState.End then
							Dragging = false
						end
					end
				)
			end
		end
	)

	topbarobject.InputChanged:Connect(
		function(input)
			if
				input.UserInputType == Enum.UserInputType.MouseMovement or
				input.UserInputType == Enum.UserInputType.Touch
			then
				DragInput = input
			end
		end
	)

	UserInputService.InputChanged:Connect(
		function(input)
			if input == DragInput and Dragging then
				Update(input)
			end
		end
	)
end

MakeDraggable(Top, Top)

local StarterGui = game:GetService("StarterGui")
_G.paoclan1 = ""
_G.paoclan2 = ""
_G.paoclan3 = ""
_G.paospeed = 0.1
_G.paoautospin = false

Clan1.FocusLost:Connect(function()
	_G.paoclan1 = Clan1.Text
end)

Clan2.FocusLost:Connect(function()
	_G.paoclan2 = Clan2.Text
end)

Clan3.FocusLost:Connect(function()
	_G.paoclan3 = Clan3.Text
end)

Speed.FocusLost:Connect(function()
	if not tonumber(Speed.Text) then
		StarterGui:SetCore("SendNotification", {
			Title = "Error!",
			Text = "You only can set speed by number",
			Duration = 5
		})
		Speed.Text = tostring(0.1)
		_G.paospeed = 0.1
		return;
	end
	_G.paospeed = tonumber(Speed.Text)
end)

Activation.MouseButton1Click:Connect(function()
	if not tonumber(_G.paospeed) or Speed.Text == "" then
		_G.paospeed = 0.1
	end
	if _G.paoautospin == true then
		_G.paoautospin = false
		Activation.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
		Activation.Text = "OFF"
		StarterGui:SetCore("SendNotification", {
			Title = "Stopped!",
			Text = "Auto Spin Stopped.",
			Duration = 5
		})
	else
		_G.paoautospin = true
		Activation.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
		Activation.Text = "ON"
		StarterGui:SetCore("SendNotification", {
			Title = "Running!",
			Text = "Auto Spin Running...",
			Duration = 5
		})
	end
end)

CloseGUI.MouseButton1Click:Connect(function()
	_G.paoautospin = false
	ScreenGui:Destroy()
end)

while wait() do
	if _G.paoautospin then
		if game:GetService("ReplicatedStorage").Player_Data[game.Players.LocalPlayer.Name].Clan.Value == _G.paoclan1 then
			_G.paoautospin = false
		else
			if game:GetService("ReplicatedStorage").Player_Data[game.Players.LocalPlayer.Name].Clan.Value == _G.paoclan2 then
				_G.paoautospin = false
			else
				if game:GetService("ReplicatedStorage").Player_Data[game.Players.LocalPlayer.Name].Clan.Value == _G.paoclan3 then
					_G.paoautospin = false
				else
					local args = {[1] = "check_can_spin"}
					game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_InitiateS:InvokeServer(unpack(args))
					wait(_G.paospeed)
				end
			end
		end
	end
end
