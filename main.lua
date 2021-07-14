local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("ImageLabel")
local Frame_2 = Instance.new("ImageLabel")
local Frame_3 = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local Frame_4 = Instance.new("Frame")
local tablist = Instance.new("ScrollingFrame")
local Frame_5 = Instance.new("Frame")
local btt1 = Instance.new("TextButton")
local btt2 = Instance.new("TextButton")
local Lists = Instance.new("Folder")
local Selectionlist = Instance.new("ScrollingFrame")
local Frame1 = Instance.new("Frame")
local btt1_2 = Instance.new("TextButton")
local btt2_2 = Instance.new("TextButton")
local Frame2 = Instance.new("Frame")
local btt1_3 = Instance.new("TextButton")
local btt2_3 = Instance.new("TextButton")
local UserInputService = game:GetService("UserInputService")
local gui = Frame
local dragging
local dragInput
local dragStart
local startPos

--Properties:

ScreenGui.Parent = game:WaitForChild("CoreGui")

Frame.Name = "Frame"
Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BackgroundTransparency = 1.000
Frame.Position = UDim2.new(0.716723502, 0, 0.716595769, 0)
Frame.Size = UDim2.new(0.270000011, 0, 0.25999999, 0)
Frame.Image = "rbxassetid://3570695787"
Frame.ImageColor3 = Color3.fromRGB(31, 31, 31)
Frame.ScaleType = Enum.ScaleType.Slice
Frame.SliceCenter = Rect.new(100, 100, 100, 100)
Frame.SliceScale = 0.120

Frame_2.Name = "Frame"
Frame_2.Parent = Frame
Frame_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame_2.BackgroundTransparency = 1.000
Frame_2.Position = UDim2.new(0.0124600902, 0, 0.0259248577, 0)
Frame_2.Size = UDim2.new(0.97426331, 0, 0.9506706, 0)
Frame_2.Image = "rbxassetid://3570695787"
Frame_2.ImageColor3 = Color3.fromRGB(47, 47, 47)
Frame_2.ScaleType = Enum.ScaleType.Slice
Frame_2.SliceCenter = Rect.new(100, 100, 100, 100)
Frame_2.SliceScale = 0.120

Frame_3.Parent = Frame
Frame_3.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
Frame_3.BorderSizePixel = 0
Frame_3.Position = UDim2.new(0, 0, 0.0259248577, 0)
Frame_3.Size = UDim2.new(1, 0, 0.0439601056, 0)

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(-0.00180580374, 0, 0, 0)
TextLabel.Size = UDim2.new(1, 1, 0.0687397718, 0)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Xorus"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

Frame_4.Parent = Frame
Frame_4.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
Frame_4.BorderSizePixel = 0
Frame_4.Position = UDim2.new(0.158730194, 0, 0.0259248577, 0)
Frame_4.Size = UDim2.new(0.012405863, 0, 0.9506706, 0)

tablist.Name = "tablist"
tablist.Parent = Frame
tablist.Active = true
tablist.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
tablist.BorderSizePixel = 0
tablist.Position = UDim2.new(0.0124600902, 0, 0.0698849559, 0)
tablist.Size = UDim2.new(0.146270126, 0, 0.906710505, 0)
tablist.CanvasSize = UDim2.new(0, 0, 5, 0)
tablist.ScrollBarThickness = 0

Frame_5.Parent = tablist
Frame_5.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
Frame_5.BorderSizePixel = 0
Frame_5.Size = UDim2.new(1, 0, 1, 0)

btt1.Name = "btt1"
btt1.Parent = Frame_5
btt1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
btt1.Position = UDim2.new(0, 0, 0.00357446796, 0)
btt1.Size = UDim2.new(1, 0, 0.0166595764, 0)
btt1.Font = Enum.Font.SourceSans
btt1.Text = "List 1"
btt1.TextColor3 = Color3.fromRGB(0, 0, 0)
btt1.TextScaled = true
btt1.TextSize = 14.000
btt1.TextWrapped = true

btt2.Name = "btt2"
btt2.Parent = Frame_5
btt2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
btt2.Position = UDim2.new(0, 0, 0.0366088375, 0)
btt2.Size = UDim2.new(1, 0, 0.0166595764, 0)
btt2.Font = Enum.Font.SourceSans
btt2.Text = "List 2"
btt2.TextColor3 = Color3.fromRGB(0, 0, 0)
btt2.TextScaled = true
btt2.TextSize = 14.000
btt2.TextWrapped = true

Lists.Name = "Lists"
Lists.Parent = Frame

Selectionlist.Name = "Selectionlist"
Selectionlist.Parent = Frame
Selectionlist.Active = true
Selectionlist.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
Selectionlist.BorderSizePixel = 0
Selectionlist.Position = UDim2.new(0.171136066, 0, 0.0698849559, 0)
Selectionlist.Size = UDim2.new(0.815587461, 0, 0.906710505, 0)
Selectionlist.CanvasSize = UDim2.new(0, 0, 5, 0)
Selectionlist.ScrollBarThickness = 0

Frame1.Name = "Frame1"
Frame1.Parent = Selectionlist
Frame1.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
Frame1.BorderSizePixel = 0
Frame1.Size = UDim2.new(1, 0, 1, 0)
Frame1.Visible = false

btt1_2.Name = "btt1"
btt1_2.Parent = Frame1
btt1_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
btt1_2.Position = UDim2.new(0, 0, 0.00357446796, 0)
btt1_2.Size = UDim2.new(1, 0, 0.0166595764, 0)
btt1_2.Font = Enum.Font.SourceSans
btt1_2.Text = "List 1"
btt1_2.TextColor3 = Color3.fromRGB(0, 0, 0)
btt1_2.TextScaled = true
btt1_2.TextSize = 14.000
btt1_2.TextWrapped = true

btt2_2.Name = "btt2"
btt2_2.Parent = Frame1
btt2_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
btt2_2.Position = UDim2.new(0, 0, 0.0366088375, 0)
btt2_2.Size = UDim2.new(1, 0, 0.0166595764, 0)
btt2_2.Font = Enum.Font.SourceSans
btt2_2.Text = "List 2"
btt2_2.TextColor3 = Color3.fromRGB(0, 0, 0)
btt2_2.TextScaled = true
btt2_2.TextSize = 14.000
btt2_2.TextWrapped = true

Frame2.Name = "Frame2"
Frame2.Parent = Selectionlist
Frame2.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
Frame2.BorderSizePixel = 0
Frame2.Size = UDim2.new(1, 0, 1, 0)
Frame2.Visible = false

btt1_3.Name = "btt1"
btt1_3.Parent = Frame2
btt1_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
btt1_3.Position = UDim2.new(0, 0, 0.00357446796, 0)
btt1_3.Size = UDim2.new(1, 0, 0.0166595764, 0)
btt1_3.Font = Enum.Font.SourceSans
btt1_3.Text = "List 3"
btt1_3.TextColor3 = Color3.fromRGB(0, 0, 0)
btt1_3.TextScaled = true
btt1_3.TextSize = 14.000
btt1_3.TextWrapped = true

btt2_3.Name = "btt2"
btt2_3.Parent = Frame2
btt2_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
btt2_3.Position = UDim2.new(0, 0, 0.0366088375, 0)
btt2_3.Size = UDim2.new(1, 0, 0.0166595764, 0)
btt2_3.Font = Enum.Font.SourceSans
btt2_3.Text = "List 4"
btt2_3.TextColor3 = Color3.fromRGB(0, 0, 0)
btt2_3.TextScaled = true
btt2_3.TextSize = 14.000
btt2_3.TextWrapped = true
------------------dragging----------------------------------------
local function update(input)
	local delta = input.Position - dragStart
	gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end
gui.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
		dragging = true
		dragStart = input.Position
		startPos = gui.Position
		
		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				dragging = false
			end
		end)
	end
end)
gui.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
		dragInput = input
	end
end)

UserInputService.InputChanged:Connect(function(input)
	if input == dragInput and dragging then
		update(input)
	end
end)
-------------------------------list-----------------------------------
