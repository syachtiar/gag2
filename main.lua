-- [[ SKRIP UTAMAA AUTO-FARM GROW A GARDEN 2 ]] --
_G.AutoFarm = true
task.spawn(function()
    local player = game:GetService("Players").LocalPlayer
    while _G.AutoFarm do
        task.wait(0.5)
        pcall(function()
            for _, obj in pairs(workspace:GetDescendants()) do
                if obj:IsA("ProximityPrompt") then
                    local character = player.Character
                    if character and character:FindFirstChild("HumanoidRootPart") then
                        obj:InputHoldBegin()
                        task.wait(0.1)
                        obj:InputHoldEnd()
                    end
                end
            end
        end)
    end
end)
game:GetService("StarterGui"):SetCore("SendNotification", {Title = "Auto-Farm Aktif!", Text = "Skrip panen otomatis berjalan.", Duration = 5})
