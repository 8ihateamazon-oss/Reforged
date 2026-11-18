local URL = "https://raw.githubusercontent.com/8ihateamazon-oss/Reforged/main/main.lua"

local ok, source = pcall(function()
    return game:HttpGet(URL .. "?v=" .. tostring(os.time()))
end)

if not ok then
    error("[Reforged] Download failed: " .. tostring(source), 0)
end

if type(source) ~= "string" or source == "" then
    error("[Reforged] GitHub returned an empty script", 0)
end

local chunk, compileError = loadstring(source, "@Reforged/main.lua")
if not chunk then
    error("[Reforged] Compilation failed: " .. tostring(compileError), 0)
end

local started, result = pcall(chunk)
if not started then
    error("[Reforged] Startup failed: " .. tostring(result), 0)
end

return result
