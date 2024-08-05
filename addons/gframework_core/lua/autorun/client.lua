
-- Include core client files
include('gframework/core.lua')

-- Initialize the client-side of the framework
hook.Add('Initialize', 'gFramework_ClientInitialize', function()
    print('[gFramework] Client is initializing...')

    -- Call the optimization function
    gFramework:OptimizeClient()

    print('[gFramework] Client initialization complete.')
end)

-- Optimize the client-side experience
function gFramework:OptimizeClient()
    -- Preload essential resources
    self:PreloadResources()

    -- Adjust client settings for optimal performance
    RunConsoleCommand('mat_specular', '0') -- Disable specular lighting
    RunConsoleCommand('mat_hdr_level', '0') -- Disable HDR
    RunConsoleCommand('r_shadows', '1') -- Enable shadows

    print('[gFramework] Client optimization complete.')
end

function gFramework:PreloadResources()
    -- Example: Preload models, materials, and sounds
    util.PrecacheModel('models/props_c17/oildrum001.mdl')
    util.PrecacheSound('ambient/levels/labs/electric_explosion1.wav')

    print('[gFramework] Preloaded essential resources.')
end
