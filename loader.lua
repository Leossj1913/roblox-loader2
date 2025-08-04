local password = "talleres1"

-- Crear GUI
local gui = Instance.new("ScreenGui", game.Players.LocalPlayer:WaitForChild("PlayerGui"))
gui.Name = "SecureLoader"

-- Fondo principal
local frame = Instance.new("Frame", gui)
frame.Size = UDim2.new(0, 300, 0, 220)
frame.Position = UDim2.new(0.5, -150, 0.5, -110)
frame.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
frame.BorderSizePixel = 0
frame.BackgroundTransparency = 0.1

local corner = Instance.new("UICorner", frame)
corner.CornerRadius = UDim.new(0, 12)

-- Título
local title = Instance.new("TextLabel", frame)
title.Text = "🔐 Enter Password"
title.Size = UDim2.new(1, 0, 0.2, 0)
title.Position = UDim2.new(0, 0, 0, 10)
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.BackgroundTransparency = 1
title.Font = Enum.Font.GothamBold
title.TextScaled = true

-- Input con ícono
local input = Instance.new("TextBox", frame)
input.PlaceholderText = "xxxxxxxxx"
input.Text = ""
input.Size = UDim2.new(0.85, 0, 0.18, 0)
input.Position = UDim2.new(0.075, 0, 0.35, 0)
input.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
input.TextColor3 = Color3.fromRGB(255, 255, 255)
input.TextScaled = true
input.Font = Enum.Font.Gotham
Instance.new("UICorner", input).CornerRadius = UDim.new(0, 6)

-- Emoji ícono 🔑
local icon = Instance.new("TextLabel", frame)
icon.Text = "🔑"
icon.Size = UDim2.new(0.1, 0, 0.18, 0)
icon.Position = UDim2.new(0.01, 0, 0.35, 0)
icon.BackgroundTransparency = 1
icon.TextColor3 = Color3.fromRGB(255, 255, 255)
icon.Font = Enum.Font.Gotham
icon.TextScaled = true

-- Botón CONTINUE
local continue = Instance.new("TextButton", frame)
continue.Text = "Continue"
continue.Size = UDim2.new(0.4, 0, 0.18, 0)
continue.Position = UDim2.new(0.05, 0, 0.65, 0)
continue.BackgroundColor3 = Color3.fromRGB(0, 0, 255)
continue.TextColor3 = Color3.fromRGB(255, 255, 255)
continue.Font = Enum.Font.GothamBold
continue.TextScaled = true
Instance.new("UICorner", continue).CornerRadius = UDim.new(0, 8)

-- Botón RECEIVE PASSWORD
local getPass = Instance.new("TextButton", frame)
getPass.Text = "Receive"
getPass.Size = UDim2.new(0.4, 0, 0.18, 0)
getPass.Position = UDim2.new(0.55, 0, 0.65, 0)
getPass.BackgroundColor3 = Color3.fromRGB(0, 0, 255)
getPass.TextColor3 = Color3.fromRGB(255, 255, 255)
getPass.Font = Enum.Font.GothamBold
getPass.TextScaled = true
Instance.new("UICorner", getPass).CornerRadius = UDim.new(0, 8)

-- Sombras / efecto hover
local function hover(btn)
	btn.MouseEnter:Connect(function()
		btn.BackgroundColor3 = Color3.fromRGB(40, 40, 255)
	end)
	btn.MouseLeave:Connect(function()
		btn.BackgroundColor3 = Color3.fromRGB(0, 0, 255)
	end)
end

hover(continue)
hover(getPass)

-- Función Continue
continue.MouseButton1Click:Connect(function()
	if input.Text == password then
		gui:Destroy()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/tienkhanh1/spicy/main/Chilli.lua"))()
	else
		continue.Text = "Wrong ❌"
		wait(1.5)
		continue.Text = "Continue"
	end
end)

-- Función Receive Password
getPass.MouseButton1Click:Connect(function()
	setclipboard("https://paste-drop.com/paste/F1VO5jd9k4")
	getPass.Text = "Copied ✅"
	wait(1.5)
	getPass.Text = "Receive"
end)
