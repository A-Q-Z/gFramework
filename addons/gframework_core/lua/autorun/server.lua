
-- Include core server files
include('gframework/core.lua')

-- Add client-side files to be sent to clients
AddCSLuaFile('gframework/core.lua')
AddCSLuaFile('gframework/client.lua')

-- Initialize the server-side of the framework
hook.Add('Initialize', 'gFramework_ServerInitialize', function()
    print('[gFramework] Server is initializing...')

    -- Call the optimization function
    gFramework:OptimizeServer()

    print('[gFramework] Server initialization complete.')
end)

-- Optimize the server-side experience
function gFramework:OptimizeServer()
    -- Perform resource cleanup
    self:CleanupUnusedResources()

    -- Set network rates for optimization
    RunConsoleCommand('sv_minrate', '20000')
    RunConsoleCommand('sv_maxrate', '0')
    RunConsoleCommand('sv_minupdaterate', '66')
    RunConsoleCommand('sv_maxupdaterate', '66')
    RunConsoleCommand('sv_mincmdrate', '66')
    RunConsoleCommand('sv_maxcmdrate', '66')

    -- Initialize database or any other essential components here
    -- Example: self:ConnectToDatabase()

    print('[gFramework] Server optimization complete.')
end

function gFramework:CleanupUnusedResources()
    -- Example: Removing unused props/entities
    for _, entity in ipairs(ents.GetAll()) do
        if entity:GetClass() == 'prop_physics' and not entity:IsInWorld() then
            entity:Remove()
        end
    end

    print('[gFramework] Cleaned up unused resources.')
end
