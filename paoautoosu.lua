-- Gui to Lua
-- Version: 3.2

-- Instances:

local AutoOSU_GPO = Instance.new("ScreenGui")
local Background = Instance.new("Frame")
local Activation = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")
local shadowHolder = Instance.new("Frame")
local umbraShadow = Instance.new("ImageLabel")
local penumbraShadow = Instance.new("ImageLabel")
local ambientShadow = Instance.new("ImageLabel")
local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
local shadowHolder_2 = Instance.new("Frame")
local umbraShadow_2 = Instance.new("ImageLabel")
local penumbraShadow_2 = Instance.new("ImageLabel")
local ambientShadow_2 = Instance.new("ImageLabel")
local AutoOSU = Instance.new("TextLabel")
local UIAspectRatioConstraint_2 = Instance.new("UIAspectRatioConstraint")
local UITextSizeConstraint_2 = Instance.new("UITextSizeConstraint")
local Top = Instance.new("Frame")
local CloseGUI = Instance.new("ImageButton")
local shadowHolder_3 = Instance.new("Frame")
local umbraShadow_3 = Instance.new("ImageLabel")
local penumbraShadow_3 = Instance.new("ImageLabel")
local ambientShadow_3 = Instance.new("ImageLabel")
local UIAspectRatioConstraint_3 = Instance.new("UIAspectRatioConstraint")
local UIAspectRatioConstraint_4 = Instance.new("UIAspectRatioConstraint")

--Properties:

AutoOSU_GPO.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
AutoOSU_GPO.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Background.Name = "Background"
Background.Parent = AutoOSU_GPO
Background.BackgroundColor3 = Color3.fromRGB(62, 62, 62)
Background.BorderColor3 = Color3.fromRGB(17, 17, 17)
Background.BorderSizePixel = 0
Background.Position = UDim2.new(0.4214876, 0, 0.401980162, 0)
Background.Size = UDim2.new(0.158861339, 0, 0.231683165, 0)

Activation.Name = "Activation"
Activation.Parent = Background
Activation.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Activation.Position = UDim2.new(0.114945427, 0, 0.371823013, 0)
Activation.Size = UDim2.new(0.763005793, 0, 0.461538464, 0)
Activation.Font = Enum.Font.SourceSansBold
Activation.Text = "OFF"
Activation.TextColor3 = Color3.fromRGB(255, 255, 255)
Activation.TextScaled = true
Activation.TextSize = 46.000
Activation.TextWrapped = true

UICorner.CornerRadius = UDim.new(0, 15)
UICorner.Parent = Activation

shadowHolder.Name = "shadowHolder"
shadowHolder.Parent = Activation
shadowHolder.BackgroundTransparency = 1.000
shadowHolder.Size = UDim2.new(1, 0, 1, 0)
shadowHolder.Visible = false
shadowHolder.ZIndex = 0

umbraShadow.Name = "umbraShadow"
umbraShadow.Parent = shadowHolder
umbraShadow.AnchorPoint = Vector2.new(0.5, 0.5)
umbraShadow.BackgroundTransparency = 1.000
umbraShadow.Position = UDim2.new(0.5, 0, 0.5, 6)
umbraShadow.Size = UDim2.new(1, 10, 1, 10)
umbraShadow.Image = "rbxassetid://1316045217"
umbraShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
umbraShadow.ImageTransparency = 0.860
umbraShadow.ScaleType = Enum.ScaleType.Slice
umbraShadow.SliceCenter = Rect.new(10, 10, 118, 118)

penumbraShadow.Name = "penumbraShadow"
penumbraShadow.Parent = shadowHolder
penumbraShadow.AnchorPoint = Vector2.new(0.5, 0.5)
penumbraShadow.BackgroundTransparency = 1.000
penumbraShadow.Position = UDim2.new(0.5, 0, 0.5, 6)
penumbraShadow.Size = UDim2.new(1, 10, 1, 10)
penumbraShadow.Image = "rbxassetid://1316045217"
penumbraShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
penumbraShadow.ImageTransparency = 0.880
penumbraShadow.ScaleType = Enum.ScaleType.Slice
penumbraShadow.SliceCenter = Rect.new(10, 10, 118, 118)

ambientShadow.Name = "ambientShadow"
ambientShadow.Parent = shadowHolder
ambientShadow.AnchorPoint = Vector2.new(0.5, 0.5)
ambientShadow.BackgroundTransparency = 1.000
ambientShadow.Position = UDim2.new(0.5, 0, 0.5, 6)
ambientShadow.Size = UDim2.new(1, 10, 1, 10)
ambientShadow.Image = "rbxassetid://1316045217"
ambientShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
ambientShadow.ImageTransparency = 0.880
ambientShadow.ScaleType = Enum.ScaleType.Slice
ambientShadow.SliceCenter = Rect.new(10, 10, 118, 118)

UIAspectRatioConstraint.Parent = Activation
UIAspectRatioConstraint.AspectRatio = 2.444

UITextSizeConstraint.Parent = Activation
UITextSizeConstraint.MaxTextSize = 46

shadowHolder_2.Name = "shadowHolder"
shadowHolder_2.Parent = Background
shadowHolder_2.BackgroundTransparency = 1.000
shadowHolder_2.Position = UDim2.new(0, 0, -0.00854700897, 0)
shadowHolder_2.Size = UDim2.new(1, 0, 1, 0)
shadowHolder_2.ZIndex = 0

umbraShadow_2.Name = "umbraShadow"
umbraShadow_2.Parent = shadowHolder_2
umbraShadow_2.AnchorPoint = Vector2.new(0.5, 0.5)
umbraShadow_2.BackgroundTransparency = 1.000
umbraShadow_2.Position = UDim2.new(0.5, 0, 0.5, 6)
umbraShadow_2.Size = UDim2.new(1, 10, 1, 10)
umbraShadow_2.Image = "rbxassetid://1316045217"
umbraShadow_2.ImageColor3 = Color3.fromRGB(0, 0, 0)
umbraShadow_2.ImageTransparency = 0.860
umbraShadow_2.ScaleType = Enum.ScaleType.Slice
umbraShadow_2.SliceCenter = Rect.new(10, 10, 118, 118)

penumbraShadow_2.Name = "penumbraShadow"
penumbraShadow_2.Parent = shadowHolder_2
penumbraShadow_2.AnchorPoint = Vector2.new(0.5, 0.5)
penumbraShadow_2.BackgroundTransparency = 1.000
penumbraShadow_2.Position = UDim2.new(0.5, 0, 0.5, 6)
penumbraShadow_2.Size = UDim2.new(1, 10, 1, 10)
penumbraShadow_2.Image = "rbxassetid://1316045217"
penumbraShadow_2.ImageColor3 = Color3.fromRGB(0, 0, 0)
penumbraShadow_2.ImageTransparency = 0.880
penumbraShadow_2.ScaleType = Enum.ScaleType.Slice
penumbraShadow_2.SliceCenter = Rect.new(10, 10, 118, 118)

ambientShadow_2.Name = "ambientShadow"
ambientShadow_2.Parent = shadowHolder_2
ambientShadow_2.AnchorPoint = Vector2.new(0.5, 0.5)
ambientShadow_2.BackgroundTransparency = 1.000
ambientShadow_2.Position = UDim2.new(0.5, 0, 0.5, 6)
ambientShadow_2.Size = UDim2.new(1, 10, 1, 10)
ambientShadow_2.Image = "rbxassetid://1316045217"
ambientShadow_2.ImageColor3 = Color3.fromRGB(0, 0, 0)
ambientShadow_2.ImageTransparency = 0.880
ambientShadow_2.ScaleType = Enum.ScaleType.Slice
ambientShadow_2.SliceCenter = Rect.new(10, 10, 118, 118)

AutoOSU.Name = "AutoOSU"
AutoOSU.Parent = Background
AutoOSU.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AutoOSU.BackgroundTransparency = 1.000
AutoOSU.Size = UDim2.new(1, 0, 0.367521375, 0)
AutoOSU.Font = Enum.Font.SourceSansBold
AutoOSU.Text = "Auto OSU"
AutoOSU.TextColor3 = Color3.fromRGB(255, 255, 255)
AutoOSU.TextScaled = true
AutoOSU.TextSize = 36.000
AutoOSU.TextWrapped = true

UIAspectRatioConstraint_2.Parent = AutoOSU
UIAspectRatioConstraint_2.AspectRatio = 4.023

UITextSizeConstraint_2.Parent = AutoOSU
UITextSizeConstraint_2.MaxTextSize = 36

Top.Name = "Top"
Top.Parent = Background
Top.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Top.BorderSizePixel = 0
Top.Position = UDim2.new(0, 0, -0.282051295, 0)
Top.Size = UDim2.new(0.999999821, 0, 0.282051235, 0)

CloseGUI.Name = "CloseGUI"
CloseGUI.Parent = Top
CloseGUI.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CloseGUI.BackgroundTransparency = 1.000
CloseGUI.Position = UDim2.new(0.78612715, 0, 0.0285714287, 0)
CloseGUI.Size = UDim2.new(0.213872835, 0, 0.971428573, 0)
CloseGUI.Image = "rbxassetid://9876911282"

shadowHolder_3.Name = "shadowHolder"
shadowHolder_3.Parent = Top
shadowHolder_3.BackgroundTransparency = 1.000
shadowHolder_3.Size = UDim2.new(1, 0, 1, 0)
shadowHolder_3.ZIndex = 0

umbraShadow_3.Name = "umbraShadow"
umbraShadow_3.Parent = shadowHolder_3
umbraShadow_3.AnchorPoint = Vector2.new(0.5, 0.5)
umbraShadow_3.BackgroundTransparency = 1.000
umbraShadow_3.Position = UDim2.new(0.5, 0, 0.5, 6)
umbraShadow_3.Size = UDim2.new(1, 10, 1, 10)
umbraShadow_3.Image = "rbxassetid://1316045217"
umbraShadow_3.ImageColor3 = Color3.fromRGB(0, 0, 0)
umbraShadow_3.ImageTransparency = 0.860
umbraShadow_3.ScaleType = Enum.ScaleType.Slice
umbraShadow_3.SliceCenter = Rect.new(10, 10, 118, 118)

penumbraShadow_3.Name = "penumbraShadow"
penumbraShadow_3.Parent = shadowHolder_3
penumbraShadow_3.AnchorPoint = Vector2.new(0.5, 0.5)
penumbraShadow_3.BackgroundTransparency = 1.000
penumbraShadow_3.Position = UDim2.new(0.5, 0, 0.5, 6)
penumbraShadow_3.Size = UDim2.new(1, 10, 1, 10)
penumbraShadow_3.Image = "rbxassetid://1316045217"
penumbraShadow_3.ImageColor3 = Color3.fromRGB(0, 0, 0)
penumbraShadow_3.ImageTransparency = 0.880
penumbraShadow_3.ScaleType = Enum.ScaleType.Slice
penumbraShadow_3.SliceCenter = Rect.new(10, 10, 118, 118)

ambientShadow_3.Name = "ambientShadow"
ambientShadow_3.Parent = shadowHolder_3
ambientShadow_3.AnchorPoint = Vector2.new(0.5, 0.5)
ambientShadow_3.BackgroundTransparency = 1.000
ambientShadow_3.Position = UDim2.new(0.5, 0, 0.5, 6)
ambientShadow_3.Size = UDim2.new(1, 10, 1, 10)
ambientShadow_3.Image = "rbxassetid://1316045217"
ambientShadow_3.ImageColor3 = Color3.fromRGB(0, 0, 0)
ambientShadow_3.ImageTransparency = 0.880
ambientShadow_3.ScaleType = Enum.ScaleType.Slice
ambientShadow_3.SliceCenter = Rect.new(10, 10, 118, 118)

UIAspectRatioConstraint_3.Parent = Top
UIAspectRatioConstraint_3.AspectRatio = 5.242

UIAspectRatioConstraint_4.Parent = Background
UIAspectRatioConstraint_4.AspectRatio = 1.479

-- Script:

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

AutoOSU_GPO.Name = randomString()

local player = game.Players.LocalPlayer

local success, errorMsg = pcall(function()
	getgenv().a = true
	loadstring(game:HttpGet("https://raw.githubusercontent.com/PaoBlox/paohub/main/autoosu.lua"))()
end)
if not success then
	player:Kick("Error while load script!, use other executor or rejoin!")
end

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

MakeDraggable(Top, Background)

CloseGUI.MouseButton1Click:Connect(function()
	getgenv().a = false
end)

-- Load Script:

Activation.MouseButton1Click:Connect(function()
	if getgenv().a == true then
		getgenv().a = false
		Activation.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
		Activation.Text = "OFF"
	else
		getgenv().a = true
		Activation.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
		Activation.Text = "ON"
	end
end)
