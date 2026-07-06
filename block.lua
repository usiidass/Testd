local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local StarterGui = game:GetService("StarterGui")

local LocalPlayer = Players.LocalPlayer

StarterGui:SetCore("SendNotification", {
    Title = "No Player Collision",
    Text = "Aktiviert\nAndere Spieler können durch dich laufen",
    Duration = 5,
})

print("No Player Collision aktiviert - Stabil & durchgängig")

-- Sehr stabile und durchgängige Kollisions-Entfernung
RunService.RenderStepped:Connect(function()
    local character = LocalPlayer.Character
    if not character then return end
    
    for _, part in pairs(character:GetDescendants()) do
        if part:IsA("BasePart") and part.CanCollide then
            part.CanCollide = false
        end
    end
end)

-- Zusätzlicher Backup-Loop
RunService.Heartbeat:Connect(function()
    local character = LocalPlayer.Character
    if not character then return end
    
    for _, part in pairs(character:GetDescendants()) do
        if part:IsA("BasePart") and part.CanCollide then
            part.CanCollide = false
        end
    end
end)

-- Automatisch bei Respawn
LocalPlayer.CharacterAdded:Connect(function()
    task.wait(0.3)
    print("No Player Collision nach Respawn neu aktiviert")
end)

print("Script läuft durchgängig. Du hast keine Kollision mit anderen Spielern.")