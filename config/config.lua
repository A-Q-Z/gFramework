
gFramework = gFramework or {}
gFramework.Config = {}

-- Database configuration
gFramework.Config.Database = {
    host = '127.0.0.1',
    username = 'root',
    password = '',
    database = 'gmod_db',
    port = 3306
}

-- Server settings
gFramework.Config.Settings = {
    maxPlayers = 32,
    debugMode = false
}

-- Module activation
gFramework.Config.Modules = {
    enableJobs = true,
    enableEconomy = true,
    enableVehicles = true
}
