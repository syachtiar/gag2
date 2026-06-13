-- [[ REVISI UTAMA: BRUTE-FORCE AUTO-FARM ]] --
_G.AutoFarm = true

task.spawn(function()
    local player = game:GetService("Players").LocalPlayer
    
    while _G.AutoFarm do
        task.wait(0.3) -- Jeda eksekusi secepat 0.3 detik
        pcall(function()
            local char = player.Character
            local hrp = char and char:FindFirstChild("HumanoidRootPart")
            
            if hrp then
                -- Memindai seluruh dunia game untuk mencari tanaman/tanah
                for _, obj in pairs(workspace:GetDescendants()) do
                    
                    -- JIKA GAME MENGGUNAKAN SISTEM KLIK (ClickDetector)
                    if obj:IsA("ClickDetector") then
                        fireclickdetector(obj)
                    end
                    
                    -- JIKA GAME MENGGUNAKAN SISTEM SENTUHAN (TouchInterest)
                    if obj:IsA("TouchTransmitter") or obj.Name == "TouchInterest" then
                        local part = obj.Parent
                        if part and part:IsA("BasePart") then
                            -- Mensimulasikan kaki/tubuh karakter menyentuh tanaman secara instan
                            firetouchinterest(hrp, part, 0)
                            task.wait()
                            firetouchinterest(hrp, part, 1)
                        end
                    end
                    
                end
            end
        end)
    end
end)

game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Version 2.0 Active",
    Text = "Mencoba bypass Touch & Click...",
    Duration = 5
})
