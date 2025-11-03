-- fucking xeno support no excutors work propurly 
-- dosent load everything because we dumb ass :fire:
local url = "https://raw.githubusercontent.com/otterguyroblox-ux/otter-client-roblox/main/gui/gui.lua"

local ok, code = pcall(game.HttpGet, game, url)
if ok and code and #code > 50 then
    loadstring(code)()
    print("otter gui up - hit right shift to toggle") -- i might remove shit 
else
    warn("couldnt grab gui, check url or repo")
    -- try root if needed
    pcall(function() -- always need a pcall nga
        local fallback = game:HttpGet("https://raw.githubusercontent.com/otterguyroblox-ux/otter-client-roblox/main/main.lua") -- okie
        loadstring(fallback)()
    end)
end
