Config = {}

-- Which translation you wish to use ?
Config.Locale = "en"

-- Key settings
Config.keyToOpenTicketMenu = "E"
Config.keyToOpenComputer = "E"

-- Marker for buying ticket
Config.Arcade = {
    {
        NPC = {
            position = vector3(335.99, -902.95, 28.25),
            heading = 176.1,
            model = "u_m_y_pogo_01",
        },
        blip = {
            position = vector3(335.99, -902.95, 29.25),
            blipId = 671,
            scale = 1.0,
            color = 4,
            name = "Cyber Bar",
            shortRange = true,
            enable = true,
        },
    },
            -- GABZ ARCADE!!!!!
    --[[
    {
        NPC = {
            position = vector3(-1659.14, -1062.72, 11.17),
            heading = 226.17,
            model = "ig_claypain",
        },
        blip = {
            position = vector3(-1659.14, -1062.72, 11.17),
            blipId = 521,
            scale = 1.0,
            color = 0,
            name = "Arcade house",
            shortRange = true,
            enable = true,
        },
    }, 
            -- FREE ARCADE!!!!! https://forum.cfx.re/t/free-mlo-arcade-bar-interior/4808151
    {
        NPC = {
            position = vector3(-1292.95, -301.69, 35.05),
            heading = 284.18,
            model = "g_m_y_strpunk_02",
        },
        blip = {
            position = vector3(-1292.95, -301.69, 36.05),
            blipId = 521,
            scale = 1.0,
            color = 0,
            name = "Arcade house",
            shortRange = true,
            enable = true,
        },
    },--]]
}

-- "single use" prices to be used on non gamehouse machines (e,g props in houses, etc, via qb-target. check readme.md)
Config.singleUsePrice = 500
-- arcade machine model hashes
Config.ArcadeModels = {
    815879628,
    1301167921,
    -1502319666,
    1876055757,
    -1501557515,
    568464183,
    -395173800,
    -88750881,
    -538006270,
    398786301,
    -1991361770,
}
-- ticket price, and time in arcade.
Config.ticketPrice = {
    [_U("bronz")] = {
        price = 300,
        time = 10, -- in minutes
    },
    [_U("silver")] = {
        price = 600,
        time = 20, -- in minutes
    },
    [_U("gold")] = {
        price = 900,
        time = 30, -- in minutes
    },
}

-- is arcade payed ?
Config.enableGameHouse = true
-- do not change unless you know what you're doing
Config.GPUList = {
    [1] = "ETX2080",
    [2] = "ETX1050",
    [3] = "ETX660",
}

-- do not change unless you know what you're doing
Config.CPUList = {
    [1] = "U9_9900",
    [2] = "U7_8700",
    [3] = "U3_6300",
    [4] = "BENTIUM",
}

Config.MyList = {
    {
        name = "name",
        link = "bleh",
    },
}

-- game list for retro machine
Config.RetroMachine = {
    {
        name = "Pacman",
        link = "http://xogos.robinko.eu/PACMAN/",
    },
    {
        name = "Tetris",
        link = "http://xogos.robinko.eu/TETRIS/",
    },
    {
        name = "Ping Pong",
        link = "http://xogos.robinko.eu/PONG/",
    },
    {
        name = "DOOM",
        link = string.format("nui://d3-arcade/html/msdos.html?url=%s&params=%s", "https://www.retrogames.cz/dos/zip/Doom.zip", "./DOOM.EXE"),
    },
    {
        name = "Duke Nukem 3D",
        link = string.format("nui://d3-arcade/html/msdos.html?url=%s&params=%s", "https://www.retrogames.cz/dos/zip/duke3d.zip", "./DUKE3D.EXE"),
    },
    {
        name = "Wolfenstein 3D",
        link = string.format("nui://d3-arcade/html/msdos.html?url=%s&params=%s", "https://www.retrogames.cz/dos/zip/Wolfenstein3D.zip", "./WOLF3D.EXE"),
    },
    -- emulatorjs powers this second page, it takes in a rom url, a "core" type (eg nes, snes, etc) a game name, and an id for network play (yep! some cores support network play!)
    -- for more info see : 
    -- https://github.com/ethanaobrien/emulatorjs/tree/main/docs
    {
        name = "Circus Charlie",
        link = string.format("nui://d3-arcade/html/ejs.html?url=%s&params=%s&name=%s&id=%s", "https://www.retrogames.cz/NES/Circus_Charlie.nes", "nes", "Circus_Charlie-nes", "4201"),
    },
    {
        name = "Sonic The Hedgehog",
        link = string.format("nui://d3-arcade/html/ejs.html?url=%s&params=%s&name=%s&id=%s", "https://www.retrogames.cz/Genesis/SonictheHedgehog.zip", "segaMD", "SonictheHedgehog-segaMD", "4202"),
    },
    -- some cores require a bios, you may pass it in like this
    {
        name = "Pokemon Ruby",
        link = string.format("nui://d3-arcade/html/ejs.html?url=%s&params=%s&name=%s&id=%s&bios=%s", "https://static.emulatorgames.net/roms/gameboy-advance/Pokemon%20-%20Ruby%20Version%20(U)%20(V1.1).zip", "gba", "PokemonRuby-gba", "4203", "https://phoenixnap.dl.sourceforge.net/project/gameboid/gba_bios907607290.bin"),
    },
        -- you may need to encode characters such as "&" in urls, or the query parser might get confused.
    {
        name = "Kirby & The Amazing Mirror",
        link = string.format("nui://d3-arcade/html/ejs.html?url=%s&params=%s&name=%s&id=%s&bios=%s", "https://static.emulatorgames.net/roms/gameboy-advance/Kirby%20%26%20The%20Amazing%20Mirror%20(U).zip", "gba", "KirbyTheAmazingMirror-gba", "4204", "https://phoenixnap.dl.sourceforge.net/project/gameboid/gba_bios907607290.bin"),
    },
    {
        name = "Contra III",
        link = string.format("nui://d3-arcade/html/ejs.html?url=%s&params=%s&name=%s&id=%s", "https://static.emulatorgames.net/roms/super-nintendo/Contra%20III%20-%20The%20Alien%20Wars%20(U)%20[!].zip", "snes", "Contraiii-snes", "4205"),
    },
    {
        name = "Metal Slug X (BIG!)", -- BIG GAME! will take a while to download/boot up
        link = string.format("nui://d3-arcade/html/ejs.html?url=%s&params=%s&name=%s&id=%s&bios=%s", "https://static.emulatorgames.net/roms/playstation/Metal%20Slug%20X%20(U)%20[SLUS-01212].7z", "psx", "MSLUGX-psx", "4206", "https://dl.hexrom.com/rom/psx-bios-SCPH1001-hexrom_com.zip"),
    },
}

-- game list for gaming machine
Config.GamingMachine = {
    {
        name = "Slide a Lama",
        link = "http://lama.robinko.eu/fullscreen.html",
    },
    {
        name = "Uno",
        link = "https://duowfriends.eu/",
    },
    {
        name = "Ants",
        link = "http://ants.robinko.eu/fullscreen.html",
    },
    {
        name = "FlappyParrot",
        link = "http://xogos.robinko.eu/FlappyParrot/",
    },
    {
        name = "Zoopaloola",
        link = "http://zoopaloola.robinko.eu/Embed/fullscreen.html"
    }
}

-- game list for super computer
Config.SuperMachine = {}

for i = 1, #Config.RetroMachine do
    table.insert(Config.SuperMachine, Config.RetroMachine[i])
end

for i = 1, #Config.GamingMachine do
    table.insert(Config.SuperMachine, Config.GamingMachine[i])
end

-- computer list in world
Config.computerList = {
    -- Gaming computers
    {
        -- if false player dont need a ticket to play on this computer.
        isInGamingHouse = true,
        computerType = Config.GamingMachine,
        computerGPU = Config.GPUList[2],
        computerCPU = Config.CPUList[2],
        position = vector3(337.52, -902.66, 28.88),
        seatHash = 1085033290,
    },
    {
        -- if false player dont need a ticket to play on this computer.
        isInGamingHouse = true,
        computerType = Config.GamingMachine,
        computerGPU = Config.GPUList[2],
        computerCPU = Config.CPUList[2],
        position = vector3(339.21, -902.66, 28.88),
        seatHash = 1085033290,
    },
    {
        -- if false player dont need a ticket to play on this computer.
        isInGamingHouse = true,
        computerType = Config.GamingMachine,
        computerGPU = Config.GPUList[2],
        computerCPU = Config.CPUList[2],
        position = vector3(340.98, -902.65, 28.85),
        seatHash = 1085033290,
    },
    {
        -- if false player dont need a ticket to play on this computer.
        isInGamingHouse = true,
        computerType = Config.GamingMachine,
        computerGPU = Config.GPUList[2],
        computerCPU = Config.CPUList[2],
        position = vector3(342.63, -902.67, 28.85),
        seatHash = 1085033290,
    },
    {
        -- if false player dont need a ticket to play on this computer.
        isInGamingHouse = true,
        computerType = Config.GamingMachine,
        computerGPU = Config.GPUList[2],
        computerCPU = Config.CPUList[2],
        position = vector3(332.03, -903.94, 28.88),
        seatHash = 1085033290,
    },
    {
        -- if false player dont need a ticket to play on this computer.
        isInGamingHouse = true,
        computerType = Config.GamingMachine,
        computerGPU = Config.GPUList[2],
        computerCPU = Config.CPUList[2],
        position = vector3(330.35, -903.96, 28.88),
        seatHash = 1085033290,
    },
    {
        -- if false player dont need a ticket to play on this computer.
        isInGamingHouse = true,
        computerType = Config.GamingMachine,
        computerGPU = Config.GPUList[2],
        computerCPU = Config.CPUList[2],
        position = vector3(328.62, -903.95, 28.88),
        seatHash = 1085033290,
    },
    {
        -- if false player dont need a ticket to play on this computer.
        isInGamingHouse = true,
        computerType = Config.GamingMachine,
        computerGPU = Config.GPUList[2],
        computerCPU = Config.CPUList[2],
        position = vector3(327.08, -903.91, 28.88),
        seatHash = 1085033290,
    },
	 {
        -- if false player dont need a ticket to play on this computer.
        isInGamingHouse = true,
        computerType = Config.GamingMachine,
        computerGPU = Config.GPUList[2],
        computerCPU = Config.CPUList[2],
        position = vector3(325.37, -904.03, 28.88),
        seatHash = 1085033290,
    },
}
