-- [[ SKRIP PERCOBAAN SIMPLE - SPEED HACK ]] --
local player = game:GetService("Players").LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

-- 1. Mengubah kecepatan lari karakter menjadi lebih cepat (Default: 16)
humanoid.WalkSpeed = 40

-- 2. Memunculkan notifikasi di layar untuk bukti skrip sukses berjalan
game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "GitHub Sukses!",
    Text = "Karakter Anda sekarang berlari cepat.",
    Duration = 5
})
