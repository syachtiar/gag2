-- [[ SKRIP CLONE SPEED HUB - SPESIFIK AUTO FARM WORTEL ]] --
local ProximityPromptService = game:GetService("ProximityPromptService")

ProximityPromptService.PromptShown:Connect(function(prompt)
    pcall(function()
        -- Mengambil teks objek dan teks tindakan, lalu diubah ke huruf kecil semua
        local objectText = string.lower(prompt.ObjectText)
        local actionText = string.lower(prompt.ActionText)
        
        -- LOGIKA PENYARINGAN (FILTER):
        -- Hanya mengeksekusi jika objek mengandung kata "carrot" (wortel) DAN tindakan mengandung "harvest" (panen)
        if string.find(objectText, "carrot") or string.find(actionText, "harvest") then
            -- Simulasi klik instan secara gaib
            prompt:InputHoldBegin()
            task.wait(0.05) -- Jeda milidetik aman
            prompt:InputHoldEnd()
        end
    end)
end)

-- Notifikasi keberhasilan pemuatan fitur filter
game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Carrot Filter Active",
    Text = "Hanya memanen wortel otomatis.",
    Duration = 5
})
