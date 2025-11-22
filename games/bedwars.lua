return function(otterclient)
    local Players = game:GetService("Players")
    local player = Players.LocalPlayer
    
    local combat = otterclient.Categories["Combat"]
    local blatant = otterclient.Categories["Blatant"]
    local render = otterclient.Categories["Render"]
    local utility = otterclient.Categories["Utility"]
    local world = otterclient.Categories["World"]
    
    combat:CreateModule({
        Name = "Killaura",
        Type = "Toggle",
        Default = false,
        Function = function(enabled)
        end
    })
    
    combat:CreateModule({
        Name = "Reach",
        Type = "Slider",
        Min = 3,
        Max = 18,
        Default = 3,
        Function = function(value)
        end
    })
    
    combat:CreateModule({
        Name = "Velocity",
        Type = "Slider",
        Min = 0,
        Max = 100,
        Default = 100,
        Function = function(value)
        end
    })
    
    combat:CreateModule({
        Name = "AutoClicker",
        Type = "Toggle",
        Default = false,
        Function = function(enabled)
        end
    })
    
    blatant:CreateModule({
        Name = "Speed",
        Type = "Slider",
        Min = 16,
        Max = 100,
        Default = 16,
        Function = function(value)
            local humanoid = player.Character and player.Character:FindFirstChild("Humanoid")
            if humanoid then
                humanoid.WalkSpeed = value
            end
        end
    })
    
    blatant:CreateModule({
        Name = "Fly",
        Type = "Toggle",
        Default = false,
        Function = function(enabled)
        end
    })
    
    blatant:CreateModule({
        Name = "Nuker",
        Type = "Toggle",
        Default = false,
        Function = function(enabled)
        end
    })
    
    render:CreateModule({
        Name = "ESP",
        Type = "Toggle",
        Default = false,
        Function = function(enabled)
        end
    })
    
    render:CreateModule({
        Name = "Tracers",
        Type = "Toggle",
        Default = false,
        Function = function(enabled)
        end
    })
    
    render:CreateModule({
        Name = "Fullbright",
        Type = "Toggle",
        Default = false,
        Function = function(enabled)
            local Lighting = game:GetService("Lighting")
            if enabled then
                Lighting.Brightness = 2
                Lighting.ClockTime = 14
                Lighting.FogEnd = 100000
                Lighting.GlobalShadows = false
            else
                Lighting.Brightness = 1
                Lighting.ClockTime = 12
                Lighting.FogEnd = 100000
                Lighting.GlobalShadows = true
            end
        end
    })
    
    utility:CreateModule({
        Name = "Auto Tool",
        Type = "Toggle",
        Default = false,
        Function = function(enabled)
        end
    })
    
    utility:CreateModule({
        Name = "No Fall Damage",
        Type = "Toggle",
        Default = false,
        Function = function(enabled)
        end
    })
    
    world:CreateModule({
        Name = "Scaffold",
        Type = "Toggle",
        Default = false,
        Function = function(enabled)
        end
    })
    
    world:CreateModule({
        Name = "Auto Mine",
        Type = "Toggle",
        Default = false,
        Function = function(enabled)
        end
    })
end
