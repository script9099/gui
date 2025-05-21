local player = game.Players.LocalPlayer
local gui = Instance.new("ScreenGui", player:WaitForChild("PlayerGui"))
gui.Name = "FakeTradeScamUI"
gui.ResetOnSpawn = false

local frame = Instance.new("Frame", gui)
frame.Size = UDim2.new(0, 300, 0, 200)
frame.Position = UDim2.new(0.3, 0, 0.3, 0)
frame.BackgroundColor3 = Color3.fromRGB(25, 25, 40)
frame.Active = true
frame.Draggable = true -- Rende il frame muovibile
frame.BorderSizePixel = 0

-- Glow/bordo
local stroke = Instance.new("UIStroke", frame)
stroke.Color = Color3.fromRGB(120, 255, 255)
stroke.Thickness = 2

-- Titolo "Trade Scam"
local title = Instance.new("TextLabel", frame)
title.Size = UDim2.new(1, 0, 0, 40)
title.Position = UDim2.new(0, 0, 0, 0)
title.BackgroundTransparency = 1
title.Text = "Trade Scam"
title.TextColor3 = Color3.fromRGB(255, 0, 120)
title.TextSize = 28
title.Font = Enum.Font.FredokaOne
title.TextStrokeTransparency = 0.5

-- Funzione per creare toggle
local function createToggle(name, yPos)
	local toggle = Instance.new("TextButton", frame)
	toggle.Size = UDim2.new(0.9, 0, 0, 35)
	toggle.Position = UDim2.new(0.05, 0, 0, yPos)
	toggle.BackgroundColor3 = Color3.fromRGB(60, 60, 90)
	toggle.TextColor3 = Color3.new(1, 1, 1)
	toggle.TextSize = 18
	toggle.Font = Enum.Font.GothamBold
	toggle.Text = name .. ": OFF"
	toggle.BorderSizePixel = 0

	local isOn = false
	toggle.MouseButton1Click:Connect(function()
		isOn = not isOn
		toggle.Text = name .. ": " .. (isOn and "ON" or "OFF")
		toggle.BackgroundColor3 = isOn and Color3.fromRGB(100, 200, 255) or Color3.fromRGB(60, 60, 90)
	end)
end

-- Crea i toggle
createToggle("AUTO ADD ITEMS", 50)
createToggle("FORCE ACCEPT", 95)
createToggle("FREEZE VICTIM'S GAME", 140)
