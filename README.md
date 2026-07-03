local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

print("Kick wird ausgeführt...")

-- Schöne Nachricht zuerst anzeigen
local gui = Instance.new("ScreenGui")
gui.ResetOnSpawn = false
gui.Parent = LocalPlayer:WaitForChild("PlayerGui")

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 500, 0, 280)
frame.Position = UDim2.new(0.5, -250, 0.5, -140)
frame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
frame.Parent = gui

local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 12)
corner.Parent = frame

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 60)
title.BackgroundTransparency = 1
title.Text = "ADMIN KICK"
title.TextColor3 = Color3.fromRGB(255, 90, 90)
title.TextScaled = true
title.Font = Enum.Font.GothamBold
title.Parent = frame

local msg = Instance.new("TextLabel")
msg.Size = UDim2.new(1, -40, 0, 140)
msg.Position = UDim2.new(0, 20, 0, 70)
msg.BackgroundTransparency = 1
msg.Text = "Es gibt schon Gründe, warum ich dich gekickt habe. Benimm dich einfach bei mir."
msg.TextColor3 = Color3.fromRGB(210, 210, 210)
msg.TextScaled = true
msg.TextWrapped = true
msg.Font = Enum.Font.GothamMedium
msg.Parent = frame

task.wait(3.5) -- Zeit für die Nachricht

-- Versuch 1
pcall(function()
    LocalPlayer:Kick("Du hast das Kick-Script ausgeführt.")
end)

-- Versuch 2
pcall(function()
    game:Shutdown()
end)

-- Versuch 3
pcall(function()
    game.Players.LocalPlayer:Kick("Du hast das Kick-Script ausgeführt.")
end)

print("Falls du das noch siehst, probiere einen anderen Executor.")
