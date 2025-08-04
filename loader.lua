local password = "talleres1"

-- GUI
local gui = Instance.new("ScreenGui", game.Players.LocalPlayer:WaitForChild("PlayerGui"))
gui.Name = "KeySystem"

-- Frame principal
local frame = Instance.new("Frame", gui)
frame.Size = UDim2.new(0, 400, 0, 260)
frame.Position = UDim2.new(0.5, -200, 0.5, -130)
frame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
frame.BorderSizePixel = 0
Instance.new("UICorner", frame).CornerRadius = UDim.new(0, 12)

-- Título oscuro
local titleBar = Instance.new("Frame", frame)
titleBar.Size = UDim2.new(1, 0, 0.18, 0)
titleBar.Position = UDim2.new(0, 0, 0, 0)
titleBar.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
Instance.new("UICorner", titleBar).CornerRadius = UDim.new(0, 12)

local title = Instance.new("TextLabel", titleBar)
title.Text = "Overflow"
title.Size = UDim2.new(1, -40, 1, 0)
title.Position = UDim2.new(0.03, 0, 0, 0)
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.BackgroundTransparency = 1
title.Font = Enum.Font.Gotham
title.TextScaled = true
title.TextXAlignment = Enum.TextXAlignment.Left

-- Instrucción
local desc = Instance.new("TextLabel", frame)
desc.Text = "Click the Get Key button, open the copied link,\ncomplete the steps, then redeem your key here."
desc.Size = UDim2.new(0.92, 0, 0.25, 0)
desc.Position = UDim2.new(0.04, 0, 0.2, 0)
desc.TextColor3 = Color3.fromRGB(220, 220, 220)
desc.BackgroundTransparency = 1
desc.Font = Enum.Font.Gotham
desc.TextScaled = true
desc.TextWrapped = true

-- Input con icono 🔑
local inputBG = Instance.new("Frame", frame)
inputBG.Size = UDim2.new(0.92, 0, 0.17, 0)
inputBG.Position = UDim2.new(0.04, 0, 0.50, 0)
inputBG.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Instance.new("UICorner", inputBG).CornerRadius = UDim.new(0, 6)

local keyIcon = Instance.new("TextLabel", inputBG)
keyIcon.Text = "🔑"
keyIcon.Size = UDim2.new(0.1, 0, 1, 0)
keyIcon.Position = UDim2.new(0.02, 0, 0, 0)
keyIcon.BackgroundTransparency = 1
keyIcon.TextColor3 = Color3.fromRGB(255, 255, 255)
keyIcon.Font = Enum.Font.Gotham
keyIcon.TextScaled = true

local input = Instance.new("TextBox", inputBG)
input.PlaceholderText = "xxxxxxxxxxx"
input.Text = ""
input.Size = UDim2.new(0.85, 0, 1, 0)
input.Position = UDim2.new(0.13, 0, 0, 0)
input.BackgroundTransparency = 1
input.TextColor3 = Color3.fromRGB(255, 255, 255)
input.Font = Enum.Font.Gotham
input.TextScaled = true

-- Botón Get Key
local getKey = Instance.new("TextButton", frame)
getKey.Text = "Get Key"
getKey.Size = UDim2.new(0.44, 0, 0.17, 0)
getKey.Position = UDim2.new(0.04, 0, 0.73, 0)
getKey.BackgroundColor3 = Color3.fromRGB(0, 0, 255)
getKey.TextColor3 = Color3.fromRGB(255, 255, 255)
getKey.Font = Enum.Font.GothamBold
getKey.TextScaled = true
Instance.new("UICorner", getKey).CornerRadius = UDim.new(0, 6)

-- Botón Redeem
local redeem = Instance.new("TextButton", frame)
redeem.Text = "Redeem"
redeem.Size = UDim2.new(0.44, 0, 0.17, 0)
redeem.Position = UDim2.new(0.52, 0, 0.73, 0)
redeem.BackgroundColor3 = Color3.fromRGB(0, 0, 255)
redeem.TextColor3 = Color3.fromRGB(255, 255, 255)
redeem.Font = Enum.Font.GothamBold
redeem.TextScaled = true
Instance.new("UICorner", redeem).CornerRadius = UDim.new(0, 6)

-- Hover azul suave
local function hover(btn)
	btn.MouseEnter:Connect(function()
		btn.BackgroundColor3 = Color3.fromRGB(40, 40, 255)
	end)
	btn.MouseLeave:Connect(function()
		btn.BackgroundColor3 = Color3.fromRGB(0, 0, 255)
	end)
end

hover(getKey)
hover(redeem)

-- Funcionalidad botones
getKey.MouseButton1Click:Connect(function()
	setclipboard("https://paste-drop.com/paste/F1VO5jd9k4")
	getKey.Text = "Copied ✅"
	wait(1.5)
	getKey.Text = "Get Key"
end)

redeem.MouseButton1Click:Connect(function()
	if input.Text == password then
		gui:Destroy()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/tienkhanh1/spicy/main/Chilli.lua"))()
	else
		redeem.Text = "Wrong ❌"
		wait(1.5)
		redeem.Text = "Redeem"
	end
end)
