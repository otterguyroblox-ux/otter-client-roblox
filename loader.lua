local HttpService = game:GetService("HttpService")
local Players = game:GetService("Players")

local base = "https://raw.githubusercontent.com/otterguyroblox-ux/otter-client-roblox/main/"

local otterclient = loadstring(game:HttpGet(base .. "src/gui.lua"))()

local gameId = game.PlaceId
local games = {
    [6872274481] = "bedwars",
    [6872265039] = "bedwars",
}

if games[gameId] then
    local name = games[gameId]
    local ok, mod = pcall(function()
        return loadstring(game:HttpGet(base .. "games/" .. name .. ".lua"))()
    end)
    if ok and mod then
        mod(otterclient)
    end
end

return otterclient
