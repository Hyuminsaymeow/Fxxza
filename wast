_G.ENABLED = not _G.ENABLED
print("Enabled:", _G.ENABLED)

local Players = game:GetService("Players")
local Lighting = game:GetService("Lighting")
local VIM = game:GetService("VirtualInputManager")

local LocalPlayer = Players.LocalPlayer
local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")

-- =========================
-- NORSE HUB UI
-- =========================

local oldGui = PlayerGui:FindFirstChild("NorseHubUI")
if oldGui then
    oldGui:Destroy()
end

local oldBlur = Lighting:FindFirstChild("NorseHubBlur")
if oldBlur then
    oldBlur:Destroy()
end

local gui = Instance.new("ScreenGui")
gui.Name = "NorseHubUI"
gui.ResetOnSpawn = false
gui.IgnoreGuiInset = true
gui.DisplayOrder = 999999
gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
gui.Parent = PlayerGui

local blur = Instance.new("BlurEffect")
blur.Name = "NorseHubBlur"
blur.Size = 10
blur.Parent = Lighting

local box = Instance.new("Frame")
box.Size = UDim2.new(0, 420, 0, 130)
box.Position = UDim2.new(0.5, 0, 0.5, 0)
box.AnchorPoint = Vector2.new(0.5, 0.5)
box.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
box.BackgroundTransparency = 0.15
box.BorderSizePixel = 0
box.ZIndex = 10
box.Parent = gui

local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 15)
corner.Parent = box

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 70)
title.Position = UDim2.new(0, 0, 0, 10)
title.BackgroundTransparency = 1
title.Text = "Norse Hub"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.TextSize = 42
title.Font = Enum.Font.GothamBold
title.ZIndex = 11
title.Parent = box

local status = Instance.new("TextLabel")
status.Size = UDim2.new(1, 0, 0, 30)
status.Position = UDim2.new(0, 0, 0, 82)
status.BackgroundTransparency = 1
status.Text = "Auto Farm : ON"
status.TextColor3 = Color3.fromRGB(100, 255, 100)
status.TextSize = 18
status.Font = Enum.Font.Gotham
status.ZIndex = 11
status.Parent = box

-- =========================
-- AUTO FARM
-- =========================

local Collection = {}

function Collection:autoFarm()

    while _G.ENABLED do

        local character = LocalPlayer.Character
            or LocalPlayer.CharacterAdded:Wait()

        local hrp = character:FindFirstChild("HumanoidRootPart")

        if not hrp then
            task.wait(1)
            continue
        end

        for _, v in pairs(workspace:GetChildren()) do

            if not _G.ENABLED then
                break
            end

            if v.Name == "Thug,"
            or v.Name == "Strong Thug"
            or v.Name == "king of the Thugs"
            or v.Name == "Evil Vampire"
            or v.Name == "Slightly More Eviler Vampire"
            or v.Name == "Vampire Capo" then

                local enemyHumanoid = v:FindFirstChildOfClass("Humanoid")
                local enemyHRP = v:FindFirstChild("HumanoidRootPart")

                if enemyHumanoid and enemyHRP then

                    repeat
                        task.wait()

                        character = LocalPlayer.Character

                        if not character then
                            break
                        end

                        hrp = character:FindFirstChild("HumanoidRootPart")

                        if not hrp then
                            break
                        end

                        hrp.CFrame =
                            enemyHRP.CFrame * CFrame.new(0, 0, 9)

                        VIM:SendMouseButtonEvent(
                            500, 300, 0, true, game, 0
                        )

                        task.wait(0.05)

                        VIM:SendMouseButtonEvent(
                            500, 300, 0, false, game, 0
                        )

                    until not _G.ENABLED
                        or not v.Parent
                        or not enemyHumanoid.Parent
                        or enemyHumanoid.Health <= 0
                end
            end
        end

        task.wait()
    end
end

task.spawn(function()
    Collection:autoFarm()
end)
