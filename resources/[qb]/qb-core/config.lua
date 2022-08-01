QBConfig = {}

QBConfig.MaxPlayers = GetConvarInt('sv_maxclients', 10) -- Gets max players from config file, default 48
QBConfig.DefaultSpawn = vector4(-1037.89, -2738.1, 20.17, 333.56)
--Player Update
QBConfig.UpdateInterval = 5 -- how often to update player data in minutes
QBConfig.StatusInterval = 10000 -- how often to check hunger/thirst status in milliseconds

QBConfig.Money = {}
-- Money settings
QBConfig.Money.MoneyTypes = { cash = 500, bank = 5000, crypto = 0, drugmoney = 0, offshorebank = 0 } -- type = startamount - Add or remove money types for your server (for ex. blackmoney = 0), remember once added it will not be removed from the database!
QBConfig.Money.DontAllowMinus = { 'cash' } -- Money that is not allowed going in minus
-- Paycheck settings
QBConfig.Money.PayCheckTimeOut = 10 -- The time in minutes that it will give the paycheck
QBConfig.Money.PayCheckSociety = true -- If true paycheck will come from the society account that the player is employed at, requires qb-management

QBConfig.Player = {}
-- inventory
QBConfig.Player.MaxWeight = 11400 -- Max weight a player can carry (currently 11.4Kg (25lbs), written in grams)
QBConfig.Player.MaxInvSlots = 36 -- Max inventory slots for a player
-- player health& food/water
QBConfig.Player.HungerRate = 4.5 -- Rate at which hunger goes down.
QBConfig.Player.ThirstRate = 3.0 -- Rate at which thirst goes down.
-- bloodtypes
QBConfig.Player.Bloodtypes = {
    "A+", "A-", "B+", "B-", "AB+", "AB-", "O+", "O-",
}

QBConfig.Server = {} -- General server config
-- Server status
QBConfig.Server.Closed = false -- Set server closed (no one can join except people with ace permission 'qbadmin.join')
QBConfig.Server.ClosedReason = "Federal RolePlay is currently undergoing maintenance. it's a dev server afterall " -- Reason message to display when people can't join the server
QBConfig.Server.Uptime = 0 -- Time the server has been up.
-- Server whitelist
QBConfig.Server.Whitelist = false -- Enable or disable whitelist on the server
QBConfig.Server.WhitelistPermission = 'admin' -- Permission that's able to enter the server when the whitelist is on
-- pvp settings
QBConfig.Server.PVP = true -- Enable or disable pvp on the server (Ability to shoot other players)
-- Discord
QBConfig.Server.Discord = "https://discord.gg/7H4rnU54" -- Discord invite link
-- anticheat
QBConfig.Server.CheckDuplicateLicense = true -- Check for duplicate rockstar license on join
-- staff configs
QBConfig.Server.Permissions = { 'god', 'dev', 'admin', 'mod', 'jmod', 'tech' } -- Add as many groups as you want here after creating them in your server.cfg

QBConfig.Notify = {}

QBConfig.Notify.NotificationStyling = {
    group = true, -- Allow notifications to stack with a badge instead of repeating
    position = "left", -- top-left | top-right | bottom-left | bottom-right | top | bottom | left | right | center
    progress = true -- Display Progress Bar
}

-- These are how you define different notification variants
-- The "color" key is background of the notification
-- The "icon" key is the css-icon code, this project uses `Material Icons` & `Font Awesome`
QBConfig.Notify.VariantDefinitions = {
    success = {
        classes = 'success',
        icon = 'done'
    },
    primary = {
        classes = 'primary',
        icon = 'info'
    },
    error = {
        classes = 'error',
        icon = 'dangerous'
    },
    police = {
        classes = 'police',
        icon = 'local_police'
    },
    ambulance = {
        classes = 'ambulance',
        icon = 'fas fa-ambulance'
    }
}
