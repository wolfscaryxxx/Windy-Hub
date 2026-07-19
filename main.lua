-- Windy Hub
if game.CoreGui:FindFirstChild("WindyHackHub") then
    game.CoreGui.WindyHackHub:Destroy()
end

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "WindyHackHub"
ScreenGui.Parent = game.CoreGui
ScreenGui.ResetOnSpawn = false

local Theme = {
    Background = Color3.fromRGB(15, 16, 18),
    Crimson = Color3.fromRGB(204, 0, 31),
    White = Color3.fromRGB(255, 255, 255)
}


local IconButton = Instance.new("ImageButton", ScreenGui)
IconButton.Size = UDim2.new(0, 65, 0, 65)
IconButton.Position = UDim2.new(0.05, 0, 0.4, 0)
IconButton.BackgroundColor3 = Theme.Background
IconButton.BorderSizePixel = 0
IconButton.Image = "rbxassetid://112953431419723"
IconButton.Active = true
IconButton.Draggable = true
Instance.new("UICorner", IconButton).CornerRadius = UDim.new(0, 12)
Instance.new("UIStroke", IconButton).Color = Theme.Crimson

local MainFrame = Instance.new("Frame", ScreenGui)
MainFrame.Size = UDim2.new(0, 320, 0, 200)
MainFrame.Position = UDim2.new(0.5, -160, 0.5, -100)
MainFrame.BackgroundColor3 = Theme.Background
MainFrame.BorderSizePixel = 0
MainFrame.Visible = false
Instance.new("UICorner", MainFrame).CornerRadius = UDim.new(0, 10)
Instance.new("UIStroke", MainFrame).Color = Theme.Crimson

IconButton.MouseButton1Click:Connect(function()
    IconButton.Visible = false
    MainFrame.Visible = true
end)

local Title = Instance.new("TextLabel", MainFrame)
Title.Size = UDim2.new(1, 0, 0, 40)
Title.Text = "WINDY HUB"
Title.BackgroundColor3 = Color3.fromRGB(8, 9, 10)
Title.TextColor3 = Theme.White
Title.Font = Enum.Font.GothamBold
Title.TextSize = 16
Instance.new("UICorner", Title).CornerRadius = UDim.new(0, 10)

local CloseBtn = Instance.new("TextButton", MainFrame)
CloseBtn.Size = UDim2.new(0, 30, 0, 30)
CloseBtn.Position = UDim2.new(1, -35, 0, 5)
CloseBtn.Text = "X"
CloseBtn.BackgroundColor3 = Color3.fromRGB(100, 5, 15)
CloseBtn.TextColor3 = Theme.Crimson
CloseBtn.Font = Enum.Font.GothamBold
CloseBtn.MouseButton1Click:Connect(function()
    MainFrame.Visible = false
    IconButton.Visible = true
end)
Instance.new("UICorner", CloseBtn).CornerRadius = UDim.new(0, 6)


local Message = Instance.new("TextLabel", MainFrame)
Message.Size = UDim2.new(1, -20, 1, -50)
Message.Position = UDim2.new(0, 10, 0, 50)
Message.BackgroundTransparency = 1
Message.Text = "  SOON Windy community 🌪️ "
Message.TextColor3 = Theme.White
Message.Font = Enum.Font.GothamSemibold
Message.TextSize = 18
Message.TextWrapped = true
