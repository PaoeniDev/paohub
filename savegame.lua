-- Gui to Lua
-- Version: 3.2

-- Instances:

local SaveInstance = Instance.new("ScreenGui")
local Top = Instance.new("Frame")
local MainGUI = Instance.new("Frame")
local Save = Instance.new("TextButton")
local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
local UICorner = Instance.new("UICorner")
local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
local SaveName = Instance.new("Frame")
local Name = Instance.new("TextBox")
local UIAspectRatioConstraint_2 = Instance.new("UIAspectRatioConstraint")
local UITextSizeConstraint_2 = Instance.new("UITextSizeConstraint")
local TextLabel = Instance.new("TextLabel")
local UITextSizeConstraint_3 = Instance.new("UITextSizeConstraint")
local UIAspectRatioConstraint_3 = Instance.new("UIAspectRatioConstraint")
local UIAspectRatioConstraint_4 = Instance.new("UIAspectRatioConstraint")
local Decompile = Instance.new("Frame")
local Toggle = Instance.new("ImageLabel")
local Button = Instance.new("TextButton")
local Circle = Instance.new("ImageLabel")
local TextLabel_2 = Instance.new("TextLabel")
local UITextSizeConstraint_4 = Instance.new("UITextSizeConstraint")
local Notfication = Instance.new("Frame")
local Background = Instance.new("TextButton")
local NotficationCard = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local Type = Instance.new("TextLabel")
local UITextSizeConstraint_5 = Instance.new("UITextSizeConstraint")
local UIAspectRatioConstraint_5 = Instance.new("UIAspectRatioConstraint")
local TextNotifcation = Instance.new("TextLabel")
local UITextSizeConstraint_6 = Instance.new("UITextSizeConstraint")
local UIAspectRatioConstraint_6 = Instance.new("UIAspectRatioConstraint")
local Okay = Instance.new("TextButton")
local UITextSizeConstraint_7 = Instance.new("UITextSizeConstraint")
local UICorner_3 = Instance.new("UICorner")
local UIAspectRatioConstraint_7 = Instance.new("UIAspectRatioConstraint")
local Border = Instance.new("Frame")
local UIAspectRatioConstraint_8 = Instance.new("UIAspectRatioConstraint")
local TextLabel_3 = Instance.new("TextLabel")
local UITextSizeConstraint_8 = Instance.new("UITextSizeConstraint")
local UIAspectRatioConstraint_9 = Instance.new("UIAspectRatioConstraint")
local CloseGUI = Instance.new("ImageButton")
local UIAspectRatioConstraint_10 = Instance.new("UIAspectRatioConstraint")

--Properties:

SaveInstance.Name = "Save Instance"
SaveInstance.Parent = game.CoreGui
SaveInstance.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Top.Name = "Top"
Top.Parent = SaveInstance
Top.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Top.BorderSizePixel = 0
Top.Position = UDim2.new(0.453627169, 0, 0.219801977, 0)
Top.Size = UDim2.new(0.355371892, 0, 0.0574257411, 0)

MainGUI.Name = "MainGUI"
MainGUI.Parent = Top
MainGUI.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
MainGUI.BorderSizePixel = 0
MainGUI.Position = UDim2.new(0, 0, 1, 0)
MainGUI.Size = UDim2.new(1, 0, 10.034483, 0)

Save.Name = "Save"
Save.Parent = MainGUI
Save.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Save.Position = UDim2.new(0.125281364, 0, 0.660482824, 0)
Save.Size = UDim2.new(0.742096126, 0, 0.267421484, 0)
Save.Font = Enum.Font.SourceSansBold
Save.Text = "Save"
Save.TextColor3 = Color3.fromRGB(255, 255, 255)
Save.TextScaled = true
Save.TextSize = 46.000
Save.TextWrapped = true

UITextSizeConstraint.Parent = Save
UITextSizeConstraint.MaxTextSize = 46

UICorner.CornerRadius = UDim.new(0, 15)
UICorner.Parent = Save

UIAspectRatioConstraint.Parent = Save
UIAspectRatioConstraint.AspectRatio = 3.690

SaveName.Name = "SaveName"
SaveName.Parent = MainGUI
SaveName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SaveName.BackgroundTransparency = 1.000
SaveName.Position = UDim2.new(0.124031007, 0, 0.0584192425, 0)
SaveName.Size = UDim2.new(0.741602063, 0, 0.175257728, 0)

Name.Name = "Name"
Name.Parent = SaveName
Name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Name.BorderSizePixel = 0
Name.Position = UDim2.new(0, 0, 0.372549027, 0)
Name.Size = UDim2.new(1, 0, 0.607843161, 0)
Name.Font = Enum.Font.SourceSans
Name.PlaceholderText = "File Name"
Name.Text = ""
Name.TextColor3 = Color3.fromRGB(0, 0, 0)
Name.TextScaled = true
Name.TextSize = 18.000
Name.TextWrapped = true

UIAspectRatioConstraint_2.Parent = Name
UIAspectRatioConstraint_2.AspectRatio = 9.258

UITextSizeConstraint_2.Parent = Name
UITextSizeConstraint_2.MaxTextSize = 18

TextLabel.Parent = SaveName
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0, 0, -0.0980392173, 0)
TextLabel.Size = UDim2.new(1, 0, 0.450980395, 0)
TextLabel.Font = Enum.Font.SourceSansBold
TextLabel.Text = "Save Name: (The File Name of Game will be Saved)"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 15.000
TextLabel.TextWrapped = true
TextLabel.TextXAlignment = Enum.TextXAlignment.Left

UITextSizeConstraint_3.Parent = TextLabel
UITextSizeConstraint_3.MaxTextSize = 14

UIAspectRatioConstraint_3.Parent = TextLabel
UIAspectRatioConstraint_3.AspectRatio = 12.478

UIAspectRatioConstraint_4.Parent = SaveName
UIAspectRatioConstraint_4.AspectRatio = 5.627

Decompile.Name = "Decompile"
Decompile.Parent = MainGUI
Decompile.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Decompile.BackgroundTransparency = 1.000
Decompile.Position = UDim2.new(0.124031007, 0, 0.257731974, 0)
Decompile.Size = UDim2.new(0.741602063, 0, 0.175257728, 0)

Toggle.Name = "Toggle"
Toggle.Parent = Decompile
Toggle.BackgroundColor3 = Color3.fromRGB(200, 200, 200)
Toggle.BackgroundTransparency = 1.000
Toggle.Position = UDim2.new(0.797391772, 0, 0.266929448, 0)
Toggle.Size = UDim2.new(0.160278752, 0, 0.431372553, 0)
Toggle.Image = "rbxassetid://3570695787"
Toggle.ImageColor3 = Color3.fromRGB(200, 200, 200)
Toggle.ScaleType = Enum.ScaleType.Slice
Toggle.SliceCenter = Rect.new(100, 100, 100, 100)
Toggle.SliceScale = 0.120

Button.Name = "Button"
Button.Parent = Toggle
Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Button.BackgroundTransparency = 1.000
Button.Size = UDim2.new(1, 0, 1, 0)
Button.Font = Enum.Font.SourceSans
Button.TextColor3 = Color3.fromRGB(0, 0, 0)
Button.TextSize = 14.000
Button.TextTransparency = 1.000

Circle.Name = "Circle"
Circle.Parent = Toggle
Circle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Circle.BackgroundTransparency = 1.000
Circle.Position = UDim2.new(0.043478258, 0, 0.0909090936, 0)
Circle.Size = UDim2.new(0.391304314, 0, 0.818181813, 0)
Circle.Image = "rbxassetid://3570695787"
Circle.ScaleType = Enum.ScaleType.Slice
Circle.SliceCenter = Rect.new(100, 100, 100, 100)
Circle.SliceScale = 0.120

TextLabel_2.Parent = Decompile
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.Position = UDim2.new(0.0383275263, 0, 0.129674569, 0)
TextLabel_2.Size = UDim2.new(0.696864128, 0, 0.70588237, 0)
TextLabel_2.Font = Enum.Font.SourceSansBold
TextLabel_2.Text = "Decompile Mode"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 32.000
TextLabel_2.TextWrapped = true

UITextSizeConstraint_4.Parent = TextLabel_2
UITextSizeConstraint_4.MaxTextSize = 32

Notfication.Name = "Notfication"
Notfication.Parent = MainGUI
Notfication.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Notfication.BackgroundTransparency = 1.000
Notfication.Position = UDim2.new(0, 0, -0.0996563584, 0)
Notfication.Size = UDim2.new(1, 0, 1.09965634, 0)
Notfication.Visible = false
Notfication.ZIndex = 5

Background.Name = "Background"
Background.Parent = Notfication
Background.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Background.BackgroundTransparency = 0.500
Background.BorderSizePixel = 0
Background.Size = UDim2.new(1, 0, 1, 0)
Background.AutoButtonColor = false
Background.Modal = true
Background.Font = Enum.Font.SourceSans
Background.Text = ""
Background.TextColor3 = Color3.fromRGB(0, 0, 0)
Background.TextSize = 14.000

NotficationCard.Name = "NotficationCard"
NotficationCard.Parent = Notfication
NotficationCard.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
NotficationCard.Position = UDim2.new(0.124031007, 0, 0.128124997, 0)
NotficationCard.Size = UDim2.new(0.741602063, 0, 0.806249976, 0)

UICorner_2.CornerRadius = UDim.new(0.0500000007, 0)
UICorner_2.Parent = NotficationCard

Type.Name = "Type"
Type.Parent = NotficationCard
Type.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Type.BackgroundTransparency = 1.000
Type.Position = UDim2.new(0.048780486, 0, 0, 0)
Type.Size = UDim2.new(0.916376293, 0, 0.15891473, 0)
Type.Font = Enum.Font.SourceSans
Type.Text = "Error!"
Type.TextColor3 = Color3.fromRGB(255, 255, 255)
Type.TextScaled = true
Type.TextSize = 14.000
Type.TextWrapped = true

UITextSizeConstraint_5.Parent = Type
UITextSizeConstraint_5.MaxTextSize = 41

UIAspectRatioConstraint_5.Parent = Type
UIAspectRatioConstraint_5.AspectRatio = 6.415

TextNotifcation.Name = "Text"
TextNotifcation.Parent = NotficationCard
TextNotifcation.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextNotifcation.BackgroundTransparency = 1.000
TextNotifcation.Position = UDim2.new(0.048780486, 0, 0.159999996, 0)
TextNotifcation.Size = UDim2.new(0.916376293, 0, 0.470284522, 0)
TextNotifcation.Font = Enum.Font.SourceSans
TextNotifcation.Text = "Saving unsuccessfully, try again in few minutes"
TextNotifcation.TextColor3 = Color3.fromRGB(255, 255, 255)
TextNotifcation.TextScaled = true
TextNotifcation.TextSize = 32.000
TextNotifcation.TextWrapped = true
TextNotifcation.TextYAlignment = Enum.TextYAlignment.Top

UITextSizeConstraint_6.Parent = TextNotifcation
UITextSizeConstraint_6.MaxTextSize = 32

UIAspectRatioConstraint_6.Parent = TextNotifcation
UIAspectRatioConstraint_6.AspectRatio = 2.168

Okay.Name = "Activation"
Okay.Parent = NotficationCard
Okay.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Okay.Position = UDim2.new(0.125281364, 0, 0.660482824, 0)
Okay.Size = UDim2.new(0.742096126, 0, 0.267421484, 0)
Okay.Font = Enum.Font.SourceSansBold
Okay.Text = "Okay!"
Okay.TextColor3 = Color3.fromRGB(255, 255, 255)
Okay.TextScaled = true
Okay.TextSize = 46.000
Okay.TextWrapped = true

UITextSizeConstraint_7.Parent = Okay
UITextSizeConstraint_7.MaxTextSize = 46

UICorner_3.CornerRadius = UDim.new(0, 15)
UICorner_3.Parent = Okay

UIAspectRatioConstraint_7.Parent = Okay
UIAspectRatioConstraint_7.AspectRatio = 3.690

Border.Name = "Border"
Border.Parent = NotficationCard
Border.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Border.Position = UDim2.new(0.100000001, 0, 0.150000006, 0)
Border.Size = UDim2.new(0.800000012, 0, 0.00999999978, 0)

UIAspectRatioConstraint_8.Parent = Border
UIAspectRatioConstraint_8.AspectRatio = 88.992

TextLabel_3.Parent = Top
TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.BackgroundTransparency = 1.000
TextLabel_3.BorderSizePixel = 0
TextLabel_3.Size = UDim2.new(0.516795874, 0, 1, 0)
TextLabel_3.ZIndex = -1
TextLabel_3.Font = Enum.Font.SourceSansBold
TextLabel_3.Text = "Save Instance / Game"
TextLabel_3.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.TextSize = 20.000
TextLabel_3.TextWrapped = true

UITextSizeConstraint_8.Parent = TextLabel_3
UITextSizeConstraint_8.MaxTextSize = 20

UIAspectRatioConstraint_9.Parent = TextLabel_3
UIAspectRatioConstraint_9.AspectRatio = 6.897

CloseGUI.Name = "CloseGUI"
CloseGUI.Parent = Top
CloseGUI.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CloseGUI.BackgroundTransparency = 1.000
CloseGUI.Position = UDim2.new(0.922111869, 0, 0, 0)
CloseGUI.Size = UDim2.new(0.0778881162, 0, 1.00000012, 0)
CloseGUI.ZIndex = -1
CloseGUI.Image = "rbxassetid://9876911282"

UIAspectRatioConstraint_10.Parent = CloseGUI
UIAspectRatioConstraint_10.AspectRatio = 1.039

-- Scripts:

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

SaveInstance.Name = randomString()

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

local function MakeNotification(TypeNotification, Message)
	Type.Text = TypeNotification.."!"
	TextNotifcation.Text = Message
	Notfication.Visible = true
end

local function CloseNotification()
	Notfication.Visible = false
end

local toggleCompile = false
local debounce = false
local canSave = true

Button.MouseButton1Click:Connect(function()
	if debounce == false then
		if toggleCompile == true then
			debounce = true
			game:GetService("TweenService"):Create(Toggle, TweenInfo.new(0.25), {ImageColor3 = Color3.fromRGB(200, 200, 200)}):Play()
			game:GetService("TweenService"):Create(Circle, TweenInfo.new(0.25), {Position = UDim2.new(0,2,0,2)}):Play()
			wait(0.25)
			debounce = false
			toggleCompile = false
		elseif toggleCompile == false then
			debounce = true
			game:GetService("TweenService"):Create(Toggle, TweenInfo.new(0.25), {ImageColor3 = Color3.fromRGB(64, 200, 114)}):Play()
			game:GetService("TweenService"):Create(Circle, TweenInfo.new(0.25), {Position = UDim2.new(1,-20,0,2)}):Play()
			wait(0.25)
			debounce = false
			toggleCompile = true
		end
	end
end)

Okay.MouseButton1Click:Connect(CloseNotification)
Background.MouseButton1Click:Connect(CloseNotification)
CloseGUI.MouseButton1Click:Connect(function()
	SaveInstance:Destroy()
end)

Save.MouseButton1Click:Connect(function()
	if canSave == false then
		return;
	end
	local gameName = Name.Text
	if gameName == "" then
		gameName = tostring(game.Name)
	end
	local success, errorMessage = pcall(function()
		Save.Text = "Saving..."
		canSave = false
		makefolder("savedgames")
		saveinstance(game, "savedgames/"..gameName, {
			Decompile = toggleCompile
		})
	end)
	if success then
		MakeNotification("Success", "Instance was Saved on krnlfolder/workspace/savedgames/"..gameName)
		Save.Text = "Saved."
		wait(3)
		Save.Text = "Save"
		canSave = true
	else
		MakeNotification("Error", "Saving unsuccessfully, try again in few minutes!")
		error(errorMessage)
		Save.Text = "Error."
		wait(3)
		Save.Text = "Save"
		canSave = true
	end
end)
