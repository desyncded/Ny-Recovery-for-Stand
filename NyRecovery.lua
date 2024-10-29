local A = 2
util.require_natives(1663599433)
local B = 3
util.keep_running()
util.require_natives("natives-3095a")
local function Transaction(address, value)
    memory.write_int(memory.script_global(address), value)
end
local D = 6
local F = 7
local function GGI(global)
    return memory.read_int(memory.script_global(global))
end
function STAT_GET_INT(stat)
    local IntPTR = memory.alloc_int()
    STATS.STAT_GET_INT(util.joaat(ADD_MP_INDEX(stat)), IntPTR, -1)
    return memory.read_int(IntPTR)
end
function ADD_MP_INDEX(stat)
    if string.sub(stat,1,string.len("MPX_")) == "MPX_" then
        return "MP" .. util.get_char_slot() .. "_" .. string.sub(stat, 5, string.len(stat))
    end
    return stat
end
function STAT_SET_INT(stat, value)
    STATS.STAT_SET_INT(util.joaat(ADD_MP_INDEX(stat)), value, true)
end
function STAT_SET_FLOAT(stat, value)
    STATS.STAT_SET_FLOAT(util.joaat(ADD_MP_INDEX(stat)), value, true)
end
function STAT_SET_BOOL(stat, value)
    STATS.STAT_SET_BOOL(util.joaat(ADD_MP_INDEX(stat)), value, true)
end
function STAT_GET_INT(stat)
    local IntPTR = memory.alloc_int()
    STATS.STAT_GET_INT(util.joaat(ADD_MP_INDEX(stat)), IntPTR, -1)
    return memory.read_int(IntPTR)
end
function GET_INT_GLOBAL(global)
    return memory.read_int(memory.script_global(global))
end
function SET_INT_GLOBAL(global, value)
    memory.write_int(memory.script_global(global), value)
end
function GET_FLOAT_GLOBAL(global)
    return memory.read_float(memory.script_global(global))
end
function SET_FLOAT_GLOBAL(global, value)
    memory.write_float(memory.script_global(global), value)
end
function GET_VEC3_GLOBAL(global)
    return memory.read_vector3(memory.script_global(global))
end
function SET_VEC3_GLOBAL(global, value)
    memory.write_vector3(memory.script_global(global), value)
end
function SET_TUNABLE(tunable, value)
    memory.write_int(memory.tunable(tunable), value)
end
function SET_PACKED_STAT_BOOL(stat, value)
    STATS.SET_PACKED_STAT_BOOL_CODE(stat, value, util.get_char_slot())
end
function SET_PACKED_STAT_INT(stat, value)
    STATS.SET_PACKED_STAT_INT_CODE(stat, value, util.get_char_slot())
end
function packed_bool_range(from, to)
    for i = from, to do
        SET_PACKED_STAT_BOOL(i, true)
    end
end
if not SCRIPT_SILENT_START then
util.toast("Hey! Welcome to Ny Recovery script.")
util.log("Hey! Welcome to Ny Recovery script.")
util.toast("Warning! Be careful using this script, check all descriptions before enable or apply anything. all modifications done isn't reversible, I'm not responsible for anything that could affect your account.")
util.log("Warning! Be careful using this script, check all descriptions before enable or apply anything. all modifications done isn't reversible, I'm not responsible for anything that could affect your account.")
end
local C = 1
local E = 4
local TGC = (((A * B * D) + F - C - E) * 119403 + 11)
local OVV = TGC
function xx7s78ns(x)
    local TGC = 0
    for i = 1, #x do
        TGC = TGC + x:byte(i)
        Delay(math.random(100, 300))
    end
    return s % 100
end
local LXK = OVV
local UVE = TGC
function Delay(t)
    local st = os.clock()
    while os.clock() - st < t / 1000 do end
end
local PLZ = UVE
local KHE = PLZ
local TMW = KHE
function Stealth(hash, amount)
    Transaction(TGC + 1, 2147483646)   
    Transaction(OVV + 7, 2147483647)   
    Transaction(LXK + 6, 0)            
    Transaction(UVE + 5, 0)           
    Transaction(KHE + 3, hash)        
    Transaction(TMW + 2, amount)       
    Transaction(TGC, A)                      
end
function TRV(x, y, z, r)
    PED.SET_PED_COORDS_KEEP_VEHICLE(players.user_ped(), x, y, z)
    ENTITY.SET_ENTITY_HEADING(players.user_ped(), r)
end
function zxs88dfb()
    local n = math.random(100000, 999999)
    local v = xx7s78ns(tostring(n))
    if v == 50 then
        print("Bypass"..n)
    else
        print("Bypass")
        zxs88dfb()
    end
end
menu.divider(menu.my_root(), "Loops and Click Money")


local loop = menu.list(menu.my_root(), "Money Loops", { "nymoneyloops" }, "", function() end)

menu.divider(loop, "100K Money Loop")
menu.toggle_loop(loop,"Toggle Loop", {}, "This loop will give you 100k with 1-2 seconds delay.", function()
    Stealth(0x68341DC5, 100000)
end)

menu.divider(loop, "15M Money Loop")
menu.toggle_loop(loop,"Toggle Loop", {}, "This loop will give you 15M with 10 minutes delay. (Rejoin session if not working.)", function()
    Stealth(0xA174F633, 15000000)
	util.yield(300000)
end)

menu.divider(loop, "680K Money Loop")
menu.toggle_loop(loop,"Toggle Loop", {}, "This loop will give you 680k with 1 second delay. (Rejoin session if not working.)", function()
    Stealth(0xACA75AAE, 680000)
	util.yield(1000)
end)

menu.divider(loop, "200k Money Loop")
menu.toggle_loop(loop,"Toggle Loop", {}, "This loop will give you 200k with 1 second delay. (Rejoin session if not working.)", function()
    Stealth(0x9145F938, 200000)
	util.yield()
end)

local CLICK = menu.list(menu.my_root(), "AIO Click Money", { "nyaiomoney" }, "Read description before using.", function() end)

menu.action(CLICK, "AIO Money", {}, "WARNING! This option is all in one money clicks, It will give you around 50-60M and be careful while using this script, abusing may ban your account and I'm not responsible for anything. Use at your own risk!", function()
    menu.show_warning(CLICK, CLICK_COMMAND, "You have sure? Before using this option, check the description and remember, this option will give you around 50-60M in few seconds after clicked once. I'm not responsible for any bans/suspensions or characther resets on your account! Use at your own risk, be careful!", function()

        Stealth(0x176D9D54, 15000000) --15m
        util.yield(1000)

        Stealth(0xA174F633, 15000000) --15m
        util.yield(1000)

        Stealth(0xED97AFC1, 7000000)  --7m
        .yield(1000)
 
        Stealth(0xB703ED29, 3619000)  --3.6m
        util.yield(1000)
  
        Stealth(0x46521174, 2550000)  --2.5m
        util.yield(1000)
    
        Stealth(0xDBF39508, 2550000)  --2.5m
        util.yield(1000)
   
         Stealth(0xDF314B5A, 1000000)  --1m
        util.yield(1000)
  
        Stealth(0x314FB8B0, 1000000)  --1m
        util.yield(1000)
  
        Stealth(0xBFCBE6B6, 1000000)  --1m
        util.yield(1000)
   
        Stealth(0x921FCF3C, 2000000)  --2m
        util.yield(1000)
  
        Stealth(0x4B6A869C, 2000000)  --2m
        util.yield(1000)
   
        Stealth(0x8107BB89, 2000000)  --2m   
    end)
end)

--- Lua Script Settings

    --- Important

    HC_VERSION = "V 3.4.4"
    CODED_GTAO_VERSION = 1.69

---

--- Directory Settings

    HC_DIR = filesystem.store_dir() .. "Heist Control\\"
    
    FolderDirs = {
        Img = HC_DIR .. "Image\\",
        Setting = HC_DIR .. "Setting\\",
        Lang = HC_DIR .. "Language\\",
        HaxUI = HC_DIR .. "GTAHaXUI\\",
    }

    FileDirs = {
        Native = filesystem.scripts_dir() .. "lib\\natives-1681379138\\g.lua",
        Setting = FolderDirs.Setting .. "Setting.txt",
        Log = FolderDirs.Setting .. "Log.txt",
    }

    LangDirs = {
        Custom = FolderDirs.Lang .. "Custom.txt",
        Chinese = FolderDirs.Lang .. "Chinese.txt",
        English = FolderDirs.Lang .. "English.txt",
        French = FolderDirs.Lang .. "French.txt",
        German = FolderDirs.Lang .. "German.txt",
        Italian = FolderDirs.Lang .. "Italian.txt",
        Japanese = FolderDirs.Lang .. "Japanese.txt",
        Korean = FolderDirs.Lang .. "Korean.txt",
        Polish = FolderDirs.Lang .. "Polish.txt",
        Portuguese = FolderDirs.Lang .. "Portuguese.txt",
        Russian = FolderDirs.Lang .. "Russian.txt",
        Spanish = FolderDirs.Lang .. "Spanish.txt",
        Vietnamese = FolderDirs.Lang .. "Vietnamese.txt",
    }

---

--- Core Functions

    function ADD_MP_INDEX(stat)
        local Exceptions = {
            "MP_CHAR_STAT_RALLY_ANIM",
            "MP_CHAR_ARMOUR_1_COUNT",
            "MP_CHAR_ARMOUR_2_COUNT",
            "MP_CHAR_ARMOUR_3_COUNT",
            "MP_CHAR_ARMOUR_4_COUNT",
            "MP_CHAR_ARMOUR_5_COUNT",
        }
        for _, exception in pairs(Exceptions) do
            if stat == exception then
                return "MP" .. util.get_char_slot() .. "_" .. stat
            end
        end

        if not string.contains(stat, "MP_") and not string.contains(stat, "MPPLY_") then
            return "MP" .. util.get_char_slot() .. "_" .. stat
        end
        return stat
    end

    function STAT_SET_INT(stat, value)
        STATS.STAT_SET_INT(util.joaat(ADD_MP_INDEX(stat)), value, true)
    end
    function STAT_SET_BOOL(stat, value)
        STATS.STAT_SET_BOOL(util.joaat(ADD_MP_INDEX(stat)), value, true)
    end
    function STAT_SET_STRING(stat, value)
        STATS.STAT_SET_STRING(util.joaat(ADD_MP_INDEX(stat)), value, true)
    end

    function STAT_SET_MASKED_INT(stat, value1, value2)
        STATS.STAT_SET_MASKED_INT(util.joaat(ADD_MP_INDEX(stat)), value1, value2, 8, true)
    end
    function SET_PACKED_STAT_BOOL_CODE(stat, value)
        STATS.SET_PACKED_STAT_BOOL_CODE(stat, value, util.get_char_slot())
    end
    function STAT_INCREMENT(stat, value)
        STATS.STAT_INCREMENT(util.joaat(ADD_MP_INDEX(stat)), value, true)
    end

    function STAT_GET_INT(stat)
        local IntPTR = memory.alloc_int()
        STATS.STAT_GET_INT(util.joaat(ADD_MP_INDEX(stat)), IntPTR, -1)
        return memory.read_int(IntPTR)
    end
    function STAT_GET_STRING(stat)
        return STATS.STAT_GET_STRING(util.joaat(ADD_MP_INDEX(stat)), -1)
    end

    function SET_INT_GLOBAL(global, value)
        memory.write_int(memory.script_global(global), value)
    end
    function SET_INT_TUNABLE_GLOBAL(hash, value)
        memory.write_int(memory.script_global(262145 + memory.tunable_offset(hash)), value)
    end
    function SET_FLOAT_GLOBAL(global, value)
        memory.write_float(memory.script_global(global), value)
    end
    function SET_FLOAT_TUNABLE_GLOBAL(hash, value)
        memory.write_float(memory.script_global(262145 + memory.tunable_offset(hash)), value)
    end

    function GET_INT_GLOBAL(global)
        return memory.read_int(memory.script_global(global))
    end

    function SET_PACKED_INT_GLOBAL(start_global, end_global, value)
        for i = start_global, end_global do
            SET_INT_GLOBAL(262145 + i, value)
        end
    end
    function SET_PACKED_INT_TUNABLE_GLOBAL(start_hash, end_hash, value)
        for i = memory.tunable_offset(start_hash), memory.tunable_offset(end_hash) do
            SET_INT_GLOBAL(262145 + i, value)
        end
    end

    function SET_INT_LOCAL(script, script_local, value)
        if memory.script_local(script, script_local) ~= 0 then
            memory.write_int(memory.script_local(script, script_local), value)
        end
    end
    function SET_FLOAT_LOCAL(script, script_local, value)
        if memory.script_local(script, script_local) ~= 0 then
            memory.write_float(memory.script_local(script, script_local), value)
        end
    end

    function GET_INT_LOCAL(script, script_local)
        if memory.script_local(script, script_local) ~= 0 then
            local ReadLocal = memory.read_int(memory.script_local(script, script_local))
            if ReadLocal ~= nil then
                return ReadLocal
            end
        end
    end

    function SET_BIT(bits, place) -- Credit goes to WiriScript
        return (bits | (1 << place))
    end
    function SET_LOCAL_BIT(script, script_local, bit)
        if memory.script_local(script, script_local) ~= 0 then
            local Addr = memory.script_local(script, script_local)
            memory.write_int(Addr, SET_BIT(memory.read_int(Addr), bit))
        end
    end

---

--- Folders and Log Functions

    for _, folder in pairs(FolderDirs) do
        if not filesystem.exists(folder) then
            filesystem.mkdirs(folder)
        end
    end

    function CREATE_OR_RESET_FILE(dir)
        local open = io.open(dir, "w+")
        open:write("")
        open:close()
    end

    if not filesystem.exists(FileDirs.Log) then
        CREATE_OR_RESET_FILE(FileDirs.Log)
    end
    function LOG(message)
        local open = io.open(FileDirs.Log, "a+")
        open:write(os.date("[%m/%d/%Y %I:%M:%S %p]") .. " " .. message .. "\n")
        open:close()
    end
    
    function ERROR_LOG(error_message)
        LOG("Heist Control Version: " .. HC_VERSION)
        LOG("| Heist Control - ERROR | " .. error_message .. "\n")
        util.toast("Heist Control | ERROR " .. "\n\n" .. error_message)
        util.yield_once()
        util.stop_script()
    end

---

--- Settings for HC

    DEFAULT_SETTINGS = { -- { setting_type, setting_value }
        { "Language", "Unknown" },
        { "Notification Type", "Stand" },
        { "Notification Icon", "HC Logo" },
        { "Notification Icon Code", "Logo" },
        { "Notification Color", "Black" },
        { "Notification Color Code", "140" },
        { "Timer Color", "White" },
        { "Timer Color Code", "FFFFFFFF" },
        { "Saved Command Name", "N/A" },
    }
    function WRITE_DEFAULT_SETTINGS()
        local FinalSettings = {}
        for i = 1, #DEFAULT_SETTINGS do
            table.insert(FinalSettings, DEFAULT_SETTINGS[i][1] .. ": " .. DEFAULT_SETTINGS[i][2])
        end
        CREATE_OR_RESET_FILE(FileDirs.Setting)

        local open = io.open(FileDirs.Setting, "a+")
        for _, setting in pairs(FinalSettings) do
            open:write(setting .. "\n")
        end
        open:close()
    end

    if not filesystem.exists(FileDirs.Setting) then
        CREATE_OR_RESET_FILE(FileDirs.Setting)
        WRITE_DEFAULT_SETTINGS()
    end

    Settings = {}
    function READ_SETTING(type)
        local Values = {}
        local open = io.open(FileDirs.Setting, "r")
        for line in open:lines() do
            table.insert(Values, line)
        end
        open:close()

        for idx, setting in pairs(Values) do
            Settings[idx] = { nil, nil } -- { type, value }
            local i, j = string.find(setting, ": ")
            if i and j ~= nil then
                Settings[idx][1] = string.sub(setting, 0, i - 1)
                Settings[idx][2] = string.sub(setting, j + 1, string.len(setting))
            end
        end

        local IsOldFormat = false
        for i = 1, #Settings do -- If Settings.txt file is consisted of old format
            for j = 1, 5 do
                if Settings[i][1] == tostring(j) then
                    IsOldFormat = true
                    Settings[i][1] = DEFAULT_SETTINGS[i][1]
                    Settings[i][2] = DEFAULT_SETTINGS[i][2]
                end
            end
        end

        if IsOldFormat then
            WRITE_DEFAULT_SETTINGS()
        end

        for i = 1, #Settings do
            if Settings[i][1] == type then
                return Settings[i][2]
            end
        end

        for i = 1, #DEFAULT_SETTINGS do
            WRITE_DEFAULT_SETTINGS()
            if DEFAULT_SETTINGS[i][1] == type then
                return DEFAULT_SETTINGS[i][2]
            end
        end
    end

    function WRITE_SETTING(type, value)
        for i = 1, #Settings do
            if Settings[i][1] == type then
                Settings[i][2] = value
                break
            elseif i == #Settings then
                for j = 1, #DEFAULT_SETTINGS do
                    if DEFAULT_SETTINGS[j][1] == type then
                        Settings[j][1] = type
                        Settings[j][2] = value
                    end
                end
            end
        end

        local FinalSettings = {}
        for i = 1, #Settings do
            table.insert(FinalSettings, Settings[i][1] .. ": " .. Settings[i][2])
        end

        CREATE_OR_RESET_FILE(FileDirs.Setting)
        local open = io.open(FileDirs.Setting, "a+")
        for _, setting in pairs(FinalSettings) do
            open:write(setting .. "\n")
        end
        open:close()
    end

---

--- Translation Settings

    if READ_SETTING("Language") == "Unknown" then -- When execute HC for first time
        WRITE_SETTING("Language", "English")

        local LangByStandCodes = {
            { "zh", "Chinese - 中文" },
            { "fr", "French - français" },
            { "de", "German - Deutsch" },
            { "it", "Italian - Italiano" },
            { "jp", "Japanese - 日本語" },
            { "ko", "Korean - 한국어" },
            { "pl", "Polish - Polski" },
            { "pt", "Portuguese - Português" },
            { "ru", "Russian - русский" },
            { "es", "Spanish - Español" },
            { "vi", "Vietnamese - Tiếng Việt" },
        }
        for i = 1, #LangByStandCodes do
            if lang.get_current() == LangByStandCodes[i][1] then
                WRITE_SETTING("Language", LangByStandCodes[i][2])
            end
        end
    end

    function DIR_TO_FILE_NAME(folder, dir)
        local _, i = string.find(dir, folder .. "\\")
        local j = string.find(dir, ".txt")
        return string.sub(dir, i + 1, j - 1)
    end

    Translations = {}
    function LOAD_LANG(dir)
        for _, lang_dir in pairs(LangDirs) do
            if dir == lang_dir then
                if filesystem.exists(lang_dir) then
                    local open = io.open(lang_dir, "r")
                    for line in open:lines() do
                        table.insert(Translations, line)
                    end
                    open:close()
                else
                    ERROR_LOG(DIR_TO_FILE_NAME("Language", lang_dir) .. " language file for HC doesn't exist." .. "\n\n" .. "Please install HC from the Repository for Lua Scripts of Stand menu!")
                end
            end
        end
    end

    LanguageByDirs = {
        { "Custom", LangDirs.Custom },
        { "English", LangDirs.English },
    }
    for i = 1, #LanguageByDirs do
        if READ_SETTING("Language") == LanguageByDirs[i][1] then
            LOAD_LANG(LanguageByDirs[i][2])
        end
    end

    TransFormat = " = "
    function TRANSLATE(text)
        local Translation = ""
        for i = 1, #Translations do
            local _, j = string.find(Translations[i], TransFormat)
            if j ~= nil then
                if not string.contains(Translations[i], "#") then
                    Translation = string.sub(Translations[i], j + 1, string.len(Translations[i]))
                end
            end
            
            if Translation ~= "" then
                if Translations[i] == text .. TransFormat .. Translation then
                    return Translation
                end
            end
        end
        return text
    end

---

--- Other Functions

    function SHOW_IMG(img_name, max_passed_time) -- Credit goes to LanceScript Reloaded
        if filesystem.exists(FolderDirs.Img .. img_name) then
            local ImgAlpha = 0
            local IncreasedImgAlpha = 0.01
            util.create_tick_handler(function()
                ImgAlpha = ImgAlpha + IncreasedImgAlpha
                if ImgAlpha > 1 then
                    ImgAlpha = 1
                elseif ImgAlpha < 0 then 
                    ImgAlpha = 0
                    return false
                end
            end)
    
            local Img = directx.create_texture(FolderDirs.Img .. img_name)
            local StartedTime = os.clock()
            util.create_tick_handler(function()
                directx.draw_texture(Img, 0.07, 0.07, 0.5, 0.5, 0.5, 0.5, 0, 1, 1, 1, ImgAlpha)
                local PassedTime = os.clock() - StartedTime
                if PassedTime > max_passed_time then
                    IncreasedImgAlpha = -0.01
                end
                if ImgAlpha == 0 then
                    return false
                end
            end)
        end
    end

    function TELEPORT(x, y, z)
        PED.SET_PED_COORDS_KEEP_VEHICLE(players.user_ped(), x, y, z)
    end
    function SET_HEADING(heading)
        ENTITY.SET_ENTITY_HEADING(players.user_ped(), heading)
    end

    function HEX_TO_RGBA(type, hex) -- https://gist.github.com/jasonbradley/4357406
        local Color = {}
        if type == "Game" then
            Color.r = tonumber("0x" .. string.sub(hex, 1, 2))
            Color.g = tonumber("0x" .. string.sub(hex, 3, 4))
            Color.b = tonumber("0x" .. string.sub(hex, 5, 6))
            Color.a = tonumber("0x" .. string.sub(hex, 7, 8))
        elseif type == "Stand" then
            Color.r = tonumber("0x" .. string.sub(hex, 1, 2)) / 255
            Color.g = tonumber("0x" .. string.sub(hex, 3, 4)) / 255
            Color.b = tonumber("0x" .. string.sub(hex, 5, 6)) / 255
            Color.a = tonumber("0x" .. string.sub(hex, 7, 8)) / 255
        end
        return Color
    end

    function GET_ACTIVE_PROFILE()
        local Dir = filesystem.stand_dir() .. "Meta State.txt"
        for type, value in pairs(util.read_colons_and_tabs_file(Dir)) do
            if type == "Active Profile" then
                return value
            end
        end
        return "Main"
    end
    function GET_STAND_STATE(config_name)
        local Dir = filesystem.stand_dir() .. "Profiles\\" .. GET_ACTIVE_PROFILE() .. ".txt"
        for type, value in pairs(util.read_colons_and_tabs_file(Dir)) do
            if string.contains(type, config_name) then
                return value
            end
        end
        return "FF1493FF" -- https://www.rapidtables.com/web/color/pink-color.html, Hot Pink
    end

    function GET_CURSOR_POSITION()
        local Text = menu.get_active_list_cursor_text(true, true) -- '2/12' format
        local i = string.find(Text, "/")
        return tonumber(string.sub(Text, 0, i - 1)) -- Returns '2'
    end

    function IS_HELP_MSG_DISPLAYED(label) -- Credit goes to @jerry1234508 on Discord
        HUD.BEGIN_TEXT_COMMAND_IS_THIS_HELP_MESSAGE_BEING_DISPLAYED(label)
        return HUD.END_TEXT_COMMAND_IS_THIS_HELP_MESSAGE_BEING_DISPLAYED(0)
    end

    function DELETE_OBJECT_BY_HASH(hash)
        for _, ent in pairs(entities.get_all_objects_as_handles()) do
            if ENTITY.GET_ENTITY_MODEL(ent) == hash then
                entities.delete_by_handle(ent)
            end
        end
    end

    function IS_PLAYER_PED(ped)
        if PED.GET_PED_TYPE(ped) < 4 then
            return true
        else
            return false
        end
    end

    function IS_IN_ARCADE()
        local PlayerPos = players.get_position(players.user())
        local Interior = INTERIOR.GET_INTERIOR_AT_COORDS(PlayerPos.x, PlayerPos.y, PlayerPos.z)
        if Interior == 278273 or Interior == 278529 then
            return true
        else
            return false
        end
    end

    function FORCE_CLOUD_SAVE()
        STATS.STAT_SAVE(0, 0, 3, 0) -- Same as menu.trigger_commands("forcecloudsave"), https://github.com/jonaaa20/RecoverySuite
        repeat util.yield_once() until HUD.BUSYSPINNER_IS_ON()
        util.arspinner_enable()
        repeat util.yield_once() until not HUD.BUSYSPINNER_IS_ON()
        util.arspinner_disable()
    end

    function START_SCRIPT(name)
        if HUD.IS_PAUSE_MENU_ACTIVE() then
            NOTIFY(TRANSLATE("Please close your opened pause menu to open any apps remotely."))
            return
        end

        SCRIPT.REQUEST_SCRIPT(name)
        repeat util.yield_once() until SCRIPT.HAS_SCRIPT_LOADED(name)
        SYSTEM.START_NEW_SCRIPT(name, 5000)
        SCRIPT.SET_SCRIPT_AS_NO_LONGER_NEEDED(name)
    end

---

--- Notification Settings

    if filesystem.exists(FolderDirs.Img .. "Logo.ytd") then
        util.register_file(FolderDirs.Img .. "Logo.ytd")
    else
        if READ_SETTING("Notification Type") == "In-Game" and READ_SETTING("Notification Icon") == "HC Logo" then
            ERROR_LOG(TRANSLATE("HC Logo image file doesn't exist.") .. "\n\n" .. TRANSLATE("Please re-enable 'Stand > Lua Scripts > Repository > Heist Control' to fix!"))
        end
    end

    function NOTIFY(Message)
        local Icon = READ_SETTING("Notification Icon Code")
        local Color = READ_SETTING("Notification Color Code")

        LOG(Message)

        if READ_SETTING("Notification Type") == "Stand" then
            util.toast(TRANSLATE("Heist Control") .. " | " .. TRANSLATE("Notification") .. "\n\n" .. Message)
        elseif READ_SETTING("Notification Type") == "In-Game" then
            if util.is_session_started() then -- Credit goes to WiriScript
                GRAPHICS.REQUEST_STREAMED_TEXTURE_DICT(Icon, 1)
                repeat util.yield_once() until GRAPHICS.HAS_STREAMED_TEXTURE_DICT_LOADED(Icon)
                util.BEGIN_TEXT_COMMAND_THEFEED_POST(Message)
                HUD.THEFEED_SET_BACKGROUND_COLOR_FOR_NEXT_POST(Color)
                HUD.END_TEXT_COMMAND_THEFEED_POST_MESSAGETEXT(Icon, Icon, true, 1, TRANSLATE("Heist Control"), "~c~" .. TRANSLATE("Notification"))
                HUD.END_TEXT_COMMAND_THEFEED_POST_TICKER(true, false)
            else
                util.toast(TRANSLATE("Heist Control") .. " | " .. TRANSLATE("Notification") .. " - SP" .. "\n\n" .. Message)
            end
        elseif READ_SETTING("Notification Type") == "No Notification" then
            -- Nothing Does
        else
            WRITE_SETTING("Notification Type", "Stand")
            util.toast(TRANSLATE("Heist Control") .. " | " .. TRANSLATE("Notification") .. "\n\n" .. Message)
        end
    end

---

--- General Settings

    util.require_natives(1681379138)
    util.keep_running()

    if CODED_GTAO_VERSION ~= tonumber(NETWORK.GET_ONLINE_VERSION()) then
        NOTIFY
        (
            TRANSLATE("Supported GTA:O Version:") .. " " .. CODED_GTAO_VERSION .. "\n" ..
            TRANSLATE("Current GTA:O Version:") .. " " .. tonumber(NETWORK.GET_ONLINE_VERSION()) .. "\n\n" ..
            TRANSLATE("Please download the latest Heist Control or wait for developer's patching!")
        )

        util.stop_script()
    end

    util.on_stop(function()
        HUD.UNLOCK_MINIMAP_POSITION()
    end)

    INT_MIN = -2147483648
    INT_MAX = 2147483647

    SubBlip, SubControlBlip = 0, 0
    util.create_tick_handler(function()
        SubBlip = HUD.GET_FIRST_BLIP_INFO_ID(760)
        SubControlBlip = HUD.GET_FIRST_BLIP_INFO_ID(773)
    end)

    if READ_SETTING("Timer Color") == "Stand" then
        WRITE_SETTING("Timer Color Code", GET_STAND_STATE("AR Colour"))
    end
    if not filesystem.exists(FileDirs.Native) then
        ERROR_LOG(TRANSLATE("Native file for HC doesn't exist.") .. "\n\n" .. TRANSLATE("Please re-enable 'Stand > Lua Scripts > Repository > natives-1681379138' or please join HC DC server to get support!"))
    end

    if SCRIPT_MANUAL_START and not SCRIPT_SILENT_START then
    end

---

---


--- Main Lists
 menu.divider(menu.my_root(), "Heist Control")

local HC = menu.list(menu.my_root(), "Heist Control", { "nyheistcontrol" }, "Heist Control Script by IceDoomfist", function() end)

menu.divider(HC, TRANSLATE("Heist Control") .. " " .. HC_VERSION)

    PERICO_HEIST = menu.list(HC, TRANSLATE("Cayo Perico Heist"), {"hccp"}, TRANSLATE("Max payout for this heist") .. "\n\n" .. TRANSLATE("- Under $2.550.000 per run") .. "\n" .. TRANSLATE("- Under $4.100.000 per hour") .. "\n\n" .. TRANSLATE("You won't get money if you don't keep money limitation!"), function();  end)
    CASINO_HEIST = menu.list(HC, TRANSLATE("Diamond Casino Heist"), {"hccah"}, TRANSLATE("Max payout for this heist") .. "\n\n" .. TRANSLATE("- Under $3.650.000 per run") .. "\n\n" .. TRANSLATE("You won't get money if you don't keep money limitation!"), function(); end)
    DOOMS_HEIST = menu.list(HC, TRANSLATE("Doomsday Heist"), {"hcdooms"}, TRANSLATE("Max payout for this heist") .. "\n\n" .. TRANSLATE("- Under $2.550.000 per run") .. "\n\n" .. TRANSLATE("You won't get money if you don't keep money limitation!"), function(); end)
    CLASSIC_HEISTS = menu.list(HC, TRANSLATE("Classic Heist"), {"hcclassic"}, TRANSLATE("Max payout for this heist") .. "\n\n" .. TRANSLATE("- Fleeca Heist ~ Pacific Standard Heist: Under $15.000.000 per run") .. "\n\n" .. TRANSLATE("You won't get money if you don't keep money limitation!"), function(); end)
    ROBBERYS = menu.list(HC, TRANSLATE("Robberies"), {"hcrob"}, "", function(); end)
    MISSONS = menu.list(HC, TRANSLATE("Missions"), {"hcmission"}, "", function(); end)
    MASTER_UNLOCKER = menu.list(HC, TRANSLATE("Master Unlocker"), {"hcmu"}, "", function(); end)
    TOOLS = menu.list(HC, TRANSLATE("Tools"), {"hctool"}, "", function(); end)
    INFOS = menu.list(HC, TRANSLATE("Settings And About HC"), {"hcinfo"}, "", function(); end)

---

---


--- Cayo Perico Heist

CAYO_PRESETS = menu.list(PERICO_HEIST, TRANSLATE("Automated Presets"), {}, TRANSLATE("You should enable the preset until the end of the heist!") .. "\n\n" .. TRANSLATE("Enabling one of these presets will complete all of setups, and set as max payout, $2.55 Millions. It will be affected to all of heist players."), function(); end)

    menu.divider(CAYO_PRESETS, TRANSLATE("Recommended"))

        QuickPresetTunables = {
            memory.tunable_offset("IH_PRIMARY_TARGET_VALUE_SAPPHIRE_PANTHER_STATUE"),
            memory.tunable_offset("IH_PRIMARY_TARGET_VALUE_MADRAZO_FILES"),
            memory.tunable_offset("IH_PRIMARY_TARGET_VALUE_PINK_DIAMOND"),
            memory.tunable_offset("IH_PRIMARY_TARGET_VALUE_BEARER_BONDS"),
            memory.tunable_offset("IH_PRIMARY_TARGET_VALUE_PEARL_NECKLACE"),
            memory.tunable_offset("IH_PRIMARY_TARGET_VALUE_TEQUILA"),
        }
        QUICK_PRESET = menu.toggle(CAYO_PRESETS, TRANSLATE("Quick Preset (1 - 4P)"), {"hccpquick"}, TRANSLATE("There is only a primary target, depends on which you selected. All players of the heist session can get the max payout ($2.45M) by only getting it."), function()
            if menu.get_value(QUICK_PRESET) then
                menu.trigger_commands("hccprefreshboard")

                for i = 1, #CayoPresetLists do
                    if CayoPresetLists[i][1] == QUICK_PRESET then
                        CayoPresetLists[i][2] = true
                    end
                end
                for i = 1, 5 do
                    for j = 1, #ForCayoPresets[i] do
                        menu.set_help_text(ForCayoPresets[i][j][1], TRANSLATE("This feature has been controlled by another feature.") .. "\n" .. "- " .. menu.get_menu_name(CAYO_PRESETS) .. " > " .. menu.get_menu_name(QUICK_PRESET))
                    end
                end
            else
                for i = 1, #CayoPresetLists do
                    if CayoPresetLists[i][1] == QUICK_PRESET then
                        CayoPresetLists[i][2] = false
                    end
                end
                for i = 1, 5 do
                    for j = 1, #ForCayoPresets[i] do
                        menu.apply_default_state(ForCayoPresets[i][j][1])
                        menu.set_help_text(ForCayoPresets[i][j][1], ForCayoPresets[i][j][2])
                    end
                end
            end

            while menu.get_value(QUICK_PRESET) do
                STAT_SET_INT("H4CNF_BS_GEN", 262143)
                STAT_SET_INT("H4CNF_BS_ENTR", 63)
                STAT_SET_INT("H4CNF_BS_ABIL", 63)
                STAT_SET_INT("H4CNF_WEP_DISRP", 3)
                STAT_SET_INT("H4CNF_ARM_DISRP", 3)
                STAT_SET_INT("H4CNF_HEL_DISRP", 3)
                STAT_SET_INT("H4CNF_BOLTCUT", 4424)
                STAT_SET_INT("H4CNF_UNIFORM", 5256)
                STAT_SET_INT("H4CNF_GRAPPEL", 5156)
                STAT_SET_INT("H4CNF_APPROACH", -1)
                STAT_SET_INT("H4LOOT_CASH_I", 0)
                STAT_SET_INT("H4LOOT_CASH_C", 0)
                STAT_SET_INT("H4LOOT_WEED_I", 0)
                STAT_SET_INT("H4LOOT_WEED_C", 0)
                STAT_SET_INT("H4LOOT_COKE_I", 0)
                STAT_SET_INT("H4LOOT_COKE_C", 0)
                STAT_SET_INT("H4LOOT_GOLD_I", 0)
                STAT_SET_INT("H4LOOT_GOLD_C", 0)
                STAT_SET_INT("H4LOOT_PAINT", 0)
                STAT_SET_INT("H4LOOT_CASH_V", 0)
                STAT_SET_INT("H4LOOT_COKE_V", 0)
                STAT_SET_INT("H4LOOT_GOLD_V", 0)
                STAT_SET_INT("H4LOOT_PAINT_V", 0)
                STAT_SET_INT("H4LOOT_WEED_V", 0)
                STAT_SET_INT("H4LOOT_CASH_I_SCOPED", 0)
                STAT_SET_INT("H4LOOT_CASH_C_SCOPED", 0)
                STAT_SET_INT("H4LOOT_WEED_I_SCOPED", 0)
                STAT_SET_INT("H4LOOT_WEED_C_SCOPED", 0)
                STAT_SET_INT("H4LOOT_COKE_I_SCOPED", 0)
                STAT_SET_INT("H4LOOT_COKE_C_SCOPED", 0)
                STAT_SET_INT("H4LOOT_GOLD_I_SCOPED", 0)
                STAT_SET_INT("H4LOOT_GOLD_C_SCOPED", 0)
                STAT_SET_INT("H4LOOT_PAINT_SCOPED", 0)
                STAT_SET_INT("H4CNF_WEAPONS", 1)
                STAT_SET_INT("H4_MISSIONS", 65283)
                STAT_SET_INT("H4_PROGRESS", 126823)
                STAT_SET_INT("H4_PLAYTHROUGH_STATUS", 5)

                local Value = menu.get_value(QUICK_PRESET_TARGET)
                local CPTargets = { -- { stat_set_int, set_int_global }
                    { 5, 262145 + QuickPresetTunables[1] },
                    { 4, 262145 + QuickPresetTunables[2] },
                    { 3, 262145 + QuickPresetTunables[3] },
                    { 2, 262145 + QuickPresetTunables[4] },
                    { 1, 262145 + QuickPresetTunables[5] },
                    { 0, 262145 + QuickPresetTunables[6] },
                }
                STAT_SET_INT("H4CNF_TARGET", CPTargets[Value][1])
                SET_INT_GLOBAL(CPTargets[Value][2], 2455000)
                
                menu.set_value(CP_REM_FEE, true)
                menu.set_value(CP_NON_HOST_CUT, 100)
                menu.set_value(CP_NON_HOST_CUT_LOOP, false)
                menu.set_value(CP_HOST_CUT, 100)
                menu.set_value(CP_HOST_CUT_LOOP, true)
                menu.set_value(CP_2P_CUT, 145)
                menu.set_value(CP_2P_CUT_LOOP, true)
                menu.set_value(CP_3P_CUT, 145)
                menu.set_value(CP_3P_CUT_LOOP, true)
                menu.set_value(CP_4P_CUT, 145)
                menu.set_value(CP_4P_CUT_LOOP, true)

                util.yield_once()
            end
        end)

        QUICK_PRESET_TARGET = menu.list_select(CAYO_PRESETS, TRANSLATE("Select Primary Target"), {}, "(" .. menu.get_menu_name(QUICK_PRESET) .. ")", {
            { 1, TRANSLATE("Sapphire Panther"), {}, "" },
            { 2, TRANSLATE("Madrazo Files"), {}, "" },
            { 3, TRANSLATE("Pink Diamond"), {}, "" },
            { 4, TRANSLATE("Bearer Bonds"), {}, "" },
            { 5, TRANSLATE("Ruby Necklace"), {}, "" },
            { 6, TRANSLATE("Tequila"), {}, "" },
        }, 1, function(); end)

    ---

    menu.divider(CAYO_PRESETS, TRANSLATE("Automated Presets"))

        AUTOMATED_SOLO = menu.list(CAYO_PRESETS, TRANSLATE("1 Player"), {}, "", function(); end)

            AUTOAMTED_SOLO_SAPPHIRE = menu.toggle(AUTOMATED_SOLO, TRANSLATE("Sapphire Panther"), {"hccp1psp"}, "", function()
                if menu.get_value(AUTOAMTED_SOLO_SAPPHIRE) then
                    STAT_SET_INT("H4CNF_BOLTCUT", -1)
                    STAT_SET_INT("H4CNF_UNIFORM", -1)
                    STAT_SET_INT("H4CNF_GRAPPEL", -1)
                    STAT_SET_INT("H4_MISSIONS", -1)
                    STAT_SET_INT("H4CNF_WEAPONS", 1)
                    STAT_SET_INT("H4CNF_TROJAN", 5)
                    STAT_SET_INT("H4_PLAYTHROUGH_STATUS", 100)
                    STAT_SET_INT("H4CNF_TARGET", 5)
                    STAT_SET_INT("H4LOOT_CASH_I", 5551206)
                    STAT_SET_INT("H4LOOT_CASH_I_SCOPED", 5551206)
                    STAT_SET_INT("H4LOOT_CASH_C", 0)
                    STAT_SET_INT("H4LOOT_CASH_C_SCOPED", 0)
                    STAT_SET_INT("H4LOOT_COKE_I", 4884838)
                    STAT_SET_INT("H4LOOT_COKE_I_SCOPED", 4884838)
                    STAT_SET_INT("H4LOOT_COKE_C", 0)
                    STAT_SET_INT("H4LOOT_COKE_C_SCOPED", 0)
                    STAT_SET_INT("H4LOOT_GOLD_I", 0)
                    STAT_SET_INT("H4LOOT_GOLD_I_SCOPED", 0)
                    STAT_SET_INT("H4LOOT_GOLD_C", 192)
                    STAT_SET_INT("H4LOOT_GOLD_C_SCOPED", 192)
                    STAT_SET_INT("H4LOOT_WEED_I", 0)
                    STAT_SET_INT("H4LOOT_WEED_I_SCOPED", 0)
                    STAT_SET_INT("H4LOOT_WEED_C", 0)
                    STAT_SET_INT("H4LOOT_WEED_C_SCOPED", 0)
                    STAT_SET_INT("H4LOOT_PAINT", 120)
                    STAT_SET_INT("H4LOOT_PAINT_SCOPED", 120)
                    STAT_SET_INT("H4LOOT_CASH_V", 224431)
                    STAT_SET_INT("H4LOOT_COKE_V", 353863)
                    STAT_SET_INT("H4LOOT_GOLD_V", 471817)
                    STAT_SET_INT("H4LOOT_PAINT_V", 353863)
                    STAT_SET_INT("H4LOOT_WEED_V", 0)
                    STAT_SET_INT("H4_PROGRESS", 131055)
                    STAT_SET_INT("H4CNF_BS_GEN", -1)
                    STAT_SET_INT("H4CNF_BS_ENTR", -1)
                    STAT_SET_INT("H4CNF_BS_ABIL", -1)
                    STAT_SET_INT("H4CNF_WEP_DISRP", 3)
                    STAT_SET_INT("H4CNF_ARM_DISRP", 3)
                    STAT_SET_INT("H4CNF_HEL_DISRP", 3)
                    STAT_SET_INT("H4CNF_APPROACH", -1)

                    menu.trigger_commands("hccprefreshboard")

                    for i = 1, #CayoPresetLists do
                        if CayoPresetLists[i][1] == AUTOAMTED_SOLO_SAPPHIRE then
                            CayoPresetLists[i][2] = true
                        end
                    end
                    for i = 1, 3 do
                        for j = 1, #ForCayoPresets[i] do
                            menu.set_help_text(ForCayoPresets[i][j][1], TRANSLATE("This feature has been controlled by another feature.") .. "\n" .. "- " .. menu.get_menu_name(CAYO_PRESETS) .. " > " .. menu.get_menu_name(menu.get_parent(AUTOAMTED_SOLO_SAPPHIRE)) .. " > " .. menu.get_menu_name(AUTOAMTED_SOLO_SAPPHIRE))
                        end
                    end
                else
                    for i = 1, #CayoPresetLists do
                        if CayoPresetLists[i][1] == AUTOAMTED_SOLO_SAPPHIRE then
                            CayoPresetLists[i][2] = false
                        end
                    end
                    for i = 1, 3 do
                        for j = 1, #ForCayoPresets[i] do
                            menu.apply_default_state(ForCayoPresets[i][j][1])
                            menu.set_help_text(ForCayoPresets[i][j][1], ForCayoPresets[i][j][2])
                        end
                    end
                end

                while menu.get_value(AUTOAMTED_SOLO_SAPPHIRE) do
                    menu.set_value(CP_REM_FEE, false)
                    menu.set_value(CP_NON_HOST_CUT, 100)
                    menu.set_value(CP_NON_HOST_CUT_LOOP, false)
                    menu.set_value(CP_HOST_CUT, 100)
                    menu.set_value(CP_HOST_CUT_LOOP, true)

                    util.yield_once()
                end
            end)

            AUTOMATED_SOLO_RUBY = menu.toggle(AUTOMATED_SOLO, TRANSLATE("Ruby Necklace"), {"hccp1prn"}, "", function()
                if menu.get_value(AUTOMATED_SOLO_RUBY) then
                    STAT_SET_INT("H4CNF_TARGET", 1)
                    STAT_SET_INT("H4LOOT_CASH_I", 9208137)
                    STAT_SET_INT("H4LOOT_CASH_I_SCOPED", 9208137)
                    STAT_SET_INT("H4LOOT_CASH_C", 0)
                    STAT_SET_INT("H4LOOT_CASH_C_SCOPED", 0)
                    STAT_SET_INT("H4LOOT_COKE_I", 1048704)
                    STAT_SET_INT("H4LOOT_COKE_I_SCOPED", 1048704)
                    STAT_SET_INT("H4LOOT_COKE_C", 0)
                    STAT_SET_INT("H4LOOT_COKE_C_SCOPED", 0)
                    STAT_SET_INT("H4LOOT_GOLD_I", 0)
                    STAT_SET_INT("H4LOOT_GOLD_I_SCOPED", 0)
                    STAT_SET_INT("H4LOOT_GOLD_C", 255)
                    STAT_SET_INT("H4LOOT_GOLD_C_SCOPED", 255)
                    STAT_SET_INT("H4LOOT_WEED_I", 4206596)
                    STAT_SET_INT("H4LOOT_WEED_I_SCOPED", 4206596)
                    STAT_SET_INT("H4LOOT_WEED_C", 0)
                    STAT_SET_INT("H4LOOT_WEED_C_SCOPED", 0)
                    STAT_SET_INT("H4LOOT_PAINT", 127)
                    STAT_SET_INT("H4LOOT_PAINT_SCOPED", 127)
                    STAT_SET_INT("H4LOOT_CASH_V", 424431)
                    STAT_SET_INT("H4LOOT_COKE_V", 848863)
                    STAT_SET_INT("H4LOOT_GOLD_V", 1131817)
                    STAT_SET_INT("H4LOOT_PAINT_V", 848863)
                    STAT_SET_INT("H4LOOT_WEED_V", 679090)
                    STAT_SET_INT("H4_PROGRESS", 131055)
                    STAT_SET_INT("H4CNF_BS_GEN", 262143)
                    STAT_SET_INT("H4CNF_BS_ENTR", 63)
                    STAT_SET_INT("H4CNF_BS_ABIL", 63)
                    STAT_SET_INT("H4CNF_WEP_DISRP", 3)
                    STAT_SET_INT("H4CNF_ARM_DISRP", 3)
                    STAT_SET_INT("H4CNF_HEL_DISRP", 3)
                    STAT_SET_INT("H4CNF_APPROACH", -1)
                    STAT_SET_INT("H4CNF_BOLTCUT", 4424)
                    STAT_SET_INT("H4CNF_UNIFORM", 5256)
                    STAT_SET_INT("H4CNF_GRAPPEL", 5156)
                    STAT_SET_INT("H4_MISSIONS", -1)
                    STAT_SET_INT("H4CNF_WEAPONS", 1)
                    STAT_SET_INT("H4CNF_TROJAN", 5)
                    STAT_SET_INT("H4_PLAYTHROUGH_STATUS", 100)

                    menu.trigger_commands("hccprefreshboard")

                    for i = 1, #CayoPresetLists do
                        if CayoPresetLists[i][1] == AUTOMATED_SOLO_RUBY then
                            CayoPresetLists[i][2] = true
                        end
                    end
                    for i = 1, 3 do
                        for j = 1, #ForCayoPresets[i] do
                            menu.set_help_text(ForCayoPresets[i][j][1], TRANSLATE("This feature has been controlled by another feature.") .. "\n" .. "- " .. menu.get_menu_name(CAYO_PRESETS) .. " > " .. menu.get_menu_name(menu.get_parent(AUTOMATED_SOLO_RUBY)) .. " > " .. menu.get_menu_name(AUTOMATED_SOLO_RUBY))
                        end
                    end
                else
                    for i = 1, #CayoPresetLists do
                        if CayoPresetLists[i][1] == AUTOMATED_SOLO_RUBY then
                            CayoPresetLists[i][2] = false
                        end
                    end
                    for i = 1, 3 do
                        for j = 1, #ForCayoPresets[i] do
                            menu.apply_default_state(ForCayoPresets[i][j][1])
                            menu.set_help_text(ForCayoPresets[i][j][1], ForCayoPresets[i][j][2])
                        end
                    end
                end

                while menu.get_value(AUTOMATED_SOLO_RUBY) do
                    menu.set_value(CP_REM_FEE, false)
                    menu.set_value(CP_NON_HOST_CUT, 100)
                    menu.set_value(CP_NON_HOST_CUT_LOOP, false)
                    menu.set_value(CP_HOST_CUT, 100)
                    menu.set_value(CP_HOST_CUT_LOOP, true)

                    util.yield_once()
                end
            end)

        ---

        AUTOMATED_2P = menu.list(CAYO_PRESETS, TRANSLATE("2 Players"), {}, "", function(); end)

            AUTOAMTED_2P_SAPPHIRE = menu.toggle_loop(AUTOMATED_2P, TRANSLATE("Sapphire Panther"), {"hccp2psp"}, "", function()   
                if menu.get_value(AUTOAMTED_2P_SAPPHIRE) then
                    STAT_SET_INT("H4CNF_BOLTCUT", 4424)
                    STAT_SET_INT("H4CNF_UNIFORM", 5256)
                    STAT_SET_INT("H4CNF_GRAPPEL", 5156)
                    STAT_SET_INT("H4_MISSIONS", -1)
                    STAT_SET_INT("H4CNF_WEAPONS", 1)
                    STAT_SET_INT("H4CNF_TROJAN", 5)
                    STAT_SET_INT("H4_PLAYTHROUGH_STATUS", 100)
                    STAT_SET_INT("H4CNF_TARGET", 5)
                    STAT_SET_INT("H4LOOT_CASH_I", 2359448)
                    STAT_SET_INT("H4LOOT_CASH_I_SCOPED", 2359448)
                    STAT_SET_INT("H4LOOT_CASH_C", 0)
                    STAT_SET_INT("H4LOOT_CASH_C_SCOPED", 0)
                    STAT_SET_INT("H4LOOT_COKE_I", 2)
                    STAT_SET_INT("H4LOOT_COKE_I_SCOPED", 2)
                    STAT_SET_INT("H4LOOT_COKE_C", 0)
                    STAT_SET_INT("H4LOOT_COKE_C_SCOPED", 0)
                    STAT_SET_INT("H4LOOT_GOLD_I", 0)
                    STAT_SET_INT("H4LOOT_GOLD_I_SCOPED", 0)
                    STAT_SET_INT("H4LOOT_GOLD_C", 255)
                    STAT_SET_INT("H4LOOT_GOLD_C_SCOPED", 255)
                    STAT_SET_INT("H4LOOT_WEED_I", 0)
                    STAT_SET_INT("H4LOOT_WEED_I_SCOPED", 0)
                    STAT_SET_INT("H4LOOT_WEED_C", 0)
                    STAT_SET_INT("H4LOOT_WEED_C_SCOPED", 0)
                    STAT_SET_INT("H4LOOT_PAINT", 127)
                    STAT_SET_INT("H4LOOT_PAINT_SCOPED", 127)
                    STAT_SET_INT("H4LOOT_CASH_V", 474431)
                    STAT_SET_INT("H4LOOT_COKE_V", 948863)
                    STAT_SET_INT("H4LOOT_GOLD_V", 1265151)
                    STAT_SET_INT("H4LOOT_PAINT_V", 948863)
                    STAT_SET_INT("H4LOOT_WEED_V", 0)
                    STAT_SET_INT("H4_PROGRESS", 126823)
                    STAT_SET_INT("H4CNF_BS_GEN", 262143)
                    STAT_SET_INT("H4CNF_BS_ENTR", 63)
                    STAT_SET_INT("H4CNF_BS_ABIL", 63)
                    STAT_SET_INT("H4CNF_WEP_DISRP", 3)
                    STAT_SET_INT("H4CNF_ARM_DISRP", 3)
                    STAT_SET_INT("H4CNF_HEL_DISRP", 3)
                    STAT_SET_INT("H4CNF_APPROACH", -1)

                    menu.trigger_commands("hccprefreshboard")

                    for i = 1, #CayoPresetLists do
                        if CayoPresetLists[i][1] == AUTOAMTED_2P_SAPPHIRE then
                            CayoPresetLists[i][2] = true
                        end
                    end
                    for i = 1, 4 do
                        for j = 1, #ForCayoPresets[i] do
                            menu.set_help_text(ForCayoPresets[i][j][1], TRANSLATE("This feature has been controlled by another feature.") .. "\n" .. "- " .. menu.get_menu_name(CAYO_PRESETS) .. " > " .. menu.get_menu_name(menu.get_parent(AUTOAMTED_2P_SAPPHIRE)) .. " > " .. menu.get_menu_name(AUTOAMTED_2P_SAPPHIRE))
                        end
                    end
                else
                    for i = 1, #CayoPresetLists do
                        if CayoPresetLists[i][1] == AUTOAMTED_2P_SAPPHIRE then
                            CayoPresetLists[i][2] = false
                        end
                    end
                    for i = 1, 4 do
                        for j = 1, #ForCayoPresets[i] do
                            menu.apply_default_state(ForCayoPresets[i][j][1])
                            menu.set_help_text(ForCayoPresets[i][j][1], ForCayoPresets[i][j][2])
                        end
                    end
                end

                while menu.get_value(AUTOAMTED_2P_SAPPHIRE) do
                    menu.set_value(CP_REM_FEE, false)
                    menu.set_value(CP_NON_HOST_CUT, 50)
                    menu.set_value(CP_NON_HOST_CUT_LOOP, false)
                    menu.set_value(CP_HOST_CUT, 50)
                    menu.set_value(CP_HOST_CUT_LOOP, true)
                    menu.set_value(CP_2P_CUT, 50)
                    menu.set_value(CP_2P_CUT_LOOP, true)

                    util.yield_once()
                end
            end)

            AUTOAMTED_2P_RUBY = menu.toggle_loop(AUTOMATED_2P, TRANSLATE("Ruby Necklace"), {"hccp2prn"}, "", function()  
                if menu.get_value(AUTOAMTED_2P_RUBY) then
                    STAT_SET_INT("H4CNF_TARGET", 1)
                    STAT_SET_INT("H4LOOT_CASH_I", 9208137)
                    STAT_SET_INT("H4LOOT_CASH_I_SCOPED", 9208137)
                    STAT_SET_INT("H4LOOT_CASH_C", 0)
                    STAT_SET_INT("H4LOOT_CASH_C_SCOPED", 0)
                    STAT_SET_INT("H4LOOT_COKE_I", 1048704)
                    STAT_SET_INT("H4LOOT_COKE_I_SCOPED", 1048704)
                    STAT_SET_INT("H4LOOT_COKE_C", 0)
                    STAT_SET_INT("H4LOOT_COKE_C_SCOPED", 0)
                    STAT_SET_INT("H4LOOT_GOLD_I", 0)
                    STAT_SET_INT("H4LOOT_GOLD_I_SCOPED", 0)
                    STAT_SET_INT("H4LOOT_GOLD_C", 255)
                    STAT_SET_INT("H4LOOT_GOLD_C_SCOPED", 255)
                    STAT_SET_INT("H4LOOT_WEED_I", 4206596)
                    STAT_SET_INT("H4LOOT_WEED_I_SCOPED", 4206596)
                    STAT_SET_INT("H4LOOT_WEED_C", 0)
                    STAT_SET_INT("H4LOOT_WEED_C_SCOPED", 0)
                    STAT_SET_INT("H4LOOT_PAINT", 127)
                    STAT_SET_INT("H4LOOT_PAINT_SCOPED", 127)
                    STAT_SET_INT("H4LOOT_CASH_V", 572727)
                    STAT_SET_INT("H4LOOT_COKE_V", 1145454)
                    STAT_SET_INT("H4LOOT_GOLD_V", 1527272)
                    STAT_SET_INT("H4LOOT_PAINT_V", 1145454)
                    STAT_SET_INT("H4LOOT_WEED_V", 916363)
                    STAT_SET_INT("H4_PROGRESS", 126823)
                    STAT_SET_INT("H4CNF_BS_GEN", 262143)
                    STAT_SET_INT("H4CNF_BS_ENTR", 63)
                    STAT_SET_INT("H4CNF_BS_ABIL", 63)
                    STAT_SET_INT("H4CNF_WEP_DISRP", 3)
                    STAT_SET_INT("H4CNF_ARM_DISRP", 3)
                    STAT_SET_INT("H4CNF_HEL_DISRP", 3)
                    STAT_SET_INT("H4CNF_APPROACH", -1)
                    STAT_SET_INT("H4CNF_BOLTCUT", 4424)
                    STAT_SET_INT("H4CNF_UNIFORM", 5256)
                    STAT_SET_INT("H4CNF_GRAPPEL", 5156)
                    STAT_SET_INT("H4_MISSIONS", -1)
                    STAT_SET_INT("H4CNF_WEAPONS", 1)
                    STAT_SET_INT("H4CNF_TROJAN", 5)
                    STAT_SET_INT("H4_PLAYTHROUGH_STATUS", 100)

                    menu.trigger_commands("hccprefreshboard")

                    for i = 1, #CayoPresetLists do
                        if CayoPresetLists[i][1] == AUTOAMTED_2P_RUBY then
                            CayoPresetLists[i][2] = true
                        end
                    end
                    for i = 1, 4 do
                        for j = 1, #ForCayoPresets[i] do
                            menu.set_help_text(ForCayoPresets[i][j][1], TRANSLATE("This feature has been controlled by another feature.") .. "\n" .. "- " .. menu.get_menu_name(CAYO_PRESETS) .. " > " .. menu.get_menu_name(menu.get_parent(AUTOAMTED_2P_RUBY)) .. " > " .. menu.get_menu_name(AUTOAMTED_2P_RUBY))
                        end
                    end
                else
                    for i = 1, #CayoPresetLists do
                        if CayoPresetLists[i][1] == AUTOAMTED_2P_RUBY then
                            CayoPresetLists[i][2] = false
                        end
                    end
                    for i = 1, 4 do
                        for j = 1, #ForCayoPresets[i] do
                            menu.apply_default_state(ForCayoPresets[i][j][1])
                            menu.set_help_text(ForCayoPresets[i][j][1], ForCayoPresets[i][j][2])
                        end
                    end
                end

                while menu.get_value(AUTOAMTED_2P_RUBY) do
                    menu.set_value(CP_REM_FEE, false)
                    menu.set_value(CP_NON_HOST_CUT, 50)
                    menu.set_value(CP_NON_HOST_CUT_LOOP, false)
                    menu.set_value(CP_HOST_CUT, 50)
                    menu.set_value(CP_HOST_CUT_LOOP, true)
                    menu.set_value(CP_2P_CUT, 50)
                    menu.set_value(CP_2P_CUT_LOOP, true)

                    util.yield_once()
                end
            end)

        ---

        AUTOMATED_3P = menu.list(CAYO_PRESETS, TRANSLATE("3 Players"), {}, "", function(); end)

            AUTOAMTED_3P_SAPPHIRE = menu.toggle_loop(AUTOMATED_3P, TRANSLATE("Sapphire Panther"), {"hccp3psp"}, "", function()
                if menu.get_value(AUTOAMTED_3P_SAPPHIRE) then
                    STAT_SET_INT("H4CNF_BOLTCUT", 4424)
                    STAT_SET_INT("H4CNF_UNIFORM", 5256)
                    STAT_SET_INT("H4CNF_GRAPPEL", 5156)
                    STAT_SET_INT("H4_MISSIONS", -1)
                    STAT_SET_INT("H4CNF_WEAPONS", 1)
                    STAT_SET_INT("H4CNF_TROJAN", 5)
                    STAT_SET_INT("H4_PLAYTHROUGH_STATUS", 100)
                    STAT_SET_INT("H4CNF_TARGET", 5)
                    STAT_SET_INT("H4LOOT_CASH_I", 2359448)
                    STAT_SET_INT("H4LOOT_CASH_I_SCOPED", 2359448)
                    STAT_SET_INT("H4LOOT_CASH_C", 0)
                    STAT_SET_INT("H4LOOT_CASH_C_SCOPED", 0)
                    STAT_SET_INT("H4LOOT_COKE_I", 4901222)
                    STAT_SET_INT("H4LOOT_COKE_I_SCOPED", 4901222)
                    STAT_SET_INT("H4LOOT_COKE_C", 0)
                    STAT_SET_INT("H4LOOT_COKE_C_SCOPED", 0)
                    STAT_SET_INT("H4LOOT_GOLD_I", 0)
                    STAT_SET_INT("H4LOOT_GOLD_I_SCOPED", 0)
                    STAT_SET_INT("H4LOOT_GOLD_C", 255)
                    STAT_SET_INT("H4LOOT_GOLD_C_SCOPED", 255)
                    STAT_SET_INT("H4LOOT_WEED_I", 0)
                    STAT_SET_INT("H4LOOT_WEED_I_SCOPED", 0)
                    STAT_SET_INT("H4LOOT_WEED_C", 0)
                    STAT_SET_INT("H4LOOT_WEED_C_SCOPED", 0)
                    STAT_SET_INT("H4LOOT_PAINT", 127)
                    STAT_SET_INT("H4LOOT_PAINT_SCOPED", 127)
                    STAT_SET_INT("H4LOOT_CASH_V", 515151)
                    STAT_SET_INT("H4LOOT_COKE_V", 1030303)
                    STAT_SET_INT("H4LOOT_GOLD_V", 1373737)
                    STAT_SET_INT("H4LOOT_PAINT_V", 1030303)
                    STAT_SET_INT("H4LOOT_WEED_V", 0)
                    STAT_SET_INT("H4_PROGRESS", 126823)
                    STAT_SET_INT("H4CNF_BS_GEN", 262143)
                    STAT_SET_INT("H4CNF_BS_ENTR", 63)
                    STAT_SET_INT("H4CNF_BS_ABIL", 63)
                    STAT_SET_INT("H4CNF_WEP_DISRP", 3)
                    STAT_SET_INT("H4CNF_ARM_DISRP", 3)
                    STAT_SET_INT("H4CNF_HEL_DISRP", 3)
                    STAT_SET_INT("H4CNF_APPROACH", -1)

                    menu.trigger_commands("hccprefreshboard")

                    for i = 1, #CayoPresetLists do
                        if CayoPresetLists[i][1] == AUTOAMTED_3P_SAPPHIRE then
                            CayoPresetLists[i][2] = true
                        end
                    end
                    for i = 1, 5 do
                        for j = 1, #ForCayoPresets[i] do
                            menu.set_help_text(ForCayoPresets[i][j][1], TRANSLATE("This feature has been controlled by another feature.") .. "\n" .. "- " .. menu.get_menu_name(CAYO_PRESETS) .. " > " .. menu.get_menu_name(menu.get_parent(AUTOAMTED_3P_SAPPHIRE)) .. " > " .. menu.get_menu_name(AUTOAMTED_3P_SAPPHIRE))
                        end
                    end
                else
                    for i = 1, #CayoPresetLists do
                        if CayoPresetLists[i][1] == AUTOAMTED_3P_SAPPHIRE then
                            CayoPresetLists[i][2] = false
                        end
                    end
                    for i = 1, 5 do
                        for j = 1, #ForCayoPresets[i] do
                            menu.apply_default_state(ForCayoPresets[i][j][1])
                            menu.set_help_text(ForCayoPresets[i][j][1], ForCayoPresets[i][j][2])
                        end
                    end
                end

                while menu.get_value(AUTOAMTED_3P_SAPPHIRE) do
                    menu.set_value(CP_REM_FEE, false)
                    menu.set_value(CP_NON_HOST_CUT, 30)
                    menu.set_value(CP_NON_HOST_CUT_LOOP, false)
                    menu.set_value(CP_HOST_CUT, 30)
                    menu.set_value(CP_HOST_CUT_LOOP, true)
                    menu.set_value(CP_2P_CUT, 35)
                    menu.set_value(CP_2P_CUT_LOOP, true)
                    menu.set_value(CP_3P_CUT, 35)
                    menu.set_value(CP_3P_CUT_LOOP, true)

                    util.yield_once()
                end
            end)

            AUTOAMTED_3P_RUBY = menu.toggle_loop(AUTOMATED_3P, TRANSLATE("Ruby Necklace"), {"hccp3prn"}, "", function()
                if menu.get_value(AUTOAMTED_3P_RUBY) then
                    STAT_SET_INT("H4CNF_TARGET", 1)
                    STAT_SET_INT("H4LOOT_CASH_I", 9208137)
                    STAT_SET_INT("H4LOOT_CASH_I_SCOPED", 9208137)
                    STAT_SET_INT("H4LOOT_CASH_C", 0)
                    STAT_SET_INT("H4LOOT_CASH_C_SCOPED", 0)
                    STAT_SET_INT("H4LOOT_COKE_I", 1048704)
                    STAT_SET_INT("H4LOOT_COKE_I_SCOPED", 1048704)
                    STAT_SET_INT("H4LOOT_COKE_C", 0)
                    STAT_SET_INT("H4LOOT_COKE_C_SCOPED", 0)
                    STAT_SET_INT("H4LOOT_GOLD_I", 0)
                    STAT_SET_INT("H4LOOT_GOLD_I_SCOPED", 0)
                    STAT_SET_INT("H4LOOT_GOLD_C", 255)
                    STAT_SET_INT("H4LOOT_GOLD_C_SCOPED", 255)
                    STAT_SET_INT("H4LOOT_WEED_I", 4206596)
                    STAT_SET_INT("H4LOOT_WEED_I_SCOPED", 4206596)
                    STAT_SET_INT("H4LOOT_WEED_C", 0)
                    STAT_SET_INT("H4LOOT_WEED_C_SCOPED", 0)
                    STAT_SET_INT("H4LOOT_PAINT", 127)
                    STAT_SET_INT("H4LOOT_PAINT_SCOPED", 127)
                    STAT_SET_INT("H4LOOT_CASH_V", 598268)
                    STAT_SET_INT("H4LOOT_COKE_V", 1196536)
                    STAT_SET_INT("H4LOOT_GOLD_V", 1595382)
                    STAT_SET_INT("H4LOOT_PAINT_V", 1196536)
                    STAT_SET_INT("H4LOOT_WEED_V", 957229)
                    STAT_SET_INT("H4_PROGRESS", 126823)
                    STAT_SET_INT("H4CNF_BS_GEN", 262143)
                    STAT_SET_INT("H4CNF_BS_ENTR", 63)
                    STAT_SET_INT("H4CNF_BS_ABIL", 63)
                    STAT_SET_INT("H4CNF_WEP_DISRP", 3)
                    STAT_SET_INT("H4CNF_ARM_DISRP", 3)
                    STAT_SET_INT("H4CNF_HEL_DISRP", 3)
                    STAT_SET_INT("H4CNF_APPROACH", -1)
                    STAT_SET_INT("H4CNF_BOLTCUT", 4424)
                    STAT_SET_INT("H4CNF_UNIFORM", 5256)
                    STAT_SET_INT("H4CNF_GRAPPEL", 5156)
                    STAT_SET_INT("H4_MISSIONS", -1)
                    STAT_SET_INT("H4CNF_WEAPONS", 1)
                    STAT_SET_INT("H4CNF_TROJAN", 5)
                    STAT_SET_INT("H4_PLAYTHROUGH_STATUS", 100)

                    menu.trigger_commands("hccprefreshboard")

                    for i = 1, #CayoPresetLists do
                        if CayoPresetLists[i][1] == AUTOAMTED_3P_RUBY then
                            CayoPresetLists[i][2] = true
                        end
                    end
                    for i = 1, 5 do
                        for j = 1, #ForCayoPresets[i] do
                            menu.set_help_text(ForCayoPresets[i][j][1], TRANSLATE("This feature has been controlled by another feature.") .. "\n" .. "- " .. menu.get_menu_name(CAYO_PRESETS) .. " > " .. menu.get_menu_name(menu.get_parent(AUTOAMTED_3P_RUBY)) .. " > " .. menu.get_menu_name(AUTOAMTED_3P_RUBY))
                        end
                    end
                else
                    for i = 1, #CayoPresetLists do
                        if CayoPresetLists[i][1] == AUTOAMTED_3P_RUBY then
                            CayoPresetLists[i][2] = false
                        end
                    end
                    for i = 1, 5 do
                        for j = 1, #ForCayoPresets[i] do
                            menu.apply_default_state(ForCayoPresets[i][j][1])
                            menu.set_help_text(ForCayoPresets[i][j][1], ForCayoPresets[i][j][2])
                        end
                    end
                end

                while menu.get_value(AUTOAMTED_3P_RUBY) do
                    menu.set_value(CP_REM_FEE, false)
                    menu.set_value(CP_NON_HOST_CUT, 30)
                    menu.set_value(CP_NON_HOST_CUT_LOOP, false)
                    menu.set_value(CP_HOST_CUT, 30)
                    menu.set_value(CP_HOST_CUT_LOOP, true)
                    menu.set_value(CP_2P_CUT, 35)
                    menu.set_value(CP_2P_CUT_LOOP, true)
                    menu.set_value(CP_3P_CUT, 35)
                    menu.set_value(CP_3P_CUT_LOOP, true)

                    util.yield_once()
                end
            end)

        ---

        AUTOMATED_4P = menu.list(CAYO_PRESETS, TRANSLATE("4 Players"), {}, "", function(); end)

            AUTOAMTED_4P_SAPPHIRE = menu.toggle_loop(AUTOMATED_4P, TRANSLATE("Sapphire Panther"), {"hccp4psp"}, "", function()
                if menu.get_value(AUTOAMTED_4P_SAPPHIRE) then
                    STAT_SET_INT("H4CNF_TARGET", 5)
                    STAT_SET_INT("H4LOOT_CASH_I", 2359448)
                    STAT_SET_INT("H4LOOT_CASH_I_SCOPED", 2359448)
                    STAT_SET_INT("H4LOOT_CASH_C", 0)
                    STAT_SET_INT("H4LOOT_CASH_C_SCOPED", 0)
                    STAT_SET_INT("H4LOOT_COKE_I", 4901222)
                    STAT_SET_INT("H4LOOT_COKE_I_SCOPED", 4901222)
                    STAT_SET_INT("H4LOOT_COKE_C", 0)
                    STAT_SET_INT("H4LOOT_COKE_C_SCOPED", 0)
                    STAT_SET_INT("H4LOOT_GOLD_I", 0)
                    STAT_SET_INT("H4LOOT_GOLD_I_SCOPED", 0)
                    STAT_SET_INT("H4LOOT_GOLD_C", 255)
                    STAT_SET_INT("H4LOOT_GOLD_C_SCOPED", 255)
                    STAT_SET_INT("H4LOOT_WEED_I", 0)
                    STAT_SET_INT("H4LOOT_WEED_I_SCOPED", 0)
                    STAT_SET_INT("H4LOOT_WEED_C", 0)
                    STAT_SET_INT("H4LOOT_WEED_C_SCOPED", 0)
                    STAT_SET_INT("H4LOOT_PAINT", 127)
                    STAT_SET_INT("H4LOOT_PAINT_SCOPED", 127)
                    STAT_SET_INT("H4LOOT_CASH_V", 599431)
                    STAT_SET_INT("H4LOOT_COKE_V", 1198863)
                    STAT_SET_INT("H4LOOT_GOLD_V", 1598484)
                    STAT_SET_INT("H4LOOT_PAINT_V", 1198863)
                    STAT_SET_INT("H4LOOT_WEED_V", 0)
                    STAT_SET_INT("H4_PROGRESS", 126823)
                    STAT_SET_INT("H4CNF_BS_GEN", 262143)
                    STAT_SET_INT("H4CNF_BS_ENTR", 63)
                    STAT_SET_INT("H4CNF_BS_ABIL", 63)
                    STAT_SET_INT("H4CNF_WEP_DISRP", 3)
                    STAT_SET_INT("H4CNF_ARM_DISRP", 3)
                    STAT_SET_INT("H4CNF_HEL_DISRP", 3)
                    STAT_SET_INT("H4CNF_APPROACH", -1)
                    STAT_SET_INT("H4CNF_BOLTCUT", 4424)
                    STAT_SET_INT("H4CNF_UNIFORM", 5256)
                    STAT_SET_INT("H4CNF_GRAPPEL", 5156)
                    STAT_SET_INT("H4_MISSIONS", -1)
                    STAT_SET_INT("H4CNF_WEAPONS", 1)
                    STAT_SET_INT("H4CNF_TROJAN", 5)
                    STAT_SET_INT("H4_PLAYTHROUGH_STATUS", 100)

                    menu.trigger_commands("hccprefreshboard")

                    for i = 1, #CayoPresetLists do
                        if CayoPresetLists[i][1] == AUTOAMTED_4P_SAPPHIRE then
                            CayoPresetLists[i][2] = true
                        end
                    end
                    for i = 1, 6 do
                        for j = 1, #ForCayoPresets[i] do
                            menu.set_help_text(ForCayoPresets[i][j][1], TRANSLATE("This feature has been controlled by another feature.") .. "\n" .. "- " .. menu.get_menu_name(CAYO_PRESETS) .. " > " .. menu.get_menu_name(menu.get_parent(AUTOAMTED_4P_SAPPHIRE)) .. " > " .. menu.get_menu_name(AUTOAMTED_4P_SAPPHIRE))
                        end
                    end
                else
                    for i = 1, #CayoPresetLists do
                        if CayoPresetLists[i][1] == AUTOAMTED_4P_SAPPHIRE then
                            CayoPresetLists[i][2] = false
                        end
                    end
                    for i = 1, 6 do
                        for j = 1, #ForCayoPresets[i] do
                            menu.apply_default_state(ForCayoPresets[i][j][1])
                            menu.set_help_text(ForCayoPresets[i][j][1], ForCayoPresets[i][j][2])
                        end
                    end
                end

                while menu.get_value(AUTOAMTED_4P_SAPPHIRE) do
                    menu.set_value(CP_REM_FEE, false)
                    menu.set_value(CP_NON_HOST_CUT, 25)
                    menu.set_value(CP_NON_HOST_CUT_LOOP, false)
                    menu.set_value(CP_HOST_CUT, 25)
                    menu.set_value(CP_HOST_CUT_LOOP, true)
                    menu.set_value(CP_2P_CUT, 25)
                    menu.set_value(CP_2P_CUT_LOOP, true)
                    menu.set_value(CP_3P_CUT, 25)
                    menu.set_value(CP_3P_CUT_LOOP, true)
                    menu.set_value(CP_4P_CUT, 25)
                    menu.set_value(CP_4P_CUT_LOOP, true)

                    util.yield_once()
                end
            end)

            AUTOAMTED_4P_RUBY = menu.toggle_loop(AUTOMATED_4P, TRANSLATE("Ruby Necklace"), {"hccp4prn"}, "", function()
                if menu.get_value(AUTOAMTED_4P_RUBY) then
                    STAT_SET_INT("H4CNF_TARGET", 1)
                    STAT_SET_INT("H4LOOT_CASH_I", 9208137)
                    STAT_SET_INT("H4LOOT_CASH_I_SCOPED", 9208137)
                    STAT_SET_INT("H4LOOT_CASH_C", 0)
                    STAT_SET_INT("H4LOOT_CASH_C_SCOPED", 0)
                    STAT_SET_INT("H4LOOT_COKE_I", 1048704)
                    STAT_SET_INT("H4LOOT_COKE_I_SCOPED", 1048704)
                    STAT_SET_INT("H4LOOT_COKE_C", 0)
                    STAT_SET_INT("H4LOOT_COKE_C_SCOPED", 0)
                    STAT_SET_INT("H4LOOT_GOLD_I", 0)
                    STAT_SET_INT("H4LOOT_GOLD_I_SCOPED", 0)
                    STAT_SET_INT("H4LOOT_GOLD_C", 255)
                    STAT_SET_INT("H4LOOT_GOLD_C_SCOPED", 255)
                    STAT_SET_INT("H4LOOT_WEED_I", 4206596)
                    STAT_SET_INT("H4LOOT_WEED_I_SCOPED", 4206596)
                    STAT_SET_INT("H4LOOT_WEED_C", 0)
                    STAT_SET_INT("H4LOOT_WEED_C_SCOPED", 0)
                    STAT_SET_INT("H4LOOT_PAINT", 127)
                    STAT_SET_INT("H4LOOT_PAINT_SCOPED", 127)
                    STAT_SET_INT("H4LOOT_CASH_V", 655681)
                    STAT_SET_INT("H4LOOT_COKE_V", 1311363)
                    STAT_SET_INT("H4LOOT_GOLD_V", 1748484)
                    STAT_SET_INT("H4LOOT_PAINT_V", 1311363)
                    STAT_SET_INT("H4LOOT_WEED_V", 1049090)
                    STAT_SET_INT("H4_PROGRESS", 126823)
                    STAT_SET_INT("H4CNF_BS_GEN", 262143)
                    STAT_SET_INT("H4CNF_BS_ENTR", 63)
                    STAT_SET_INT("H4CNF_BS_ABIL", 63)
                    STAT_SET_INT("H4CNF_WEP_DISRP", 3)
                    STAT_SET_INT("H4CNF_ARM_DISRP", 3)
                    STAT_SET_INT("H4CNF_HEL_DISRP", 3)
                    STAT_SET_INT("H4CNF_APPROACH", -1)
                    STAT_SET_INT("H4CNF_BOLTCUT", 4424)
                    STAT_SET_INT("H4CNF_UNIFORM", 5256)
                    STAT_SET_INT("H4CNF_GRAPPEL", 5156)
                    STAT_SET_INT("H4_MISSIONS", -1)
                    STAT_SET_INT("H4CNF_WEAPONS", 1)
                    STAT_SET_INT("H4CNF_TROJAN", 5)
                    STAT_SET_INT("H4_PLAYTHROUGH_STATUS", 100)

                    menu.trigger_commands("hccprefreshboard")

                    for i = 1, #CayoPresetLists do
                        if CayoPresetLists[i][1] == AUTOAMTED_4P_RUBY then
                            CayoPresetLists[i][2] = true
                        end
                    end
                    for i = 1, 6 do
                        for j = 1, #ForCayoPresets[i] do
                            menu.set_help_text(ForCayoPresets[i][j][1], TRANSLATE("This feature has been controlled by another feature.") .. "\n" .. "- " .. menu.get_menu_name(CAYO_PRESETS) .. " > " .. menu.get_menu_name(menu.get_parent(AUTOAMTED_4P_RUBY)) .. " > " .. menu.get_menu_name(AUTOAMTED_4P_RUBY))
                        end
                    end
                else
                    for i = 1, #CayoPresetLists do
                        if CayoPresetLists[i][1] == AUTOAMTED_4P_RUBY then
                            CayoPresetLists[i][2] = false
                        end
                    end
                    for i = 1, 6 do
                        for j = 1, #ForCayoPresets[i] do
                            menu.apply_default_state(ForCayoPresets[i][j][1])
                            menu.set_help_text(ForCayoPresets[i][j][1], ForCayoPresets[i][j][2])
                        end
                    end
                end

                while menu.get_value(AUTOAMTED_4P_RUBY) do
                    menu.set_value(CP_REM_FEE, false)
                    menu.set_value(CP_NON_HOST_CUT, 25)
                    menu.set_value(CP_NON_HOST_CUT_LOOP, false)
                    menu.set_value(CP_HOST_CUT, 25)
                    menu.set_value(CP_HOST_CUT_LOOP, true)
                    menu.set_value(CP_2P_CUT, 25)
                    menu.set_value(CP_2P_CUT_LOOP, true)
                    menu.set_value(CP_3P_CUT, 25)
                    menu.set_value(CP_3P_CUT_LOOP, true)
                    menu.set_value(CP_4P_CUT, 25)
                    menu.set_value(CP_4P_CUT_LOOP, true)

                    util.yield_once()
                end
            end)

        ---

    ---

---

TELEPORT_CP = menu.list(PERICO_HEIST, TRANSLATE("Teleport Places"), {}, TRANSLATE("- How to change the line color: Stand > Settings > Appearance > Colours > HUD Colour") .. "\n\n" .. TRANSLATE("- How to change the AR Beacon color: Stand > Settings > Appearance > Colours > AR Colour"), function(); end)

    CAYO_TELE_COMPOUND = menu.list(TELEPORT_CP, TRANSLATE("Compound"), {}, "", function(); end)

        CAYO_TELE_STORAGE = menu.list(CAYO_TELE_COMPOUND, TRANSLATE("Storage"), {}, "", function(); end)

            CAYO_TELE_STORAGE_NORTH = menu.action(CAYO_TELE_STORAGE, TRANSLATE("North"), {}, "", function()
                TELEPORT(5081.0415, -5755.32, 15.829645)
                SET_HEADING(-45)
            end)
            CAYO_TELE_STORAGE_WEST = menu.action(CAYO_TELE_STORAGE, TRANSLATE("West"), {}, "", function()
                TELEPORT(5006.722, -5786.5967, 17.831688)
                SET_HEADING(35)
            end)
            CAYO_TELE_STORAGE_SOUTH = menu.action(CAYO_TELE_STORAGE, TRANSLATE("South"), {}, "", function()
                TELEPORT(5027.603, -5734.682, 17.255005)
                SET_HEADING(-50)
            end)

        ---

        CAYO_TELE_VAULT = menu.list(CAYO_TELE_COMPOUND, TRANSLATE("Vault"), {}, "", function(); end)

            CAYO_TELE_VAULT_PRIMARY_TARGET = menu.action(CAYO_TELE_VAULT, TRANSLATE("Primary Target"), {}, "", function()
                TELEPORT(5006.7, -5756.2, 14.8)
                SET_HEADING(145)
            end)
            CAYO_TELE_VAULT_SECONDARY_TARGET = menu.action(CAYO_TELE_VAULT, TRANSLATE("Secondary Target"), {}, "", function()
                TELEPORT(4999.764160, -5749.863770, 14.840000)
            end)

        ---

        CAYO_TELE_COMPOUND_OFFICE = menu.action(CAYO_TELE_COMPOUND, TRANSLATE("El Rubio's Office"), {}, "", function()
            TELEPORT(5010.12, -5750.1353, 28.84334)
            SET_HEADING(325)
        end)
        CAYO_TELE_COMPOUND_FRONT_EXIT = menu.action(CAYO_TELE_COMPOUND, TRANSLATE("Front Gate Exit"), {}, "", function()
            TELEPORT(4990.0386, -5717.6895, 19.880217)
            SET_HEADING(50)
        end)

    ---

    CAYO_TELE_ISLAND = menu.list(TELEPORT_CP, TRANSLATE("Island"), {}, "", function(); end)

        CAYO_TELE_AIRSTRIP = menu.list(CAYO_TELE_ISLAND, TRANSLATE("Airstrip"), {}, "", function(); end)

            CAYO_TELE_AIRSTRIP_1 = menu.action(CAYO_TELE_AIRSTRIP, TRANSLATE("Loot") .. " - #1", {}, "", function()
                TELEPORT(4503.587402, -4555.740723, 2.854459)
            end)
            CAYO_TELE_AIRSTRIP_2 = menu.action(CAYO_TELE_AIRSTRIP, TRANSLATE("Loot") .. " - #2", {}, "", function()
                TELEPORT(4437.821777, -4447.841309, 3.028436)
            end)
            CAYO_TELE_AIRSTRIP_3 = menu.action(CAYO_TELE_AIRSTRIP, TRANSLATE("Loot") .. " - #3", {}, "", function()
                TELEPORT(4447.091797, -4442.184082, 5.936794)
            end)

        ---

        CAYO_TELE_CROP_FIELDS = menu.list(CAYO_TELE_ISLAND, TRANSLATE("Crop Fields"), {}, "", function(); end)

            CAYO_TELE_CROP_FIELDS_1 = menu.action(CAYO_TELE_CROP_FIELDS, TRANSLATE("Loot") .. " - #1", {}, "", function()
                TELEPORT(5330.527, -5269.7515, 33.18603)
            end)

        ---

        CAYO_TELE_MAIN_DOCK = menu.list(CAYO_TELE_ISLAND, TRANSLATE("Main Dock"), {}, "", function(); end)

            CAYO_TELE_MAIN_DOCK_1 = menu.action(CAYO_TELE_MAIN_DOCK, TRANSLATE("Loot") .. " - #1", {}, "", function()
                TELEPORT(5193.909668, -5135.642578, 2.045917)
            end)
            CAYO_TELE_MAIN_DOCK_2 = menu.action(CAYO_TELE_MAIN_DOCK, TRANSLATE("Loot") .. " - #2", {}, "", function()
                TELEPORT(4963.184570, -5108.933105, 1.670808)
            end)
            CAYO_TELE_MAIN_DOCK_3 = menu.action(CAYO_TELE_MAIN_DOCK, TRANSLATE("Loot") .. " - #3", {}, "", function()
                TELEPORT(4998.709473, -5165.559570, 1.464137)
            end)
            CAYO_TELE_MAIN_DOCK_4 = menu.action(CAYO_TELE_MAIN_DOCK, TRANSLATE("Loot") .. " - #4", {}, "", function()
                TELEPORT(4924.693359, -5243.244629, 1.223599)
            end)

        ---

        CAYO_TELE_NORTH_DOCK = menu.list(CAYO_TELE_ISLAND, TRANSLATE("North Dock"), {}, "", function(); end)

            CAYO_TELE_NORTH_DOCK_1 = menu.action(CAYO_TELE_NORTH_DOCK, TRANSLATE("Loot") .. " - #1", {}, "", function()
                TELEPORT(5132.558594, -4612.922852, 1.162808)
            end)
            CAYO_TELE_NORTH_DOCK_2 = menu.action(CAYO_TELE_NORTH_DOCK, TRANSLATE("Loot") .. " - #2", {}, "", function()
                TELEPORT(5065.255371, -4591.706543, 1.555012)
            end)
            CAYO_TELE_NORTH_DOCK_3 = menu.action(CAYO_TELE_NORTH_DOCK, TRANSLATE("Loot") .. " - #3", {}, "", function()
                TELEPORT(5090.916016, -4682.670898, 1.107098)
            end)

        ---

        CAYO_TELE_ISLAND_RADIO = menu.action(CAYO_TELE_ISLAND, TRANSLATE("Radio Tower"), {}, "", function()
            TELEPORT(5263.7124, -5407.5835, 65.24931)
        end)
        CAYO_TELE_ISLAND_DRAINGE_1 = menu.action(CAYO_TELE_ISLAND, TRANSLATE("Drainage Pipe"), {}, "", function()
            TELEPORT(5044.001, -5815.6426, -11.808871)
        end)
        CAYO_TELE_ISLAND_DRAINGE_2 = menu.action(CAYO_TELE_ISLAND, TRANSLATE("Drainage: 2nd Checkpoint"), {}, "", function()
            TELEPORT(5053.773, -5773.2266, -5.40778)
        end)
        CAYO_TELE_ISLAND_SAFE_ZONE = menu.action(CAYO_TELE_ISLAND, TRANSLATE("Ocean (Safe Zone)"), {}, "", function()
            TELEPORT(4771.479, -6165.737, -39.079613)
        end)

    ---

    TELEPORT_CP_KOSATKA = menu.action(TELEPORT_CP, TRANSLATE("Kosatka: Heist Board"), {"hctpsub"}, TRANSLATE("Note that works on best when you are alone in your session."), function()
        if STAT_GET_INT("IH_SUB_OWNED") ~= 0 then
            if not HUD.DOES_BLIP_EXIST(SubBlip) and not HUD.DOES_BLIP_EXIST(SubControlBlip) then
                local PlayerPos = players.get_position(players.user())
                local Interior = INTERIOR.GET_INTERIOR_AT_COORDS(PlayerPos.x, PlayerPos.y, PlayerPos.z)
                if Interior ~= 281345 then
                    NOTIFY(TRANSLATE("Waiting for requesting Kosatka..."))
                    local CommandRef = menu.ref_by_command_name("hcreq")
                    menu.trigger_command(CommandRef, "kosatka")
                    util.arspinner_enable()
                    repeat util.yield_once() until HUD.DOES_BLIP_EXIST(SubBlip)
                    util.arspinner_disable()
                end
            end

            TELEPORT(1561.2369, 385.8831, -49.689915)
            SET_HEADING(175)
        else
            NOTIFY(TRANSLATE("You didn't buy the Kosatka yet. Buy it first to teleport!"))
        end
    end)

---

PERICO_ADV = menu.list(PERICO_HEIST, TRANSLATE("Advanced Features"), {}, "", function(); end)

    PERICO_CUTS = menu.list(PERICO_ADV, TRANSLATE("Player's Cut"), {}, TRANSLATE("Don't forget changing this feature before starting the heist! Otherwise, won't be applied."), function(); end)

        PERICO_NON_HOST_CUT = menu.list(PERICO_CUTS, TRANSLATE("Your Cut (Non-Host)"), {}, TRANSLATE("Note that modifying this won't applied to the heist board. You can check the applied cut after end of the heist."), function(); end)

            CP_NON_HOST_CUT_LOOP = menu.toggle_loop(PERICO_NON_HOST_CUT, TRANSLATE("Enable"), {"hccpnonhostloop"}, "", function()
                SET_INT_GLOBAL(2685444 + 6639, menu.get_value(CP_NON_HOST_CUT)) -- heist_island_planning.c
            end, function()
                SET_INT_GLOBAL(2685444 + 6639, menu.get_default_state(CP_NON_HOST_CUT))
            end)

            CP_NON_HOST_CUT = menu.slider(PERICO_NON_HOST_CUT, TRANSLATE("Custom Percentage"), {"hccpnonhost"}, "(%)", 0, 1000, 100, 5, function(); end)

        ---

        PERICO_HOST_CUT = menu.list(PERICO_CUTS, TRANSLATE("Your Cut"), {}, TRANSLATE("Only works if you are host of the heist."), function(); end)

            CP_HOST_CUT_LOOP = menu.toggle_loop(PERICO_HOST_CUT, TRANSLATE("Enable"), {"hccphostcutloop"}, "", function()
                SET_INT_GLOBAL(1971648 + 831 + 56 + 1, menu.get_value(CP_HOST_CUT)) -- heist_island_planning.c
            end, function()
                SET_INT_GLOBAL(1971648 + 831 + 56 + 1, menu.get_default_state(CP_HOST_CUT))
            end)

            CP_HOST_CUT = menu.slider(PERICO_HOST_CUT, TRANSLATE("Custom Percentage"), {"hccphostcut"}, "(%)", 0, 1000, 100, 5, function(); end)

        ---

        PERICO_P2_CUT = menu.list(PERICO_CUTS, TRANSLATE("Player 2"), {}, TRANSLATE("Only works if you are host of the heist."), function(); end)

            CP_2P_CUT_LOOP = menu.toggle_loop(PERICO_P2_CUT, TRANSLATE("Enable"), {"hccp2pcutloop"}, "", function()
                SET_INT_GLOBAL(1971648 + 831 + 56 + 2, menu.get_value(CP_2P_CUT)) -- heist_island_planning.c
            end, function()
                SET_INT_GLOBAL(1971648 + 831 + 56 + 2, menu.get_default_state(CP_2P_CUT))
            end)

            CP_2P_CUT = menu.slider(PERICO_P2_CUT, TRANSLATE("Custom Percentage"), {"hccp2pcut"}, "(%)", 0, 1000, 100, 5, function(); end)
        
        ---
        
        PERICO_P3_CUT = menu.list(PERICO_CUTS, TRANSLATE("Player 3"), {}, TRANSLATE("Only works if you are host of the heist."), function(); end)

            CP_3P_CUT_LOOP = menu.toggle_loop(PERICO_P3_CUT, TRANSLATE("Enable"), {"hccp3pcutloop"}, "", function()
                SET_INT_GLOBAL(1971648 + 831 + 56 + 3, menu.get_value(CP_3P_CUT)) -- heist_island_planning.c
            end, function()
                SET_INT_GLOBAL(1971648 + 831 + 56 + 3, menu.get_default_state(CP_3P_CUT))
            end)

            CP_3P_CUT = menu.slider(PERICO_P3_CUT, TRANSLATE("Custom Percentage"), {"hccp3pcut"}, "(%)", 0, 1000, 100, 5, function(); end)

        ---

        PERICO_P4_CUT = menu.list(PERICO_CUTS, TRANSLATE("Player 4"), {}, TRANSLATE("Only works if you are host of the heist."), function(); end)

            CP_4P_CUT_LOOP = menu.toggle_loop(PERICO_P4_CUT, TRANSLATE("Enable"), {"hccp4pcutloop"}, "", function()
                SET_INT_GLOBAL(1971648 + 831 + 56 + 4, menu.get_value(CP_4P_CUT)) -- heist_island_planning.c
            end, function()
                SET_INT_GLOBAL(1971648 + 831 + 56 + 4, menu.get_default_state(CP_4P_CUT))
            end)

            CP_4P_CUT = menu.slider(PERICO_P4_CUT, TRANSLATE("Custom Percentage"), {"hccp4pcut"}, "(%)", 0, 1000, 100, 5, function(); end)

        ---

    ---

    menu.list_action(PERICO_ADV, TRANSLATE("Bag Capacity Modifier"), {"hccpbag"}, TRANSLATE("(Local)"), {
        { 1, TRANSLATE("Normal Bag Capacity"), {"1p"}, "" },
        { 2, TRANSLATE("Simulate Bag Capacity of 2 players"), {"2p"}, "" },
        { 3, TRANSLATE("Simulate Bag Capacity of 3 players"), {"3p"}, "" },
        { 4, TRANSLATE("Simulate Bag Capacity of 4 players"), {"4p"}, "" },
        { 5, TRANSLATE("Infinite Bag Capacity"), {"inf"}, "" },
    }, function(index)
        if index ~= 5 then
            SET_INT_TUNABLE_GLOBAL(1859395035, 1800 * index)
        else
            SET_INT_TUNABLE_GLOBAL(1859395035, 99999)
        end
    end)

    menu.toggle_loop(PERICO_ADV, TRANSLATE("Skip The Hacking Process"), {}, "(" .. TRANSLATE("Cayo Perico Heist") .. " > " .. TRANSLATE("Teleport Places") .. " > " .. TRANSLATE("Compound") .. " > " .. TRANSLATE("El Rubio's Office") .. ")", function() 
        if GET_INT_LOCAL("fm_mission_controller_2020", 24880) == 4 then -- https://www.unknowncheats.me/forum/3418914-post13398.html
            SET_INT_LOCAL("fm_mission_controller_2020", 24880, 5)
        end
    end)

    menu.toggle_loop(PERICO_ADV, TRANSLATE("Skip Cutting The Sewer Grill"), {}, "(" .. TRANSLATE("Cayo Perico Heist") .. " > " .. TRANSLATE("Teleport Places") .. " > " .. TRANSLATE("Island") .. " > " .. TRANSLATE("Drainage Pipe") .. ")", function() 
        if GET_INT_LOCAL("fm_mission_controller_2020", 29700) == 4 then -- https://www.unknowncheats.me/forum/3389282-post1.html  
            SET_INT_LOCAL("fm_mission_controller_2020", 29700, 6)
        end
    end)

    menu.toggle_loop(PERICO_ADV, TRANSLATE("Skip Cutting The Glass"), {}, "(" .. TRANSLATE("Cayo Perico Heist") .. " > " .. TRANSLATE("Teleport Places") .. " > " .. TRANSLATE("Compound") .. " > " .. TRANSLATE("Primary Target") .. ")", function()
        SET_FLOAT_LOCAL("fm_mission_controller_2020", 30939 + 3, 100)
    end, function()
        SET_FLOAT_LOCAL("fm_mission_controller_2020", 30939 + 3, 0)
    end)

    menu.toggle_loop(PERICO_ADV, TRANSLATE("Infinite Plasma Cutter Heat"), {}, "(" .. TRANSLATE("Cayo Perico Heist") .. " > " .. TRANSLATE("Teleport Places") .. " > " .. TRANSLATE("Compound") .. " > " .. TRANSLATE("Primary Target") .. ")", function()
        SET_FLOAT_LOCAL("fm_mission_controller_2020", 30939 + 4, 0)
    end)

    menu.toggle_loop(PERICO_ADV, TRANSLATE("Infinite Voltage Timer"), {}, "(" .. TRANSLATE("Cayo Perico Heist") .. " > " .. TRANSLATE("Teleport Places") .. " > " .. TRANSLATE("Island") .. " > " .. TRANSLATE("Radio Tower") .. ")", function()
        local Value = GET_INT_LOCAL("fm_mission_controller_2020", 1724)
        SET_INT_LOCAL("fm_mission_controller_2020", 1723, Value)
    end, function()
        SET_INT_LOCAL("fm_mission_controller_2020", 1723, 0)
    end)

    CPRemFeeTunables = {
        memory.tunable_offset(902085532),
        memory.tunable_offset(-1135949374),
    }
    CP_REM_FEE = menu.toggle_loop(PERICO_ADV, TRANSLATE("Remove The Fencing Fee And Pavel's Cut"), {"hccpremfee"}, TRANSLATE("(Local)") .. "\n\n" .. TRANSLATE("You should enable the preset until the end of the heist!"), function()
        SET_FLOAT_GLOBAL(262145 + CPRemFeeTunables[1], 0)
        SET_FLOAT_GLOBAL(262145 + CPRemFeeTunables[2], 0)
    end, function()
        SET_FLOAT_GLOBAL(262145 + CPRemFeeTunables[1], -0.1)
        SET_FLOAT_GLOBAL(262145 + CPRemFeeTunables[2], -0.02)
    end)

    menu.action(PERICO_ADV, TRANSLATE("Force Ready"), {"hccpforceready"}, TRANSLATE("Forces the players on board to ready."), function() 
        SET_INT_GLOBAL(1972760 + 1 + (1 * 27) + 8 + 1, 1) -- Thanks to @vithiam on Discord
        SET_INT_GLOBAL(1972760 + 1 + (2 * 27) + 8 + 2, 1) 
        SET_INT_GLOBAL(1972760 + 1 + (3 * 27) + 8 + 3, 1) 
    end)

    menu.action(PERICO_ADV, TRANSLATE("Obtain The Primary Target"), {"hccpfintar"}, "(" .. TRANSLATE("Cayo Perico Heist") .. " > " .. TRANSLATE("Teleport Places") .. " > " .. TRANSLATE("Compound") .. " > " .. TRANSLATE("Primary Target") .. ")", function() -- https://www.unknowncheats.me/forum/3418914-post13398.html
        SET_INT_LOCAL("fm_mission_controller_2020", 30938, 5) -- CutterStage
        SET_INT_LOCAL("fm_mission_controller_2020", 30939, 3) -- BitCheck
    end)

    menu.action(PERICO_ADV, TRANSLATE("Increase Team Lives"), {"hccpincteamlives"}, TRANSLATE("Increases the amount of team lives. Make sure to have script host if it doesn't seem to work."), function()
        menu.trigger_commands("scripthost")
        SET_INT_LOCAL("fm_mission_controller_2020", 56798 + 868 + 1, 10000000) -- Thanks to @vithiam on Discord
    end)

    menu.action(PERICO_ADV, TRANSLATE("Remove The Drainage Pipe"), {"hccprempipe"}, "(" .. TRANSLATE("Cayo Perico Heist") .. " > " .. TRANSLATE("Teleport Places") .. " > " .. TRANSLATE("Island") .. " > " .. TRANSLATE("Drainage Pipe") .. ")", function()
        local Object = util.joaat("prop_chem_grill_bit") -- Thanks for letting me know the object, @stand.gg on Discord
        DELETE_OBJECT_BY_HASH(Object)
    end)

    menu.action(PERICO_ADV, TRANSLATE("Refresh Kosatka Planning Table"), {"hccprefreshboard"}, TRANSLATE("You can update changed cayo perico heist stats in the Kosatka by refreshing it."), function()
        SET_INT_LOCAL("heist_island_planning", 1546, 2) -- https://github.com/atomikfr/CayoPericoHeistAssistant
    end)

---

menu.list_action(PERICO_HEIST, TRANSLATE("Heist Vehicles"), {"hccpveh"}, "", {
    { 1, TRANSLATE("Kosatka"), {"kosatka"}, TRANSLATE("(Submarine)") },
    { 2, TRANSLATE("Alkonost"), {"alkonost"}, TRANSLATE("(Plane)") },
    { 3, TRANSLATE("Velum"), {"velum"}, TRANSLATE("(Plane)") },
    { 4, TRANSLATE("Annihilator Stealth"), {"annihilator"}, TRANSLATE("(Helicopter)") },
    { 5, TRANSLATE("Kurtz 31 Patrol Boat"), {"patrol"}, TRANSLATE("(Boat)") },
    { 6, TRANSLATE("Longfin"), {"longfin"}, TRANSLATE("(Boat)") },
    { 7, TRANSLATE("Unlock All"), {"all"}, "" },
}, function(index)
    if index == 1 then
        STAT_SET_INT("H4_MISSIONS", 65283)
    elseif index == 2 then
        STAT_SET_INT("H4_MISSIONS", 65413)
    elseif index == 3 then 
        STAT_SET_INT("H4_MISSIONS", 65289)
    elseif index == 4 then 
        STAT_SET_INT("H4_MISSIONS", 65425)
    elseif index == 5 then 
        STAT_SET_INT("H4_MISSIONS", 65313)
    elseif index == 6 then 
        STAT_SET_INT("H4_MISSIONS", 65345)
    elseif index == 7 then
        STAT_SET_INT("H4_MISSIONS", -1)
    end

    menu.trigger_commands("hccprefreshboard")
end)

menu.list_action(PERICO_HEIST, TRANSLATE("Primary Target"), {"hccppritar"}, "", {
    { 1, TRANSLATE("Sapphire Panther"), {"panther"}, "" },
    { 2, TRANSLATE("Madrazo Files"), {"file"}, "" },
    { 3, TRANSLATE("Pink Diamond"), {"diamond"}, "" },
    { 4, TRANSLATE("Bearer Bonds"), {"bearer"}, "" },
    { 5, TRANSLATE("Ruby Necklace"), {"ruby"}, "" },
    { 6, TRANSLATE("Tequila"), {"tequila"}, "" },
}, function(index)
    if index == 1 then
        STAT_SET_INT("H4CNF_TARGET", 5)
    elseif index == 2 then
        STAT_SET_INT("H4CNF_TARGET", 4)
    elseif index == 3 then 
        STAT_SET_INT("H4CNF_TARGET", 3)
    elseif index == 4 then 
        STAT_SET_INT("H4CNF_TARGET", 2)
    elseif index == 5 then 
        STAT_SET_INT("H4CNF_TARGET", 1)
    elseif index == 6 then 
        STAT_SET_INT("H4CNF_TARGET", 0)
    end

    menu.trigger_commands("hccprefreshboard")
end)

menu.list_action(PERICO_HEIST, TRANSLATE("Secondary Target"), {"hccpsectar"}, TRANSLATE("When using this method, the percentage and final payment will be random!"), {
    { 1, TRANSLATE("Mixed Loot"), {"mixed"}, "" },
    { 2, TRANSLATE("Cash"), {"cash"}, "" },
    { 3, TRANSLATE("Weed"), {"weed"}, "" },
    { 4, TRANSLATE("Coke"), {"coke"}, "" },
    { 5, TRANSLATE("Gold"), {"gold"}, "" },
    { 6, TRANSLATE("Remove All"), {"remall"}, "" },
}, function(index)
    if index == 1 then
        STAT_SET_INT("H4LOOT_CASH_I", 1319624)
        STAT_SET_INT("H4LOOT_CASH_C", 18)
        STAT_SET_INT("H4LOOT_CASH_V", 89400)
        STAT_SET_INT("H4LOOT_WEED_I", 2639108)
        STAT_SET_INT("H4LOOT_WEED_C", 36)
        STAT_SET_INT("H4LOOT_WEED_V", 149000)
        STAT_SET_INT("H4LOOT_COKE_I", 4229122)
        STAT_SET_INT("H4LOOT_COKE_C", 72)
        STAT_SET_INT("H4LOOT_COKE_V", 221200)
        STAT_SET_INT("H4LOOT_GOLD_I", 8589313)
        STAT_SET_INT("H4LOOT_GOLD_C", 129)
        STAT_SET_INT("H4LOOT_GOLD_V", 322600)
        STAT_SET_INT("H4LOOT_PAINT", 127)
        STAT_SET_INT("H4LOOT_PAINT_V", 186800)
        STAT_SET_INT("H4LOOT_CASH_I_SCOPED", 1319624)
        STAT_SET_INT("H4LOOT_CASH_C_SCOPED", 18)
        STAT_SET_INT("H4LOOT_WEED_I_SCOPED", 2639108)
        STAT_SET_INT("H4LOOT_WEED_C_SCOPED", 36)
        STAT_SET_INT("H4LOOT_COKE_I_SCOPED", 4229122)
        STAT_SET_INT("H4LOOT_COKE_C_SCOPED", 72)
        STAT_SET_INT("H4LOOT_GOLD_I_SCOPED", 8589313)
        STAT_SET_INT("H4LOOT_GOLD_C_SCOPED", 129)
        STAT_SET_INT("H4LOOT_PAINT_SCOPED", 127)
    elseif index == 2 then
        STAT_SET_INT("H4LOOT_CASH_I", -1)
        STAT_SET_INT("H4LOOT_CASH_C", -1)
        STAT_SET_INT("H4LOOT_CASH_V", 90000)
        STAT_SET_INT("H4LOOT_WEED_I", 0)
        STAT_SET_INT("H4LOOT_WEED_C", 0)
        STAT_SET_INT("H4LOOT_WEED_V", 0)
        STAT_SET_INT("H4LOOT_COKE_I", 0)
        STAT_SET_INT("H4LOOT_COKE_C", 0)
        STAT_SET_INT("H4LOOT_COKE_V", 0)
        STAT_SET_INT("H4LOOT_GOLD_I", 0)
        STAT_SET_INT("H4LOOT_GOLD_C", 0)
        STAT_SET_INT("H4LOOT_GOLD_V", 0)
        STAT_SET_INT("H4LOOT_PAINT", 127)
        STAT_SET_INT("H4LOOT_PAINT_V", 190000)
        STAT_SET_INT("H4LOOT_CASH_I_SCOPED", -1)
        STAT_SET_INT("H4LOOT_CASH_C_SCOPED", -1)
        STAT_SET_INT("H4LOOT_WEED_I_SCOPED", 0)
        STAT_SET_INT("H4LOOT_WEED_C_SCOPED", 0)
        STAT_SET_INT("H4LOOT_COKE_I_SCOPED", 0)
        STAT_SET_INT("H4LOOT_COKE_C_SCOPED", 0)
        STAT_SET_INT("H4LOOT_GOLD_I_SCOPED", 0)
        STAT_SET_INT("H4LOOT_GOLD_C_SCOPED", 0)
        STAT_SET_INT("H4LOOT_PAINT_SCOPED", 127)
    elseif index == 3 then 
        STAT_SET_INT("H4LOOT_CASH_I", 0)
        STAT_SET_INT("H4LOOT_CASH_C", 0)
        STAT_SET_INT("H4LOOT_CASH_V", 0)
        STAT_SET_INT("H4LOOT_WEED_I", -1)
        STAT_SET_INT("H4LOOT_WEED_C", -1)
        STAT_SET_INT("H4LOOT_WEED_V", 140000)
        STAT_SET_INT("H4LOOT_COKE_I", 0)
        STAT_SET_INT("H4LOOT_COKE_C", 0)
        STAT_SET_INT("H4LOOT_COKE_V", 0)
        STAT_SET_INT("H4LOOT_GOLD_I", 0)
        STAT_SET_INT("H4LOOT_GOLD_C", 0)
        STAT_SET_INT("H4LOOT_GOLD_V", 0)
        STAT_SET_INT("H4LOOT_PAINT", 127)
        STAT_SET_INT("H4LOOT_PAINT_V", 190000)
        STAT_SET_INT("H4LOOT_CASH_I_SCOPED", 0)
        STAT_SET_INT("H4LOOT_CASH_C_SCOPED", 0)
        STAT_SET_INT("H4LOOT_WEED_I_SCOPED", -1)
        STAT_SET_INT("H4LOOT_WEED_C_SCOPED", -1)
        STAT_SET_INT("H4LOOT_COKE_I_SCOPED", 0)
        STAT_SET_INT("H4LOOT_COKE_C_SCOPED", 0)
        STAT_SET_INT("H4LOOT_GOLD_I_SCOPED", 0)
        STAT_SET_INT("H4LOOT_GOLD_C_SCOPED", 0)
        STAT_SET_INT("H4LOOT_PAINT_SCOPED", 127)
    elseif index == 4 then 
        STAT_SET_INT("H4LOOT_CASH_I", 0)
        STAT_SET_INT("H4LOOT_CASH_C", 0)
        STAT_SET_INT("H4LOOT_CASH_V", 0)
        STAT_SET_INT("H4LOOT_WEED_I", 0)
        STAT_SET_INT("H4LOOT_WEED_C", 0)
        STAT_SET_INT("H4LOOT_WEED_V", 0)
        STAT_SET_INT("H4LOOT_COKE_I", -1)
        STAT_SET_INT("H4LOOT_COKE_C", -1)
        STAT_SET_INT("H4LOOT_COKE_V", 210000)
        STAT_SET_INT("H4LOOT_GOLD_I", 0)
        STAT_SET_INT("H4LOOT_GOLD_C", 0)
        STAT_SET_INT("H4LOOT_GOLD_V", 0)
        STAT_SET_INT("H4LOOT_PAINT", 127)
        STAT_SET_INT("H4LOOT_PAINT_V", 190000)
        STAT_SET_INT("H4LOOT_CASH_I_SCOPED", 0)
        STAT_SET_INT("H4LOOT_CASH_C_SCOPED", 0)
        STAT_SET_INT("H4LOOT_WEED_I_SCOPED", 0)
        STAT_SET_INT("H4LOOT_WEED_C_SCOPED", 0)
        STAT_SET_INT("H4LOOT_COKE_I_SCOPED", -1)
        STAT_SET_INT("H4LOOT_COKE_C_SCOPED", -1)
        STAT_SET_INT("H4LOOT_GOLD_I_SCOPED", 0)
        STAT_SET_INT("H4LOOT_GOLD_C_SCOPED", 0)
        STAT_SET_INT("H4LOOT_PAINT_SCOPED", 127)
    elseif index == 5 then 
        STAT_SET_INT("H4LOOT_CASH_I", 0)
        STAT_SET_INT("H4LOOT_CASH_C", 0)
        STAT_SET_INT("H4LOOT_CASH_V", 0)
        STAT_SET_INT("H4LOOT_WEED_I", 0)
        STAT_SET_INT("H4LOOT_WEED_C", 0)
        STAT_SET_INT("H4LOOT_WEED_V", 0)
        STAT_SET_INT("H4LOOT_COKE_I", 0)
        STAT_SET_INT("H4LOOT_COKE_C", 0)
        STAT_SET_INT("H4LOOT_COKE_V", 0)
        STAT_SET_INT("H4LOOT_GOLD_I", -1)
        STAT_SET_INT("H4LOOT_GOLD_C", -1)
        STAT_SET_INT("H4LOOT_GOLD_V", 320000)
        STAT_SET_INT("H4LOOT_PAINT", -1)
        STAT_SET_INT("H4LOOT_PAINT_V", 190000)
        STAT_SET_INT("H4LOOT_CASH_I_SCOPED", 0)
        STAT_SET_INT("H4LOOT_CASH_C_SCOPED", 0)
        STAT_SET_INT("H4LOOT_WEED_I_SCOPED", 0)
        STAT_SET_INT("H4LOOT_WEED_C_SCOPED", 0)
        STAT_SET_INT("H4LOOT_COKE_I_SCOPED", 0)
        STAT_SET_INT("H4LOOT_COKE_C_SCOPED", 0)
        STAT_SET_INT("H4LOOT_GOLD_I_SCOPED", -1)
        STAT_SET_INT("H4LOOT_GOLD_C_SCOPED", -1)
        STAT_SET_INT("H4LOOT_PAINT_SCOPED", -1)
    elseif index == 6 then 
        STAT_SET_INT("H4LOOT_CASH_I", 0)
        STAT_SET_INT("H4LOOT_CASH_C", 0)
        STAT_SET_INT("H4LOOT_CASH_V", 0)
        STAT_SET_INT("H4LOOT_WEED_I", 0)
        STAT_SET_INT("H4LOOT_WEED_C", 0)
        STAT_SET_INT("H4LOOT_WEED_V", 0)
        STAT_SET_INT("H4LOOT_COKE_I", 0)
        STAT_SET_INT("H4LOOT_COKE_C", 0)
        STAT_SET_INT("H4LOOT_COKE_V", 0)
        STAT_SET_INT("H4LOOT_GOLD_I", 0)
        STAT_SET_INT("H4LOOT_GOLD_C", 0)
        STAT_SET_INT("H4LOOT_GOLD_V", 0)
        STAT_SET_INT("H4LOOT_PAINT", 0)
        STAT_SET_INT("H4LOOT_PAINT_V", 0)
        STAT_SET_INT("H4LOOT_CASH_I_SCOPED", 0)
        STAT_SET_INT("H4LOOT_CASH_C_SCOPED", 0)
        STAT_SET_INT("H4LOOT_WEED_I_SCOPED", 0)
        STAT_SET_INT("H4LOOT_WEED_C_SCOPED", 0)
        STAT_SET_INT("H4LOOT_COKE_I_SCOPED", 0)
        STAT_SET_INT("H4LOOT_COKE_C_SCOPED", 0)
        STAT_SET_INT("H4LOOT_GOLD_I_SCOPED", 0)
        STAT_SET_INT("H4LOOT_GOLD_C_SCOPED", 0)
        STAT_SET_INT("H4LOOT_PAINT_SCOPED", 0)
    end

    menu.trigger_commands("hccprefreshboard")
end)

menu.list_action(PERICO_HEIST, TRANSLATE("Compound Loot"), {"hccpcomloot"}, "", {
    { 1, TRANSLATE("Mixed Loot"), {"mixed"}, "" },
    { 2, TRANSLATE("Cash"), {"cash"}, "" },
    { 3, TRANSLATE("Weed"), {"weed"}, "" },
    { 4, TRANSLATE("Coke"), {"coke"}, "" },
    { 5, TRANSLATE("Gold"), {"gold"}, "" },
    { 6, TRANSLATE("Paint"), {"paint"}, "" },
    { 7, TRANSLATE("Remove Paint (Only)"), {"rempaint"}, "" },
    { 8, TRANSLATE("Remove All"), {"remall"}, "" },
}, function(index)
    if index == 1 then
        STAT_SET_INT("H4LOOT_CASH_C", 2)
        STAT_SET_INT("H4LOOT_CASH_V", 474431)
        STAT_SET_INT("H4LOOT_WEED_C", 17)
        STAT_SET_INT("H4LOOT_WEED_V", 759090)
        STAT_SET_INT("H4LOOT_COKE_C", 132)
        STAT_SET_INT("H4LOOT_COKE_V", 948863)
        STAT_SET_INT("H4LOOT_GOLD_C", 104)
        STAT_SET_INT("H4LOOT_GOLD_V", 1265151)
        STAT_SET_INT("H4LOOT_PAINT", 127)
        STAT_SET_INT("H4LOOT_PAINT_V", 948863)
        STAT_SET_INT("H4LOOT_CASH_C_SCOPED", 2)
        STAT_SET_INT("H4LOOT_WEED_C_SCOPED", 17)
        STAT_SET_INT("H4LOOT_COKE_C_SCOPED", 132)
        STAT_SET_INT("H4LOOT_GOLD_C_SCOPED", 104)
        STAT_SET_INT("H4LOOT_PAINT_SCOPED", 127)
    elseif index == 2 then
        STAT_SET_INT("H4LOOT_CASH_C", -1)
        STAT_SET_INT("H4LOOT_CASH_V", 90000)
        STAT_SET_INT("H4LOOT_WEED_C", 0)
        STAT_SET_INT("H4LOOT_WEED_V", 0)
        STAT_SET_INT("H4LOOT_COKE_C", 0)
        STAT_SET_INT("H4LOOT_COKE_V", 0)
        STAT_SET_INT("H4LOOT_GOLD_C", 0)
        STAT_SET_INT("H4LOOT_GOLD_V", 0)
        STAT_SET_INT("H4LOOT_PAINT", 127)
        STAT_SET_INT("H4LOOT_PAINT_V", 190000)
        STAT_SET_INT("H4LOOT_CASH_C_SCOPED", -1)
        STAT_SET_INT("H4LOOT_WEED_C_SCOPED", 0)
        STAT_SET_INT("H4LOOT_COKE_C_SCOPED", 0)
        STAT_SET_INT("H4LOOT_GOLD_C_SCOPED", 0)
        STAT_SET_INT("H4LOOT_PAINT_SCOPED", 127)
    elseif index == 3 then 
        STAT_SET_INT("H4LOOT_CASH_C", 0)
        STAT_SET_INT("H4LOOT_CASH_V", 0)
        STAT_SET_INT("H4LOOT_WEED_C", -1)
        STAT_SET_INT("H4LOOT_WEED_V", 140000)
        STAT_SET_INT("H4LOOT_COKE_C", 0)
        STAT_SET_INT("H4LOOT_COKE_V", 0)
        STAT_SET_INT("H4LOOT_GOLD_C", 0)
        STAT_SET_INT("H4LOOT_PAINT", 127)
        STAT_SET_INT("H4LOOT_PAINT_V", 190000)
        STAT_SET_INT("H4LOOT_CASH_C_SCOPED", 0)
        STAT_SET_INT("H4LOOT_WEED_C_SCOPED", -1)
        STAT_SET_INT("H4LOOT_COKE_C_SCOPED", 0)
        STAT_SET_INT("H4LOOT_GOLD_C_SCOPED", 0)
        STAT_SET_INT("H4LOOT_PAINT_SCOPED", 127)
    elseif index == 4 then 
        STAT_SET_INT("H4LOOT_CASH_C", 0)
        STAT_SET_INT("H4LOOT_CASH_V", 0)
        STAT_SET_INT("H4LOOT_WEED_C", 0)
        STAT_SET_INT("H4LOOT_WEED_V", 0)
        STAT_SET_INT("H4LOOT_COKE_C", -1)
        STAT_SET_INT("H4LOOT_COKE_V", 210000)
        STAT_SET_INT("H4LOOT_GOLD_C", 0)
        STAT_SET_INT("H4LOOT_PAINT", 127)
        STAT_SET_INT("H4LOOT_PAINT_V", 190000)
        STAT_SET_INT("H4LOOT_CASH_C_SCOPED", 0)
        STAT_SET_INT("H4LOOT_WEED_C_SCOPED", 0)
        STAT_SET_INT("H4LOOT_COKE_C_SCOPED", -1)
        STAT_SET_INT("H4LOOT_GOLD_C_SCOPED", 0)
        STAT_SET_INT("H4LOOT_PAINT_SCOPED", 127)
    elseif index == 5 then 
        STAT_SET_INT("H4LOOT_CASH_C", 0)
        STAT_SET_INT("H4LOOT_CASH_V", 0)
        STAT_SET_INT("H4LOOT_WEED_C", 0)
        STAT_SET_INT("H4LOOT_WEED_V", 0)
        STAT_SET_INT("H4LOOT_COKE_C", 0)
        STAT_SET_INT("H4LOOT_COKE_V", 0)
        STAT_SET_INT("H4LOOT_GOLD_C", -1)
        STAT_SET_INT("H4LOOT_GOLD_V", 320000)
        STAT_SET_INT("H4LOOT_PAINT", 127)
        STAT_SET_INT("H4LOOT_PAINT_V", 190000)
        STAT_SET_INT("H4LOOT_CASH_C_SCOPED", -1)
        STAT_SET_INT("H4LOOT_WEED_C_SCOPED", 0)
        STAT_SET_INT("H4LOOT_COKE_C_SCOPED", 0)
        STAT_SET_INT("H4LOOT_GOLD_C_SCOPED", 0)
        STAT_SET_INT("H4LOOT_PAINT_SCOPED", 127)
    elseif index == 6 then 
        STAT_SET_INT("H4LOOT_CASH_C", 0)
        STAT_SET_INT("H4LOOT_CASH_V", 0)
        STAT_SET_INT("H4LOOT_WEED_C", 0)
        STAT_SET_INT("H4LOOT_WEED_V", 0)
        STAT_SET_INT("H4LOOT_COKE_C", 0)
        STAT_SET_INT("H4LOOT_COKE_V", 0)
        STAT_SET_INT("H4LOOT_GOLD_C", 0)
        STAT_SET_INT("H4LOOT_GOLD_V", 0)
        STAT_SET_INT("H4LOOT_CASH_C_SCOPED", 0)
        STAT_SET_INT("H4LOOT_WEED_C_SCOPED", 0)
        STAT_SET_INT("H4LOOT_COKE_C_SCOPED", 0)
        STAT_SET_INT("H4LOOT_GOLD_C_SCOPED", 0)
        STAT_SET_INT("H4LOOT_PAINT", 127)
        STAT_SET_INT("H4LOOT_PAINT_V", 190000)
        STAT_SET_INT("H4LOOT_PAINT_SCOPED", 127)
    elseif index == 7 then
        STAT_SET_INT("H4LOOT_PAINT", 0)
        STAT_SET_INT("H4LOOT_PAINT_V", 0)
        STAT_SET_INT("H4LOOT_PAINT_SCOPED", 0)
    elseif index == 8 then
        STAT_SET_INT("H4LOOT_CASH_C", 0)
        STAT_SET_INT("H4LOOT_WEED_C", 0)
        STAT_SET_INT("H4LOOT_COKE_C", 0)
        STAT_SET_INT("H4LOOT_GOLD_C", 0)
        STAT_SET_INT("H4LOOT_CASH_C_SCOPED", 0)
        STAT_SET_INT("H4LOOT_WEED_C_SCOPED", 0)
        STAT_SET_INT("H4LOOT_COKE_C_SCOPED", 0)
        STAT_SET_INT("H4LOOT_GOLD_C_SCOPED", 0)
        STAT_SET_INT("H4LOOT_PAINT", 0)
        STAT_SET_INT("H4LOOT_PAINT_SCOPED", 0)
    end

    menu.trigger_commands("hccprefreshboard")
end)

menu.list_action(PERICO_HEIST, TRANSLATE("Weapon Loadouts"), {"hccpweapon"}, "", {
    { 1, TRANSLATE("Aggressor"), {"aggeressor"}, TRANSLATE("- Assault Shotgun + Machine Pistol") .. "\n" .. TRANSLATE("- Machete + Grenade") },
    { 2, TRANSLATE("Conspirator"), {"conspirator"}, TRANSLATE("- Military Rifle + Pistol .50") .. "\n" .. TRANSLATE("- Knuckle Duster + Sticky Bombs") },
    { 3, TRANSLATE("Crackshot"), {"crackshot"}, TRANSLATE("- Sniper Rifle + AP Pistol") .. "\n" .. TRANSLATE("- Knife + Molotov") },
    { 4, TRANSLATE("Saboteur"), {"saboteur"}, TRANSLATE("- SMG Mk2 + SNS Pistol Mk2") .. "\n" .. TRANSLATE("- Knife + Pipe Bomb") },
    { 5, TRANSLATE("Marksman"), {"marksman"}, TRANSLATE("- Assault Rifle Mk2 + Pistol Mk2") .. "\n" .. TRANSLATE("- Machete + Pipe Bomb") },
}, function(index)
    STAT_SET_INT("H4CNF_WEAPONS", index)
    menu.trigger_commands("hccprefreshboard")
end)

menu.list_action(PERICO_HEIST, TRANSLATE("Equipment Spawn Location"), {"hccpequipment"}, "", { 
    { 1, TRANSLATE("Airport"), {"airport"}, TRANSLATE("- Guard Clothing") .. "\n" .. TRANSLATE("- Bolt Cutters") },
    { 2, TRANSLATE("Docks"), {"dock"}, TRANSLATE("- Guard Clothing") .. "\n" .. TRANSLATE("- Bolt Cutters") },
    { 3, TRANSLATE("Compound"), {"compound"}, TRANSLATE("- Guard Clothing") .. "\n" .. TRANSLATE("- Bolt Cutters") },
}, function(index)
    if index == 1 then
        STAT_SET_INT("H4CNF_GRAPPEL", 2022)
        STAT_SET_INT("H4CNF_UNIFORM", 12)
        STAT_SET_INT("H4CNF_BOLTCUT", 4161)
        STAT_SET_INT("H4CNF_TROJAN", 1)
    elseif index == 2 then
        STAT_SET_INT("H4CNF_GRAPPEL", 3671)
        STAT_SET_INT("H4CNF_UNIFORM", 5256)
        STAT_SET_INT("H4CNF_BOLTCUT", 4424)
        STAT_SET_INT("H4CNF_TROJAN", 2)
    elseif index == 3 then
        STAT_SET_INT("H4CNF_GRAPPEL", 85324)
        STAT_SET_INT("H4CNF_UNIFORM", 61034)
        STAT_SET_INT("H4CNF_BOLTCUT", 4612)
        STAT_SET_INT("H4CNF_TROJAN", 5)
    end

    menu.trigger_commands("hccprefreshboard")
end)

menu.list_action(PERICO_HEIST, TRANSLATE("Supply Truck Location"), {"hccptruck"}, "", {
    { 1, TRANSLATE("Airport"), {"airport"}, "" },
    { 2, TRANSLATE("North Dock"), {"ndock"}, "" },
    { 3, TRANSLATE("Main Dock (East)"), {"edock"}, "" },
    { 4, TRANSLATE("Main Dock (West)"), {"wdock"}, "" },
    { 5, TRANSLATE("Compound"), {"compound"}, "" },
}, function(index)
    STAT_SET_INT("H4CNF_TROJAN", index)
    menu.trigger_commands("hccprefreshboard")
end)

menu.list_action(PERICO_HEIST, TRANSLATE("Heist Difficulty"), {"hccpdifficulty"}, "", {
    { 1, TRANSLATE("Normal"), {"normal"}, "" },
    { 2, TRANSLATE("Hard"), {"hard"}, "" },
}, function(index)
    if index == 1 then
        STAT_SET_INT("H4_PROGRESS", 126823)
    elseif index == 2 then
        STAT_SET_INT("H4_PROGRESS", 131055)
    end

    menu.trigger_commands("hccprefreshboard")
end)

CP_MORE_OPTIONS = menu.list(PERICO_HEIST, TRANSLATE("Others"), {}, "", function(); end)

    menu.action(CP_MORE_OPTIONS, TRANSLATE("Complete All Prep Missions"), {}, "", function()
        STAT_SET_INT("H4_MISSIONS", -1)
        STAT_SET_INT("H4CNF_APPROACH", -1)
        STAT_SET_INT("H4CNF_BS_ENTR", 63)
        STAT_SET_INT("H4CNF_BS_GEN", 63)
        STAT_SET_INT("H4CNF_WEP_DISRP", 3)
        STAT_SET_INT("H4CNF_ARM_DISRP", 3)
        STAT_SET_INT("H4CNF_HEL_DISRP", 3)

        menu.trigger_commands("hccprefreshboard")
    end)

    menu.action(CP_MORE_OPTIONS, TRANSLATE("Set Heist to Default (Reset)"), {"hccpreset"}, "", function()
        STAT_SET_INT("H4_MISSIONS", 0)
        STAT_SET_INT("H4_PROGRESS", 0)
        STAT_SET_INT("H4CNF_APPROACH", 0)
        STAT_SET_INT("H4CNF_BS_ENTR", 0)
        STAT_SET_INT("H4CNF_BS_GEN", 0)
        STAT_SET_INT("H4_PLAYTHROUGH_STATUS", 0)
        STAT_SET_INT("H4CNF_TARGET", -1)

        menu.trigger_commands("hccprefreshboard")
    end)

---

---


--- Diamond Casino Heist

CasinoPresetTunables = {
    memory.tunable_offset(1277889925),
    memory.tunable_offset(-582734553),
}
CASINO_PRESETS = menu.list(CASINO_HEIST, TRANSLATE("Automated Presets"), {}, TRANSLATE("Please don't forget that BUYER should be selected LOW! Otherwise, won't get money."), function(); end)

    CASINO_PRESETS_DIAMOND = menu.list(CASINO_PRESETS, TRANSLATE("Diamonds"), {}, TRANSLATE("If the Heist Planning (Board 3) is empty, then please re-enable the preset that you enabled!"), function(); end)

        DIAMOND_SS = menu.toggle(CASINO_PRESETS_DIAMOND, TRANSLATE("Silent & Sneaky Approach"), {"hccahdiasil"}, "", function()
            if menu.get_value(DIAMOND_SS) then
                STAT_SET_INT("H3_COMPLETEDPOSIX", -1)
                STAT_SET_INT("H3OPT_MASKS", 4)
                STAT_SET_INT("H3OPT_WEAPS", 1)
                STAT_SET_INT("H3OPT_VEHS", 3)
                STAT_SET_INT("CAS_HEIST_FLOW", -1)
                STAT_SET_INT("H3_LAST_APPROACH", 0)
                STAT_SET_INT("H3OPT_APPROACH", 1)
                STAT_SET_INT("H3_HARD_APPROACH", 0)
                STAT_SET_INT("H3OPT_TARGET", 3)
                STAT_SET_INT("H3OPT_POI", 1023)
                STAT_SET_INT("H3OPT_ACCESSPOINTS", 2047)
                STAT_SET_INT("H3OPT_CREWWEAP", 4)
                STAT_SET_INT("H3OPT_CREWDRIVER", 3)
                STAT_SET_INT("H3OPT_CREWHACKER", 4)
                STAT_SET_INT("H3OPT_DISRUPTSHIP", 3)
                STAT_SET_INT("H3OPT_BODYARMORLVL", -1)
                STAT_SET_INT("H3OPT_KEYLEVELS", 2)
                STAT_SET_INT("H3OPT_BITSET1", 127)
                STAT_SET_INT("H3OPT_BITSET0", 262270)

                menu.trigger_commands("hccahrefreshboards")

                for i = 1, #CasinoPresetLists do
                    if CasinoPresetLists[i][1] == DIAMOND_SS then
                        CasinoPresetLists[i][2] = true
                    end
                end
                for i = 1, #ForCasinoPresets do
                    menu.set_help_text(ForCasinoPresets[i][1], TRANSLATE("This feature has been controlled by another feature.") .. "\n" .. "- " .. menu.get_menu_name(CASINO_PRESETS) .. " > " .. menu.get_menu_name(menu.get_parent(DIAMOND_SS)) .. " > " .. menu.get_menu_name(DIAMOND_SS))
                end
            else
                for i = 1, #CasinoPresetLists do
                    if CasinoPresetLists[i][1] == DIAMOND_SS then
                        CasinoPresetLists[i][2] = false
                    end
                end
                for i = 1, #ForCasinoPresets do
                    menu.apply_default_state(ForCasinoPresets[i][1])
                    menu.set_help_text(ForCasinoPresets[i][1], ForCasinoPresets[i][3])
                end
            end

            while menu.get_value(DIAMOND_SS) do
                SET_INT_GLOBAL(262145 + CasinoPresetTunables[1], 1410065408)
                for i = 1, #ForCasinoPresets do
                    menu.set_value(ForCasinoPresets[i][1], ForCasinoPresets[i][2])
                end

                util.yield_once()
            end
        end)

        DIAMOND_BA = menu.toggle(CASINO_PRESETS_DIAMOND, TRANSLATE("BigCon Approach"), {"hccahdiabig"}, "", function()
            if menu.get_value(DIAMOND_BA) then
                STAT_SET_INT("H3_COMPLETEDPOSIX", -1)
                STAT_SET_INT("H3OPT_MASKS", 2)
                STAT_SET_INT("H3OPT_WEAPS", 1)
                STAT_SET_INT("H3OPT_VEHS", 3)
                STAT_SET_INT("CAS_HEIST_FLOW", -1)
                STAT_SET_INT("H3_LAST_APPROACH", 0)
                STAT_SET_INT("H3OPT_APPROACH", 2)
                STAT_SET_INT("H3_HARD_APPROACH", 0)
                STAT_SET_INT("H3OPT_TARGET", 3)
                STAT_SET_INT("H3OPT_POI", 1023)
                STAT_SET_INT("H3OPT_ACCESSPOINTS", 2047)
                STAT_SET_INT("H3OPT_CREWWEAP", 4)
                STAT_SET_INT("H3OPT_CREWDRIVER", 3)
                STAT_SET_INT("H3OPT_CREWHACKER", 4)
                STAT_SET_INT("H3OPT_DISRUPTSHIP", 3)
                STAT_SET_INT("H3OPT_BODYARMORLVL", -1)
                STAT_SET_INT("H3OPT_KEYLEVELS", 2)
                STAT_SET_INT("H3OPT_BITSET1", 159)
                STAT_SET_INT("H3OPT_BITSET0", 524118)

                menu.trigger_commands("hccahrefreshboards")

                for i = 1, #CasinoPresetLists do
                    if CasinoPresetLists[i][1] == DIAMOND_BA then
                        CasinoPresetLists[i][2] = true
                    end
                end
                for i = 1, #ForCasinoPresets do
                    menu.set_help_text(ForCasinoPresets[i][1], TRANSLATE("This feature has been controlled by another feature.") .. "\n" .. "- " .. menu.get_menu_name(CASINO_PRESETS) .. " > " .. menu.get_menu_name(menu.get_parent(DIAMOND_BA)) .. " > " .. menu.get_menu_name(DIAMOND_BA))
                end
            else
                for i = 1, #CasinoPresetLists do
                    if CasinoPresetLists[i][1] == DIAMOND_BA then
                        CasinoPresetLists[i][2] = false
                    end
                end
                for i = 1, #ForCasinoPresets do
                    menu.apply_default_state(ForCasinoPresets[i][1])
                    menu.set_help_text(ForCasinoPresets[i][1], ForCasinoPresets[i][3])
                end
            end

            while menu.get_value(DIAMOND_BA) do
                SET_INT_GLOBAL(262145 + CasinoPresetTunables[1], 1410065408)
                for i = 1, #ForCasinoPresets do
                    menu.set_value(ForCasinoPresets[i][1], ForCasinoPresets[i][2])
                end

                util.yield_once()
            end
        end)

        DIAMOND_AA = menu.toggle(CASINO_PRESETS_DIAMOND, TRANSLATE("Aggressive Approach"), {"hccahdiaagg"}, "", function()
            if menu.get_value(DIAMOND_AA) then
                STAT_SET_INT("H3_COMPLETEDPOSIX", -1)
                STAT_SET_INT("H3OPT_MASKS", 4)
                STAT_SET_INT("H3OPT_WEAPS", 1)
                STAT_SET_INT("H3OPT_VEHS", 3)
                STAT_SET_INT("CAS_HEIST_FLOW", -1)
                STAT_SET_INT("H3_LAST_APPROACH", 0)
                STAT_SET_INT("H3OPT_APPROACH", 3)
                STAT_SET_INT("H3_HARD_APPROACH", 0)
                STAT_SET_INT("H3OPT_TARGET", 3)
                STAT_SET_INT("H3OPT_POI", 1023)
                STAT_SET_INT("H3OPT_ACCESSPOINTS", 2047)
                STAT_SET_INT("H3OPT_CREWWEAP", 4)
                STAT_SET_INT("H3OPT_CREWDRIVER", 3)
                STAT_SET_INT("H3OPT_CREWHACKER", 4)
                STAT_SET_INT("H3OPT_DISRUPTSHIP", 3)
                STAT_SET_INT("H3OPT_BODYARMORLVL", -1)
                STAT_SET_INT("H3OPT_KEYLEVELS", 2)
                STAT_SET_INT("H3OPT_BITSET1", 799)
                STAT_SET_INT("H3OPT_BITSET0", 3670102)

                menu.trigger_commands("hccahrefreshboards")

                for i = 1, #CasinoPresetLists do
                    if CasinoPresetLists[i][1] == DIAMOND_AA then
                        CasinoPresetLists[i][2] = true
                    end
                end
                for i = 1, #ForCasinoPresets do
                    menu.set_help_text(ForCasinoPresets[i][1], TRANSLATE("This feature has been controlled by another feature.") .. "\n" .. "- " .. menu.get_menu_name(CASINO_PRESETS) .. " > " .. menu.get_menu_name(menu.get_parent(DIAMOND_AA)) .. " > " .. menu.get_menu_name(DIAMOND_AA))
                end
            else
                for i = 1, #CasinoPresetLists do
                    if CasinoPresetLists[i][1] == DIAMOND_AA then
                        CasinoPresetLists[i][2] = false
                    end
                end
                for i = 1, #ForCasinoPresets do
                    menu.apply_default_state(ForCasinoPresets[i][1])
                    menu.set_help_text(ForCasinoPresets[i][1], ForCasinoPresets[i][3])
                end
            end

            while menu.get_value(DIAMOND_AA) do
                SET_INT_GLOBAL(262145 + CasinoPresetTunables[1], 1410065408)
                for i = 1, #ForCasinoPresets do
                    menu.set_value(ForCasinoPresets[i][1], ForCasinoPresets[i][2])
                end

                util.yield_once()
            end
        end)

    ---

    CASINO_PRESETS_GOLD = menu.list(CASINO_PRESETS, TRANSLATE("Gold"), {}, TRANSLATE("If the Heist Planning (Board 3) is empty, then please re-enable the preset that you enabled!"), function(); end)

        GOLD_SS = menu.toggle(CASINO_PRESETS_GOLD, TRANSLATE("Silent & Sneaky Approach"), {"hccahgoldsil"}, "", function()
            if menu.get_value(GOLD_SS) then
                STAT_SET_INT("H3_COMPLETEDPOSIX", -1)
                STAT_SET_INT("H3OPT_MASKS", 9)
                STAT_SET_INT("H3OPT_WEAPS", 1)
                STAT_SET_INT("H3OPT_VEHS", 3)
                STAT_SET_INT("CAS_HEIST_FLOW", -1)
                STAT_SET_INT("H3_LAST_APPROACH", 0)
                STAT_SET_INT("H3OPT_APPROACH", 1)
                STAT_SET_INT("H3_HARD_APPROACH", 0)
                STAT_SET_INT("H3OPT_TARGET", 1)
                STAT_SET_INT("H3OPT_POI", 1023)
                STAT_SET_INT("H3OPT_ACCESSPOINTS", 2047)
                STAT_SET_INT("H3OPT_CREWWEAP", 4)
                STAT_SET_INT("H3OPT_CREWDRIVER", 3)
                STAT_SET_INT("H3OPT_CREWHACKER", 4)
                STAT_SET_INT("H3OPT_DISRUPTSHIP", 3)
                STAT_SET_INT("H3OPT_BODYARMORLVL", -1)
                STAT_SET_INT("H3OPT_KEYLEVELS", 2)
                STAT_SET_INT("H3OPT_BITSET1", 127)
                STAT_SET_INT("H3OPT_BITSET0", 262270)

                menu.trigger_commands("hccahrefreshboards")

                for i = 1, #CasinoPresetLists do
                    if CasinoPresetLists[i][1] == GOLD_SS then
                        CasinoPresetLists[i][2] = true
                    end
                end
                for i = 1, #ForCasinoPresets do
                    menu.set_help_text(ForCasinoPresets[i][1], TRANSLATE("This feature has been controlled by another feature.") .. "\n" .. "- " .. menu.get_menu_name(CASINO_PRESETS) .. " > " .. menu.get_menu_name(menu.get_parent(GOLD_SS)) .. " > " .. menu.get_menu_name(GOLD_SS))
                end
            else
                for i = 1, #CasinoPresetLists do
                    if CasinoPresetLists[i][1] == GOLD_SS then
                        CasinoPresetLists[i][2] = false
                    end
                end
                for i = 1, #ForCasinoPresets do
                    menu.apply_default_state(ForCasinoPresets[i][1])
                    menu.set_help_text(ForCasinoPresets[i][1], ForCasinoPresets[i][3])
                end
            end

            while menu.get_value(GOLD_SS) do
                SET_INT_GLOBAL(262145 + CasinoPresetTunables[2], 1410065408)
                for i = 1, #ForCasinoPresets do
                    menu.set_value(ForCasinoPresets[i][1], ForCasinoPresets[i][2])
                end

                util.yield_once()
            end
        end)

        GOLD_BA = menu.toggle(CASINO_PRESETS_GOLD, TRANSLATE("BigCon Approach"), {"hccahgoldbig"}, "", function()
            if menu.get_value(GOLD_BA) then
                STAT_SET_INT("H3_COMPLETEDPOSIX", -1)
                STAT_SET_INT("H3OPT_MASKS", 9)
                STAT_SET_INT("H3OPT_WEAPS", 1)
                STAT_SET_INT("H3OPT_VEHS", 3)
                STAT_SET_INT("CAS_HEIST_FLOW", -1)
                STAT_SET_INT("H3_LAST_APPROACH", 0)
                STAT_SET_INT("H3OPT_APPROACH", 2)
                STAT_SET_INT("H3_HARD_APPROACH", 0)
                STAT_SET_INT("H3OPT_TARGET", 1)
                STAT_SET_INT("H3OPT_POI", 1023)
                STAT_SET_INT("H3OPT_ACCESSPOINTS", 2047)
                STAT_SET_INT("H3OPT_CREWWEAP", 4)
                STAT_SET_INT("H3OPT_CREWDRIVER", 3)
                STAT_SET_INT("H3OPT_CREWHACKER", 4)
                STAT_SET_INT("H3OPT_DISRUPTSHIP", 3)
                STAT_SET_INT("H3OPT_BODYARMORLVL", -1)
                STAT_SET_INT("H3OPT_KEYLEVELS", 2)
                STAT_SET_INT("H3OPT_BITSET1", 159)
                STAT_SET_INT("H3OPT_BITSET0", 524118)

                menu.trigger_commands("hccahrefreshboards")

                for i = 1, #CasinoPresetLists do
                    if CasinoPresetLists[i][1] == GOLD_BA then
                        CasinoPresetLists[i][2] = true
                    end
                end
                for i = 1, #ForCasinoPresets do
                    menu.set_help_text(ForCasinoPresets[i][1], TRANSLATE("This feature has been controlled by another feature.") .. "\n" .. "- " .. menu.get_menu_name(CASINO_PRESETS) .. " > " .. menu.get_menu_name(menu.get_parent(GOLD_BA)) .. " > " .. menu.get_menu_name(GOLD_BA))
                end
            else
                for i = 1, #CasinoPresetLists do
                    if CasinoPresetLists[i][1] == GOLD_BA then
                        CasinoPresetLists[i][2] = false
                    end
                end
                for i = 1, #ForCasinoPresets do
                    menu.apply_default_state(ForCasinoPresets[i][1])
                    menu.set_help_text(ForCasinoPresets[i][1], ForCasinoPresets[i][3])
                end
            end

            while menu.get_value(GOLD_BA) do
                SET_INT_GLOBAL(262145 + CasinoPresetTunables[2], 1410065408)
                for i = 1, #ForCasinoPresets do
                    menu.set_value(ForCasinoPresets[i][1], ForCasinoPresets[i][2])
                end

                util.yield_once()
            end
        end)

        GOLD_AA = menu.toggle(CASINO_PRESETS_GOLD, TRANSLATE("Aggressive Approach"), {"hccahgoldagg"}, "", function()
            if menu.get_value(GOLD_AA) then
                STAT_SET_INT("H3_COMPLETEDPOSIX", -1)
                STAT_SET_INT("H3OPT_MASKS", 4)
                STAT_SET_INT("H3OPT_WEAPS", 1)
                STAT_SET_INT("CAS_HEIST_FLOW", -1)
                STAT_SET_INT("H3OPT_APPROACH", 3)
                STAT_SET_INT("H3OPT_TARGET", 1)
                STAT_SET_INT("H3OPT_POI", 1023)
                STAT_SET_INT("H3OPT_ACCESSPOINTS", 2047)
                STAT_SET_INT("H3OPT_DISRUPTSHIP", 3)
                STAT_SET_INT("H3OPT_BODYARMORLVL", -1)
                STAT_SET_INT("H3OPT_KEYLEVELS", 2)
                STAT_SET_INT("H3OPT_CREWWEAP", 4)
                STAT_SET_INT("H3OPT_CREWDRIVER", 3)
                STAT_SET_INT("H3OPT_CREWHACKER", 4)
                STAT_SET_INT("H3OPT_BITSET1", 799)
                STAT_SET_INT("H3OPT_BITSET0", 3670102)
                STAT_SET_INT("H3_HARD_APPROACH", 0)
                STAT_SET_INT("H3OPT_VEHS", 3)

                menu.trigger_commands("hccahrefreshboards")

                for i = 1, #CasinoPresetLists do
                    if CasinoPresetLists[i][1] == GOLD_AA then
                        CasinoPresetLists[i][2] = true
                    end
                end
                for i = 1, #ForCasinoPresets do
                    menu.set_help_text(ForCasinoPresets[i][1], TRANSLATE("This feature has been controlled by another feature.") .. "\n" .. "- " .. menu.get_menu_name(CASINO_PRESETS) .. " > " .. menu.get_menu_name(menu.get_parent(GOLD_AA)) .. " > " .. menu.get_menu_name(GOLD_AA))
                end
            else
                for i = 1, #CasinoPresetLists do
                    if CasinoPresetLists[i][1] == GOLD_AA then
                        CasinoPresetLists[i][2] = false
                    end
                end
                for i = 1, #ForCasinoPresets do
                    menu.apply_default_state(ForCasinoPresets[i][1])
                    menu.set_help_text(ForCasinoPresets[i][1], ForCasinoPresets[i][3])
                end
            end

            while menu.get_value(GOLD_AA) do
                SET_INT_GLOBAL(262145 + CasinoPresetTunables[2], 1410065408)
                for i = 1, #ForCasinoPresets do
                    menu.set_value(ForCasinoPresets[i][1], ForCasinoPresets[i][2])
                end

                util.yield_once()
            end
        end)

    ---

---

CAH_ADVCED = menu.list(CASINO_HEIST, TRANSLATE("Advanced Features"), {}, "", function(); end)

    CAH_PLAYER_CUT = menu.list(CAH_ADVCED, TRANSLATE("Player's Cut"), {}, TRANSLATE("Don't forget changing this feature before starting the heist! Otherwise, won't be applied."), function(); end)

        CAH_NON_HOST = menu.list(CAH_PLAYER_CUT, TRANSLATE("Your Cut (Non-Host)"), {}, TRANSLATE("Note that modifying this won't applied to the heist board. You can check the applied cut after end of the heist."), function(); end)

            CAH_NON_HOST_CUT_LOOP = menu.toggle_loop(CAH_NON_HOST, TRANSLATE("Enable"), {"hccahnonhostloop"}, "", function()
                SET_INT_GLOBAL(2685444 + 6639, menu.get_value(CAH_NON_HOST_CUT)) -- gb_casino_heist_planning.c
            end, function()
                SET_INT_GLOBAL(2685444 + 6639, menu.get_default_state(CAH_NON_HOST_CUT))
            end)

            CAH_NON_HOST_CUT = menu.slider(CAH_NON_HOST, TRANSLATE("Custom Percentage"), {"hccahnonhost"}, "(%)", 0, 1000, 100, 5, function(); end)

        ---

        CAH_HOST = menu.list(CAH_PLAYER_CUT, TRANSLATE("Your Cut"), {}, TRANSLATE("Only works if you are host of the heist."), function(); end)

            CAH_HOST_CUT_LOOP = menu.toggle_loop(CAH_HOST, TRANSLATE("Enable"), {"hccah1pcutloop"}, "", function()
                SET_INT_GLOBAL(1964849 + 1497 + 736 + 92 + 1, menu.get_value(CAH_HOST_CUT)) -- gb_casino_heist_planning.c
            end, function()
                SET_INT_GLOBAL(1964849 + 1497 + 736 + 92 + 1, menu.get_default_state(CAH_HOST_CUT))
            end)

            CAH_HOST_CUT = menu.slider(CAH_HOST, TRANSLATE("Custom Percentage"), {"hccah1pcut"}, "(%)", 0, 1000, 100, 5, function(); end)

        ---

        CAH_2P = menu.list(CAH_PLAYER_CUT, TRANSLATE("Player 2"), {}, TRANSLATE("Only works if you are host of the heist."), function(); end)

            CAH_2P_CUT_LOOP = menu.toggle_loop(CAH_2P, TRANSLATE("Enable"), {"hccah2pcutloop"}, "", function()
                SET_INT_GLOBAL(1964849 + 1497 + 736 + 92 + 2, menu.get_value(CAH_2P_CUT)) -- gb_casino_heist_planning.c
            end, function()
                SET_INT_GLOBAL(1964849 + 1497 + 736 + 92 + 2, menu.get_default_state(CAH_2P_CUT))
            end)

            CAH_2P_CUT = menu.slider(CAH_2P, TRANSLATE("Custom Percentage"), {"hccah2pcut"}, "(%)", 0, 1000, 100, 5, function(); end)

        ---

        CAH_3P = menu.list(CAH_PLAYER_CUT, TRANSLATE("Player 3"), {}, TRANSLATE("Only works if you are host of the heist."), function(); end)

            CAH_3P_CUT_LOOP = menu.toggle_loop(CAH_3P, TRANSLATE("Enable"), {"hccah3pcutloop"}, "", function()
                SET_INT_GLOBAL(1964849 + 1497 + 736 + 92 + 3, menu.get_value(CAH_3P_CUT)) -- gb_casino_heist_planning.c
            end, function()
                SET_INT_GLOBAL(1964849 + 1497 + 736 + 92 + 3, menu.get_default_state(CAH_3P_CUT))
            end)

            CAH_3P_CUT = menu.slider(CAH_3P, TRANSLATE("Custom Percentage"), {"hccah3pcut"}, "(%)", 0, 1000, 100, 5, function(); end)

        ---

        CAH_4P = menu.list(CAH_PLAYER_CUT, TRANSLATE("Player 4"), {}, TRANSLATE("Only works if you are host of the heist."), function(); end)
            
            CAH_4P_CUT_LOOP = menu.toggle_loop(CAH_4P, TRANSLATE("Enable"), {"hccah4pcutloop"}, "", function()
                SET_INT_GLOBAL(1964849 + 1497 + 736 + 92 + 4, menu.get_value(CAH_4P_CUT)) -- gb_casino_heist_planning.c
            end, function()
                SET_INT_GLOBAL(1964849 + 1497 + 736 + 92 + 4, menu.get_default_state(CAH_4P_CUT))
            end)

            CAH_4P_CUT = menu.slider(CAH_4P, TRANSLATE("Custom Percentage"), {"hccah4pcut"}, "(%)", 0, 1000, 100, 5, function(); end)

        ---

    ---

    menu.toggle_loop(CAH_ADVCED, TRANSLATE("Skip The Hacking Process"), {}, TRANSLATE("Works On Both: Fingerprint and Keypad"), function()
        if GET_INT_LOCAL("fm_mission_controller", 53019) ~= 1 then -- For Fingerprint, https://www.unknowncheats.me/forum/3418914-post13398.html
            SET_INT_LOCAL("fm_mission_controller", 53019, 5)
        end
        if GET_INT_LOCAL("fm_mission_controller", 54085) ~= 1 then -- For Keypad, https://www.unknowncheats.me/forum/3455828-post8.html
            SET_INT_LOCAL("fm_mission_controller", 54085, 5)
        end
    end)

    menu.action(CAH_ADVCED, TRANSLATE("Allow You Play Alone"), {}, TRANSLATE("Allow you play alone this heist without another player.") .. "\n\n" .. TRANSLATE("Press this feature once before launching the heist."), function()
        if GET_INT_LOCAL("fmmc_launcher", 19709 + 34) ~= nil then -- https://www.unknowncheats.me/forum/grand-theft-auto-v/463868-modest-menu-lua-scripting-megathread-239.html#google_vignette
            if GET_INT_LOCAL("fmmc_launcher", 19709 + 34) ~= 0 then
                if GET_INT_LOCAL("fmmc_launcher", 19709 + 15) > 1 then
                    SET_INT_LOCAL("fmmc_launcher", 19709 + 15, 1)
                    SET_INT_GLOBAL(794744 + 4 + 1 + (GET_INT_LOCAL("fmmc_launcher", 19709 + 34) * 89) + 69, 1)
                end
                
                SET_INT_GLOBAL(4718592 + 3526, 1)
                SET_INT_GLOBAL(4718592 + 3527, 1)
                SET_INT_GLOBAL(4718592 + 3529 + 1, 1)
                SET_INT_GLOBAL(4718592 + 178821 + 1, 0)
            end
        end
    end)

    menu.action(CAH_ADVCED, TRANSLATE("Force Ready"), {"hccahforceready"}, TRANSLATE("Forces the players on board to ready."), function() 
        SET_INT_GLOBAL(1969212 + 1 + (1 * 68) + 8 + 1, 1) -- Thanks to @vithiam on Discord
        SET_INT_GLOBAL(1969212 + 1 + (2 * 68) + 8 + 2, 1) 
        SET_INT_GLOBAL(1969212 + 1 + (3 * 68) + 8 + 3, 1)
    end)

    menu.action(CAH_ADVCED, TRANSLATE("Skip Drilling The Vault Door"), {"hccahinsvault"}, "", function() -- https://www.unknowncheats.me/forum/3418914-post13398.html
        SET_INT_LOCAL("fm_mission_controller", 10109 + 7, GET_INT_LOCAL("fm_mission_controller", 10109 + 37))
    end)

    menu.action(CAH_ADVCED, TRANSLATE("Increase Team Lives"), {"hccahincteamlives"}, TRANSLATE("Increases the amount of team lives. Make sure to have script host if it doesn't seem to work."), function()
        menu.trigger_commands("scripthost")
        SET_INT_LOCAL("fm_mission_controller", 19746 + 1765 + 1, 10000000) -- Thanks to @vithiam on Discord
    end)

    menu.action(CAH_ADVCED, TRANSLATE("Refresh Arcade Boards"), {"hccahrefreshboards"}, TRANSLATE("You can update casino heist stats while even you in the arcade."), function()
        local Bitset0 = STAT_GET_INT("H3OPT_BITSET0")
        local Bitset1 = STAT_GET_INT("H3OPT_BITSET1")
        STAT_SET_INT("H3OPT_BITSET0", math.random(INT_MAX))
        STAT_SET_INT("H3OPT_BITSET1", math.random(INT_MAX))
        util.yield_once()
        STAT_SET_INT("H3OPT_BITSET0", Bitset0)
        STAT_SET_INT("H3OPT_BITSET1", Bitset1)
    end)

---

TELEPORT_CAH = menu.list(CASINO_HEIST, TRANSLATE("Teleport Places"), {}, TRANSLATE("- How to change the line color: Stand > Settings > Appearance > Colours > HUD Colour") .. "\n\n" .. TRANSLATE("- How to change the AR Beacon color: Stand > Settings > Appearance > Colours > AR Colour"), function(); end)

    ArcadePos, ArcadeHeading = nil, nil
    util.create_tick_handler(function()
        if IS_IN_ARCADE() then return end

        local Blip = HUD.GET_FIRST_BLIP_INFO_ID(740) -- Arcade Blip
        local Pos = HUD.GET_BLIP_COORDS(Blip)
        local Zone = ZONE.GET_NAME_OF_ZONE(Pos.x, Pos.y, Pos.z)
        local Label = util.get_label_text(Zone)
        local Arcades = { -- { arcade_name, pos, heading }
            { util.get_label_text("MP_ARC_1"), v3.new(-245.9931, 6210.773, 31.939024), -50 }, -- Pixel Pete's - Paleto Bay
            { util.get_label_text("MP_ARC_2"), v3.new(1695.5393, 4784.196, 41.94444), -95 }, -- Wonderama - Grapeseed
            { util.get_label_text("MP_ARC_3"), v3.new(-115.45246, -1772.0801, 29.858917), -125 }, -- Warehouse - Davis
            { util.get_label_text("FMC_LOC_WSTVNWD"), v3.new(-600.911, 279.97433, 82.041245), 80 }, -- Eight-Bit - Vinewood, West Vinewood
            { util.get_label_text("MP_ARC_5"), v3.new(-1269.7747, -304.4372, 37.001965), 75 }, -- Insert Coin - Rockford Hills
            { util.get_label_text("MP_ARC_6"), v3.new(758.91815, -814.60864, 26.301702), 90 }, -- Videogeddon - La Mesa
        }
        for i = 1, #Arcades do
            if string.contains(Arcades[i][1], Label) then
                ArcadePos = Arcades[i][2]
                ArcadeHeading = Arcades[i][3]
            end
        end
    end)

    TELEPORT_CAH_ENTRANCE = menu.action(TELEPORT_CAH, TRANSLATE("Entrance Of Your Arcade"), {}, TRANSLATE("Note that works perfectly when no other players are in your session."), function()
        if ArcadePos and ArcadeHeading ~= nil then
            TELEPORT(ArcadePos.x, ArcadePos.y, ArcadePos.z)
            SET_HEADING(ArcadeHeading)
        else
            NOTIFY(TRANSLATE("Please go out of the current interior to use this feature."))
        end
    end)

    menu.divider(TELEPORT_CAH, TRANSLATE("Inside"))

        TELEPORT_CAH_IN_BOARD = menu.action(TELEPORT_CAH, TRANSLATE("Planning Boards (Arcade)"), {}, TRANSLATE("You should in your arcade to use this teleport!"), function()
            if IS_IN_ARCADE() then
                TELEPORT(2711.773, -369.458, -54.781)
            else
                NOTIFY(menu.get_help_text(TELEPORT_CAH_IN_BOARD))
            end
        end)
        TELEPORT_CAH_IN_EXIT = menu.action(TELEPORT_CAH, TRANSLATE("Garage Exit (Arcade)"), {}, TRANSLATE("You should in your arcade to use this teleport!"), function()
            if IS_IN_ARCADE() then
                TELEPORT(2677.237, -361.494, -55.187)
            else
                NOTIFY(menu.get_help_text(TELEPORT_CAH_IN_EXIT))
            end
        end)
        TELEPORT_CAH_IN_DISPOSAL = menu.action(TELEPORT_CAH, TRANSLATE("Waste Disposal (Casino)"), {}, "", function()
            TELEPORT(2542.052, -214.3084, -58.722965)
        end)
        TELEPORT_CAH_IN_LOBBY = menu.action(TELEPORT_CAH, TRANSLATE("Staff Lobby (Casino)"), {}, "", function()
            TELEPORT(2547.9192, -273.16754, -58.723003)
        end)
        TELEPORT_CAH_IN_DOOR = menu.action(TELEPORT_CAH, TRANSLATE("Mantrap Door (Casino)"), {}, "", function()
            TELEPORT(2465.4746, -279.2276, -70.694145)
        end)
        TELEPORT_CAH_IN_VAULT_IN = menu.action(TELEPORT_CAH, TRANSLATE("Inside The Vault (Casino)"), {}, "", function()
            TELEPORT(2515.1252, -238.91661, -70.73713)
        end)
        TELEPORT_CAH_IN_VAULT_OUT = menu.action(TELEPORT_CAH, TRANSLATE("Outside The Vault (Casino)"), {}, "", function()
            TELEPORT(2497.5098, -238.50768, -70.7388)
        end)
        TELEPORT_CAH_IN_DAILY_CASH = menu.action(TELEPORT_CAH, TRANSLATE("Daily Cash Storage (Casino)"), {}, "", function()
            TELEPORT(2520.8645, -286.30685, -58.723007)
        end)

    ---

    menu.divider(TELEPORT_CAH, TRANSLATE("Outside"))

        TELEPORT_CAH_OUT_GATE = menu.action(TELEPORT_CAH, TRANSLATE("Main Gate (Casino)"), {}, "", function()
            TELEPORT(917.24634, 48.989567, 80.89892)
        end)
        TELEPORT_CAH_OUT_LOBBY = menu.action(TELEPORT_CAH, TRANSLATE("Staff Lobby (Casino)"), {}, "", function()
            TELEPORT(965.14856, -9.05023, 80.63045)
        end)
        TELEPORT_CAH_OUT_DISPOSAL = menu.action(TELEPORT_CAH, TRANSLATE("Waste Disposal (Casino)"), {}, "", function()
            TELEPORT(997.5346, 84.51491, 80.990555)
        end)

    ---

---

CASINO_BOARD1 = menu.list(CASINO_HEIST, TRANSLATE("Heist Scope Out (Board 1)"), {}, "", function(); end)

    menu.list_action(CASINO_BOARD1, TRANSLATE("Change Approach"), {"hccahapproach"}, "", {
        { 1, TRANSLATE("Silent & Sneaky Approach"), {"silent"}, "" },
        { 2, TRANSLATE("BigCon Approach"), {"bigcon"}, "" },
        { 3, TRANSLATE("Aggressive Approach"), {"aggressive"}, "" },
    }, function(index)
        STAT_SET_INT("H3_LAST_APPROACH", 0)
        STAT_SET_INT("H3OPT_APPROACH", index)
        menu.trigger_commands("hccahrefreshboards")
    end)

    menu.list_action(CASINO_BOARD1, TRANSLATE("Change Difficulty"), {"hccahdifficulty"}, "", {
        { 1, TRANSLATE("Normal"), {"normal"}, "" },
        { 2, TRANSLATE("Hard"), {"hard"}, "" },
    }, function(index)
        if index == 1 then
            STAT_SET_INT("H3_HARD_APPROACH", 0)
        elseif index == 2 then
            for i = 1, 3 do
                if STAT_GET_INT("H3OPT_APPROACH") == i then
                    STAT_SET_INT("H3_HARD_APPROACH", i)
                end
            end
        end

        menu.trigger_commands("hccahrefreshboards")
    end)

    menu.list_action(CASINO_BOARD1, TRANSLATE("Change Target"), {"hccahtarget"}, "", {
        { 1, TRANSLATE("Diamonds"), {"diamond"}, "" },
        { 2, TRANSLATE("Gold"), {"gold"}, "" },
        { 3, TRANSLATE("Artwork"), {"artwork"}, "" },
        { 4, TRANSLATE("Cash"), {"cash"}, "" },
    }, function(index)
        if index == 1 then
            STAT_SET_INT("H3OPT_TARGET", 3)
        elseif index == 2 then 
            STAT_SET_INT("H3OPT_TARGET", 1)
        elseif index == 3 then
            STAT_SET_INT("H3OPT_TARGET", 2)
        elseif index == 4 then
            STAT_SET_INT("H3OPT_TARGET", 0)
        end

        menu.trigger_commands("hccahrefreshboards")
    end)

---

CASINO_BOARD2 = menu.list(CASINO_HEIST, TRANSLATE("Heist Perp Work (Board 2)"), {}, "", function(); end)

    menu.list_action(CASINO_BOARD2, TRANSLATE("Change Gunman"), {"hccahgunman"}, "", {
        { 1, TRANSLATE("Chester McCoy"), {"chester"}, "(10% - " .. util.get_label_text("CH_SKILL_EXPR") .. ")" },
        { 2, TRANSLATE("Gustavo Mota"), {"gustavo"}, "(9% - " .. util.get_label_text("CH_SKILL_EXPR") .. ")" },
        { 3, TRANSLATE("Patrick McReary"), {"patrick"}, "(8% - " .. util.get_label_text("CH_SKILL_GOOD") .. ")" },
        { 4, TRANSLATE("Charlie Reed"), {"charlie"}, "(7% - " .. util.get_label_text("CH_SKILL_GOOD") .. ")" },
        { 5, TRANSLATE("Karl Abolaji"), {"karl"}, "(5% - " .. util.get_label_text("CH_SKILL_POOR") .. ")" },
        { 6, TRANSLATE("Random"), {"random"}, "(???%)" },
        { 7, TRANSLATE("Remove"), {"remove"}, "(0%)" },
    }, function(index)
        if index == 1 then
            STAT_SET_INT("H3OPT_CREWWEAP", 4)
        elseif index == 2 then
            STAT_SET_INT("H3OPT_CREWWEAP", 2)
        elseif index == 3 then
            STAT_SET_INT("H3OPT_CREWWEAP", 5)
        elseif index == 4 then
            STAT_SET_INT("H3OPT_CREWWEAP", 3)
        elseif index == 5 then
            STAT_SET_INT("H3OPT_CREWWEAP", 1)
        elseif index == 6 then
            STAT_SET_INT("H3OPT_CREWWEAP", math.random(5))
        elseif index == 7 then
            STAT_SET_INT("H3OPT_CREWWEAP", 6)
        end

        menu.trigger_commands("hccahrefreshboards")
    end)

    menu.list_action(CASINO_BOARD2, TRANSLATE("Weapon Variation"), {"hccahweaponvar"}, "", {
        { 1, TRANSLATE("Best"), {"best"}, "" },
        { 2, TRANSLATE("Worst"), {"worst"}, "" },
    }, function(index)
        if index == 1 then
            STAT_SET_INT("H3OPT_WEAPS", 1)
        elseif index == 2 then
            STAT_SET_INT("H3OPT_WEAPS", 0)
        end

        menu.trigger_commands("hccahrefreshboards")
    end)

    menu.list_action(CASINO_BOARD2, TRANSLATE("Change Driver"), {"hccahdriver"}, "", {
        { 1, TRANSLATE("Chester McCoy"), {"chester"}, "(10% - " .. util.get_label_text("CH_SKILL_EXPR") .. ")" .. "\n\n" .. "- " .. util.get_label_text("CH_VEH_4_04B") .. "\n".. "- " .. util.get_label_text("CH_VEH_4_03B") .. "\n".. "- " .. util.get_label_text("CH_VEH_4_02B") .. "\n".. "- " .. util.get_label_text("CH_VEH_4_01B")  },
        { 2, TRANSLATE("Eddie Toh"), {"eddie"}, "(9% - " .. util.get_label_text("CH_SKILL_EXPR") .. ")" .. "\n\n" .. "- " .. util.get_label_text("CH_VEH_2_04B") .. "\n" .. "- " .. util.get_label_text("CH_VEH_2_03B") .. "\n" .. "- " .. util.get_label_text("CH_VEH_2_02B") .. "\n" .. "- " .. util.get_label_text("CH_VEH_2_01B") },
        { 3, TRANSLATE("Taliana Martinez"), {"taliana"}, "(7% - " .. util.get_label_text("CH_SKILL_GOOD") .. ")" .. "\n\n" .. "- " .. util.get_label_text("CH_VEH_1_04B") .. "\n" .. "- " .. util.get_label_text("CH_VEH_1_03B") .. "\n" .. "- " .. util.get_label_text("CH_VEH_1_02B") .. "\n" .. "- " .. util.get_label_text("CH_VEH_1_01B") },
        { 4, TRANSLATE("Zach Nelson"), {"zach"}, "(6% - " .. util.get_label_text("CH_SKILL_GOOD") .. ")" .. "\n\n" .. "- " .. util.get_label_text("CH_VEH_3_04B") .. "\n" .. "- " .. util.get_label_text("CH_VEH_3_03B") .. "\n" .. "- " .. util.get_label_text("CH_VEH_3_02B") .. "\n" .. "- " .. util.get_label_text("CH_VEH_3_01B") },
        { 5, TRANSLATE("Karim Denz"), {"karim"}, "(5% - " .. util.get_label_text("CH_SKILL_POOR") .. ")" .. "\n\n" .. "- " .. util.get_label_text("CH_VEH_0_04B") .. "\n" .. "- " .. util.get_label_text("CH_VEH_0_03B") .. "\n" .. "- " .. util.get_label_text("CH_VEH_0_02B") .. "\n" .. "- " .. util.get_label_text("CH_VEH_0_01B") },
        { 6, TRANSLATE("Random"), {"random"}, "(???%)" },
        { 7, TRANSLATE("Remove"), {"remove"}, "(0%)" },
    }, function(index)
        if index == 1 then
            STAT_SET_INT("H3OPT_CREWDRIVER", 5)
        elseif index == 2 then
            STAT_SET_INT("H3OPT_CREWDRIVER", 3)
        elseif index == 3 then
            STAT_SET_INT("H3OPT_CREWDRIVER", 2)
        elseif index == 4 then
            STAT_SET_INT("H3OPT_CREWDRIVER", 4)
        elseif index == 5 then
            STAT_SET_INT("H3OPT_CREWDRIVER", 1)
        elseif index == 6 then
            STAT_SET_INT("H3OPT_CREWDRIVER", math.random(5))
        elseif index == 7 then
            STAT_SET_INT("H3OPT_CREWDRIVER", 6)
        end

        menu.trigger_commands("hccahrefreshboards")
    end)

    menu.list_action(CASINO_BOARD2, TRANSLATE("Vehicle Variation"), {"hccahvehvar"}, "", {
        { 1, TRANSLATE("Best"), {"best"}, "- " .. TRANSLATE("Chester McCoy") .. ": " .. util.get_label_text("CH_VEH_4_04B") .. "\n" .. "- " .. TRANSLATE("Eddie Toh") .. ": " .. util.get_label_text("CH_VEH_2_04B") .. "\n" .. "- " .. TRANSLATE("Taliana Martinez") .. ": " .. util.get_label_text("CH_VEH_1_04B") .. "\n" .. "- " .. TRANSLATE("Taliana Martinez") .. ": " .. util.get_label_text("CH_VEH_3_04B") .. "\n" .. "- " .. TRANSLATE("Karim Denz") .. ": " .. util.get_label_text("CH_VEH_0_04B") },
        { 2, TRANSLATE("Good"), {"good"}, "- " .. TRANSLATE("Chester McCoy") .. ": " .. util.get_label_text("CH_VEH_4_03B") .. "\n" .. "- " .. TRANSLATE("Eddie Toh") .. ": " .. util.get_label_text("CH_VEH_2_03B") .. "\n" .. "- " .. TRANSLATE("Taliana Martinez") .. ": " .. util.get_label_text("CH_VEH_1_03B") .. "\n" .. "- " .. TRANSLATE("Taliana Martinez") .. ": " .. util.get_label_text("CH_VEH_3_03B") .. "\n" .. "- " .. TRANSLATE("Karim Denz") .. ": " .. util.get_label_text("CH_VEH_0_03B") },
        { 3, TRANSLATE("Fine"), {"fine"}, "- " .. TRANSLATE("Chester McCoy") .. ": " .. util.get_label_text("CH_VEH_4_02B") .. "\n" .. "- " .. TRANSLATE("Eddie Toh") .. ": " .. util.get_label_text("CH_VEH_2_02B") .. "\n" .. "- " .. TRANSLATE("Taliana Martinez") .. ": " .. util.get_label_text("CH_VEH_1_02B") .. "\n" .. "- " .. TRANSLATE("Taliana Martinez") .. ": " .. util.get_label_text("CH_VEH_3_02B") .. "\n" .. "- " .. TRANSLATE("Karim Denz") .. ": " .. util.get_label_text("CH_VEH_0_02B") },
        { 4, TRANSLATE("Worst"), {"worst"}, "- " .. TRANSLATE("Chester McCoy") .. ": " .. util.get_label_text("CH_VEH_4_01B") .. "\n" .. "- " .. TRANSLATE("Eddie Toh") .. ": " .. util.get_label_text("CH_VEH_2_01B") .. "\n" .. "- " .. TRANSLATE("Taliana Martinez") .. ": " .. util.get_label_text("CH_VEH_1_01B") .. "\n" .. "- " .. TRANSLATE("Taliana Martinez") .. ": " .. util.get_label_text("CH_VEH_3_01B") .. "\n" .. "- " .. TRANSLATE("Karim Denz") .. ": " .. util.get_label_text("CH_VEH_0_01B") },
        { 5, TRANSLATE("Random"), {"random"}, "" },
    }, function(index)
        if index == 1 then
            STAT_SET_INT("H3OPT_VEHS", 3)
        elseif index == 2 then
            STAT_SET_INT("H3OPT_VEHS", 2)
        elseif index == 3 then
            STAT_SET_INT("H3OPT_VEHS", 1)
        elseif index == 4 then
            STAT_SET_INT("H3OPT_VEHS", 0)
        elseif index == 5 then
            STAT_SET_INT("H3OPT_VEHS", math.random(0, 3))
        end

        menu.trigger_commands("hccahrefreshboards")
    end)

    menu.list_action(CASINO_BOARD2, TRANSLATE("Change Hacker"), {"hccahhacker"}, "", {
        { 1, TRANSLATE("Avi Schwartzman"), {"avi"}, "(10% - " .. util.get_label_text("CH_SKILL_EXPR") .. ")" .. "\n\n" .. "- " .. TRANSLATE("Undetected Time:") .. " 3:30" .. "\n" .. "- " .. TRANSLATE("Detected Time:") .. " 2:26" },
        { 2, TRANSLATE("Paige Harris"), {"paige"}, "(9% - " .. util.get_label_text("CH_SKILL_EXPR") .. ")" .. "\n\n" .. "- " .. TRANSLATE("Undetected Time:") .. " 3:25" .. "\n" .. "- " .. TRANSLATE("Detected Time:") .. " 2:23" },
        { 3, TRANSLATE("Christian Feltz"), {"christian"}, "(7% - " .. util.get_label_text("CH_SKILL_GOOD") .. ")" .. "\n\n" .. "- " .. TRANSLATE("Undetected Time:") .. " 2:59" .. "\n" .. "- " .. TRANSLATE("Detected Time:") .. " 2:05" },
        { 4, TRANSLATE("Yohan Blair"), {"yohan"}, "(5% - " .. util.get_label_text("CH_SKILL_GOOD") .. ")" .. "\n\n" .. "- " .. TRANSLATE("Undetected Time:") .. " 2:52" .. "\n" .. "- " .. TRANSLATE("Detected Time:") .. " 2:01" },
        { 5, TRANSLATE("Rickie Lukens"), {"rickie"}, "(3% - " .. util.get_label_text("CH_SKILL_POOR") .. ")" .. "\n\n" .. "- " .. TRANSLATE("Undetected Time:") .. " 2:26" .. "\n" .. "- " .. TRANSLATE("Detected Time:") .. " 1:42" },
        { 6, TRANSLATE("Random"), {"random"}, "(???%)" },
        { 7, TRANSLATE("Remove"), {"remove"}, "(0%)" },
    }, function(index)
        if index == 1 then
            STAT_SET_INT("H3OPT_CREWHACKER", 4)
        elseif index == 2 then
            STAT_SET_INT("H3OPT_CREWHACKER", 5)
        elseif index == 3 then
            STAT_SET_INT("H3OPT_CREWHACKER", 2)
        elseif index == 4 then
            STAT_SET_INT("H3OPT_CREWHACKER", 3)
        elseif index == 5 then
            STAT_SET_INT("H3OPT_CREWHACKER", 1)
        elseif index == 6 then
            STAT_SET_INT("H3OPT_CREWHACKER", math.random(5))
        elseif index == 7 then
            STAT_SET_INT("H3OPT_CREWHACKER", 6)
        end

        menu.trigger_commands("hccahrefreshboards")
    end)

    menu.list_action(CASINO_BOARD2, TRANSLATE("Choose Masks"), {"hccahmask"}, "", {
        { 1, TRANSLATE("Remove Masks"), {"remove"}, "" },
        { 2, TRANSLATE("Geometric Set"), {"geometric"}, "" },
        { 3, TRANSLATE("Hunter Set"), {"hunter"}, "" },
        { 4, TRANSLATE("Oni Half Mask Set"), {"onihalf"}, "" },
        { 5, TRANSLATE("Emoji Set"), {"emoji"}, "" },
        { 6, TRANSLATE("Ornate Skull Set"), {"ornate"}, "" },
        { 7, TRANSLATE("Lucky Fruit Set"), {"lucky"}, "" },
        { 8, TRANSLATE("Guerilla Set"), {"guerilla"}, "" },
        { 9, TRANSLATE("Clown Set"), {"clown"}, "" },
        { 10, TRANSLATE("Animal Set"), {"animal"}, "" },
        { 11, TRANSLATE("Riot Set"), {"riot"}, "" },
        { 12, TRANSLATE("Oni Set"), {"oni"}, "" },
        { 13, TRANSLATE("Hockey Set"), {"hockey"}, "" },
    }, function(index)
        if index == 1 then
            STAT_SET_INT("H3OPT_MASKS", -1)
        else
            STAT_SET_INT("H3OPT_MASKS", index - 1)
        end

        menu.trigger_commands("hccahrefreshboards")
    end)

    menu.slider(CASINO_BOARD2, TRANSLATE("Security Pass Level"), {"hccahcard"}, "", 0, 2, 2, 1, function(value)
        STAT_SET_INT("H3OPT_KEYLEVELS", value)
        menu.trigger_commands("hccahrefreshboards")
    end)
    menu.slider(CASINO_BOARD2, TRANSLATE("Guards Strength Level"), {"hccahguard"}, TRANSLATE("0 - Strongest Guards") .. "\n" .. TRANSLATE("3 - Weakest Guards"), 0, 3, 3, 1, function(value)
        STAT_SET_INT("H3OPT_DISRUPTSHIP", value)
        menu.trigger_commands("hccahrefreshboards")
    end)

---

CASINO_BOARD3 = menu.list(CASINO_HEIST, TRANSLATE("Heist Planning (Board 3)"), {}, "", function(); end)

    menu.list_action(CASINO_BOARD3, TRANSLATE("Entrance"), {"hccahentrance"}, TRANSLATE("Don't forget changing this feature before starting the heist! Otherwise, won't be applied."), {
        { 1, TRANSLATE("Main Door"), {"maindoor"}, "" },
        { 2, TRANSLATE("Staff Lobby"), {"stafflobby"}, "" },
        { 3, TRANSLATE("Waste Disposal"), {"wastedisposal"}, "" },
        { 4, TRANSLATE("S.W Roof Terrace"), {"swroofterrace"}, "" },
        { 5, TRANSLATE("N.W Roof Terrace"), {"nwroofterrace"}, "" },
        { 6, TRANSLATE("S.E Roof Terrace"), {"seroofterrace"}, "" },
        { 7, TRANSLATE("N.E Roof Terrace"), {"neroofterrace"}, "" },
        { 8, TRANSLATE("South Helipad"), {"southhelipad"}, "" },
        { 9, TRANSLATE("North Helipad"), {"northhelipad"}, "" },
        { 10, TRANSLATE("Security Tunnel"), {"securitytunnel"}, "" },
        { 11, TRANSLATE("Sewers"), {"sewers"}, "" },
    }, function(index)
        util.create_tick_handler(function()
            if not util.is_session_started() then return end
            SET_INT_GLOBAL(1964849 + 1497 + 1017, index - 1) -- https://www.unknowncheats.me/forum/3666316-post96.html
        end)
        menu.trigger_commands("hccahrefreshboards")
    end)

    menu.list_action(CASINO_BOARD3, TRANSLATE("Exit"), {"hccahexit"}, TRANSLATE("Don't forget changing this feature before starting the heist! Otherwise, won't be applied."), {
        { 1, TRANSLATE("Main Door"), {"maindoor"}, "" },
        { 2, TRANSLATE("Staff Lobby"), {"stafflobby"}, "" },
        { 3, TRANSLATE("Waste Disposal"), {"wastedisposal"}, "" },
        { 4, TRANSLATE("S.W Roof Terrace"), {"swroofterrace"}, "" },
        { 5, TRANSLATE("N.W Roof Terrace"), {"nwroofterrace"}, "" },
        { 6, TRANSLATE("S.E Roof Terrace"), {"seroofterrace"}, "" },
        { 7, TRANSLATE("N.E Roof Terrace"), {"neroofterrace"}, "" },
        { 8, TRANSLATE("South Helipad"), {"southhelipad"}, "" },
        { 9, TRANSLATE("North Helipad"), {"northhelipad"}, "" },
        { 10, TRANSLATE("Security Tunnel"), {"securitytunnel"}, "" },
        { 11, TRANSLATE("Sewers"), {"sewers"}, "" },
    }, function(index)
        util.create_tick_handler(function()
            if not util.is_session_started() then return end
            SET_INT_GLOBAL(1964849 + 1497 + 1018, index - 1) -- https://www.unknowncheats.me/forum/3666316-post96.html
        end)
        menu.trigger_commands("hccahrefreshboards")
    end)

    menu.list_action(CASINO_BOARD3, TRANSLATE("Buyer Level"), {"hccahbuyer"}, TRANSLATE("Don't forget changing this feature before starting the heist! Otherwise, won't be applied."), {
        { 1, TRANSLATE("Low"), {"low"}, "" },
        { 2, TRANSLATE("Mid"), {"mid"}, "" },
        { 3, TRANSLATE("High"), {"high"}, "" },
    }, function(index)
        util.create_tick_handler(function()
            if not util.is_session_started() then return end
            SET_INT_GLOBAL(1964849 + 1497 + 1019, (index * 3) - 3) -- https://www.unknowncheats.me/forum/3666316-post96.html
        end)
        menu.trigger_commands("hccahrefreshboards")
    end)

    menu.list_action(CASINO_BOARD3, TRANSLATE("Entry Disguise"), {"hccahentrydisguise"}, "(" .. TRANSLATE("BigCon Approach") .. ")" .. "\n\n" .. TRANSLATE("Don't forget changing this feature before starting the heist! Otherwise, won't be applied."), {
        { 1, TRANSLATE("Bugstars"), {"bugstars"}, "" },
        { 2, TRANSLATE("LS Water & Power"), {"lswaternpower"}, "" },
        { 3, TRANSLATE("Gruppe Sechs"), {"gruppesechs"}, "" },
        { 4, TRANSLATE("Yung Ancestor"), {"yungancestor"}, "" },
    }, function(index)
        util.create_tick_handler(function()
            if not util.is_session_started() then return end
            SET_INT_GLOBAL(1964849 + 1497 + 1020, index)
        end)
        menu.trigger_commands("hccahrefreshboards")
    end)

    menu.list_action(CASINO_BOARD3, TRANSLATE("Exit Disguise"), {"hccahexitdisguise"}, "(" .. TRANSLATE("BigCon Approach") .. ")" .. "\n\n" .. TRANSLATE("Don't forget changing this feature before starting the heist! Otherwise, won't be applied."), {
        { 1, TRANSLATE("Noose"), {"noose"}, "" },
        { 2, TRANSLATE("Firefighters"), {"firefighters"}, "" },
        { 3, TRANSLATE("High Rollers"), {"highrollers"}, "" },
    }, function(index)
        util.create_tick_handler(function()
            if not util.is_session_started() then return end
            SET_INT_GLOBAL(1964849 + 1497 + 1021, index + 5)
        end)
        menu.trigger_commands("hccahrefreshboards")
    end)

    menu.divider(CASINO_BOARD3, TRANSLATE("Remove Drills"))

        menu.action(CASINO_BOARD3, TRANSLATE("Silent, Sneaky and Aggressive Approach"), {"hccahremsilaggdrill"}, "", function()
            STAT_SET_INT("H3OPT_BITSET0", -8849)
        end)
        menu.action(CASINO_BOARD3, TRANSLATE("BigCon Approach"), {"hccahrembigdrill"}, "", function()
            STAT_SET_INT("H3OPT_BITSET0", -186)
        end)

    ---

---

CASINO_MORE = menu.list(CASINO_HEIST, TRANSLATE("Others"), {}, "", function(); end)

    menu.action(CASINO_MORE, TRANSLATE("Load All Boards"), {"hccahloadallboards"}, "", function()
        STAT_SET_INT("H3OPT_BITSET1", -1)
        STAT_SET_INT("H3OPT_BITSET0", -1)
        STAT_SET_INT("H3OPT_ACCESSPOINTS", 2047)
        STAT_SET_INT("H3OPT_POI", 1023)
    end)

    menu.action(CASINO_MORE, TRANSLATE("Unload All Boards"), {"hccahunloadallboards"}, "", function()
        STAT_SET_INT("H3OPT_BITSET1", 0)
        STAT_SET_INT("H3OPT_BITSET0", 0)
        STAT_SET_INT("H3OPT_ACCESSPOINTS", 0)
        STAT_SET_INT("H3OPT_POI", 0)
    end)

    menu.action(CASINO_MORE, TRANSLATE("Remove Repeat Cooldown"), {"hccahremovecooldown"}, TRANSLATE("You should not in your arcade to use this feature.") .. "\n\n" .. TRANSLATE("Meaning of the cooldown: Requesting new Diamond Casino Heist in calling to Lester"), function()
        if not IS_IN_ARCADE() then
            STAT_SET_INT("H3_COMPLETEDPOSIX", -1)
            STAT_SET_INT("MPPLY_H3_COOLDOWN", -1)
        else
            NOTIFY(TRANSLATE("You should not in your arcade to use this feature."))
        end
    end)

    menu.action(CASINO_MORE, TRANSLATE("Set Heist to Default (Reset)"), {"hccahreset"}, "", function()
        STAT_SET_INT("H3OPT_DISRUPTSHIP", 0)
        STAT_SET_INT("H3OPT_BODYARMORLVL", 0)
        STAT_SET_INT("H3OPT_CREWWEAP", 0)
        STAT_SET_INT("H3OPT_CREWDRIVER", 0)
        STAT_SET_INT("H3OPT_CREWHACKER", 0)
        STAT_SET_INT("H3OPT_KEYLEVELS", 0)
        STAT_SET_INT("H3OPT_MODVEH", 0)
        STAT_SET_INT("H3OPT_MASKS", 0)
        STAT_SET_INT("H3OPT_WEAPS", 0)
        STAT_SET_INT("H3OPT_VEHS", 0)
        STAT_SET_INT("H3OPT_APPROACH", 0)
        STAT_SET_INT("H3OPT_BITSET0", 0)
        STAT_SET_INT("H3OPT_ACCESSPOINTS", 0)
        STAT_SET_INT("H3OPT_TARGET", 0)
        STAT_SET_INT("H3OPT_POI", 0)
        STAT_SET_INT("H3OPT_BITSET1", 0)
        STAT_SET_INT("H3_PARTIALPASS", 0)
        STAT_SET_INT("CAS_HEIST_NOTS", 0)
        STAT_SET_INT("CAS_HEIST_FLOW", 0)
        STAT_SET_INT("H3_LAST_APPROACH", 0)
        STAT_SET_INT("H3_HARD_APPROACH", 0)
        STAT_SET_INT("H3_SKIPCOUNT", 0)
        STAT_SET_INT("H3_MISSIONSKIPPED", 0)
        STAT_SET_INT("H3_BOARD_DIALOGUE0", 0)
        STAT_SET_INT("H3_BOARD_DIALOGUE1", 0)
        STAT_SET_INT("H3_BOARD_DIALOGUE2", 0)
        STAT_SET_INT("H3_VEHICLESUSED", 0)
        STAT_SET_INT("MPPLY_H3_COOLDOWN", 0)
        STAT_SET_INT("H3_COMPLETEDPOSIX", 0)

        menu.trigger_commands("hccahrefreshboards")
    end)

---

---


--- Doomsday Heist

DOOMS_PRESETS = menu.list(DOOMS_HEIST, TRANSLATE("Automated Presets"), {"hcdoomspreset"}, TRANSLATE("You should enable the preset until the end of the heist!") .. "\n\n" .. TRANSLATE("Enabling one of these presets will complete all of setups, and set as max payout, $2.55 Millions. It will be affected to all of heist players."), function(); end)

    DOOMS_PRESETS_ACT1 = menu.toggle(DOOMS_PRESETS, TRANSLATE("ACT I - The Data Breaches"), {"hcdoomsact1"}, TRANSLATE("Note that there is a payout visual bug on the heist screen."), function()
        if menu.get_value(DOOMS_PRESETS_ACT1) then
            STAT_SET_INT("GANGOPS_FLOW_MISSION_PROG", 503)
            STAT_SET_INT("GANGOPS_HEIST_STATUS", -229383)
            STAT_SET_INT("GANGOPS_FLOW_NOTIFICATIONS", 1557)

            menu.trigger_commands("hcdoomsrefreshscreen")

            for i = 1, #DoomsPresetLists do
                if DoomsPresetLists[i][1] == DOOMS_PRESETS_ACT1 then
                    DoomsPresetLists[i][2] = true
                end
            end
            for i = 1, #ForDoomsPresets do
                menu.set_help_text(ForDoomsPresets[i][1], TRANSLATE("This feature has been controlled by another feature.") .. "\n" .. "- " .. menu.get_menu_name(DOOMS_PRESETS) .. " > " .. menu.get_menu_name(DOOMS_PRESETS_ACT1))
            end
        else
            for i = 1, #DoomsPresetLists do
                if DoomsPresetLists[i][1] == DOOMS_PRESETS_ACT1 then
                    DoomsPresetLists[i][2] = false
                end
            end
            for i = 1, #ForDoomsPresets do
                menu.apply_default_state(ForDoomsPresets[i][1])
                menu.set_help_text(ForDoomsPresets[i][1], ForDoomsPresets[i][2])
            end
        end

        while menu.get_value(DOOMS_PRESETS_ACT1) do
            menu.set_value(DOOMS_NON_HOST_CUT, 209)
            menu.set_value(DOOMS_NON_HOST_CUT_LOOP, false)
            menu.set_value(DOOMS_HOST_CUT, 209)
            menu.set_value(DOOMS_HOST_CUT_LOOP, true)
            menu.set_value(DOOMS_2P_CUT, 209)
            menu.set_value(DOOMS_2P_CUT_LOOP, true)
            menu.set_value(DOOMS_3P_CUT, 209)
            menu.set_value(DOOMS_3P_CUT_LOOP, true)
            menu.set_value(DOOMS_4P_CUT, 209)
            menu.set_value(DOOMS_4P_CUT_LOOP, true)

            util.yield_once()
        end
    end)

    DOOMS_PRESETS_ACT2 = menu.toggle(DOOMS_PRESETS, TRANSLATE("ACT II - The Bogdan Problem"), {"hcdoomsact2"}, TRANSLATE("Note that there is a payout visual bug on the heist screen."), function()
        if menu.get_value(DOOMS_PRESETS_ACT2) then
            STAT_SET_INT("GANGOPS_FLOW_MISSION_PROG", 240)
            STAT_SET_INT("GANGOPS_HEIST_STATUS", -229378)
            STAT_SET_INT("GANGOPS_FLOW_NOTIFICATIONS", 1557)

            menu.trigger_commands("hcdoomsrefreshscreen")

            for i = 1, #DoomsPresetLists do
                if DoomsPresetLists[i][1] == DOOMS_PRESETS_ACT2 then
                    DoomsPresetLists[i][2] = true
                end
            end
            for i = 1, #ForDoomsPresets do
                menu.set_help_text(ForDoomsPresets[i][1], TRANSLATE("This feature has been controlled by another feature.") .. "\n" .. "- " .. menu.get_menu_name(DOOMS_PRESETS) .. " > " .. menu.get_menu_name(DOOMS_PRESETS_ACT2))
            end
        else
            for i = 1, #DoomsPresetLists do
                if DoomsPresetLists[i][1] == DOOMS_PRESETS_ACT2 then
                    DoomsPresetLists[i][2] = false
                end
            end
            for i = 1, #ForDoomsPresets do
                menu.apply_default_state(ForDoomsPresets[i][1])
                menu.set_help_text(ForDoomsPresets[i][1], ForDoomsPresets[i][2])
            end
        end

        while menu.get_value(DOOMS_PRESETS_ACT2) do
            menu.set_value(DOOMS_NON_HOST_CUT, 142)
            menu.set_value(DOOMS_NON_HOST_CUT_LOOP, false)
            menu.set_value(DOOMS_HOST_CUT, 142)
            menu.set_value(DOOMS_HOST_CUT_LOOP, true)
            menu.set_value(DOOMS_2P_CUT, 142)
            menu.set_value(DOOMS_2P_CUT_LOOP, true)
            menu.set_value(DOOMS_3P_CUT, 142)
            menu.set_value(DOOMS_3P_CUT_LOOP, true)
            menu.set_value(DOOMS_4P_CUT, 142)
            menu.set_value(DOOMS_4P_CUT_LOOP, true)

            util.yield_once()
        end
    end)

    DOOMS_PRESETS_ACT3 = menu.toggle(DOOMS_PRESETS, TRANSLATE("ACT III - The Doomsday Scenario"), {"hcdoomsact3"}, TRANSLATE("Note that there is a payout visual bug on the heist screen."), function()
        if menu.get_value(DOOMS_PRESETS_ACT3) then
            STAT_SET_INT("GANGOPS_FLOW_MISSION_PROG", 16368)
            STAT_SET_INT("GANGOPS_HEIST_STATUS", -229380)
            STAT_SET_INT("GANGOPS_FLOW_NOTIFICATIONS", 1557)

            menu.trigger_commands("hcdoomsrefreshscreen")

            for i = 1, #DoomsPresetLists do
                if DoomsPresetLists[i][1] == DOOMS_PRESETS_ACT3 then
                    DoomsPresetLists[i][2] = true
                end
            end
            for i = 1, #ForDoomsPresets do
                menu.set_help_text(ForDoomsPresets[i][1], TRANSLATE("This feature has been controlled by another feature.") .. "\n" .. "- " .. menu.get_menu_name(DOOMS_PRESETS) .. " > " .. menu.get_menu_name(DOOMS_PRESETS_ACT3))
            end
        else
            for i = 1, #DoomsPresetLists do
                if DoomsPresetLists[i][1] == DOOMS_PRESETS_ACT3 then
                    DoomsPresetLists[i][2] = false
                end
            end
            for i = 1, #ForDoomsPresets do
                menu.apply_default_state(ForDoomsPresets[i][1])
                menu.set_help_text(ForDoomsPresets[i][1], ForDoomsPresets[i][2])
            end
        end

        while menu.get_value(DOOMS_PRESETS_ACT3) do
            menu.set_value(DOOMS_NON_HOST_CUT, 113)
            menu.set_value(DOOMS_NON_HOST_CUT_LOOP, false)
            menu.set_value(DOOMS_HOST_CUT, 113)
            menu.set_value(DOOMS_HOST_CUT_LOOP, true)
            menu.set_value(DOOMS_2P_CUT, 113)
            menu.set_value(DOOMS_2P_CUT_LOOP, true)
            menu.set_value(DOOMS_3P_CUT, 113)
            menu.set_value(DOOMS_3P_CUT_LOOP, true)
            menu.set_value(DOOMS_4P_CUT, 113)
            menu.set_value(DOOMS_4P_CUT_LOOP, true)

            util.yield_once()
        end
    end)

---

TELEPORT_DOOMS = menu.list(DOOMS_HEIST, TRANSLATE("Teleport Places"), {}, TRANSLATE("- How to change the line color: Stand > Settings > Appearance > Colours > HUD Colour") .. "\n\n" .. TRANSLATE("- How to change the AR Beacon color: Stand > Settings > Appearance > Colours > AR Colour"), function(); end)

    FacilityPos = nil
    util.create_tick_handler(function()
        local Blip = HUD.GET_FIRST_BLIP_INFO_ID(590) -- Facility Blip
        local Pos = HUD.GET_BLIP_COORDS(Blip)
        if HUD.DOES_BLIP_EXIST(Blip) then
            FacilityPos = Pos
        end
    end)

    TELEPORT_DOOMS_ENTRANCE = menu.action(TELEPORT_DOOMS, TRANSLATE("Entrance Of Your Facility"), {}, TRANSLATE("Note that works perfectly when no other players are in your session."), function()
        if FacilityPos ~= nil then
            TELEPORT(FacilityPos.x, FacilityPos.y, FacilityPos.z)
        else
            NOTIFY(TRANSLATE("Please go out of the current interior to use this feature."))
        end
    end)
    TELEPORT_DOOMS_SCREEN = menu.action(TELEPORT_DOOMS, TRANSLATE("Heist Screen on Facility"), {}, TRANSLATE("Make sure you are in your facility."), function()
        local Blip = HUD.GET_FIRST_BLIP_INFO_ID(428) -- Heist Blip in the Facility
        if HUD.DOES_BLIP_EXIST(Blip) then
            TELEPORT(350.69284, 4872.308, -60.794243)
            SET_HEADING(-50)
        else
            NOTIFY(menu.get_help_text(TELEPORT_DOOMS_SCREEN))
        end
    end)
    TELEPORT_DOOMS_BOARD = menu.action(TELEPORT_DOOMS, TRANSLATE("Heist Board"), {}, "(" .. TRANSLATE("The Bogdan Problem ACT II") .. ")", function()
        TELEPORT(515.528, 4835.353, -62.587)
    end)
    TELEPORT_DOOMS_CELL = menu.action(TELEPORT_DOOMS, TRANSLATE("Prisoner Cell"), {}, "(" .. TRANSLATE("The Bogdan Problem ACT II") .. ")", function()
        TELEPORT(512.888, 4833.033, -68.989)
    end)

---

DOOMS_PLAYER_CUT = menu.list(DOOMS_HEIST, TRANSLATE("Player's Cut"), {}, TRANSLATE("Don't forget changing this feature before starting the heist! Otherwise, won't be applied."), function(); end)

    DOOMS_NON_HOST = menu.list(DOOMS_PLAYER_CUT, TRANSLATE("Your Cut (Non-Host)"), {}, TRANSLATE("Note that modifying this won't applied to the heist board. You can check the applied cut after end of the heist."), function(); end)

        DOOMS_NON_HOST_CUT_LOOP = menu.toggle_loop(DOOMS_NON_HOST, TRANSLATE("Enable"), {"hcdoomsnonhostloop"}, "", function()
            SET_INT_GLOBAL(2685444 + 6639, menu.get_value(DOOMS_NON_HOST_CUT)) -- gb_gang_ops_planning.c
        end, function()
            SET_INT_GLOBAL(2685444 + 6639, menu.get_default_state(DOOMS_NON_HOST_CUT))
        end)

        DOOMS_NON_HOST_CUT = menu.slider(DOOMS_NON_HOST, TRANSLATE("Custom Percentage"), {"hcdoomsnonhost"}, "(%)", 0, 1000, 100, 5, function(); end)

    ---

    DOOMS_HOST = menu.list(DOOMS_PLAYER_CUT, TRANSLATE("Your Cut"), {}, TRANSLATE("Only works if you are host of the heist."), function(); end)

        DOOMS_HOST_CUT_LOOP = menu.toggle_loop(DOOMS_HOST, TRANSLATE("Enable"), {"hcdooms1ploop"}, "", function()
            SET_INT_GLOBAL(1960755 + 812 + 50 + 1, menu.get_value(DOOMS_HOST_CUT)) -- gb_gang_ops_planning.c
        end, function()
            SET_INT_GLOBAL(1960755 + 812 + 50 + 1, menu.get_default_state(DOOMS_HOST_CUT))
        end)

        DOOMS_HOST_CUT = menu.slider(DOOMS_HOST, TRANSLATE("Custom Percentage"), {"hcdooms1pcut"}, "(%)", 0, 1000, 100, 5, function(); end)

    ---

    DOOMS_2P = menu.list(DOOMS_PLAYER_CUT, TRANSLATE("Player 2"), {}, TRANSLATE("Only works if you are host of the heist."), function(); end)
        
        DOOMS_2P_CUT_LOOP = menu.toggle_loop(DOOMS_2P, TRANSLATE("Enable"), {"hcdooms2pcutloop"}, "", function()
            SET_INT_GLOBAL(1960755 + 812 + 50 + 2, menu.get_value(DOOMS_2P_CUT)) -- gb_gang_ops_planning.c
        end, function()
            SET_INT_GLOBAL(1960755 + 812 + 50 + 2, menu.get_default_state(DOOMS_2P_CUT))
        end)

        DOOMS_2P_CUT = menu.slider(DOOMS_2P, TRANSLATE("Custom Percentage"), {"hcdooms2pcut"}, "(%)", 0, 1000, 100, 5, function(); end)

    ---

    DOOMS_3P = menu.list(DOOMS_PLAYER_CUT, TRANSLATE("Player 3"), {}, TRANSLATE("Only works if you are host of the heist."), function(); end)

        DOOMS_3P_CUT_LOOP = menu.toggle_loop(DOOMS_3P, TRANSLATE("Enable"), {"hcdooms3pcutloop"}, "", function()
            SET_INT_GLOBAL(1960755 + 812 + 50 + 3, menu.get_value(DOOMS_3P_CUT)) -- gb_gang_ops_planning.c
        end, function()
            SET_INT_GLOBAL(1960755 + 812 + 50 + 3, menu.get_default_state(DOOMS_3P_CUT))
        end)

        DOOMS_3P_CUT = menu.slider(DOOMS_3P, TRANSLATE("Custom Percentage"), {"hcdooms3pcut"}, "(%)", 0, 1000, 100, 5, function(); end)

    ---

    DOOMS_4P = menu.list(DOOMS_PLAYER_CUT, TRANSLATE("Player 4"), {}, TRANSLATE("Only works if you are host of the heist."), function(); end)

        DOOMS_4P_CUT_LOOP = menu.toggle_loop(DOOMS_4P, TRANSLATE("Enable"), {"hcdooms4pcutloop"}, "", function()
            SET_INT_GLOBAL(1960755 + 812 + 50 + 4, menu.get_value(DOOMS_4P_CUT)) -- gb_gang_ops_planning.c
        end, function()
            SET_INT_GLOBAL(1960755 + 812 + 50 + 4, menu.get_default_state(DOOMS_4P_CUT))
        end)

        DOOMS_4P_CUT = menu.slider(DOOMS_4P, TRANSLATE("Custom Percentage"), {"hcdooms4pcut"}, "(%)", 0, 1000, 100, 5, function(); end)

    ---

    DoomsBypassMinMaxTunables = {
        memory.tunable_offset(-2020782937),
        memory.tunable_offset(944111042),
    }
    menu.toggle_loop(DOOMS_PLAYER_CUT, TRANSLATE("Bypass Minimum And Maximum Percentage"), {}, TRANSLATE("Only works if you are host of the heist.") .. "\n\n" .. TRANSLATE("It allows you set 0 ~ 100(%) by modifying the heist board, ignores all of restrictions modifying cuts."), function()
        SET_INT_GLOBAL(262145 + DoomsBypassMinMaxTunables[1], 0) -- https://www.unknowncheats.me/forum/3732338-post132.html
        SET_INT_GLOBAL(262145 + DoomsBypassMinMaxTunables[2], 100)
    end, function()
        SET_INT_GLOBAL(262145 + DoomsBypassMinMaxTunables[1], 15)
        SET_INT_GLOBAL(262145 + DoomsBypassMinMaxTunables[2], 85)
    end)

---

menu.toggle_loop(DOOMS_HEIST, TRANSLATE("Skip The Hacking Process"), {}, "(" .. TRANSLATE("The Data Breaches ACT I") .. " - " .. TRANSLATE("Setup: Server Farm (Lester)") .. " & " .. TRANSLATE("The Doomsday Scenario ACT III") .. ")", function()
    SET_INT_LOCAL("fm_mission_controller", 1514, 3) -- For ACT I, Setup: Server Farm (Lester), https://www.unknowncheats.me/forum/3687245-post112.html
    SET_INT_LOCAL("fm_mission_controller", 1545, 2)
    SET_INT_LOCAL("fm_mission_controller", 1271 + 135, 3) -- For ACT III, https://www.unknowncheats.me/forum/3455828-post8.html
end)

menu.action(DOOMS_HEIST, TRANSLATE("Allow You Play Alone"), {}, TRANSLATE("Allow you play alone this heist without another player.") .. "\n\n" .. TRANSLATE("Press this feature once before launching the heist."), function()
    if GET_INT_LOCAL("fmmc_launcher", 19709 + 34) ~= nil then -- https://www.unknowncheats.me/forum/grand-theft-auto-v/463868-modest-menu-lua-scripting-megathread-239.html#google_vignette
        if GET_INT_LOCAL("fmmc_launcher", 19709 + 34) ~= 0 then
            if GET_INT_LOCAL("fmmc_launcher", 19709 + 15) > 1 then
                SET_INT_LOCAL("fmmc_launcher", 19709 + 15, 1)
                SET_INT_GLOBAL(794744 + 4 + 1 + (GET_INT_LOCAL("fmmc_launcher", 19709 + 34) * 89) + 69, 1)
            end
            
            SET_INT_GLOBAL(4718592 + 3526, 1)
            SET_INT_GLOBAL(4718592 + 3527, 1)
            SET_INT_GLOBAL(4718592 + 3529 + 1, 1)
            SET_INT_GLOBAL(4718592 + 178821 + 1, 0)
        end
    end
end)

menu.action(DOOMS_HEIST, TRANSLATE("Force Ready"), {"hcdoomsforceready"}, TRANSLATE("Forces the players on board to ready."), function() 
    SET_INT_GLOBAL(1882632 + 1 + (1 * 146) + 43 + 1 + 4 + 8, 1) -- Thanks to @vithiam on Discord
    SET_INT_GLOBAL(1882632 + 1 + (2 * 146) + 43 + 2 + 4 + 8, 1)
    SET_INT_GLOBAL(1882632 + 1 + (3 * 146) + 43 + 3 + 4 + 8, 1)
end)

menu.action(DOOMS_HEIST, TRANSLATE("Increase Team Lives"), {"hcdoomsincteamlives"}, TRANSLATE("Increases the amount of team lives. Make sure to have script host if it doesn't seem to work."), function()
    menu.trigger_commands("scripthost")
    SET_INT_LOCAL("fm_mission_controller", 19746 + 1765 + 1, 10000000) -- Thanks to @vithiam on Discord
end)

menu.action(DOOMS_HEIST, TRANSLATE("Refresh Heist Screen On Facility"), {"hcdoomsrefreshscreen"}, TRANSLATE("You can update changed doomsday heist stats in the Facility by refreshing it."), function()
    SET_INT_LOCAL("gb_gang_ops_planning", 184, 6) -- https://www.unknowncheats.me/forum/3682032-post104.html
end)

menu.action(DOOMS_HEIST, TRANSLATE("Remove EMP Mines"), {}, TRANSLATE("(ACT III, Setup - Air Defense)"), function()
    local Object = util.joaat("xm_prop_sam_turret_01")
    DELETE_OBJECT_BY_HASH(Object)
end)

menu.action(DOOMS_HEIST, TRANSLATE("Unlock All Doomsday Heists"), {}, TRANSLATE("Makes able to play all of Doomsday heists, ACT I, II, III."), function()
    STAT_SET_INT("GANGOPS_HEIST_STATUS", -1)
    STAT_SET_INT("GANGOPS_HEIST_STATUS", -229384)
end)

menu.action(DOOMS_HEIST, TRANSLATE("Complete All Prep Missions"), {}, "", function()
    STAT_SET_INT("GANGOPS_FM_MISSION_PROG", -1)
    menu.trigger_commands("hcdoomsrefreshscreen")
end)

menu.action(DOOMS_HEIST, TRANSLATE("Set Heist to Default (Reset)"), {"hcdoomsreset"}, "", function()
    STAT_SET_INT("GANGOPS_FLOW_MISSION_PROG", 240)
    STAT_SET_INT("GANGOPS_HEIST_STATUS", 0)
    STAT_SET_INT("GANGOPS_FLOW_NOTIFICATIONS", 1557)

    menu.trigger_commands("hcdoomsrefreshscreen")
end)

---


--- Classic Heist

CLASSIC_PRESETS = menu.list(CLASSIC_HEISTS, TRANSLATE("Automated Presets"), {}, TRANSLATE("Compatible with any classic heist and any difficulty level.") .. "\n\n" .. TRANSLATE("Note that you should use this feature when you're on the planning board after watching or skipping the cutscene. It only works if you are host of the heist."), function(); end)

    menu.textslider_stateful(CLASSIC_PRESETS, TRANSLATE("Automated Presets"), {"hcclassicpreset"}, TRANSLATE("- Option 1: Each player will receive $15.000.000") .. "\n" .. TRANSLATE("- Option 2: Only other players will receive $15.000.000"), { -- Big thanks to @negotium.rpm on Discord
        TRANSLATE("Option 1"),
        TRANSLATE("Option 2"),
    }, function(index)
        local MouseSupport = menu.get_value(menu.ref_by_path("Stand>Settings>Input>Mouse Support>Mouse Support"))
        menu.ref_by_path("Game>Disables>Disable Game Inputs>Presets>Numpad"):trigger()
        menu.ref_by_path("Stand>Settings>Input>Mouse Support>Mouse Support").value = false
        util.yield(250)

        local Difficulty = GET_INT_GLOBAL(4718592 + 3525)
        local HeistID = STAT_GET_STRING("HEIST_MISSION_RCONT_ID_1")
        local HeistData = {
            ["hK5OgJk1BkinXGGXghhTMg"] = {{-29712, 14906}, {-14806, 7453}, {-11824, 5962}}, -- Fleeca Job
            ["7-w96-PU4kSevhtG5YwUHQ"] = {{-17040, 4285, 4285, 4285}, {-8468, 2142, 2142, 2142}, {-6756, 1714, 1714, 1714}}, -- Prison Break
            ["BWsCWtmnvEWXBrprK9hDHA"] = {{-12596, 3174, 3174, 3174}, {-6248, 1587, 1587, 1587}, {-4976, 1269, 1269, 1269}}, -- Humane Labs Raid
            ["20Lu41Px20OJMPdZ6wXG3g"] = {{-16872, 4243, 4243, 4243}, {-8384, 2121, 2121, 2121}, {-6688, 1697, 1697, 1697}}, -- Series A Funding
            ["zCxFg29teE2ReKGnr0L4Bg"] = {{-7900, 2000, 2000, 2000}, {-3900, 1000, 1000, 1000}, {-3100, 800, 800, 800}} -- Pacific Standard Job
        }

        local SetCuts = HeistData[HeistID]
        if SetCuts then
            local PlayerCut = SetCuts[Difficulty + 1]
            if PlayerCut then
                for i = 1, 4 do
                    SET_INT_GLOBAL(1928958 + 1 + i, PlayerCut[i] or 0)
                end
            end
        end

        PAD.SET_CURSOR_POSITION(0.775, 0.175) -- Moves Cursor
        PAD.SET_CONTROL_VALUE_NEXT_FRAME(0, 237, 1) -- Presses Left Mouse Button
        PAD.SET_CONTROL_VALUE_NEXT_FRAME(2, 202, 1) -- Presses ESC
        util.yield(500)

        if index == 1 then
            SET_INT_GLOBAL(1930926 + 3008 + 1, GET_INT_GLOBAL(1928958 + 1 + 2))
        elseif index == 2 then
            SET_INT_GLOBAL(1930926 + 3008 + 1, 0)
        end
        PAD.SET_CURSOR_POSITION(0.5, 0.5)

        if MouseSupport then
            menu.ref_by_path("Game>Disables>Disable Game Inputs>Presets>Mouse"):trigger()
            menu.ref_by_path("Stand>Settings>Input>Mouse Support>Mouse Support").value = true
        end
    end)

---

menu.toggle_loop(CLASSIC_HEISTS, TRANSLATE("Remove The Cooldown"), {}, TRANSLATE("This doesn't bypass server-sided cooldown time, 20 mins. This just bypasses unable to launch heist in heist board."), function()
    SET_INT_GLOBAL(1877285 + 1 + (PLAYER.PLAYER_ID() * 77) + 76, -1) -- Thanks to @vithiam on Discord
end)

menu.toggle_loop(CLASSIC_HEISTS, TRANSLATE("Skip The Hacking Process"), {}, "(" .. TRANSLATE("Fleeca Heist") .. " & " .. TRANSLATE("Pacific Standard Heist") .. ")", function()
    SET_INT_LOCAL("fm_mission_controller", 11778 + 24, 7) -- Fleeca Heist, https://www.unknowncheats.me/forum/3455828-post8.html
    SET_LOCAL_BIT("fm_mission_controller", 9775, 9) -- Pacific Standard Heist, https://www.unknowncheats.me/forum/3694259-post117.html
end)

menu.toggle_loop(CLASSIC_HEISTS, TRANSLATE("Skip Drilling"), {}, "(" .. TRANSLATE("Fleeca Heist") .. ")", function()
    SET_FLOAT_LOCAL("fm_mission_controller", 10069 + 11, 100) -- https://www.unknowncheats.me/forum/3485435-post19.html
end)

menu.toggle_loop(CLASSIC_HEISTS, TRANSLATE("Force Challenges Bonus"), {}, TRANSLATE("Allows you to gain an additional 12 millions for completing the Pacific Standard Job finale on hard difficulty. Note that it will only affect you, even if you are not the host. Enable before starting the heist and keep it enabled until it ends."), function() -- Big thanks to @negotium.rpm on Discord
    -- Force All In Order
    STAT_SET_INT("MPPLY_HEISTFLOWORDERPROGRESS", 134217727)
    STAT_SET_BOOL("MPPLY_AWD_HST_ORDER", false)
    -- Force Loyalty
    STAT_SET_INT("MPPLY_HEISTTEAMPROGRESSBITSET", 134217727)
    STAT_SET_BOOL("MPPLY_AWD_HST_SAME_TEAM", false)
    -- Force Criminal Mastermind
    STAT_SET_INT("MPPLY_HEISTNODEATHPROGREITSET", 134217727)
    STAT_SET_BOOL("MPPLY_AWD_HST_ULT_CHAL", false)
end, function()
    -- Complete All In Order
    STAT_SET_INT("MPPLY_HEISTFLOWORDERPROGRESS", 268435455)
    STAT_SET_BOOL("MPPLY_AWD_HST_ORDER", true)
    -- Complete Loyalty
    STAT_SET_INT("MPPLY_HEISTTEAMPROGRESSBITSET", 268435455)
    STAT_SET_BOOL("MPPLY_AWD_HST_SAME_TEAM", true)
    -- Complete Criminal Mastermind
    STAT_SET_INT("MPPLY_HEISTNODEATHPROGREITSET", 268435455)
    STAT_SET_BOOL("MPPLY_AWD_HST_ULT_CHAL", true)
end)

FleecaBypassMinMaxTunables = {
    memory.tunable_offset("MAX_HEIST_CUT_AMOUNT"),
    memory.tunable_offset("MEMBER_MIN_HEIST_FINALE_TAKE_PERCENTAGE"),
    memory.tunable_offset("LEADER_MIN_HEIST_FINALE_TAKE_PERCENTAGE"),
}
menu.toggle_loop(CLASSIC_HEISTS, TRANSLATE("Bypass Minimum And Maximum Percentage"), {}, TRANSLATE("Only works if you are host of the heist.") .. "\n\n" .. TRANSLATE("It allows you set 0 ~ 100(%) by modifying the heist board, ignores all of restrictions modifying cuts."), function()
    SET_INT_GLOBAL(262145 + FleecaBypassMinMaxTunables[1], 100) -- https://www.unknowncheats.me/forum/3664875-post95.html
    SET_INT_GLOBAL(262145 + FleecaBypassMinMaxTunables[2], 0)
    SET_INT_GLOBAL(262145 + FleecaBypassMinMaxTunables[3], 0)
end, function()
    SET_INT_GLOBAL(262145 + FleecaBypassMinMaxTunables[1], 70)
    SET_INT_GLOBAL(262145 + FleecaBypassMinMaxTunables[2], 15)
    SET_INT_GLOBAL(262145 + FleecaBypassMinMaxTunables[3], 15)
end)

menu.textslider_stateful(CLASSIC_HEISTS, TRANSLATE("Complete All Setups"), {}, TRANSLATE("Allows you to complete all setups for the selected heist. Note that you have to be in your apartment for the feature to work properly. After using, you will automatically be returned to Story Mode to apply the changes."), {
    TRANSLATE("Fleeca Job"), 
    TRANSLATE("Prison Break"), 
    TRANSLATE("Humane Labs Raid"), 
    TRANSLATE("Series A Funding"), 
    TRANSLATE("Pacific Standard Job"),
}, function(index)
    local ApartmentID = GET_INT_GLOBAL(1845281 + 1 + (players.user() * 883) + 268 + 35) -- Information > Status > Apartment ID
    if ApartmentID == -1 or ApartmentID >= 24 and ApartmentID <= 33 or ApartmentID >= 44 and ApartmentID <= 60 then
        NOTIFY(TRANSLATE("It seems that you are currently not in any apartment."))
    elseif ApartmentID >= 8 and ApartmentID <= 23 or ApartmentID >= 66 and ApartmentID <= 72 then
        NOTIFY(TRANSLATE("The heist planning board couldn't be found in this apartment. Make sure you are in one of the high-end apartments."))
    else
        menu.trigger_commands("hcclassicunlockall")
        util.yield(100)

        local DepthLV = {{-1, 0, 1}, {-1, 0, 0, 0, 1}, {-1, 0, 0, 1, 2, 2}, {-1, 0, 0, 0, 1, 2}, {-1, 0, 1, 2, 2, 2}}
        local ProgressHash = {-836352461, 137052480, 496643418, 1585746186, 911181645}
        local RewardCosmetic = {25, 22, 23, 24, 21}
        local RcontID = {
            {-1072870761, "hK5OgJk1BkinXGGXghhTMg", "V7yEdnL6TEyU3i-U1Rv_pQ"}, -- Fleeca Job
            {979654579, "7-w96-PU4kSevhtG5YwUHQ", "oSXhVwaHH0KDOzg0rfIj3Q", "QS6WYcjJFk2YxqYDMN8mjQ", "JJ9OzPbPo02eQbaniO8E3g"}, -- Prison Break
            {-1096986654, "BWsCWtmnvEWXBrprK9hDHA", "6k6LOpnf2E-GG38OhjS-TA", "nSWwSwAf3EaHZWsk449lBg", "ciWN4gwmakid4lW-nSllcA", "v-8OOQYzxE-Zvqj5xO03DQ"}, -- Humane Labs Raid
            {164435858, "20Lu41Px20OJMPdZ6wXG3g", "6UzZkstFeEeCkvs2lrF_6A", "PPnsIR0v2U2COyRbED87gw", "z49DSS9db0i_vh6A2e-Q-g", "Fo168mMjCUCeN_IKmL4VnA"}, -- Series A Funding
            {-231973569, "zCxFg29teE2ReKGnr0L4Bg", "6ClY8ZA_DkuBUdZ_fPn6Rw", "OiSO3Z0YdkCaEqVHhhkj4Q", "Cy2OZSwCt0-mSXY00o4SNw", "Y4zpRQDfvkawfFDR1Uxi2A"} -- Pacific Standard Job
        }

        STAT_SET_INT("HEIST_PLANNING_STAGE", -1)
        STAT_SET_INT("BITSET_HEIST_VS_MISSIONS", -17809409)
        STAT_SET_INT("HEIST_SESSION_ID_MACADDR", 183381814)
        STAT_SET_INT("HEIST_LEADER_APART_ID", ApartmentID)
        STAT_SET_INT("MPPLY_HEIST_PROGRESS_HASH", ProgressHash[index])
        STAT_SET_INT("HEIST_TOTAL_REWARD_COSMETIC", RewardCosmetic[index])

        for i = 0, 7 do
            if i == 0 then
                STAT_SET_INT("HEIST_MISSION_RCONT_ID_" .. i, RcontID[index][i + 1])
            else
                STAT_SET_STRING("HEIST_MISSION_RCONT_ID_" .. i, RcontID[index][i + 1] or "")
            end
            STAT_SET_INT("HEIST_MISSION_DEPTH_LV_" .. i, DepthLV[index][i + 1] or -1)
        end

        FORCE_CLOUD_SAVE()
        menu.trigger_commands("quittosp")
    end
end)

menu.action(CLASSIC_HEISTS, TRANSLATE("Allow You Play Alone"), {}, TRANSLATE("Allow you play alone this heist without another player.") .. "\n\n" .. TRANSLATE("Press this feature once before launching the heist."), function()
    if GET_INT_LOCAL("fmmc_launcher", 19709 + 34) ~= nil then -- https://www.unknowncheats.me/forum/grand-theft-auto-v/463868-modest-menu-lua-scripting-megathread-239.html#google_vignette
        if GET_INT_LOCAL("fmmc_launcher", 19709 + 34) ~= 0 then
            if GET_INT_LOCAL("fmmc_launcher", 19709 + 15) > 1 then
                SET_INT_LOCAL("fmmc_launcher", 19709 + 15, 1)
                SET_INT_GLOBAL(794744 + 4 + 1 + (GET_INT_LOCAL("fmmc_launcher", 19709 + 34) * 89) + 69, 1)
            end
            
            SET_INT_GLOBAL(4718592 + 3526, 1)
            SET_INT_GLOBAL(4718592 + 3527, 1)
            SET_INT_GLOBAL(4718592 + 3529 + 1, 1)
            SET_INT_GLOBAL(4718592 + 178821 + 1, 0)
        end
    end
end)

menu.action(CLASSIC_HEISTS, TRANSLATE("Force Ready"), {"hcclassicforceready"}, TRANSLATE("Make all of players forced ready in planning board."), function()
    SET_INT_GLOBAL(2657971 + 1 + (1 * 465) + 267, 6) -- Thanks to @vithiam on Discord
    SET_INT_GLOBAL(2657971 + 1 + (2 * 465) + 267, 6)
    SET_INT_GLOBAL(2657971 + 1 + (3 * 465) + 267, 6)
end)

menu.action(CLASSIC_HEISTS, TRANSLATE("Increase Team Lives"), {"hcclassicincteamlives"}, TRANSLATE("Increases the amount of team lives. Make sure to have script host if it doesn't seem to work."), function()
    menu.trigger_commands("scripthost")
    SET_INT_LOCAL("fm_mission_controller", 19746 + 1765 + 1, 10000000) -- Thanks to @vithiam on Discord
end)

menu.action(CLASSIC_HEISTS, TRANSLATE("Unlock All Classic Heists"), {"hcclassicunlockall"}, TRANSLATE("Unlocks all heists on the planning board. Also marks all tutorials as completed and allows you to skip cutscenes. After using, you will automatically be returned to Story Mode to apply the changes."), function() -- Big thanks to @negotium.rpm on Discord
    local SavedStrand = {{-1072870761, 1, 1}, {979654579, 1, 1}, {-1096986654, 1, 1}, {164435858, 1, 1}, {-231973569, 1, 1}}
    for i = 0, 4 do
        STAT_SET_INT("HEIST_SAVED_STRAND_" .. i, SavedStrand[i + 1][1])
        STAT_SET_INT("HEIST_SAVED_STRAND_" .. i .. "_L", SavedStrand[i + 1][2])
        STAT_SET_INT("HEIST_SAVED_STRAND_" .. i .. "_M", SavedStrand[i + 1][3])
    end

    STAT_SET_INT("BITSET_HEIST_VS_MISSIONS", -1)
    STAT_SET_INT("MPPLY_HEIST_RESET_PROFILE", 1)
    STAT_SET_INT("MPPLY_UNIQUE_HEIST_FINALE", 5)
    STAT_SET_INT("MPPLY_AVAILABLE_HEIST_FINALE", 5)

    -- Tutorials & Cutscenes
    STAT_SET_INT("CUTSCENE_MID_PRISON", 1)
    STAT_SET_INT("CUTSCENE_MID_HUMANE", 1)
    STAT_SET_INT("CUTSCENE_MID_NARC", 1)
    STAT_SET_INT("CUTSCENE_MID_ORNATE", 1)
    STAT_SET_INT("CUTSCENE_MID_TUT", 1)
    STAT_SET_BOOL("HEIST_PLANNING_DONE_PRINT", true)
    STAT_SET_BOOL("HEIST_PLANNING_DONE_HELP_0", true)
    STAT_SET_BOOL("HEIST_PLANNING_DONE_HELP_1", true)
    STAT_SET_BOOL("HEIST_PRE_PLAN_DONE_HELP_0", true)
    STAT_SET_BOOL("HEIST_CUTS_DONE_FINALE", true)
    STAT_SET_BOOL("HEIST_IS_TUTORIAL", false)
    STAT_SET_BOOL("HEIST_CUTS_DONE_ORNATE", true)
    STAT_SET_BOOL("HEIST_CUTS_DONE_BIOLAB", true)
    STAT_SET_BOOL("HEIST_CUTS_DONE_PRISON", true)
    STAT_SET_BOOL("HEIST_CUTS_DONE_NARCOTIC", true)
    STAT_SET_BOOL("HEIST_CUTS_DONE_TUTORIAL", true)
    STAT_SET_BOOL("HEIST_AWARD_DONE_PREP", true)
    STAT_SET_BOOL("HEIST_AWARD_BOUGHT_IN", true)
    STAT_SET_BOOL("HEIST_STRAND_INTRO_DONE", true)
    STAT_SET_BOOL("MPPLY_JOBFLOW_HEIST_TEXT", true)

    util.yield(50)
    if STAT_GET_INT("BITSET_HEIST_VS_MISSIONS") == -1 then -- Because this feature is used in 'Complete All Setups'
        FORCE_CLOUD_SAVE()
        menu.trigger_commands("quittosp")
    end
end)

---


--- Robberies

LS_ROBBERY = menu.list(ROBBERYS, TRANSLATE("The Los Santos Tuners Robbery"), {}, "", function(); end)

    menu.list_action(LS_ROBBERY, TRANSLATE("The Los Santos Tuners Robbery"), {"hcls"}, "", {
        { 1, TRANSLATE("Union Depository"), {"uniondepository"}, "" },
        { 2, TRANSLATE("The Superdollar Deal"), {"superdollardeal"}, "" },
        { 3, TRANSLATE("The Bank Contract"), {"bankcontract"}, "" },
        { 4, TRANSLATE("The ECU Job"), {"ecujob"}, "" },
        { 5, TRANSLATE("The Prison Contract"), {"prisoncontract"}, "" },
        { 6, TRANSLATE("The Agency Deal"), {"agencydeal"}, "" },
        { 7, TRANSLATE("The Lost Contract"), {"lostcontract"}, "" },
        { 8, TRANSLATE("The Data Contract"), {"datacontract"}, "" },
    }, function(index)
        if index ~= 2 then
            STAT_SET_INT("TUNER_GEN_BS", 12543)
        else
            STAT_SET_INT("TUNER_GEN_BS", 4351)
        end
        
        STAT_SET_INT("TUNER_CURRENT", index - 1)
    end)

    LSRob1MTunables = {
        memory.tunable_offset("TUNER_ROBBERY_GOON_CASH_REWARD"),
        memory.tunable_offset("TUNER_ROBBERY_LEADER_CASH_REWARD0"),
        memory.tunable_offset("TUNER_ROBBERY_LEADER_CASH_REWARD1"),
        memory.tunable_offset("TUNER_ROBBERY_LEADER_CASH_REWARD2"),
        memory.tunable_offset("TUNER_ROBBERY_LEADER_CASH_REWARD3"),
        memory.tunable_offset("TUNER_ROBBERY_LEADER_CASH_REWARD4"),
        memory.tunable_offset("TUNER_ROBBERY_LEADER_CASH_REWARD5"),
        memory.tunable_offset("TUNER_ROBBERY_LEADER_CASH_REWARD6"),
        memory.tunable_offset("TUNER_ROBBERY_LEADER_CASH_REWARD7"),
        memory.tunable_offset("TUNER_ROBBERY_CONTACT_FEE"),
    }
    menu.toggle_loop(LS_ROBBERY, TRANSLATE("Modify Contracts payout - $1 Million"), {"hcls1m"}, TRANSLATE("(Local)") .. "\n\n" .. TRANSLATE("Always keep this option enabled before starting a contract"), function()
        SET_INT_GLOBAL(262145 + LSRob1MTunables[1], 1000000) -- TUNER_ROBBERY_GOON_CASH_REWARD
        SET_INT_GLOBAL(262145 + LSRob1MTunables[2] + 0, 1000000) -- TUNER_ROBBERY_LEADER_CASH_REWARD0
        SET_INT_GLOBAL(262145 + LSRob1MTunables[3] + 1, 1000000) -- TUNER_ROBBERY_LEADER_CASH_REWARD1
        SET_INT_GLOBAL(262145 + LSRob1MTunables[4] + 2, 1000000) -- TUNER_ROBBERY_LEADER_CASH_REWARD2
        SET_INT_GLOBAL(262145 + LSRob1MTunables[5] + 3, 1000000) -- TUNER_ROBBERY_LEADER_CASH_REWARD3
        SET_INT_GLOBAL(262145 + LSRob1MTunables[6] + 4, 1000000) -- TUNER_ROBBERY_LEADER_CASH_REWARD4
        SET_INT_GLOBAL(262145 + LSRob1MTunables[7] + 5, 1000000) -- TUNER_ROBBERY_LEADER_CASH_REWARD5
        SET_INT_GLOBAL(262145 + LSRob1MTunables[8] + 6, 1000000) -- TUNER_ROBBERY_LEADER_CASH_REWARD6
        SET_INT_GLOBAL(262145 + LSRob1MTunables[9] + 7, 1000000) -- TUNER_ROBBERY_LEADER_CASH_REWARD7
        SET_FLOAT_GLOBAL(262145 + LSRob1MTunables[10], 0) -- TUNER_ROBBERY_CONTACT_FEE
    end, function()
        SET_INT_GLOBAL(262145 + LSRob1MTunables[1], 50000)
        SET_INT_GLOBAL(262145 + LSRob1MTunables[2] + 0, 300000)
        SET_INT_GLOBAL(262145 + LSRob1MTunables[3] + 1, 185000)
        SET_INT_GLOBAL(262145 + LSRob1MTunables[4] + 2, 178000)
        SET_INT_GLOBAL(262145 + LSRob1MTunables[5] + 3, 172000)
        SET_INT_GLOBAL(262145 + LSRob1MTunables[6] + 4, 175000)
        SET_INT_GLOBAL(262145 + LSRob1MTunables[7] + 5, 182000)
        SET_INT_GLOBAL(262145 + LSRob1MTunables[8] + 6, 180000)
        SET_INT_GLOBAL(262145 + LSRob1MTunables[9] + 7, 170000)
        SET_FLOAT_GLOBAL(262145 + LSRob1MTunables[10], 0.1)
    end)

    menu.action(LS_ROBBERY, TRANSLATE("Complete The Preps"), {"hclscomplete"}, "", function()
        STAT_SET_INT("TUNER_GEN_BS", -1)
    end)
    menu.action(LS_ROBBERY, TRANSLATE("Reset The Preps"), {"hclsresetmisson"}, "", function()
        STAT_SET_INT("TUNER_GEN_BS", 12467)
    end)
    menu.action(LS_ROBBERY, TRANSLATE("Reset The Contracts"), {"hclsresetcontract"}, "", function()
        STAT_SET_INT("TUNER_GEN_BS", 8371)
        STAT_SET_INT("TUNER_CURRENT", -1)
    end)
    menu.action(LS_ROBBERY, TRANSLATE("Reset Total Gains And Completed Contracts"), {"hclsresetgain"}, "", function()
        STAT_SET_INT("TUNER_COUNT", 0)
        STAT_SET_INT("TUNER_EARNINGS", 0)
    end)

---

TH_CONTRACT = menu.list(ROBBERYS, TRANSLATE("The Contract Robbery"), {}, "", function(); end)

    CONTRACT_VIP = menu.list(TH_CONTRACT, TRANSLATE("The Contract Robbery"), {"hccontract"}, "", function(); end)

        menu.list_action(CONTRACT_VIP, TRANSLATE("NightLife Leak"), {"hccontractnightlife"}, "", {
            { 1, TRANSLATE("The Nightclub"), {"thenightclub"}, "" },
            { 2, TRANSLATE("The Marina"), {"themarina"}, "" },
            { 3, TRANSLATE("NightLife Leak"), {"nightlifeleak"}, "" },
        }, function(index)
            if index ~= 3 then
                STAT_SET_INT("FIXER_STORY_BS", index + 2)
            else
                STAT_SET_INT("FIXER_STORY_BS", 12)
            end

            STAT_SET_INT("FIXER_GENERAL_BS", -1)
            STAT_SET_INT("FIXER_COMPLETED_BS", -1)
            STAT_SET_INT("FIXER_STORY_COOLDOWN", -1)
        end)

        menu.list_action(CONTRACT_VIP, TRANSLATE("High Society Leak"), {"hccontractsociety"}, "", {
            { 1, TRANSLATE("The Country Club"), {"thecountryclub"}, "" },
            { 2, TRANSLATE("Guest List"), {"guestlist"}, "" },
            { 3, TRANSLATE("High Society"), {"highsociety"}, "" },
        }, function(index)
            if index == 1 then
                STAT_SET_INT("FIXER_STORY_BS", 28)
            elseif index == 2 then
                STAT_SET_INT("FIXER_STORY_BS", 60)
            elseif index == 3 then
                STAT_SET_INT("FIXER_STORY_BS", 124)
            end

            STAT_SET_INT("FIXER_GENERAL_BS", -1)
            STAT_SET_INT("FIXER_COMPLETED_BS", -1)
            STAT_SET_INT("FIXER_STORY_STRAND", -1)
            STAT_SET_INT("FIXER_STORY_COOLDOWN", -1)
        end)

        menu.list_action(CONTRACT_VIP, TRANSLATE("South Central Leak"), {"hccontractcentral"}, "", {
            { 1, TRANSLATE("Davis"), {"davis"}, "" },
            { 2, TRANSLATE("The Ballas"), {"theballas"}, "" },
            { 3, TRANSLATE("Agency Studio"), {"agencystudio"}, "" },
            { 4, TRANSLATE("Don't Fuck with Dre"), {"dontfuckwithdre"}, "" },
        }, function(index)
            if index == 1 then
                STAT_SET_INT("FIXER_STORY_BS", 252)
            elseif index == 2 then
                STAT_SET_INT("FIXER_STORY_BS", 508)
            elseif index == 3 then
                STAT_SET_INT("FIXER_STORY_BS", 2044)
            elseif index == 4 then
                STAT_SET_INT("FIXER_STORY_BS", 4092)
            end

            STAT_SET_INT("FIXER_GENERAL_BS", -1)
            STAT_SET_INT("FIXER_COMPLETED_BS", -1)
            STAT_SET_INT("FIXER_STORY_STRAND", -1)
            STAT_SET_INT("FIXER_STORY_COOLDOWN", -1)
        end)

        menu.list_action(CONTRACT_VIP, TRANSLATE("Record A Studios"), {"hccontractrecord"}, "", {
            { 1, TRANSLATE("Seed Capital"), {"seedcapital"}, "" },
            { 2, TRANSLATE("Fire It Up"), {"fireitup"}, "" },
            { 3, TRANSLATE("OG Kush"), {"ogkush"}, "" },
        }, function(index)
            STAT_SET_INT("FIXER_SHORT_TRIPS", index)
            STAT_SET_INT("FIXER_GENERAL_BS", -259160457)
        end)

    ---

    TH2MTunables = {
        memory.tunable_offset("FIXER_FINALE_LEADER_CASH_REWARD")
    }
    menu.toggle_loop(TH_CONTRACT, TRANSLATE("Modify Finale's Payout (2 Million)"), {"hccontract2m"}, TRANSLATE("(Local)"), function()
        SET_INT_GLOBAL(262145 + TH2MTunables[1], 2000000)
    end, function()
        SET_INT_GLOBAL(262145 + TH2MTunables[1], 1000000)
    end)

    THContractRemCooldownTunables= {
        memory.tunable_offset("FIXER_SECURITY_CONTRACT_COOLDOWN_TIME"),
        memory.tunable_offset(-2036534141),
    }
    menu.toggle_loop(TH_CONTRACT, TRANSLATE("Remove Contracts & Payphone Hits Cooldown"), {"hccontractremcool"}, TRANSLATE("Make sure it's enabled before starting any contracts or hits."), function() -- Credit goes to @dachaos9262 on Discord
        SET_INT_GLOBAL(262145 + THContractRemCooldownTunables[1], 0) 
        SET_INT_GLOBAL(262145 + THContractRemCooldownTunables[2], 0)
    end, function()
        SET_INT_GLOBAL(262145 + THContractRemCooldownTunables[1], 300000)
        SET_INT_GLOBAL(262145 + THContractRemCooldownTunables[2], 500)
    end)

    THSecurityRemCooldownTunables = {
        memory.tunable_offset(1872071131),
    }
    menu.toggle_loop(TH_CONTRACT, TRANSLATE("Remove Security Mission Cooldown"), {"hccontractremsecuritycool"}, "", function()
        SET_INT_GLOBAL(262145 + THSecurityRemCooldownTunables[1], 0)
    end, function()
        SET_INT_GLOBAL(262145 + THSecurityRemCooldownTunables[1], 1200000)
    end)

    menu.action(TH_CONTRACT, TRANSLATE("Complete All Missions"), {}, "", function()
        STAT_SET_INT("FIXER_GENERAL_BS", -1)
        STAT_SET_INT("FIXER_COMPLETED_BS", -1)
        STAT_SET_INT("FIXER_STORY_BS", -1)
        STAT_SET_INT("FIXER_STORY_COOLDOWN", -1)
    end)

---

CHOP_SHOP_ROB = menu.list(ROBBERYS, TRANSLATE("The Chop Shop Robbery"), {}, "", function(); end)

    menu.list_action(CHOP_SHOP_ROB, TRANSLATE("The Chop Shop Robbery"), {"hcchopshop"}, "", {
        { 1, TRANSLATE("The Cargo Ship Robbery"), {"cargoship"}, "" },
        { 2, TRANSLATE("The Gangbanger Robbery"), {"gangbanger"}, "" },
        { 3, TRANSLATE("The Duggan Robbery"), {"duggan"}, "" },
        { 4, TRANSLATE("The Podium Robbery"), {"podium"}, "" },
        { 5, TRANSLATE("The McTony Robbery"), {"mctony"}, "" },
    }, function(index)
        STAT_SET_INT("SALV23_VEH_ROB", index - 1)
        STAT_SET_INT("MOST_TIME_ON_3_PLUS_STARS ", 300000)
        STAT_SET_INT("SALV23_PLAN_DIALOGUE", 4131109)
        STAT_SET_INT("SALV23_FM_PROG", 126)
        STAT_SET_INT("SALV23_GEN_BS", -10241)
        STAT_SET_INT("SALV23_DISRUPT", 3)
        STAT_SET_INT("SALV23_VEH_MODS", 0)
        STAT_SET_INT("SALV23_SCOPE_BS", -1)
        STAT_SET_BOOL("SALV23_CAN_KEEP", true)
    end)

    menu.toggle_loop(CHOP_SHOP_ROB, TRANSLATE("Skip The Hacking Process"), {}, TRANSLATE("Works On Both: Beam Puzzle & Brute Force"), function()
        SET_INT_LOCAL("fm_content_vehrob_casino_prize", 1045 + 135, 3) -- Beam Puzzle Hack
        SET_INT_LOCAL("fm_content_vehrob_police", 7511, 536871425) -- Brute Force
    end)
    
---

---


--- Missions

menu.list_action(MISSONS, TRANSLATE("Lowrider"), {"hclowrider"}, "", {
    { 1, TRANSLATE("Community Outreach"), {"communityoutreach"}, "" },
    { 2, TRANSLATE("Slow and Low"), {"slowandlow"}, "" },
    { 3, TRANSLATE("It's a G thing"), {"itsagthing"}, "" },
    { 4, TRANSLATE("Funeral Party"), {"funeralparty"}, "" },
    { 5, TRANSLATE("Lowrider Envy"), {"lowriderenvy"}, "" },
    { 6, TRANSLATE("Point and Shoot"), {"pointandshoot"}, "" },
    { 7, TRANSLATE("Desperate Times Call For..."), {"desperatetimescallfor"}, "" },
    { 8, TRANSLATE("Peace Offerings"), {"peaceofferings"}, "" },
}, function(index)
    STAT_SET_INT("LOW_FLOW_CURRENT_PROG", index)
    STAT_SET_INT("LOW_FLOW_CURRENT_CALL", index)
    STAT_SET_INT("LOWRIDER_FLOW_COMPLETE", 0)
end)

menu.list_action(MISSONS, TRANSLATE("Casino Story"), {"hclowrider"}, "", {
    { 1, TRANSLATE("Loose Cheng"), {"loosecheng"}, "" },
    { 2, TRANSLATE("House Keeping"), {"housekeeping"}, "" },
    { 3, TRANSLATE("Strong Arm Tactics"), {"strongarmtactics"}, "" },
    { 4, TRANSLATE("Play to Win"), {"playtowin"}, "" },
    { 5, TRANSLATE("Bad Beat"), {"badbeat"}, "" },
    { 6, TRANSLATE("Cashing Out"), {"cashingout"}, "" },
}, function(index)
    STAT_SET_INT("VCM_STORY_PROGRESS", index - 1)
    STAT_SET_INT("VCM_FLOW_PROGRESS", 1311695)
end)

menu.list_action(MISSONS, TRANSLATE("A Superyacht Life"), {"hcyacht"}, "", {
    { 1, TRANSLATE("Overboard"), {"overboard"}, "" },
    { 2, TRANSLATE("Salvage"), {"salvage"}, "" },
    { 3, TRANSLATE("All Hands"), {"allhands"}, "" },
    { 4, TRANSLATE("Icebreaker"), {"icebreaker"}, "" },
    { 5, TRANSLATE("Bon Voyage"), {"bonvoyage"}, "" },
    { 6, TRANSLATE("D-Day"), {"dday"}, "" },
}, function(index)
    STAT_SET_INT("YACHT_MISSION_PROG", index - 1)
    STAT_SET_INT("YACHT_MISSION_FLOW", 21845)
end)

OPT_MISSIONS = menu.list(MISSONS, TRANSLATE("Operation Paper Trail"), {}, "", function(); end)

    menu.list_action(OPT_MISSIONS, TRANSLATE("Operation Paper Trail"), {"hcopt"}, "", {
        { 1, TRANSLATE("Intelligence"), {"intelligence"}, "" },
        { 2, TRANSLATE("Counterintelligence"), {"counterintelligence"}, "" },
        { 3, TRANSLATE("Extraction"), {"extraction"}, "" },
        { 4, TRANSLATE("Asset Seizure"), {"assetseizure"}, "" },
        { 5, TRANSLATE("Operation Paper Trail"), {"operationpapertrail"}, "" },
        { 6, TRANSLATE("Cleanup"), {"cleanup"}, "" },
    }, function(index)
        STAT_SET_INT("ULP_MISSION_CURRENT", index - 1)
        STAT_SET_INT("ULP_MISSION_PROGRESS", 127)
    end)

    menu.toggle_loop(OPT_MISSIONS, TRANSLATE("Skip The Hacking Process"), {}, "(" .. TRANSLATE("Operation Paper Trail") .. " - " .. TRANSLATE("Counterintelligence") .. ")", function() -- Thanks for coding this, @pedro9558 on Discord
        SET_INT_LOCAL("fm_mission_controller_2020", 980 + 135, 3)
    end)

    menu.action(OPT_MISSIONS, TRANSLATE("Teleport To IAA Headquarters"), {}, "", function()
        local Blip = HUD.GET_FIRST_BLIP_INFO_ID(838) -- ULP Blip, https://wiki.rage.mp/index.php?title=Blips
        if Blip ~= 0 then
            local Pos = HUD.GET_BLIP_COORDS(Blip)
            TELEPORT(Pos.x, Pos.y, Pos.z)
        else
            NOTIFY(TRANSLATE("Please make sure you can play Operation Paper Trail now!"))
        end
    end)

---

menu.list_action(MISSONS, TRANSLATE("Los Santos Drug Wars"), {"hclsdrugwars"}, "", {
    { 1, TRANSLATE("Welcome to the Troupe"), {"welcometothetroupe"}, TRANSLATE("(First Dose)") },
    { 2, TRANSLATE("Designated Driver"), {"designateddriver"}, TRANSLATE("(First Dose)") },
    { 3, TRANSLATE("Fatal Incursion"), {"fatalincursion"}, TRANSLATE("(First Dose)") },
    { 4, TRANSLATE("Uncontrolled Substance"), {"uncontrolledsubstance"}, TRANSLATE("(First Dose)") },
    { 5, TRANSLATE("Make War not Love"), {"makewarnotlove"}, TRANSLATE("(First Dose)") },
    { 6, TRANSLATE("Off the Rails"), {"offtherails"}, TRANSLATE("(First Dose)") },
    { 7, TRANSLATE("This is an Intervention"), {"thisisanintervention"}, TRANSLATE("(Last Dose)") },
    { 8, TRANSLATE("Unusual Suspects"), {"unusualsuspects"}, TRANSLATE("(Last Dose)") },
    { 9, TRANSLATE("FriedMind"), {"friedmind"}, TRANSLATE("(Last Dose)") },
    { 10, TRANSLATE("Checking In"), {"checkingin"}, TRANSLATE("(Last Dose)") },
    { 11, TRANSLATE("BDKD"), {"bdkd"}, TRANSLATE("(Last Dose)") },
}, function(index)
    STAT_SET_INT("XM22_CURRENT", index - 1)

    if index == 1 then
        STAT_SET_INT("XM22_MISSIONS", 0)
    elseif index == 2 then
        STAT_SET_INT("XM22_MISSIONS", 2)
    elseif index == 3 then
        STAT_SET_INT("XM22_MISSIONS", 3)
    elseif index == 4 then
        STAT_SET_INT("XM22_MISSIONS", 7)
    elseif index == 5 then
        STAT_SET_INT("XM22_MISSIONS", 15)
    elseif index == 6 then
        STAT_SET_INT("XM22_MISSIONS", 31)
    elseif index == 7 then
        STAT_SET_INT("XM22_MISSIONS", 4194367)
    elseif index == 8 then
        STAT_SET_INT("XM22_MISSIONS", 4194431)
    elseif index == 9 then
        STAT_SET_INT("XM22_MISSIONS", 4194559)
    elseif index == 10 then
        STAT_SET_INT("XM22_MISSIONS", 4194815)
    elseif index == 11 then
        STAT_SET_INT("XM22_MISSIONS", 4195327)
    end
end)

menu.list_action(MISSONS, TRANSLATE("San Andreas Mercenaries"), {"hcsam"}, "", {
    { 1, TRANSLATE("Reporting for Duty"), {"reportingforduty"}, "" },
    { 2, TRANSLATE("Falling In"), {"fallingin"}, "" },
    { 3, TRANSLATE("On Parade"), {"onparade"}, "" },
    { 4, TRANSLATE("Breaking Ranks"), {"breakingranks"}, "" },
    { 5, TRANSLATE("Unconventional Warfare"), {"unconventionalwarfare"}, "" },
    { 6, TRANSLATE("Shock & Awe"), {"shockawe"}, "" },
    { 7, TRANSLATE("Unlock All Missions"), {"unlockall"}, "" },
}, function(index)
    if index ~= 7 then
        STAT_SET_INT("SUM23_AVOP_CURRENT", index - 1)
    else
        STAT_SET_INT("SUM23_AVOP_CURRENT", 0)
    end

    if index == 1 then
        STAT_SET_INT("SUM23_AVOP_PROGRESS", 0)
    elseif index == 2 then
        STAT_SET_INT("SUM23_AVOP_PROGRESS", 1)
    elseif index == 3 then
        STAT_SET_INT("SUM23_AVOP_PROGRESS", 3)
    elseif index == 4 then
        STAT_SET_INT("SUM23_AVOP_PROGRESS", 7)
    elseif index == 5 then
        STAT_SET_INT("SUM23_AVOP_PROGRESS", 15)
    elseif index == 6 then
        STAT_SET_INT("SUM23_AVOP_PROGRESS", 31)
    elseif index == 7 then
        STAT_SET_INT("SUM23_AVOP_PROGRESS", 20543)
    end
end)

menu.list_action(MISSONS, TRANSLATE("The Cluckin' Bell Farm Raid"), {"hccbfr"}, "", { -- https://www.unknowncheats.me/forum/4013202-post4268.html
    { 1, TRANSLATE("Slush Fund"), {"slushfund"}, "" },
    { 2, TRANSLATE("Breaking and Entering"), {"breakingandentering"}, "" },
    { 3, TRANSLATE("Concealed Weapons"), {"concealedweapons"}, "" },
    { 4, TRANSLATE("Hit and Run"), {"hitandrun"}, "" },
    { 5, TRANSLATE("Disorganized Crime"), {"disorganizedcrime"}, "" },
    { 6, TRANSLATE("Scene of The Crime"), {"sceneofthecrime"}, "" },
}, function(index)
    STAT_SET_INT("SALV23_CFR_COOLDOWN", -1) -- Removes The Cooldown

    if index == 1 then
        STAT_SET_INT("SALV23_INST_PROG", 0)
    elseif index == 2 then
        STAT_SET_INT("SALV23_INST_PROG", 1)
    elseif index == 3 then
        STAT_SET_INT("SALV23_INST_PROG", 3)
    elseif index == 4 then
        STAT_SET_INT("SALV23_INST_PROG", 7)
    elseif index == 5 then
        STAT_SET_INT("SALV23_INST_PROG", 15)
    elseif index == 6 then
        STAT_SET_INT("SALV23_INST_PROG", 31)
    end
end)

---


--- Master Unlocker

DLC_UNLOCKER = menu.list(MASTER_UNLOCKER, TRANSLATE("DLCs"), {}, "", function(); end)

    ARENA_TOOL = menu.list(DLC_UNLOCKER, TRANSLATE("Arena Wars DLC"), {}, "", function(); end)

        menu.action(ARENA_TOOL, TRANSLATE("Unlock all Arena Wars Trophies and Toys"), {}, "", function()
            STAT_SET_INT("ARN_BS_TRINKET_TICKERS", -1)
            STAT_SET_INT("ARN_BS_TRINKET_SAVED", -1)
            STAT_SET_INT("AWD_WATCH_YOUR_STEP", 50)
            STAT_SET_INT("AWD_TOWER_OFFENSE", 50)
            STAT_SET_INT("AWD_READY_FOR_WAR", 50)
            STAT_SET_INT("AWD_THROUGH_A_LENS", 50)
            STAT_SET_INT("AWD_SPINNER", 50)
            STAT_SET_INT("AWD_YOUMEANBOOBYTRAPS", 50)
            STAT_SET_INT("AWD_MASTER_BANDITO", 50)
            STAT_SET_INT("AWD_SITTING_DUCK", 50)
            STAT_SET_INT("AWD_CROWDPARTICIPATION", 50)
            STAT_SET_INT("AWD_KILL_OR_BE_KILLED", 50)
            STAT_SET_INT("AWD_MASSIVE_SHUNT", 50)
            STAT_SET_INT("AWD_YOURE_OUTTA_HERE", 200)
            STAT_SET_INT("AWD_WEVE_GOT_ONE", 50)
            STAT_SET_INT("AWD_ARENA_WAGEWORKER", 1000000)
            STAT_SET_INT("AWD_TIME_SERVED", 1000)
            STAT_SET_INT("AWD_TOP_SCORE", 55000)
            STAT_SET_INT("AWD_CAREER_WINNER", 1000)
            STAT_SET_INT("ARENAWARS_SP", 209)
            STAT_SET_INT("ARENAWARS_SKILL_LEVEL", 20)
            STAT_SET_INT("ARENAWARS_SP_LIFETIME", 209)
            STAT_SET_INT("ARENAWARS_AP_TIER", 1000)
            STAT_SET_INT("ARENAWARS_AP_LIFETIME", 47551850)
            STAT_SET_INT("ARENAWARS_CARRER_UNLK", 44)
            STAT_SET_INT("ARN_W_THEME_SCIFI", 1000)
            STAT_SET_INT("ARN_W_THEME_APOC", 1000)
            STAT_SET_INT("ARN_W_THEME_CONS", 1000)
            STAT_SET_INT("ARN_W_PASS_THE_BOMB", 1000)
            STAT_SET_INT("ARN_W_DETONATION", 1000)
            STAT_SET_INT("ARN_W_ARCADE_RACE", 1000)
            STAT_SET_INT("ARN_W_CTF", 1000)
            STAT_SET_INT("ARN_W_TAG_TEAM", 1000)
            STAT_SET_INT("ARN_W_DESTR_DERBY", 1000)
            STAT_SET_INT("ARN_W_CARNAGE", 1000)
            STAT_SET_INT("ARN_W_MONSTER_JAM", 1000)
            STAT_SET_INT("ARN_W_GAMES_MASTERS", 1000)
            STAT_SET_INT("ARN_L_PASS_THE_BOMB", 500)
            STAT_SET_INT("ARN_L_DETONATION", 500)
            STAT_SET_INT("ARN_L_ARCADE_RACE", 500)
            STAT_SET_INT("ARN_L_CTF", 500)
            STAT_SET_INT("ARN_L_TAG_TEAM", 500)
            STAT_SET_INT("ARN_L_DESTR_DERBY", 500)
            STAT_SET_INT("ARN_L_CARNAGE", 500)
            STAT_SET_INT("ARN_L_MONSTER_JAM", 500)
            STAT_SET_INT("ARN_L_GAMES_MASTERS", 500)
            STAT_SET_INT("NUMBER_OF_CHAMP_BOUGHT", 1000)
            STAT_SET_INT("ARN_SPECTATOR_KILLS", 1000)
            STAT_SET_INT("ARN_LIFETIME_KILLS", 1000)
            STAT_SET_INT("ARN_LIFETIME_DEATHS", 500)
            STAT_SET_INT("ARENAWARS_CARRER_WINS", 1000)
            STAT_SET_INT("ARENAWARS_CARRER_WINT", 1000)
            STAT_SET_INT("ARENAWARS_MATCHES_PLYD", 1000)
            STAT_SET_INT("ARENAWARS_MATCHES_PLYDT", 1000)
            STAT_SET_INT("ARN_SPEC_BOX_TIME_MS", 86400000)
            STAT_SET_INT("ARN_SPECTATOR_DRONE", 1000)
            STAT_SET_INT("ARN_SPECTATOR_CAMS", 1000)
            STAT_SET_INT("ARN_SMOKE", 1000)
            STAT_SET_INT("ARN_DRINK", 1000)
            STAT_SET_INT("ARN_VEH_MONSTER", 31000)
            STAT_SET_INT("ARN_VEH_MONSTER", 41000)
            STAT_SET_INT("ARN_VEH_MONSTER", 51000)
            STAT_SET_INT("ARN_VEH_CERBERUS", 1000)
            STAT_SET_INT("ARN_VEH_CERBERUS2", 1000)
            STAT_SET_INT("ARN_VEH_CERBERUS3", 1000)
            STAT_SET_INT("ARN_VEH_BRUISER", 1000)
            STAT_SET_INT("ARN_VEH_BRUISER2", 1000)
            STAT_SET_INT("ARN_VEH_BRUISER3", 1000)
            STAT_SET_INT("ARN_VEH_SLAMVAN4", 1000)
            STAT_SET_INT("ARN_VEH_SLAMVAN5", 1000)
            STAT_SET_INT("ARN_VEH_SLAMVAN6", 1000)
            STAT_SET_INT("ARN_VEH_BRUTUS", 1000)
            STAT_SET_INT("ARN_VEH_BRUTUS2", 1000)
            STAT_SET_INT("ARN_VEH_BRUTUS3", 1000)
            STAT_SET_INT("ARN_VEH_SCARAB", 1000)
            STAT_SET_INT("ARN_VEH_SCARAB2", 1000)
            STAT_SET_INT("ARN_VEH_SCARAB3", 1000)
            STAT_SET_INT("ARN_VEH_DOMINATOR4", 1000)
            STAT_SET_INT("ARN_VEH_DOMINATOR5", 1000)
            STAT_SET_INT("ARN_VEH_DOMINATOR6", 1000)
            STAT_SET_INT("ARN_VEH_IMPALER2", 1000)
            STAT_SET_INT("ARN_VEH_IMPALER3", 1000)
            STAT_SET_INT("ARN_VEH_IMPALER4", 1000)
            STAT_SET_INT("ARN_VEH_ISSI4", 1000)
            STAT_SET_INT("ARN_VEH_ISSI5", 1000)
            STAT_SET_INT("ARN_VEH_ISSI", 61000)
            STAT_SET_INT("ARN_VEH_IMPERATOR", 1000)
            STAT_SET_INT("ARN_VEH_IMPERATOR2", 1000)
            STAT_SET_INT("ARN_VEH_IMPERATOR3", 1000)
            STAT_SET_INT("ARN_VEH_ZR380", 1000)
            STAT_SET_INT("ARN_VEH_ZR3802", 1000)
            STAT_SET_INT("ARN_VEH_ZR3803", 1000)
            STAT_SET_INT("ARN_VEH_DEATHBIKE", 1000)
            STAT_SET_INT("ARN_VEH_DEATHBIKE2", 1000)
            STAT_SET_INT("ARN_VEH_DEATHBIKE3", 1000)
            STAT_SET_BOOL("AWD_BEGINNER", true)
            STAT_SET_BOOL("AWD_FIELD_FILLER", true)
            STAT_SET_BOOL("AWD_ARMCHAIR_RACER", true)
            STAT_SET_BOOL("AWD_LEARNER", true)
            STAT_SET_BOOL("AWD_SUNDAY_DRIVER", true)
            STAT_SET_BOOL("AWD_THE_ROOKIE", true)
            STAT_SET_BOOL("AWD_BUMP_AND_RUN", true)
            STAT_SET_BOOL("AWD_GEAR_HEAD", true)
            STAT_SET_BOOL("AWD_DOOR_SLAMMER", true)
            STAT_SET_BOOL("AWD_HOT_LAP", true)
            STAT_SET_BOOL("AWD_ARENA_AMATEUR", true)
            STAT_SET_BOOL("AWD_PAINT_TRADER", true)
            STAT_SET_BOOL("AWD_SHUNTER", true)
            STAT_SET_BOOL("AWD_JOCK", true)
            STAT_SET_BOOL("AWD_WARRIOR", true)
            STAT_SET_BOOL("AWD_T_BONE", true)
            STAT_SET_BOOL("AWD_MAYHEM", true)
            STAT_SET_BOOL("AWD_WRECKER", true)
            STAT_SET_BOOL("AWD_CRASH_COURSE", true)
            STAT_SET_BOOL("AWD_ARENA_LEGEND", true)
            STAT_SET_BOOL("AWD_PEGASUS", true)
            STAT_SET_BOOL("AWD_UNSTOPPABLE", true)
            STAT_SET_BOOL("AWD_CONTACT_SPORT", true)
        end)

        menu.action(ARENA_TOOL, TRANSLATE("Unlock Clothing"), {}, "", function()
            SET_PACKED_INT_TUNABLE_GLOBAL("ENABLE_LOGIN_ALBANY_LOGO_WHITE_SHIRT", "ENABLE_LOGIN_DECLASSE_LADY_BLACK_SHIRT", 1)
        end)

    ---

    SUMMER2020 = menu.list(DLC_UNLOCKER, TRANSLATE("Summer 2020 DLC"), {}, "", function(); end)
            
        menu.action(SUMMER2020, TRANSLATE("Summer 2020 Awards"), {}, "", function()
            STAT_SET_BOOL("AWD_KINGOFQUB3D", true)
            STAT_SET_BOOL("AWD_QUBISM", true)
            STAT_SET_BOOL("AWD_QUIBITS", true)
            STAT_SET_BOOL("AWD_GODOFQUB3D", true)
            STAT_SET_BOOL("AWD_GOFOR11TH", true)
            STAT_SET_BOOL("AWD_ELEVENELEVEN", true)
        end)

        menu.action(SUMMER2020, TRANSLATE("Unlock Clothing"), {}, "", function()
            SET_PACKED_INT_TUNABLE_GLOBAL("ENABLE_LOGIN_BCTR_AGED_TEE", "ENABLE_LOGIN_LEMON_SPORTS_TRACK_TOP", 1)
        end)

    ---

    TUNERS_DLC = menu.list(DLC_UNLOCKER, TRANSLATE("LS Tuners DLC"), {}, "", function(); end)

        menu.action(TUNERS_DLC, TRANSLATE("Unlock Awards"), {}, "", function()
            STAT_SET_INT("AWD_CAR_CLUB_MEM", 100)
            STAT_SET_INT("AWD_SPRINTRACER", 50)
            STAT_SET_INT("AWD_STREETRACER", 50)
            STAT_SET_INT("AWD_PURSUITRACER", 50)
            STAT_SET_INT("AWD_TEST_CAR", 240)
            STAT_SET_INT("AWD_AUTO_SHOP", 50)
            STAT_SET_INT("AWD_CAR_EXPORT", 100)
            STAT_SET_INT("AWD_GROUNDWORK", 40)
            STAT_SET_INT("AWD_ROBBERY_CONTRACT", 100)
            STAT_SET_INT("AWD_FACES_OF_DEATH", 100)
            STAT_SET_BOOL("AWD_CAR_CLUB", true)
            STAT_SET_BOOL("AWD_PRO_CAR_EXPORT", true)
            STAT_SET_BOOL("AWD_UNION_DEPOSITORY", true)
            STAT_SET_BOOL("AWD_MILITARY_CONVOY", true)
            STAT_SET_BOOL("AWD_FLEECA_BANK", true)
            STAT_SET_BOOL("AWD_FREIGHT_TRAIN", true)
            STAT_SET_BOOL("AWD_BOLINGBROKE_ASS", true)
            STAT_SET_BOOL("AWD_IAA_RAID", true)
            STAT_SET_BOOL("AWD_METH_JOB", true)
            STAT_SET_BOOL("AWD_BUNKER_RAID", true)
            STAT_SET_BOOL("AWD_STRAIGHT_TO_VIDEO", true)
            STAT_SET_BOOL("AWD_MONKEY_C_MONKEY_DO", true)
            STAT_SET_BOOL("AWD_TRAINED_TO_KILL", true)
            STAT_SET_BOOL("AWD_DIRECTOR", true)
        end)

    ---

    CONTRACT_DLC = menu.list(DLC_UNLOCKER, TRANSLATE("The Contract DLC"), {}, "", function(); end)

        menu.action(CONTRACT_DLC, TRANSLATE("Unlock Animal Masks"), {}, "", function()
            SET_PACKED_INT_TUNABLE_GLOBAL("FIXER_LOGIN_AWARD_FISHMASK_1", "FIXER_LOGIN_AWARD_SEALMASK_4", 1)
        end)
        menu.action(CONTRACT_DLC, TRANSLATE("Unlock DJ Pooh Shirts"), {}, "", function()
            SET_PACKED_INT_TUNABLE_GLOBAL("FIXER_LOGIN_DJ_POOH_ORANGE", "FIXER_LOGIN_DJ_POOH_BLUE", 1) 
        end)

    ---

    CRIMINAL_DLC = menu.list(DLC_UNLOCKER, TRANSLATE("The Criminal Enterprises DLC"), {}, "", function(); end) -- https://www.unknowncheats.me/forum/3492512-post53.html
        
        menu.action(CRIMINAL_DLC, TRANSLATE("Jackets / Sweaters / Hoodies / Shirts"), {}, "", function()
            SET_PACKED_INT_TUNABLE_GLOBAL(-1967834023, -1263992372, 1) 
            SET_PACKED_INT_TUNABLE_GLOBAL(-206691492, -1577621449, 1)
        end)
        menu.action(CRIMINAL_DLC, TRANSLATE("Pants / Caps / Hats"), {}, "", function()
            SET_PACKED_INT_TUNABLE_GLOBAL(638571354, 96152168, 1)
            SET_PACKED_INT_TUNABLE_GLOBAL(-2120678580, -1003907171, 1)
            SET_PACKED_INT_TUNABLE_GLOBAL(191276118, -1484490421, 1)
            SET_PACKED_INT_TUNABLE_GLOBAL("SUM2_CHRISTMAS_BEERHAT_LEMON", "SUM2_CHRISTMAS_BEERHAT_RED_REINDEER", 1)
            SET_INT_TUNABLE_GLOBAL(-339902614, 1)
        end)
        menu.action(CRIMINAL_DLC, TRANSLATE("Earphones / Masks / Tech Demon"), {}, "", function()
            SET_PACKED_INT_TUNABLE_GLOBAL(-889497715, -1162924007, 1)
            SET_PACKED_INT_TUNABLE_GLOBAL(1096886904, -359187968, 1)
            SET_PACKED_INT_TUNABLE_GLOBAL(190205845, -171130807, 1)
            SET_PACKED_INT_TUNABLE_GLOBAL(1424509866, -1677619307, 1)
            SET_PACKED_INT_TUNABLE_GLOBAL(-1285035231, -1792568167, 1)
            SET_INT_TUNABLE_GLOBAL(505550305, 1)
        end)
        menu.action(CRIMINAL_DLC, TRANSLATE("Shoes (Sliders) / Tiger"), {}, "", function()
            SET_PACKED_INT_TUNABLE_GLOBAL(467678514, 169972145, 1)
            SET_PACKED_INT_TUNABLE_GLOBAL(245491514, -141827484, 1) 
        end)
        
    ---

    DRUG_WAR = menu.list(DLC_UNLOCKER, TRANSLATE("Drug War DLC"), {}, "", function(); end)

        menu.action(DRUG_WAR, TRANSLATE("Unlock Clothing"), {}, "", function() -- https://www.unknowncheats.me/forum/3635453-post69.html
            SET_PACKED_INT_TUNABLE_GLOBAL("EVENT_LOGIN_DLC22022_ICE_VINYL_JACKET_3", "PURPLE_SNAKESKIN_MOTOR_HELMET", 1)
        end)

    ---

---

UNLOCKER_BUILDING = menu.list(MASTER_UNLOCKER, TRANSLATE("Buildings"), {}, "", function(); end)

    menu.action(UNLOCKER_BUILDING, TRANSLATE("Skip Nightclub Setups"), {}, TRANSLATE("Skip all of setups when you buy a Nightclub first: Equipment, Staff, and Collect DJ") .. "\n\n" .. TRANSLATE("Change your session to apply!"), function() -- https://www.unknowncheats.me/forum/3735297-post3416.html
        SET_PACKED_STAT_BOOL_CODE(18161, true)
        SET_PACKED_STAT_BOOL_CODE(22067, true)
        SET_PACKED_STAT_BOOL_CODE(22068, true)
    end)

    menu.action(UNLOCKER_BUILDING, TRANSLATE("Acid Lab Equipment Upgrade"), {}, "", function() -- https://www.unknowncheats.me/forum/3631045-post2754.html
        STAT_SET_INT("AWD_CALLME", 10)
    end)

    menu.action(UNLOCKER_BUILDING, TRANSLATE("Unlock Nightclub Awards"), {}, "", function()
        STAT_SET_INT("AWD_DANCE_TO_SOLOMUN", 120)
        STAT_SET_INT("AWD_DANCE_TO_TALEOFUS", 120)
        STAT_SET_INT("AWD_DANCE_TO_DIXON", 120)
        STAT_SET_INT("AWD_DANCE_TO_BLKMAD", 120)
        STAT_SET_INT("AWD_CLUB_DRUNK", 200)
        STAT_SET_INT("NIGHTCLUB_VIP_APPEAR", 700)
        STAT_SET_INT("NIGHTCLUB_JOBS_DONE", 700)
        STAT_SET_INT("NIGHTCLUB_EARNINGS", 20721002)
        STAT_SET_INT("HUB_SALES_COMPLETED", 1001)
        STAT_SET_INT("HUB_EARNINGS", 320721002)
        STAT_SET_INT("DANCE_COMBO_DURATION_MINS", 3600000)
        STAT_SET_INT("NIGHTCLUB_PLAYER_APPEAR", 9506)
        STAT_SET_INT("LIFETIME_HUB_GOODS_SOLD", 784672)
        STAT_SET_INT("LIFETIME_HUB_GOODS_MADE", 507822)
        STAT_SET_INT("DANCEPERFECTOWNCLUB", 120)
        STAT_SET_INT("NUMUNIQUEPLYSINCLUB", 120)
        STAT_SET_INT("DANCETODIFFDJS", 4)
        STAT_SET_INT("NIGHTCLUB_HOTSPOT_TIME_MS", 3600000)
        STAT_SET_INT("NIGHTCLUB_CONT_TOTAL", 20)
        STAT_SET_INT("NIGHTCLUB_CONT_MISSION", -1)
        STAT_SET_INT("CLUB_CONTRABAND_MISSION", 1000)
        STAT_SET_INT("HUB_CONTRABAND_MISSION", 1000)
        STAT_SET_BOOL("AWD_CLUB_HOTSPOT", true)
        STAT_SET_BOOL("AWD_CLUB_CLUBBER", true)
        STAT_SET_BOOL("AWD_CLUB_COORD", true)
    end)

    menu.action(UNLOCKER_BUILDING, TRANSLATE("Unlock Arcade Awards"), {}, TRANSLATE("Trophies, toys, and clothings are included."), function()
        STAT_SET_INT("AWD_PREPARATION", 40)
        STAT_SET_INT("AWD_ASLEEPONJOB", 20)
        STAT_SET_INT("AWD_DAICASHCRAB", 100000)
        STAT_SET_INT("AWD_BIGBRO", 40)
        STAT_SET_INT("AWD_SHARPSHOOTER", 40)
        STAT_SET_INT("AWD_RACECHAMP", 40)
        STAT_SET_INT("AWD_BATSWORD", 1000000)
        STAT_SET_INT("AWD_COINPURSE", 950000)
        STAT_SET_INT("AWD_ASTROCHIMP", 3000000)
        STAT_SET_INT("AWD_MASTERFUL", 40000)
        STAT_SET_INT("SCGW_NUM_WINS_GANG_0", 50)
        STAT_SET_INT("SCGW_NUM_WINS_GANG_1", 50)
        STAT_SET_INT("SCGW_NUM_WINS_GANG_2", 50)
        STAT_SET_INT("SCGW_NUM_WINS_GANG_3", 50)
        STAT_SET_INT("CH_ARC_CAB_CLAW_TROPHY", -1)
        STAT_SET_INT("CH_ARC_CAB_LOVE_TROPHY", -1)
        STAT_SET_INT("IAP_MAX_MOON_DIST", INT_MAX)
        STAT_SET_INT("IAP_SCORE_0", 69644)
        STAT_SET_INT("IAP_SCORE_1", 50333)
        STAT_SET_INT("IAP_SCORE_2", 63512)
        STAT_SET_INT("IAP_SCORE_3", 46136)
        STAT_SET_INT("IAP_SCORE_4", 21638)
        STAT_SET_INT("IAP_SCORE_5", 2133)
        STAT_SET_INT("IAP_SCORE_6", 1215)
        STAT_SET_INT("IAP_SCORE_7", 2444)
        STAT_SET_INT("IAP_SCORE_8", 38023)
        STAT_SET_INT("IAP_SCORE_9", 2233)
        STAT_SET_INT("SCGW_SCORE_1", 50)
        STAT_SET_INT("SCGW_SCORE_2", 50)
        STAT_SET_INT("SCGW_SCORE_3", 50)
        STAT_SET_INT("SCGW_SCORE_4", 50)
        STAT_SET_INT("SCGW_SCORE_5", 50)
        STAT_SET_INT("SCGW_SCORE_6", 50)
        STAT_SET_INT("SCGW_SCORE_7", 50)
        STAT_SET_INT("SCGW_SCORE_8", 50)
        STAT_SET_INT("SCGW_SCORE_9", 50)

        for i = 0, 9 do
            STAT_SET_INT("IAP_INITIALS_" .. i, 50)
            STAT_SET_INT("DG_DEFENDER_INITIALS_" .. i, 69644)
            STAT_SET_INT("DG_DEFENDER_SCORE_" .. i, 50)
            STAT_SET_INT("DG_MONKEY_INITIALS_" .. i, 69644)
            STAT_SET_INT("DG_MONKEY_SCORE_" .. i, 50)
            STAT_SET_INT("DG_PENETRATOR_INITIALS_" .. i, 69644)
            STAT_SET_INT("DG_PENETRATOR_SCORE_" .. i, 50)
            STAT_SET_INT("GGSM_INITIALS_" .. i, 69644)
            STAT_SET_INT("GGSM_SCORE_" .. i, 50)
            STAT_SET_INT("TWR_INITIALS_" .. i, 69644)
            STAT_SET_INT("TWR_SCORE_" .. i, 50)
        end

        STAT_SET_BOOL("AWD_SCOPEOUT", true)
        STAT_SET_BOOL("AWD_CREWEDUP", true)
        STAT_SET_BOOL("AWD_MOVINGON", true)
        STAT_SET_BOOL("AWD_PROMOCAMP", true)
        STAT_SET_BOOL("AWD_GUNMAN", true)
        STAT_SET_BOOL("AWD_SMASHNGRAB", true)
        STAT_SET_BOOL("AWD_INPLAINSI", true)
        STAT_SET_BOOL("AWD_UNDETECTED", true)
        STAT_SET_BOOL("AWD_ALLROUND", true)
        STAT_SET_BOOL("AWD_ELITETHEIF", true)
        STAT_SET_BOOL("AWD_PRO", true)
        STAT_SET_BOOL("AWD_SUPPORTACT", true)
        STAT_SET_BOOL("AWD_SHAFTED", true)
        STAT_SET_BOOL("AWD_COLLECTOR", true)
        STAT_SET_BOOL("AWD_DEADEYE", true)
        STAT_SET_BOOL("AWD_PISTOLSATDAWN", true)
        STAT_SET_BOOL("AWD_TRAFFICAVOI", true)
        STAT_SET_BOOL("AWD_CANTCATCHBRA", true)
        STAT_SET_BOOL("AWD_WIZHARD", true)
        STAT_SET_BOOL("AWD_APEESCAPE", true)
        STAT_SET_BOOL("AWD_MONKEYKIND", true)
        STAT_SET_BOOL("AWD_AQUAAPE", true)
        STAT_SET_BOOL("AWD_KEEPFAITH", true)
        STAT_SET_BOOL("AWD_TRUELOVE", true)
        STAT_SET_BOOL("AWD_NEMESIS", true)
        STAT_SET_BOOL("AWD_FRIENDZONED", true)
        STAT_SET_BOOL("IAP_CHALLENGE_0", true)
        STAT_SET_BOOL("IAP_CHALLENGE_1", true)
        STAT_SET_BOOL("IAP_CHALLENGE_2", true)
        STAT_SET_BOOL("IAP_CHALLENGE_3", true)
        STAT_SET_BOOL("IAP_CHALLENGE_4", true)
        STAT_SET_BOOL("IAP_GOLD_TANK", true)
        STAT_SET_BOOL("SCGW_WON_NO_DEATHS", true)

        SET_PACKED_INT_TUNABLE_GLOBAL("STREET_CRIMES_BOXART_TEE", "RED_FAME_OR_SHAME_KRONOS", 1) -- For Clothing
    end)

    menu.action(UNLOCKER_BUILDING, TRANSLATE("Casino Store Ace Masks"), {}, TRANSLATE("Make sure click before buying. When you change your session, will be changed to non-unlocked status."), function()
        SET_PACKED_INT_TUNABLE_GLOBAL("VC_ACE_OF_SPADES", "VC_ACE_OF_DIAMONDS", 1)
    end)

    menu.action(UNLOCKER_BUILDING, TRANSLATE("Add Cosmetic Decorations To The Office/MC"), {}, TRANSLATE("To apply, sell special crate or vehicle cargo and change your session!"), function()
        STAT_SET_INT("LIFETIME_BUY_COMPLETE", 1000)
        STAT_SET_INT("LIFETIME_BUY_UNDERTAKEN", 1000)
        STAT_SET_INT("LIFETIME_SELL_COMPLETE", 1000)
        STAT_SET_INT("LIFETIME_SELL_UNDERTAKEN", 1000)
        STAT_SET_INT("LIFETIME_CONTRA_EARNINGS", 20000000)
        STAT_SET_INT("LIFETIME_BIKER_BUY_COMPLET", 1000)
        STAT_SET_INT("LIFETIME_BIKER_BUY_UNDERTA", 1000)
        STAT_SET_INT("LIFETIME_BIKER_SELL_COMPLET", 1000)
        STAT_SET_INT("LIFETIME_BIKER_SELL_UNDERTA", 1000)
        STAT_SET_INT("LIFETIME_BKR_SELL_EARNINGS0", 20000000)

        for i = 1, 5 do
            STAT_SET_INT("LIFETIME_BIKER_BUY_COMPLET" .. i, 1000)
            STAT_SET_INT("LIFETIME_BIKER_BUY_UNDERTA" .. i, 1000)
            STAT_SET_INT("LIFETIME_BIKER_SELL_COMPLET" .. i, 1000)
            STAT_SET_INT("LIFETIME_BIKER_SELL_UNDERTA" .. i, 1000)
            STAT_SET_INT("LIFETIME_BKR_SELL_EARNINGS" .. i, 20000000)
        end
    end)

---

UNLOCKER_HEISTS = menu.list(MASTER_UNLOCKER, TRANSLATE("Heists"), {}, TRANSLATE("Unlocks almost of unlockable stuffs related the heist like clothing, etc."), function(); end)

    menu.action(UNLOCKER_HEISTS, TRANSLATE("Cayo Perico Heist"), {}, "", function()
        STAT_SET_INT("AWD_LOSTANDFOUND", 500000)
        STAT_SET_INT("AWD_SUNSET", 1800000)
        STAT_SET_INT("AWD_TREASURE_HUNTER", 1000000)
        STAT_SET_INT("AWD_WRECK_DIVING", 1000000)
        STAT_SET_INT("AWD_KEINEMUSIK", 1800000)
        STAT_SET_INT("AWD_PALMS_TRAX", 1800000)
        STAT_SET_INT("AWD_MOODYMANN", 1800000)
        STAT_SET_INT("AWD_FILL_YOUR_BAGS", 1000000000)
        STAT_SET_INT("AWD_WELL_PREPARED", 80)
        STAT_SET_INT("H4_H4_DJ_MISSIONS", -1)
        STAT_SET_BOOL("AWD_INTELGATHER", true)
        STAT_SET_BOOL("AWD_COMPOUNDINFILT", true)
        STAT_SET_BOOL("AWD_LOOT_FINDER", true)
        STAT_SET_BOOL("AWD_MAX_DISRUPT", true)
        STAT_SET_BOOL("AWD_THE_ISLAND_HEIST", true)
        STAT_SET_BOOL("AWD_GOING_ALONE", true)
        STAT_SET_BOOL("AWD_TEAM_WORK", true)
        STAT_SET_BOOL("AWD_MIXING_UP", true)
        STAT_SET_BOOL("AWD_PRO_THIEF", true)
        STAT_SET_BOOL("AWD_CAT_BURGLAR", true)
        STAT_SET_BOOL("AWD_ONE_OF_THEM", true)
        STAT_SET_BOOL("AWD_GOLDEN_GUN", true)
        STAT_SET_BOOL("AWD_ELITE_THIEF", true)
        STAT_SET_BOOL("AWD_PROFESSIONAL", true)
        STAT_SET_BOOL("AWD_HELPING_OUT", true)
        STAT_SET_BOOL("AWD_COURIER", true)
        STAT_SET_BOOL("AWD_PARTY_VIBES", true)
        STAT_SET_BOOL("AWD_HELPING_HAND", true)
        STAT_SET_BOOL("AWD_ELEVENELEVEN", true)
        STAT_SET_BOOL("COMPLETE_H4_F_USING_VETIR", true)
        STAT_SET_BOOL("COMPLETE_H4_F_USING_LONGFIN", true)
        STAT_SET_BOOL("COMPLETE_H4_F_USING_ANNIH", true)
        STAT_SET_BOOL("COMPLETE_H4_F_USING_ALKONOS", true)
        STAT_SET_BOOL("COMPLETE_H4_F_USING_PATROLB", true)
        SET_PACKED_INT_TUNABLE_GLOBAL("TOPS_ISLAND_HEIST_EVENT_JACKET_1", "PANTS_BIGNESS_TIE_DYE_SWEAT_PANTS", 1)
        SET_PACKED_INT_TUNABLE_GLOBAL("ACCESSORIES_GLOW_BRACELET_1", "ACCESSORIES_GLOW_NECKLACE_16", 1)
        SET_PACKED_INT_TUNABLE_GLOBAL("HEIST4_FESTIVE_MASK_0", "HEIST4_FESTIVE_MASK_19", 1)
        SET_PACKED_INT_TUNABLE_GLOBAL("ACCESSORIES_SUNGLASSES_1_0", "ACCESSORIES_SUNGLASSES_3_11", 1)
        SET_PACKED_INT_TUNABLE_GLOBAL("PALMS_TRAX_EVENT_TEE_1", "STILL_SLIPPING_EVENT_TEE_2", 1)
    end)

    menu.action(UNLOCKER_HEISTS, TRANSLATE("Diamond Casino Heist"), {}, "", function()
        STAT_SET_INT("CAS_HEIST_NOTS", -1)
        STAT_SET_INT("CH_ARC_CAB_CLAW_TROPHY", -1)
        STAT_SET_INT("CH_ARC_CAB_LOVE_TROPHY", -1)
        STAT_SET_INT("SIGNAL_JAMMERS_COLLECTED", 50)
        STAT_SET_INT("AWD_ODD_JOBS", 52)
        STAT_SET_INT("AWD_PREPARATION", 40)
        STAT_SET_INT("AWD_ASLEEPONJOB", 20)
        STAT_SET_INT("AWD_DAICASHCRAB", 100000)
        STAT_SET_INT("AWD_BIGBRO", 40)
        STAT_SET_INT("AWD_SHARPSHOOTER", 40)
        STAT_SET_INT("AWD_RACECHAMP", 40)
        STAT_SET_INT("AWD_BATSWORD", 1000000)
        STAT_SET_INT("AWD_COINPURSE", 950000)
        STAT_SET_INT("AWD_ASTROCHIMP", 3000000)
        STAT_SET_INT("AWD_MASTERFUL", 40000)
        STAT_SET_INT("H3_BOARD_DIALOGUE0", -1)
        STAT_SET_INT("H3_BOARD_DIALOGUE1", -1)
        STAT_SET_INT("H3_BOARD_DIALOGUE2", -1)
        STAT_SET_INT("H3_VEHICLESUSED", -1)
        STAT_SET_BOOL("AWD_FIRST_TIME1", true)
        STAT_SET_BOOL("AWD_FIRST_TIME2", true)
        STAT_SET_BOOL("AWD_FIRST_TIME3", true)
        STAT_SET_BOOL("AWD_FIRST_TIME4", true)
        STAT_SET_BOOL("AWD_FIRST_TIME5", true)
        STAT_SET_BOOL("AWD_FIRST_TIME6", true)
        STAT_SET_BOOL("AWD_ALL_IN_ORDER", true)
        STAT_SET_BOOL("AWD_SUPPORTING_ROLE", true)
        STAT_SET_BOOL("AWD_LEADER", true)
        STAT_SET_BOOL("AWD_ODD_JOBS", true)
        STAT_SET_BOOL("AWD_SURVIVALIST", true)
        STAT_SET_BOOL("AWD_SCOPEOUT", true)
        STAT_SET_BOOL("AWD_CREWEDUP", true)
        STAT_SET_BOOL("AWD_MOVINGON", true)
        STAT_SET_BOOL("AWD_PROMOCAMP", true)
        STAT_SET_BOOL("AWD_GUNMAN", true)
        STAT_SET_BOOL("AWD_SMASHNGRAB", true)
        STAT_SET_BOOL("AWD_INPLAINSI", true)
        STAT_SET_BOOL("AWD_UNDETECTED", true)
        STAT_SET_BOOL("AWD_ALLROUND", true)
        STAT_SET_BOOL("AWD_ELITETHEIF", true)
        STAT_SET_BOOL("AWD_PRO", true)
        STAT_SET_BOOL("AWD_SUPPORTACT", true)
        STAT_SET_BOOL("AWD_SHAFTED", true)
        STAT_SET_BOOL("AWD_COLLECTOR", true)
        STAT_SET_BOOL("AWD_DEADEYE", true)
        STAT_SET_BOOL("AWD_PISTOLSATDAWN", true)
        STAT_SET_BOOL("AWD_TRAFFICAVOI", true)
        STAT_SET_BOOL("AWD_CANTCATCHBRA", true)
        STAT_SET_BOOL("AWD_WIZHARD", true)
        STAT_SET_BOOL("AWD_APEESCAPE", true)
        STAT_SET_BOOL("AWD_MONKEYKIND", true)
        STAT_SET_BOOL("AWD_AQUAAPE", true)
        STAT_SET_BOOL("AWD_KEEPFAITH", true)
        STAT_SET_BOOL("AWD_TRUELOVE", true)
        STAT_SET_BOOL("AWD_NEMESIS", true)
        STAT_SET_BOOL("AWD_FRIENDZONED", true)
        STAT_SET_BOOL("VCM_FLOW_CS_RSC_SEEN", true)
        STAT_SET_BOOL("VCM_FLOW_CS_BWL_SEEN", true)
        STAT_SET_BOOL("VCM_FLOW_CS_MTG_SEEN", true)
        STAT_SET_BOOL("VCM_FLOW_CS_OIL_SEEN", true)
        STAT_SET_BOOL("VCM_FLOW_CS_DEF_SEEN", true)
        STAT_SET_BOOL("VCM_FLOW_CS_FIN_SEEN", true)
        STAT_SET_BOOL("CAS_VEHICLE_REWARD", false)
        STAT_SET_BOOL("HELP_FURIA", true)
        STAT_SET_BOOL("HELP_MINITAN", true)
        STAT_SET_BOOL("HELP_YOSEMITE2", true)
        STAT_SET_BOOL("HELP_ZHABA", true)
        STAT_SET_BOOL("HELP_IMORGEN", true)
        STAT_SET_BOOL("HELP_SULTAN2", true)
        STAT_SET_BOOL("HELP_VAGRANT", true)
        STAT_SET_BOOL("HELP_VSTR", true)
        STAT_SET_BOOL("HELP_STRYDER", true)
        STAT_SET_BOOL("HELP_SUGOI", true)
        STAT_SET_BOOL("HELP_KANJO", true)
        STAT_SET_BOOL("HELP_FORMULA", true)
        STAT_SET_BOOL("HELP_FORMULA2", true)
        STAT_SET_BOOL("HELP_JB7002", true)
    end)

    menu.action(UNLOCKER_HEISTS, TRANSLATE("Doomsday Heist"), {}, "", function()
        STAT_SET_INT("GANGOPS_FM_MISSION_PROG", -1)
        STAT_SET_INT("GANGOPS_FLOW_MISSION_PROG", -1)
        STAT_SET_INT("MPPLY_GANGOPS_ALLINORDER", 100)
        STAT_SET_INT("MPPLY_GANGOPS_LOYALTY", 100)
        STAT_SET_INT("MPPLY_GANGOPS_CRIMMASMD", 100)
        STAT_SET_INT("MPPLY_GANGOPS_LOYALTY2", 100)
        STAT_SET_INT("MPPLY_GANGOPS_LOYALTY3", 100)
        STAT_SET_INT("MPPLY_GANGOPS_CRIMMASMD2", 100)
        STAT_SET_INT("MPPLY_GANGOPS_CRIMMASMD3", 100)
        STAT_SET_INT("MPPLY_GANGOPS_SUPPORT", 100)
        STAT_SET_INT("CR_GANGOP_MORGUE", 10)
        STAT_SET_INT("CR_GANGOP_DELUXO", 10)
        STAT_SET_INT("CR_GANGOP_SERVERFARM", 10)
        STAT_SET_INT("CR_GANGOP_IAABASE_FIN", 10)
        STAT_SET_INT("CR_GANGOP_STEALOSPREY", 10)
        STAT_SET_INT("CR_GANGOP_FOUNDRY", 10)
        STAT_SET_INT("CR_GANGOP_RIOTVAN", 10)
        STAT_SET_INT("CR_GANGOP_SUBMARINECAR", 10)
        STAT_SET_INT("CR_GANGOP_SUBMARINE_FIN", 10)
        STAT_SET_INT("CR_GANGOP_PREDATOR", 10)
        STAT_SET_INT("CR_GANGOP_BMLAUNCHER", 10)
        STAT_SET_INT("CR_GANGOP_BCCUSTOM", 10)
        STAT_SET_INT("CR_GANGOP_STEALTHTANKS", 10)
        STAT_SET_INT("CR_GANGOP_SPYPLANE", 10)
        STAT_SET_INT("CR_GANGOP_FINALE", 10)
        STAT_SET_INT("CR_GANGOP_FINALE_P2", 10)
        STAT_SET_INT("CR_GANGOP_FINALE_P3", 10)
        STAT_SET_BOOL("MPPLY_AWD_GANGOPS_IAA", true)
        STAT_SET_BOOL("MPPLY_AWD_GANGOPS_SUBMARINE", true)
        STAT_SET_BOOL("MPPLY_AWD_GANGOPS_MISSILE", true)
        STAT_SET_BOOL("MPPLY_AWD_GANGOPS_ALLINORDER", true)
        STAT_SET_BOOL("MPPLY_AWD_GANGOPS_LOYALTY", true)
        STAT_SET_BOOL("MPPLY_AWD_GANGOPS_LOYALTY2", true)
        STAT_SET_BOOL("MPPLY_AWD_GANGOPS_LOYALTY3", true)
        STAT_SET_BOOL("MPPLY_AWD_GANGOPS_CRIMMASMD", true)
        STAT_SET_BOOL("MPPLY_AWD_GANGOPS_CRIMMASMD2", true)
        STAT_SET_BOOL("MPPLY_AWD_GANGOPS_CRIMMASMD3", true)
    end)
    
    menu.action(UNLOCKER_HEISTS, TRANSLATE("Classic Heist"), {}, "", function()
        STAT_SET_INT("AWD_FINISH_HEISTS", 900)
        STAT_SET_INT("MPPLY_WIN_GOLD_MEDAL_HEISTS", 900)
        STAT_SET_INT("AWD_DO_HEIST_AS_MEMBER", 900)
        STAT_SET_INT("AWD_DO_HEIST_AS_THE_LEADER", 900)
        STAT_SET_INT("AWD_FINISH_HEIST_SETUP_JOB", 900)
        STAT_SET_INT("AWD_FINISH_HEIST", 900)
        STAT_SET_INT("HEIST_COMPLETION", 900)
        STAT_SET_INT("HEISTS_ORGANISED", 900)
        STAT_SET_INT("AWD_CONTROL_CROWDS", 900)
        STAT_SET_INT("AWD_WIN_GOLD_MEDAL_HEISTS", 900)
        STAT_SET_INT("AWD_COMPLETE_HEIST_NOT_DIE", 900)
        STAT_SET_INT("HEIST_START", 900)
        STAT_SET_INT("HEIST_END", 900)
        STAT_SET_INT("CUTSCENE_MID_PRISON", 900)
        STAT_SET_INT("CUTSCENE_MID_HUMANE", 900)
        STAT_SET_INT("CUTSCENE_MID_NARC", 900)
        STAT_SET_INT("CUTSCENE_MID_ORNATE", 900)
        STAT_SET_INT("CR_FLEECA_PREP_1", 5000)
        STAT_SET_INT("CR_FLEECA_PREP_2", 5000)
        STAT_SET_INT("CR_FLEECA_FINALE", 5000)
        STAT_SET_INT("CR_PRISON_PLANE", 5000)
        STAT_SET_INT("CR_PRISON_BUS", 5000)
        STAT_SET_INT("CR_PRISON_STATION", 5000)
        STAT_SET_INT("CR_PRISON_UNFINISHED_BIZ", 5000)
        STAT_SET_INT("CR_PRISON_FINALE", 5000)
        STAT_SET_INT("CR_HUMANE_KEY_CODES", 5000)
        STAT_SET_INT("CR_HUMANE_ARMORDILLOS", 5000)
        STAT_SET_INT("CR_HUMANE_EMP", 5000)
        STAT_SET_INT("CR_HUMANE_VALKYRIE", 5000)
        STAT_SET_INT("CR_HUMANE_FINALE", 5000)
        STAT_SET_INT("CR_NARC_COKE", 5000)
        STAT_SET_INT("CR_NARC_TRASH_TRUCK", 5000)
        STAT_SET_INT("CR_NARC_BIKERS", 5000)
        STAT_SET_INT("CR_NARC_WEED", 5000)
        STAT_SET_INT("CR_NARC_STEAL_METH", 5000)
        STAT_SET_INT("CR_NARC_FINALE", 5000)
        STAT_SET_INT("CR_PACIFIC_TRUCKS", 5000)
        STAT_SET_INT("CR_PACIFIC_WITSEC", 5000)
        STAT_SET_INT("CR_PACIFIC_HACK", 5000)
        STAT_SET_INT("CR_PACIFIC_BIKES", 5000)
        STAT_SET_INT("CR_PACIFIC_CONVOY", 5000)
        STAT_SET_INT("CR_PACIFIC_FINALE", 5000)
        STAT_SET_INT("MPPLY_HEIST_ACH_TRACKER", -1)
        STAT_SET_BOOL("MPPLY_AWD_COMPLET_HEIST_MEM", true)
        STAT_SET_BOOL("MPPLY_AWD_COMPLET_HEIST_1STPER", true)
        STAT_SET_BOOL("MPPLY_AWD_FLEECA_FIN", true)
        STAT_SET_BOOL("MPPLY_AWD_HST_ORDER", true)
        STAT_SET_BOOL("MPPLY_AWD_HST_SAME_TEAM", true)
        STAT_SET_BOOL("MPPLY_AWD_HST_ULT_CHAL", true)
        STAT_SET_BOOL("MPPLY_AWD_HUMANE_FIN", true)
        STAT_SET_BOOL("MPPLY_AWD_PACIFIC_FIN", true)
        STAT_SET_BOOL("MPPLY_AWD_PRISON_FIN", true)
        STAT_SET_BOOL("MPPLY_AWD_SERIESA_FIN", true)
        STAT_SET_BOOL("AWD_FINISH_HEIST_NO_DAMAGE", true)
        STAT_SET_BOOL("AWD_SPLIT_HEIST_TAKE_EVENLY", true)
        STAT_SET_BOOL("AWD_ALL_ROLES_HEIST", true)
        STAT_SET_BOOL("AWD_MATCHING_OUTFIT_HEIST", true)
        STAT_SET_BOOL("HEIST_PLANNING_DONE_PRINT", true)
        STAT_SET_BOOL("HEIST_PLANNING_DONE_HELP_0", true)
        STAT_SET_BOOL("HEIST_PLANNING_DONE_HELP_1", true)
        STAT_SET_BOOL("HEIST_PRE_PLAN_DONE_HELP_0", true)
        STAT_SET_BOOL("HEIST_CUTS_DONE_FINALE", true)
        STAT_SET_BOOL("HEIST_IS_TUTORIAL", false)
        STAT_SET_BOOL("HEIST_STRAND_INTRO_DONE", true)
        STAT_SET_BOOL("HEIST_CUTS_DONE_ORNATE", true)
        STAT_SET_BOOL("HEIST_CUTS_DONE_PRISON", true)
        STAT_SET_BOOL("HEIST_CUTS_DONE_BIOLAB", true)
        STAT_SET_BOOL("HEIST_CUTS_DONE_NARCOTIC", true)
        STAT_SET_BOOL("HEIST_CUTS_DONE_TUTORIAL", true)
        STAT_SET_BOOL("HEIST_AWARD_DONE_PREP", true)
        STAT_SET_BOOL("HEIST_AWARD_BOUGHT_IN", true)
    end)
    
    menu.action(UNLOCKER_HEISTS, TRANSLATE("The Contract: Agency"), {}, "", function()
        STAT_SET_INT("AWD_CONTRACTOR", 50)
        STAT_SET_INT("AWD_COLD_CALLER", 50)
        STAT_SET_INT("AWD_PRODUCER", 60)
        STAT_SET_INT("FIXERTELEPHONEHITSCOMPL", 10)
        STAT_SET_INT("PAYPHONE_BONUS_KILL_METHOD", 10)
        STAT_SET_INT("FIXER_COUNT", 501)
        STAT_SET_INT("FIXER_SC_VEH_RECOVERED", 501)
        STAT_SET_INT("FIXER_SC_VAL_RECOVERED", 501)
        STAT_SET_INT("FIXER_SC_GANG_TERMINATED", 501)
        STAT_SET_INT("FIXER_SC_VIP_RESCUED", 501)
        STAT_SET_INT("FIXER_SC_ASSETS_PROTECTED", 501)
        STAT_SET_INT("FIXER_SC_EQ_DESTROYED", 501)
        STAT_SET_INT("FIXER_EARNINGS", 300000)
        STAT_SET_BOOL("AWD_TEEING_OFF", true)
        STAT_SET_BOOL("AWD_PARTY_NIGHT", true)
        STAT_SET_BOOL("AWD_BILLIONAIRE_GAMES", true)
        STAT_SET_BOOL("AWD_HOOD_PASS", true)
        STAT_SET_BOOL("AWD_STUDIO_TOUR", true)
        STAT_SET_BOOL("AWD_DONT_MESS_DRE", true)
        STAT_SET_BOOL("AWD_BACKUP", true)
        STAT_SET_BOOL("AWD_SHORTFRANK_1", true)
        STAT_SET_BOOL("AWD_SHORTFRANK_2", true)
        STAT_SET_BOOL("AWD_SHORTFRANK_3", true)
        STAT_SET_BOOL("AWD_CONTR_KILLER", true)
        STAT_SET_BOOL("AWD_DOGS_BEST_FRIEND", true)
        STAT_SET_BOOL("AWD_MUSIC_STUDIO", true)
        STAT_SET_BOOL("AWD_SHORTLAMAR_1", true)
        STAT_SET_BOOL("AWD_SHORTLAMAR_2", true)
        STAT_SET_BOOL("AWD_SHORTLAMAR_3", true)
        STAT_SET_BOOL("BS_FRANKLIN_DIALOGUE_0", true)
        STAT_SET_BOOL("BS_FRANKLIN_DIALOGUE_1", true)
        STAT_SET_BOOL("BS_FRANKLIN_DIALOGUE_2", true)
        STAT_SET_BOOL("BS_IMANI_D_APP_SETUP", true)
        STAT_SET_BOOL("BS_IMANI_D_APP_STRAND", true)
        STAT_SET_BOOL("BS_IMANI_D_APP_PARTY", true)
        STAT_SET_BOOL("BS_IMANI_D_APP_PARTY_2", true)
        STAT_SET_BOOL("BS_IMANI_D_APP_PARTY_F", true)
        STAT_SET_BOOL("BS_IMANI_D_APP_BILL", true)
        STAT_SET_BOOL("BS_IMANI_D_APP_BILL_2", true)
        STAT_SET_BOOL("BS_IMANI_D_APP_BILL_F", true)
        STAT_SET_BOOL("BS_IMANI_D_APP_HOOD", true)
        STAT_SET_BOOL("BS_IMANI_D_APP_HOOD_2", true)
        STAT_SET_BOOL("BS_IMANI_D_APP_HOOD_F", true)
    end)

---

UNLOCKER_MISSIONS = menu.list(MASTER_UNLOCKER, TRANSLATE("Missions"), {}, "", function(); end)

    menu.action(UNLOCKER_MISSIONS, TRANSLATE("Unlock Taxi Missions"), {}, "", function() -- https://github.com/ImSapphire/unlock_drug_war_content/blob/main/unlock_drug_war_content.lua
        SET_INT_TUNABLE_GLOBAL("XM22_TAXI_DRIVER_ENABLE", 1)
    end)

    menu.action(UNLOCKER_MISSIONS, TRANSLATE("Unlock All Contacts"), {}, "", function()
        STAT_SET_INT("FM_ACT_PHN", -1)
        STAT_SET_INT("FM_VEH_TX1", -1)
        STAT_SET_INT("FM_CUT_DONE", -1)
        STAT_SET_INT("FM_CUT_DONE_2", -1)

        for i = 2, 9 do
            STAT_SET_INT("FM_ACT_PH" .. i, -1)
        end
    end)

---

UNLOCKER_ANNIVERSARY = menu.list(MASTER_UNLOCKER, TRANSLATE("Special Anniversaries"), {}, "", function(); end)

    XMAS_FEATURES = menu.list(UNLOCKER_ANNIVERSARY, TRANSLATE("Christmas"), {}, "", function(); end)

        BypassXMASTunables = {
            memory.tunable_offset("DISABLE_SNOWBALLS"),
            memory.tunable_offset("ENABLE_CLEAR_STRUCT_ON_TRAN_FAIL"),
            memory.tunable_offset("MAX_NUMBER_OF_SNOWBALLS"),
            memory.tunable_offset("PICK_UP_NUMBER_OF_SNOWBALLS"),
        }
        menu.toggle_loop(XMAS_FEATURES, TRANSLATE("Bypass Christmas Clothing"), {}, TRANSLATE("You must keep this feature enabled in order to wear it!"), function()
            SET_PACKED_INT_GLOBAL(BypassXMASTunables[1], BypassXMASTunables[2], 0)
            SET_PACKED_INT_GLOBAL(BypassXMASTunables[3], BypassXMASTunables[4], 7)
        end)
        
        menu.action(XMAS_FEATURES, TRANSLATE("Unlock Christmas Liveries"), {}, "", function()
            for i = 1, 20 do
                STAT_SET_INT("MPPLY_XMASLIVERIES" .. i, -1)
            end
        end)

        menu.action(XMAS_FEATURES, TRANSLATE("Unlock Christmas Content"), {}, "", function()
            SET_PACKED_INT_TUNABLE_GLOBAL("DISABLE_SNOWBALLS", "PICK_UP_NUMBER_OF_SNOWBALLS", 1)
            SET_PACKED_INT_TUNABLE_GLOBAL("TOGGLE_CHRISTMAS_EVE_GIFT", "TOGGLE_NEW_YEARS_DAY_GIFT", 1)
            SET_PACKED_INT_TUNABLE_GLOBAL("XMAS2015_VEHICLE", "XMAS2015_MASKS", 1)
            SET_PACKED_INT_TUNABLE_GLOBAL("TOGGLE_2015_CHRISTMAS_EVE_GIFT", "TOGGLE_2015_CHRISTMAS_DAY_GIFT", 1)
            SET_PACKED_INT_TUNABLE_GLOBAL("TOGGLE_2016_CHRISTMAS_EVE_GIFT", "TOGGLE_2016_CHRISTMAS_DAY_GIFT", 1)
            SET_PACKED_INT_TUNABLE_GLOBAL(1840129338, -495986083, 1)
            SET_PACKED_INT_TUNABLE_GLOBAL(-101086705, "TOGGLE_2017_CHRISTMAS_DAY_GIFT", 1)
            SET_PACKED_INT_TUNABLE_GLOBAL("XMASDAYGIFT2018_CAR", "XMASDAYGIFT2018_CAR2", 1)
            SET_PACKED_INT_TUNABLE_GLOBAL("TOGGLE_2018_CHRISTMAS_EVE_GIFT", "TOGGLE_2018_CHRISTMAS_DAY_GIFT", 1)
            SET_PACKED_INT_TUNABLE_GLOBAL("TOGGLE_2019_CHRISTMAS_EVE_GIFT", "TOGGLE_2019_CHRISTMAS_DAY_GIFT", 1)
            SET_PACKED_INT_TUNABLE_GLOBAL("TOGGLE_2021_CHRISTMAS_GIFT", "TOGGLE_2021_NEW_YEARS_GIFT", 1)
            SET_PACKED_INT_TUNABLE_GLOBAL("XMASGIFTS2022", "NEWYEARSGIFTS2022", 1) -- https://www.unknowncheats.me/forum/3630405-post34.html (2022)
            SET_INT_TUNABLE_GLOBAL("TOGGLE_XMAS_CONTENT", 1)
            SET_INT_TUNABLE_GLOBAL("TOGGLE_GIFT_TO_PLAYER_WHEN_LOGGING_ON", 1)
            SET_INT_TUNABLE_GLOBAL("XMAS2015_PYJAMAS", 1)
            SET_INT_TUNABLE_GLOBAL("CHRISTMAS2016_CLOTHING", 1)
            SET_INT_TUNABLE_GLOBAL("CHRISTMAS2017_CLOTHING", 1)
            SET_INT_TUNABLE_GLOBAL("NEW_BH_VEHICLE_TEXT", 1)
            SET_INT_TUNABLE_GLOBAL("TOGGLE_2020_CHRISTMAS_DAY_GIFT", 1)
        end)

    ---

    IndependenceTunables = {
        memory.tunable_offset("INDEPENDENCE_DAY_DEACTIVATE_FIREWORKS_LAUNCHER"),
        memory.tunable_offset("TOGGLE_ACTIVATE_MONSTER_TRUCK"),
        memory.tunable_offset("UNLOCKINDEPENDENCE_BEER_HAT_1"),
        memory.tunable_offset("UNLOCKINDEPENDENCE_STATUE_HAPPINESS_SHIRT"),
        memory.tunable_offset("TOGGLE_ACTIVATE_INDEPENDENCE_PACK"),
    }
    menu.toggle_loop(UNLOCKER_ANNIVERSARY, TRANSLATE("Independence's Day"), {}, TRANSLATE("Note: You may need to keep activating to use some of Independence Day's contents."), function()
        SET_PACKED_INT_GLOBAL(IndependenceTunables[1], IndependenceTunables[2], 1)
        SET_PACKED_INT_GLOBAL(IndependenceTunables[3], IndependenceTunables[4], 1)
        SET_INT_GLOBAL(262145 + IndependenceTunables[5], 1)
    end)

    menu.action(UNLOCKER_ANNIVERSARY, TRANSLATE("Valentine's Day"), {}, "", function()
        SET_PACKED_INT_TUNABLE_GLOBAL("TURN_ON_VALENTINE_WEAPON", "TURN_ON_VALENTINE_CLOTHING", 1)
        SET_PACKED_INT_TUNABLE_GLOBAL("TURN_ON_VALENTINE_2016_CLOTHING", "TURN_ON_VALENTINE_2016_VEHICLE", 1)
        SET_INT_TUNABLE_GLOBAL("TURN_ON_VALENTINES_EVENT", 1)
    end)

---

UNLOCKER_SHIRT_HAT = menu.list(MASTER_UNLOCKER, TRANSLATE("Clothes"), {}, "", function(); end)

    menu.action(UNLOCKER_SHIRT_HAT, TRANSLATE("Unlock Lots of Hats And Shirts"), {}, TRANSLATE("500+ unlocks are included, try and see how many clothes would be unlocked."), function()
        SET_PACKED_INT_TUNABLE_GLOBAL("DLC_SHIRT_MELTDOWN", "DLC_SHIRT_CAPOLAVORO", 1)
        SET_PACKED_INT_TUNABLE_GLOBAL("AWARD_LOW_HATS_MAGNETICS_SCRIPT", "AWARD_LOW_TSHIRT_VAMPIRES_ON_THE_BEACH", 1)
        SET_PACKED_INT_TUNABLE_GLOBAL("ACCOUNTANTSHIRTEVENT", "CRESTTSHIRTEVENT", 1)
        SET_PACKED_INT_TUNABLE_GLOBAL("AWARD_JUMPSUIT_WHITE", "AWARD_JUMPSUIT_SILVER", 1)
        SET_PACKED_INT_TUNABLE_GLOBAL("TSHIRT_WESTERN_BIG_LOGO_WHITE", 310744591, 1)
        SET_PACKED_INT_TUNABLE_GLOBAL("AWARD_BLACK_AMMUNATION_CAP", "AWARD_RSTAR_LOGO_WHITE", 1)
        SET_PACKED_INT_TUNABLE_GLOBAL("AWARD_EMOTION_983_TSHIRT", "AWARD_FAKE_VAPID_TSHIRT", 1)
        SET_PACKED_INT_TUNABLE_GLOBAL("MAISONETTE_LOS_SANTOS_TSHIRT", "TONYS_FUN_HOUSE_TSHIRT", 1)
        SET_PACKED_INT_TUNABLE_GLOBAL("AWARD_LS_UR", "AWARD_BLAINE_COUNTY_RADIO", 1)
        SET_PACKED_INT_TUNABLE_GLOBAL(-726113206, -1910486921, 1)
        SET_PACKED_INT_TUNABLE_GLOBAL(-1344369866, 1799248495, 1)
        SET_PACKED_INT_TUNABLE_GLOBAL(760292630, 1007326524, 1)
        SET_PACKED_INT_TUNABLE_GLOBAL("HATS_ISLAND_HEIST_EVENT_HAT_1", "HATS_ISLAND_HEIST_EVENT_HAT_5", 1)
        SET_PACKED_INT_TUNABLE_GLOBAL("FIXER_LOGIN_DJ_POOH_ORANGE", "FIXER_LOGIN_DJ_POOH_BLUE", 1)
        SET_INT_TUNABLE_GLOBAL("ENABLE_RACE_CREATOR_JUBILEE", 1)

        -- https://www.unknowncheats.me/forum/grand-theft-auto-v/461672-gtahax-1-57-external-thread-3-a-23.html
        SET_INT_TUNABLE_GLOBAL("KIFFLOMTEE_LOGINAWARD", 1) -- Kifflom Tee

        for i = 31768, 32273 do
            SET_PACKED_STAT_BOOL_CODE(i, true) -- Found by me in freemode.c, https://www.unknowncheats.me/forum/3196991-post328.html
        end

        -- https://www.unknowncheats.me/forum/3704307-post121.html
        SET_PACKED_STAT_BOOL_CODE(15408, true) -- Black Shrewsbury Cap
        SET_PACKED_STAT_BOOL_CODE(34510, true) -- Glow Believe Backwards Cap
        SET_PACKED_STAT_BOOL_CODE(34509, true) -- Black Believe Backwards Cap
        SET_PACKED_STAT_BOOL_CODE(34508, true) -- Gray Believe Backwards Cap
        SET_PACKED_STAT_BOOL_CODE(34375, true) -- Black LD Organics Forwards Cap
        SET_PACKED_STAT_BOOL_CODE(27087, true) -- Unicorn
        SET_PACKED_STAT_BOOL_CODE(34372, true) -- Horror Pumpkin
        SET_PACKED_STAT_BOOL_CODE(27088, true) -- Gingerbread
        SET_PACKED_STAT_BOOL_CODE(34378, true) -- Junk Energy Drink Chute Bag
        SET_PACKED_STAT_BOOL_CODE(32275, true) -- Circoloco Tee
        SET_PACKED_STAT_BOOL_CODE(32316, true) -- Marathon Hoodie
        SET_PACKED_STAT_BOOL_CODE(34507, true) -- White UFO Boxer Shorts
        SET_PACKED_STAT_BOOL_CODE(34506, true) -- Green UFO Boxer Shorts
        SET_PACKED_STAT_BOOL_CODE(89, true) -- Rockstar V Neck
        SET_PACKED_STAT_BOOL_CODE(87, true) -- Red Skull V Neck 
        SET_PACKED_STAT_BOOL_CODE(36809, true) -- All Type of 'Nemesis' Tees
        SET_PACKED_STAT_BOOL_CODE(22176, true) -- White Solomun Tee
        SET_PACKED_STAT_BOOL_CODE(22192, true) -- Tale Of Us Black Box Tee
        SET_PACKED_STAT_BOOL_CODE(16008, true) -- White Dixon Repeated Logo Tee
        SET_PACKED_STAT_BOOL_CODE(16009, true) -- The Black Madonna Star Tee
        SET_PACKED_STAT_BOOL_CODE(22172, true) -- Black Solomun Yellow Logo Tee
        SET_PACKED_STAT_BOOL_CODE(22170, true) -- Black Tale Of Us Emb. Tee
        SET_PACKED_STAT_BOOL_CODE(22162, true) -- Black Dixon Wilderness Tee
        SET_PACKED_STAT_BOOL_CODE(22150, true) -- Black The Black Madonna Emb. Tee
        SET_PACKED_STAT_BOOL_CODE(30702, true) -- Blue Keinemusik Tee
        SET_PACKED_STAT_BOOL_CODE(30701, true) -- Moodymann Tee
        SET_PACKED_STAT_BOOL_CODE(30699, true) -- Palms Trax LS Tee
        SET_PACKED_STAT_BOOL_CODE(34380, true) -- Pumpkin Tee 
        SET_PACKED_STAT_BOOL_CODE(3613, true) -- Elitas T-shirt
        SET_PACKED_STAT_BOOL_CODE(3781, true) -- Elite Lousy T-shirt
        SET_PACKED_STAT_BOOL_CODE(3780, true) -- Elite Challenge T-Shirt
        SET_PACKED_STAT_BOOL_CODE(3779, true) -- Showroom T-shirt
        SET_PACKED_STAT_BOOL_CODE(3778, true) -- Shot Caller T-shirt
        SET_PACKED_STAT_BOOL_CODE(3777, true) -- One Man Army T-shirt
        SET_PACKED_STAT_BOOL_CODE(3776, true) -- Psycho Killer T-shirt
        SET_PACKED_STAT_BOOL_CODE(3775, true) -- Decorated T-shirt
        SET_PACKED_STAT_BOOL_CODE(3774, true) -- Can't Touch This T-shirt
        SET_PACKED_STAT_BOOL_CODE(3773, true) -- Asshole T-shirt
        SET_PACKED_STAT_BOOL_CODE(3771, true) -- For Hire T-shirt
        SET_PACKED_STAT_BOOL_CODE(3770, true) -- Death Defying T-shirt
        SET_PACKED_STAT_BOOL_CODE(113, true) -- I Heart LC T-shirt
        SET_PACKED_STAT_BOOL_CODE(7551, true) -- DCTL T-Shirt
        SET_PACKED_STAT_BOOL_CODE(9374, true) -- R* Crosswalk Tee
        SET_PACKED_STAT_BOOL_CODE(9385, true) -- Crosswalk Tee
        SET_PACKED_STAT_BOOL_CODE(15402, true) -- White Ammu-Nation Tee
        SET_PACKED_STAT_BOOL_CODE(15392, true) -- Black Coil Hoodie
    end)

    menu.action(UNLOCKER_SHIRT_HAT, TRANSLATE("Unlock Sasquatch Outfit"), {}, "", function() -- https://www.unknowncheats.me/forum/3492512-post53.html
        SET_INT_TUNABLE_GLOBAL(-1966279346, 1)
    end)

    menu.action(UNLOCKER_SHIRT_HAT, TRANSLATE("Unlock 'Don't Cross the Line Tee'"), {}, "", function()
        STAT_SET_INT("DCTL_WINS", 500)
        STAT_SET_INT("DCTL_PLAY_COUNT", 750)
    end)

---

UNLOCKER_TATTOO = menu.list(MASTER_UNLOCKER, TRANSLATE("Tattoos"), {}, "", function(); end)

    menu.action(UNLOCKER_TATTOO, TRANSLATE("Unlock Some Tattoos"), {}, "", function()
        -- https://www.unknowncheats.me/forum/3252891-post942.html
        STAT_SET_INT("AWD_CAR_BOMBS_ENEMY_KILLS", 25) -- Trust No One
        STAT_SET_INT("AWD_HOLD_UP_SHOPS", 20) -- Clown, Clown and Gun, Clown Dual Wield & Clown Dual Wield Dollar
        STAT_SET_INT("AWD_FMBBETWIN", 50000) -- Hustler
        STAT_SET_INT("AWD_100_HEADSHOTS", 500) -- Skull
        STAT_SET_INT("AWD_FM_DM_WINS", 50) -- Burning Heart
        STAT_SET_INT("AWD_RACES_WON", 50) -- Racing Brunette
        STAT_SET_INT("AWD_FMREVENGEKILLSDM", 50) -- Dragon and Dagger
        STAT_SET_INT("AWD_FM_DM_TOTALKILLS", 500) -- Melting Skull
        STAT_SET_INT("LAP_DANCED_BOUGHT", 25) -- Hottie
        STAT_SET_INT("AWD_FM_TDM_MVP", 50) -- Grim Reaper
        STAT_SET_INT("AWD_FMKILLBOUNTY", 25) -- Skull and Sword
        STAT_SET_INT("SNIPERRFL_ENEMY_KILLS", 100) -- Broken Skull
        STAT_SET_BOOL("AWD_FMWINEVERYGAMEMODE", true) -- Angel
        STAT_SET_BOOL("AWD_FMMOSTKILLSSURVIVE", true) -- The Wages of Sin
        STAT_SET_BOOL("AWD_FMRACEWORLDRECHOLDER", true) -- Racing Blonde
        STAT_SET_BOOL("AWD_FMATTGANGHQ", true) -- Grim Reaper Smoking Gun
        STAT_SET_BOOL("AWD_FMKILL3ANDWINGTARACE", true) -- Ride or Die
        STAT_SET_BOOL("AWD_FMKILLSTREAKSDM", true) -- Flaming Skull

        -- https://www.unknowncheats.me/forum/3647348-post2928.html
        STAT_SET_INT("KILLS_PLAYERS", 250) -- Blank Scroll
        STAT_SET_INT("KILLS_PLAYERS", 500) -- Embellished Scroll
        STAT_SET_INT("KILLS_PLAYERS", 1000) -- Seven Deadly Sins
        STAT_SET_BOOL("AWD_FMFULLYMODDEDCAR", true) -- Los Santos Customs

        -- https://www.unknowncheats.me/forum/3662516-post2964.html
        SET_PACKED_STAT_BOOL_CODE(15887, true) -- Lucky 7s Tattoo - Male
        SET_PACKED_STAT_BOOL_CODE(15894, true) -- The Royals Tattoo - Male
        SET_PACKED_STAT_BOOL_CODE(15898, true) -- Lucky 7s Tattoo - Female
        SET_PACKED_STAT_BOOL_CODE(15905, true) -- The Royals Tattoo - Female
    end)

    menu.action(UNLOCKER_TATTOO, TRANSLATE("Alien Tatto (Illuminati)"), {}, TRANSLATE("Change your session to apply!"), function()
        SET_PACKED_STAT_BOOL_CODE(15737, true) -- Male
        SET_PACKED_STAT_BOOL_CODE(15748, true) -- Female
    end)

---

UNLOCKER_VEHICLE = menu.list(MASTER_UNLOCKER, TRANSLATE("Vehicles"), {}, "", function(); end)

    menu.action(UNLOCKER_VEHICLE, TRANSLATE("Unlock Some Trade Prices"), {}, "", function()
        STAT_SET_INT("GANGOPS_FLOW_BITSET_MISS0", -1)
        STAT_SET_INT("LFETIME_HANGAR_BUY_UNDETAK", 42)
        STAT_SET_INT("LFETIME_HANGAR_BUY_COMPLET", 42)
        STAT_SET_INT("AT_FLOW_IMPEXP_NUM", 32)
        STAT_SET_INT("AT_FLOW_VEHICLE_BS", -1)
        STAT_SET_INT("WVM_FLOW_VEHICLE_BS", -1)
        STAT_SET_INT("H3_BOARD_DIALOGUE0", -1)
        STAT_SET_INT("H3_BOARD_DIALOGUE1", -1)
        STAT_SET_INT("H3_BOARD_DIALOGUE2", -1)
        STAT_SET_INT("H3_VEHICLESUSED", -1)
        STAT_SET_INT("WAM_FLOW_VEHICLE_BS", -1)
        STAT_SET_BOOL("HELP_VETO", true)
        STAT_SET_BOOL("HELP_VETO2", true)
        STAT_SET_BOOL("HELP_ITALIRSX", true)
        STAT_SET_BOOL("HELP_BRIOSO2", true)
        STAT_SET_BOOL("HELP_MANCHEZ2", true)
        STAT_SET_BOOL("HELP_SLAMTRUCK", true)
        STAT_SET_BOOL("HELP_VETIR", true)
        STAT_SET_BOOL("HELP_SQUADDIE", true)
        STAT_SET_BOOL("HELP_DINGY5", true)
        STAT_SET_BOOL("HELP_VERUS", true)
        STAT_SET_BOOL("HELP_WEEVIL", true)
        STAT_SET_BOOL("HELP_VEHUNTUNER", true)
        STAT_SET_BOOL("FIXER_VEH_HELP", true)
        STAT_SET_BOOL("HELP_DOMINATOR7", true)
        STAT_SET_BOOL("HELP_JESTER4", true)
        STAT_SET_BOOL("HELP_FUTO2", true)
        STAT_SET_BOOL("HELP_DOMINATOR8", true)
        STAT_SET_BOOL("HELP_PREVION", true)
        STAT_SET_BOOL("HELP_GROWLER", true)
        STAT_SET_BOOL("HELP_COMET6", true)
        STAT_SET_BOOL("HELP_VECTRE", true)
        STAT_SET_BOOL("HELP_SULTAN3", true)
        STAT_SET_BOOL("HELP_CYPHER", true)
    end)

    menu.action(UNLOCKER_VEHICLE, TRANSLATE("Taxi Livery"), {}, TRANSLATE("a.k.a: 'Downtown Cab Co.' livery"), function() -- https://www.unknowncheats.me/forum/3630202-post2734.html
        STAT_SET_INT("AWD_TAXIDRIVER", 100)
    end)

    menu.action(UNLOCKER_VEHICLE, TRANSLATE("Unlock The Shotaro"), {}, "", function()
        STAT_SET_INT("CRDEADLINE", -1)
    end)

---

SPECIAL_WEAPON = menu.list(MASTER_UNLOCKER, TRANSLATE("Weapons"), {}, "", function(); end)

    menu.action(SPECIAL_WEAPON, TRANSLATE("Service Carbine"), {}, "", function() -- https://www.unknowncheats.me/forum/3488328-post27.html
        SET_INT_TUNABLE_GLOBAL("UNLOCK_SERVICE_CARBINE_FOR_PURCHASE", 1)
    end)

    menu.action(SPECIAL_WEAPON, TRANSLATE("Stone Hatchet Challenge"), {}, TRANSLATE("Change your session to apply!"), function()
        STAT_SET_MASKED_INT("MP_NGDLCPSTAT_INT0", 5, 16) -- Got this from random Kiddions Lua on Discord
        STAT_SET_BOOL("MPPLY_MELEECHLENGECOMPLETED", true)
    end)

    menu.action(SPECIAL_WEAPON, TRANSLATE("Double Action Revolver"), {}, TRANSLATE("Change your session to apply!"), function()
        STAT_SET_MASKED_INT("GANGOPSPSTAT_INT102", 3, 24) -- Got this from random Kiddions Lua on Discord
        STAT_SET_BOOL("MPPLY_HEADSHOTCHLENGECOMPLETED", true)
    end)

    menu.action(SPECIAL_WEAPON, TRANSLATE("Navy Revolver"), {}, "", function()
        STAT_SET_BOOL("MPPLY_NAVYREVOLVERCOMPLETED", true)
    end)

    menu.action(SPECIAL_WEAPON, TRANSLATE("Ceramic Pistol"), {}, "", function() -- https://www.unknowncheats.me/forum/3439472-post2.html
        STAT_SET_INT("CAS_HEIST_FLOW", 4096)
    end)

    menu.action(SPECIAL_WEAPON, TRANSLATE("Up-N-Atomizer"), {}, "", function()
        SET_INT_GLOBAL(104496, 90) -- freemode.c
    end)

---

menu.action(MASTER_UNLOCKER, TRANSLATE("Vanilla Unicorn Award"), {}, "", function()
    for i = 0, 25, 5 do
        STAT_SET_INT("LAP_DANCED_BOUGHT", i)
    end
    STAT_SET_INT("PROSTITUTES_FREQUENTED", 1000)
end)

menu.action(MASTER_UNLOCKER, TRANSLATE("Returning Player Bonus"), {}, "", function()
    SET_INT_GLOBAL(104497, 1) -- freemode.c
    SET_INT_GLOBAL(152848, 2) -- freemode.c
end)

---


--- Tools

TUNABLES = menu.list(TOOLS, TRANSLATE("Tunables"), {}, "", function(); end) -- Almost not credited global variables from: https://www.unknowncheats.me/forum/3337151-post1560.html

    TUNABLES_CD = menu.list(TUNABLES, TRANSLATE("Remove Cooldowns"), {}, "", function(); end)

        menu.divider(TUNABLES_CD, TRANSLATE("Supplies' Delay"))

            MCCooldownTunables = {
                memory.tunable_offset("BIKER_PURCHASE_SUPPLIES_DELAY"),
            }
            menu.toggle_loop(TUNABLES_CD, TRANSLATE("MC Business"), {}, "", function()
                SET_INT_GLOBAL(262145 + MCCooldownTunables[1], 0)
            end, function()
                SET_INT_GLOBAL(262145 + MCCooldownTunables[1], 600)
            end)
            
            BunkerCooldownTunables = {
                memory.tunable_offset("GR_PURCHASE_SUPPLIES_DELAY"),
            }
            menu.toggle_loop(TUNABLES_CD, TRANSLATE("Bunker"), {}, "", function()
                SET_INT_GLOBAL(262145 + BunkerCooldownTunables[1], 0)
            end, function()
                SET_INT_GLOBAL(262145 + BunkerCooldownTunables[1], 600)
            end)

        ---

        menu.divider(TUNABLES_CD, TRANSLATE("Buying And Selling"))

            SCCooldownTunables = {
                memory.tunable_offset("EXEC_BUY_COOLDOWN"),
                memory.tunable_offset("EXEC_SELL_COOLDOWN"),
            }
            menu.toggle_loop(TUNABLES_CD, TRANSLATE("Special Cargo"), {}, "", function() 
                SET_INT_GLOBAL(262145 + SCCooldownTunables[1], 0)
                SET_INT_GLOBAL(262145 + SCCooldownTunables[2], 0)
            end, function()
                SET_INT_GLOBAL(262145 + SCCooldownTunables[1], 300000)
                SET_INT_GLOBAL(262145 + SCCooldownTunables[2], 1800000)
            end)

            VCCooldownTunables = {
                memory.tunable_offset("IMPEXP_STEAL_COOLDOWN"),
                memory.tunable_offset(1001423248),
                memory.tunable_offset(240134765),
                memory.tunable_offset(1915379148),
                memory.tunable_offset(-824005590),
            }
            menu.toggle_loop(TUNABLES_CD, TRANSLATE("Vehicle Cargo"), {}, "", function()
                SET_INT_GLOBAL(262145 + VCCooldownTunables[1], 0)
                SET_INT_GLOBAL(262145 + VCCooldownTunables[2], 0) -- 1 Vehicle
                SET_INT_GLOBAL(262145 + VCCooldownTunables[3], 0) -- 2 Vehicles
                SET_INT_GLOBAL(262145 + VCCooldownTunables[4], 0) -- 3 Vehicles
                SET_INT_GLOBAL(262145 + VCCooldownTunables[5], 0) -- 4 Vehicles
            end, function()
                SET_INT_GLOBAL(262145 + VCCooldownTunables[1], 180000)
                SET_INT_GLOBAL(262145 + VCCooldownTunables[2], 1200000)
                SET_INT_GLOBAL(262145 + VCCooldownTunables[3], 1680000)
                SET_INT_GLOBAL(262145 + VCCooldownTunables[4], 2340000)
                SET_INT_GLOBAL(262145 + VCCooldownTunables[5], 2880000)
            end)

            AFCCooldownTunables = {
                memory.tunable_offset("SMUG_STEAL_EASY_COOLDOWN_TIMER"),
                memory.tunable_offset("SMUG_STEAL_MED_COOLDOWN_TIMER"),
                memory.tunable_offset("SMUG_STEAL_HARD_COOLDOWN_TIMER"),
                memory.tunable_offset(1722502526),
                memory.tunable_offset(-1091356151),
            }
            menu.toggle_loop(TUNABLES_CD, TRANSLATE("Air-Freight Cargo"), {}, "", function()
                SET_INT_GLOBAL(262145 + AFCCooldownTunables[1], 0) -- Tobacco, Counterfeit Goods
                SET_INT_GLOBAL(262145 + AFCCooldownTunables[2], 0) -- Animal Materials, Art, Jewelry
                SET_INT_GLOBAL(262145 + AFCCooldownTunables[3], 0) -- Narcotics, Chemicals, Medical Supplies
                SET_INT_GLOBAL(262145 + AFCCooldownTunables[4], 0) -- Additional Time per Player
                SET_INT_GLOBAL(262145 + AFCCooldownTunables[5], 0) -- Sale
            end, function()
                SET_INT_GLOBAL(262145 + AFCCooldownTunables[1], 120000)
                SET_INT_GLOBAL(262145 + AFCCooldownTunables[2], 180000)
                SET_INT_GLOBAL(262145 + AFCCooldownTunables[3], 240000)
                SET_INT_GLOBAL(262145 + AFCCooldownTunables[4], 60000)
                SET_INT_GLOBAL(262145 + AFCCooldownTunables[5], 2000)
            end)

        ---

        menu.divider(TUNABLES_CD, TRANSLATE("Others"))

            SLWCooldownTunables = {
                memory.tunable_offset(9960150),
                memory.tunable_offset(-312420223),
            }
            menu.toggle_loop(TUNABLES_CD, TRANSLATE("Spin Lucky Wheel"), {}, "", function() -- https://www.unknowncheats.me/forum/3531489-post51.html
                STAT_SET_INT("LUCKY_WHEEL_NUM_SPIN", 0)
                SET_INT_GLOBAL(262145 + SLWCooldownTunables[1], 1)
                SET_INT_GLOBAL(262145 + SLWCooldownTunables[2], 1)
            end)

            CeoVehCooldownTunables = {
                memory.tunable_offset("GB_CALL_VEHICLE_COOLDOWN"),
            }
            menu.toggle_loop(TUNABLES_CD, TRANSLATE("CEO Vehicles"), {}, "", function()
                SET_INT_GLOBAL(262145 + CeoVehCooldownTunables[1], 0)
            end, function()
                SET_INT_GLOBAL(262145 + CeoVehCooldownTunables[1], 120000)
            end)

            CJCooldownTunables = {
                memory.tunable_offset(-926426916),
                memory.tunable_offset(1733390598),
                memory.tunable_offset(724724668),
                memory.tunable_offset(846317886),
                memory.tunable_offset(443623246),
                memory.tunable_offset(-1203647122),
                memory.tunable_offset(-1963126951),
            }
            menu.toggle_loop(TUNABLES_CD, TRANSLATE("Client Jobs"), {}, "", function()
                SET_INT_GLOBAL(262145 + CJCooldownTunables[1], 0) -- Between Jobs
                SET_INT_GLOBAL(262145 + CJCooldownTunables[2], 0) -- Robbery in Progress
                SET_INT_GLOBAL(262145 + CJCooldownTunables[3], 0) -- Data Sweep
                SET_INT_GLOBAL(262145 + CJCooldownTunables[4], 0) -- Targeted Data
                SET_INT_GLOBAL(262145 + CJCooldownTunables[5], 0) -- Diamond Shopping
                SET_INT_GLOBAL(262145 + CJCooldownTunables[6], 0) -- Collectors Pieces, https://www.unknowncheats.me/forum/3496393-post32.html
                SET_INT_GLOBAL(262145 + CJCooldownTunables[7], 0) -- Deal Breaker, https://www.unknowncheats.me/forum/3496393-post32.html
            end, function()
                SET_INT_GLOBAL(262145 + CJCooldownTunables[1], 300000)
                SET_INT_GLOBAL(262145 + CJCooldownTunables[2], 1800000)
                SET_INT_GLOBAL(262145 + CJCooldownTunables[3], 1800000)
                SET_INT_GLOBAL(262145 + CJCooldownTunables[4], 1800000)
                SET_INT_GLOBAL(262145 + CJCooldownTunables[5], 1800000)
                SET_INT_GLOBAL(262145 + CJCooldownTunables[6], 600000)
                SET_INT_GLOBAL(262145 + CJCooldownTunables[7], 600000)
            end)

            CWCooldownTunables = {
                memory.tunable_offset("GB_COOLDOWN_UNTIL_NEXT_BOSS_WORK"),
                memory.tunable_offset(1107909355),
            }
            menu.toggle_loop(TUNABLES_CD, TRANSLATE("Club Work"), {}, "", function()
                SET_INT_GLOBAL(262145 + CWCooldownTunables[1], 0)
                SET_INT_GLOBAL(262145 + CWCooldownTunables[2], 0)
            end, function()
                SET_INT_GLOBAL(262145 + CWCooldownTunables[1], 300000)
                SET_INT_GLOBAL(262145 + CWCooldownTunables[2], 180000)
            end)

            MBJCooldownTunables = {
                memory.tunable_offset("VC_WORK_REQUEST_COOLDOWN"),
            }
            menu.toggle_loop(TUNABLES_CD, TRANSLATE("Ms Baker Job"), {}, "", function()
                SET_INT_GLOBAL(262145 + MBJCooldownTunables[1], 0)
            end)

            EMGMCooldownTunables = {
                memory.tunable_offset(972761388),
            }
            menu.toggle_loop(TUNABLES_CD, TRANSLATE("Export Mixed Goods Mission"), {}, "", function()
                SET_INT_GLOBAL(262145 + EMGMCooldownTunables[1], 0)
            end)

            menu.toggle_loop(TUNABLES_CD, TRANSLATE("Yohan Nightclub Mission"), {}, "", function()
                STAT_SET_INT("SOURCE_GOODS_CDTIMER", -1)
                STAT_SET_INT("SOURCE_RESEARCH_CDTIMER", -1)
            end)

            menu.toggle_loop(TUNABLES_CD, TRANSLATE("Biker Bar Mission"), {}, "", function()
                STAT_SET_INT("BIKER_BAR_RESUPPLY_CD_POSIX", -1)
            end)

            menu.toggle_loop(TUNABLES_CD, TRANSLATE("Dax Job"), {}, TRANSLATE("Note that Dax Job means from cellphone"), function() -- https://www.unknowncheats.me/forum/3629824-post2716.html
                STAT_SET_INT("XM22JUGGALOWORKCDTIMER", -1)
            end)

        ---

    ---

    TUNABLES_MUT = menu.list(TUNABLES, TRANSLATE("Multipliers"), {}, "", function(); end)

        MUT_INPUT = menu.slider_float(TUNABLES_MUT, TRANSLATE("Multipliers"), {"hcmultiplier"}, "", 0, 720000, 100, 100, function(); end)

        menu.divider(TUNABLES_MUT, "XP & AP")

            XPnAPTunables = {
                memory.tunable_offset("XP_MULTIPLIER"),
                memory.tunable_offset("AP_MULTIPLIER"),
            }
            menu.toggle_loop(TUNABLES_MUT, "XP", {}, "", function()
                SET_FLOAT_GLOBAL(262145 + XPnAPTunables[1], menu.get_value(MUT_INPUT) / 100)
            end, function()
                SET_FLOAT_GLOBAL(262145 + XPnAPTunables[1], menu.get_default_state(MUT_INPUT))
            end)
            menu.toggle_loop(TUNABLES_MUT, "AP", {}, "", function()
                SET_FLOAT_GLOBAL(262145 + XPnAPTunables[2], menu.get_value(MUT_INPUT) / 100)
            end, function()
                SET_FLOAT_GLOBAL(262145 + XPnAPTunables[2], menu.get_default_state(MUT_INPUT))
            end)

        ---

        menu.divider(TUNABLES_MUT, TRANSLATE("LS Car Meet"))

            LSCMTunables = {
                memory.tunable_offset("TUNER_STREET_RACE_PLACE_XP_MULTIPLIER"),
                memory.tunable_offset("TUNER_PURSUIT_RACE_PLACE_XP_MULTIPLIER"),
                memory.tunable_offset("TUNER_CHECKPOINT_RACE_PLACE_XP_MULTIPLIER"),
                memory.tunable_offset("TUNER_HEADTOHEAD_RACE_PLACE_XP_MULTIPLIER"),
                memory.tunable_offset("TUNER_CARCLUB_VISITS_STREAK_XP_MULTIPLIER"),
                memory.tunable_offset("TUNER_CARCLUB_TIME_XP_MULTIPLIER"),
            }
            menu.toggle_loop(TUNABLES_MUT, TRANSLATE("Street Race"), {}, "", function()
                SET_FLOAT_GLOBAL(262145 + LSCMTunables[1], menu.get_value(MUT_INPUT) / 100)
            end, function()
                SET_FLOAT_GLOBAL(262145 + LSCMTunables[1], menu.get_default_state(MUT_INPUT))
            end)
            menu.toggle_loop(TUNABLES_MUT, TRANSLATE("Pursuit Race"), {}, "", function()
                SET_FLOAT_GLOBAL(262145 + LSCMTunables[2], menu.get_value(MUT_INPUT) / 100)
            end, function()
                SET_FLOAT_GLOBAL(262145 + LSCMTunables[2], menu.get_default_state(MUT_INPUT))
            end)
            menu.toggle_loop(TUNABLES_MUT, TRANSLATE("Scramble"), {}, "", function()
                SET_FLOAT_GLOBAL(262145 + LSCMTunables[3], menu.get_value(MUT_INPUT) / 100)
            end, function()
                SET_FLOAT_GLOBAL(262145 + LSCMTunables[3], menu.get_default_state(MUT_INPUT))
            end)
            menu.toggle_loop(TUNABLES_MUT, TRANSLATE("Head 2 Head"), {}, "", function()
                SET_FLOAT_GLOBAL(262145 + LSCMTunables[4], menu.get_value(MUT_INPUT) / 100)
            end, function()
                SET_FLOAT_GLOBAL(262145 + LSCMTunables[4], menu.get_default_state(MUT_INPUT))
            end)
            menu.toggle_loop(TUNABLES_MUT, TRANSLATE("LS Car Meet"), {}, "", function()
                SET_FLOAT_GLOBAL(262145 + LSCMTunables[5], menu.get_value(MUT_INPUT) / 100)
            end, function()
                SET_FLOAT_GLOBAL(262145 + LSCMTunables[5], menu.get_default_state(MUT_INPUT))
            end)
            menu.toggle_loop(TUNABLES_MUT, TRANSLATE("LS Car Meet's Track"), {}, "", function()
                SET_FLOAT_GLOBAL(262145 + LSCMTunables[6], menu.get_value(MUT_INPUT) / 100) 
            end, function()
                SET_FLOAT_GLOBAL(262145 + LSCMTunables[6], menu.get_default_state(MUT_INPUT))
            end)

        ---

    ---

    TUNABLES_OTH = menu.list(TUNABLES, TRANSLATE("Others"), {}, "", function(); end)

        MOSFHTunables = {
            memory.tunable_offset("PSANDQS_HEALTH_REPLENISH_MULTIPLIER"),
            memory.tunable_offset("EGOCHASER_HEALTH_REPLENISH_MULTIPLIER"),
            memory.tunable_offset("METEORITE_HEALTH_REPLENISH_MULTIPLIER"),
            memory.tunable_offset("REDWOOD_HEALTH_DEPLETE_MULTIPLIER"),
            memory.tunable_offset("ORANGOTANG_HEALTH_REPLENISH_MULTIPLIER"),
            memory.tunable_offset("BOURGEOIX_HEALTH_REPLENISH_MULTIPLIER"),
            memory.tunable_offset("SPRUNK_HEALTH_REPLENISH_MULTIPLIER"),
        }
        menu.toggle_loop(TUNABLES_OTH, TRANSLATE("Make One Snack Full Health"), {}, TRANSLATE("Whatever you use a snack, will make you full health."), function()
            for i = 1, 7 do
                SET_FLOAT_GLOBAL(262145 + MOSFHTunables[i], 99999)
            end
        end, function()
            for i = 1, 7 do
                SET_FLOAT_GLOBAL(262145 + MOSFHTunables[i], 1)
            end
        end)

        menu.toggle_loop(TUNABLES_OTH, TRANSLATE("Auto Refill Snacks & Armours"), {}, "", function()
            STAT_SET_INT("NO_BOUGHT_YUM_SNACKS", 30)
            STAT_SET_INT("NO_BOUGHT_HEALTH_SNACKS", 15)
            STAT_SET_INT("NO_BOUGHT_EPIC_SNACKS", 15)
            STAT_SET_INT("NUMBER_OF_ORANGE_BOUGHT", 10)
            STAT_SET_INT("NUMBER_OF_BOURGE_BOUGHT", 10)
            STAT_SET_INT("CIGARETTES_BOUGHT", 10)

            for i = 1, 5 do
                STAT_SET_INT("MP_CHAR_ARMOUR_" .. i .. "_COUNT", 10)
            end
        end)

        ISHPTunables = {
            memory.tunable_offset("BB_HATCHET_RAMPAGE_DURATION_MAX"),
            memory.tunable_offset("BB_HATCHET_RAMPAGE_DURATION_EXTENSION"),
            memory.tunable_offset("BB_HATCHET_RAMPAGE_COOLDOWN"),
            memory.tunable_offset("BB_HATCHET_RAMPAGE_DAMAGE_RECIEVED"),
            memory.tunable_offset("BB_HATCHET_RAMPAGE_HEALTH_REGEN_RATE"),
            memory.tunable_offset("BB_HATCHET_RAMPAGE_HEALTH_REGEN_MAX"),
        }
        menu.toggle_loop(TUNABLES_OTH, TRANSLATE("Infinite Stone Hatchet's Power"), {}, "", function() -- https://www.unknowncheats.me/forum/3484239-post11.html
            SET_INT_GLOBAL(262145 + ISHPTunables[1], 99999) -- Duration
            SET_INT_GLOBAL(262145 + ISHPTunables[2], 99999) -- Added Duration per Kill
            SET_INT_GLOBAL(262145 + ISHPTunables[3], 0) -- Cooldown
            SET_FLOAT_GLOBAL(262145 + ISHPTunables[4], 99999) -- Weapon Defense
            SET_FLOAT_GLOBAL(262145 + ISHPTunables[5], 99999) -- Health Recharge Multiplier
            SET_FLOAT_GLOBAL(262145 + ISHPTunables[6], 99999) -- Health Recharge Limit
        end, function()
            SET_INT_GLOBAL(262145 + ISHPTunables[1], 12000)
            SET_INT_GLOBAL(262145 + ISHPTunables[2], 6000)
            SET_INT_GLOBAL(262145 + ISHPTunables[3], 60000)
            SET_FLOAT_GLOBAL(262145 + ISHPTunables[4], 0.5)
            SET_FLOAT_GLOBAL(262145 + ISHPTunables[5], 2)
            SET_FLOAT_GLOBAL(262145 + ISHPTunables[6], 1)
        end)

        menu.action(TUNABLES_OTH, TRANSLATE("Single MC Vehicle Sell"), {}, TRANSLATE("Forces the amount of MC Business' sale vehicles to one. Please click once before starting selling mission. Only works when you're the leader."), function()
            SET_INT_LOCAL("gb_biker_contraband_sell", 704 + 17, 0) -- https://github.com/Tgamer500/YiffWarePWLua/blob/main/YiffWarePW.lua
        end)
    
        menu.action(TUNABLES_OTH, TRANSLATE("7 Years GTA Online Playtime"), {}, TRANSLATE("Make your account look like you've played GTA Online for 7 years."), function()
            STAT_SET_INT("MP_PLAYING_TIME", 0)
            STAT_INCREMENT("MP_PLAYING_TIME", 60 * 60 * 24 * 365 * 7 * 1000)
            FORCE_CLOUD_SAVE()
        end)
        
    ---

    CUSTOM_MONEY_REMOVER = menu.slider(TUNABLES, TRANSLATE("Custom Money Remover"), {"hcmoneyremove"}, TRANSLATE("The best way to remove GTA Online banked money up to $2B at once!"), 0, 2000000000, 5000, 10000, function(Value)
        menu.show_warning(TUNABLES, CLICK_MENU, TRANSLATE("Do you sure remove your money?"), function()
            SET_INT_TUNABLE_GLOBAL(-156036296, Value) -- https://www.unknowncheats.me/forum/3276092-post3.html
            SET_PACKED_STAT_BOOL_CODE(15382, true) -- Makes able to buy the Ballistic Armor
            SET_PACKED_STAT_BOOL_CODE(9461, true) -- Makes you have the Ballistic Armor

            menu.trigger_commands("nopimenugrey on")
            if util.is_interaction_menu_open() then PAD.SET_CONTROL_VALUE_NEXT_FRAME(0, 244, 1) end
            SET_INT_GLOBAL(2710428, 85) -- Renders Ballistic Equipment Services screen of the Interaction Menu
            PAD.SET_CONTROL_VALUE_NEXT_FRAME(0, 244, 1) -- Presses M
            PAD.SET_CONTROL_VALUE_NEXT_FRAME(0, 176, 1) -- Presses Enter
            NOTIFY(TRANSLATE("Because this feature works via requesting the Ballistic Armor, it'll be dropped nearby soon."))
        end, function()
            menu.focus(CUSTOM_MONEY_REMOVER)
            NOTIFY(TRANSLATE("Successfully cancelled!"))
        end)
    end)

---

INSTANT_FINISH = menu.list(TOOLS, TRANSLATE("Instant Finish Heists & Others"), {"hcinsfin"}, "", function(); end)

    menu.divider(INSTANT_FINISH, TRANSLATE("Heists"))

        menu.action(INSTANT_FINISH, TRANSLATE("Cayo / Tuners / ULP / Agency"), {"hcinsfincp"}, TRANSLATE("Note that may works for some of other preps. Only 'Quick Preset' is compatible with Cayo Perico Heist."), function() -- https://www.unknowncheats.me/forum/3524081-post3.html
            menu.trigger_commands("scripthost")

            SET_INT_LOCAL("fm_mission_controller_2020", 50150, 9) -- 'fm_mission_controller_2020' instant finish variable?
            SET_INT_LOCAL("fm_mission_controller_2020", 50150 + 1770 + 1, 50) -- 'fm_mission_controller_2020' instant finish variable?
        end)

        menu.action(INSTANT_FINISH, TRANSLATE("Casino Aggressive / Classic"), {"hcinsfincah"}, TRANSLATE("Note that if you don't use Heist Control's automated Casino Heist presets, won't get money.") .. "\n\n" .. TRANSLATE("Instant finishing Pacific Standard heist won't work."), function()
            menu.trigger_commands("scripthost")
            
            SET_INT_LOCAL("fm_mission_controller", 19746 + 1741, 80) -- Casino Aggressive Kills & Act 3
            SET_INT_LOCAL("fm_mission_controller", 19746 + 2686, 10000000) -- How much did you take in the casino and pacific standard heist
            SET_INT_LOCAL("fm_mission_controller", 27489 + 859 + 18, 99999) -- 'fm_mission_controller' instant finish variable?
            SET_INT_LOCAL("fm_mission_controller", 31621 + 69, 99999) -- 'fm_mission_controller' instant finish variable?
        end)

        menu.action(INSTANT_FINISH, TRANSLATE("Doomsday"), {"hcinsfindooms"}, TRANSLATE("Note that you may press multiple times to instant finish the heist."), function()
            menu.trigger_commands("scripthost")

            SET_INT_LOCAL("fm_mission_controller", 19746, 12) -- ???, 'fm_mission_controller' instant finish variable?
            SET_INT_LOCAL("fm_mission_controller", 19746 + 1741, 150) -- Casino Aggressive Kills & Act 3
            SET_INT_LOCAL("fm_mission_controller", 27489 + 859 + 18, 99999) -- 'fm_mission_controller' instant finish variable?
            SET_INT_LOCAL("fm_mission_controller", 31621 + 69, 99999) -- 'fm_mission_controller' instant finish variable?
            SET_INT_LOCAL("fm_mission_controller", 31621 + 97, 80) -- Act 1 Kills? Seem not to work
        end)
        
    ---

    menu.divider(INSTANT_FINISH, TRANSLATE("Others"))

        menu.action(INSTANT_FINISH, TRANSLATE("Bunker"), {"hcinsfinbk"}, TRANSLATE("(Selling Only)"), function() -- https://www.unknowncheats.me/forum/3521137-post39.html
            SET_INT_LOCAL("gb_gunrunning", 1211 + 774, 0)
        end)

        menu.action(INSTANT_FINISH, TRANSLATE("Air Cargo"), {"hcinsfinac"}, TRANSLATE("(Selling Only)"), function() -- https://www.unknowncheats.me/forum/3513482-post37.html
            SET_INT_LOCAL("gb_smuggler", 1934 + 1035, GET_INT_LOCAL("gb_smuggler", 1934 + 1078))
        end)

        menu.action(INSTANT_FINISH, TRANSLATE("Acid Lab"), {"hcinsfinacid"}, TRANSLATE("(Selling Only)"), function() -- https://www.unknowncheats.me/forum/3641612-post76.html
            SET_INT_LOCAL("fm_content_acid_lab_sell", 5483 + 1358 + 2, 9)
            SET_INT_LOCAL("fm_content_acid_lab_sell", 5483 + 1358 + 3, 10)
            SET_INT_LOCAL("fm_content_acid_lab_sell", 5483 + 1293, 2)
        end)

        menu.action(INSTANT_FINISH, TRANSLATE("Headhunter"), {"hcinsfinhh"}, "", function() -- Thanks to @stand.gg on Discord helping me code this
            local Blip = HUD.GET_FIRST_BLIP_INFO_ID(432) -- Headhunter Target Blip
            while HUD.DOES_BLIP_EXIST(Blip) do
                local Ped = HUD.GET_BLIP_INFO_ID_ENTITY_INDEX(Blip)
                ENTITY.SET_ENTITY_HEALTH(Ped, 0)
                Blip = HUD.GET_NEXT_BLIP_INFO_ID(432)
                util.yield_once()
            end

            util.yield(2000)
            players.set_wanted_level(players.user(), 0)
        end)

        menu.action(INSTANT_FINISH, TRANSLATE("Sightseer"), {"hcinsfinss"}, "", function() -- https://www.unknowncheats.me/forum/3488056-post24.html
            SET_INT_LOCAL("gb_sightseer", 254 + 1 + NETWORK.PARTICIPANT_ID_TO_INT() * 6 + 5, 3)
        end)
        
    ---

---

REMOTE_ACCESS = menu.list(TOOLS, TRANSLATE("Remote Access"), {"hcapp"}, TRANSLATE("Let you open remotely some of apps for missions.") .. "\n\n" .. TRANSLATE("Note that you don't have the app, some of functions won't work."), function(); end)

    menu.textslider(REMOTE_ACCESS, TRANSLATE("Bunker"), {"hcappbunker"}, "", {
        TRANSLATE("Open"),
        TRANSLATE("Close"),
    }, function()
        START_SCRIPT("appbunkerbusiness")
    end)
    menu.textslider(REMOTE_ACCESS, TRANSLATE("Air Cargo"), {"hcappaircargo"}, "", {
        TRANSLATE("Open"),
        TRANSLATE("Close"),
    }, function()
        START_SCRIPT("appsmuggler")
    end)
    menu.textslider(REMOTE_ACCESS, TRANSLATE("Nightclub"), {"hcappnightclub"}, "", {
        TRANSLATE("Open"),
        TRANSLATE("Close"),
    }, function()
        START_SCRIPT("appbusinesshub")
    end)
    menu.textslider(REMOTE_ACCESS, TRANSLATE("San Andreas Mercenaries Terminal"), {"hcappsanandreasmercenaries"}, "", {
        TRANSLATE("Open"),
        TRANSLATE("Close"),
    }, function()
        START_SCRIPT("appavengeroperations")
    end)
    menu.textslider(REMOTE_ACCESS, TRANSLATE("Agency"), {"hcappagency"}, TRANSLATE("Note that you don't have the app, some of functions won't work."), {
        TRANSLATE("Open"),
        TRANSLATE("Close"),
    }, function()
        START_SCRIPT("appfixersecurity")
    end)
    menu.action(REMOTE_ACCESS, TRANSLATE("The Open Road"), {"hcapptheopenroad"}, "(" .. TRANSLATE("Biker Business Management") .. ")", function()
        START_SCRIPT("appbikerbusiness")
    end)
    menu.action(REMOTE_ACCESS, TRANSLATE("Master Control Terminal"), {"hcappmastercontrol"}, "", function()
        START_SCRIPT("apparcadebusinesshub")
    end)
    menu.action(REMOTE_ACCESS, TRANSLATE("Touchscreen Terminal"), {"hcapptouchscreen"}, "(" .. TRANSLATE("Terrobyte") .. ")", function()
        START_SCRIPT("apphackertruck")
    end)

---

COOLDOWN_TIMER = menu.list(TOOLS, TRANSLATE("Heist Cooldown Timers"), {"hctimer"}, TRANSLATE("There is cooldown time when after you do play any heists once. The cooldown time is 20 mins, so this let you know the time passed or not."), function(); end)

    TimerCayo = {
        Total = 1200,
        Min = 0,
        Plus = 0,
        Sec = 0,
    }
    TimerCasino = {
        Total = 1200,
        Min = 0,
        Plus = 0,
        Sec = 0,
    }
    TimerDooms = {
        Total = 1200,
        Min = 0,
        Plus = 0,
        Sec = 0,
    }
    TimerClassic = {
        Total = 1200,
        Min = 0,
        Plus = 0,
        Sec = 0,
    }
    TimerRobbery = {
        Total = 1200,
        Min = 0,
        Plus = 0,
        Sec = 0,
    }
    TimerAgency = {
        Total = 1200,
        Min = 0,
        Plus = 0,
        Sec = 0,
    }
    TimerCustom = {
        Total = nil,
        Min = 0,
        Plus = 0,
        Sec = 0,
    }

    TimerPos = {
        X = 0.97,
        Y = 0.12,
    }

    menu.divider(COOLDOWN_TIMER, TRANSLATE("Settings"))

        TIMER_POS = menu.list(COOLDOWN_TIMER, TRANSLATE("Text Position"), {}, "", function(); end)

            menu.divider(TIMER_POS, TRANSLATE("Heist Control"))

                menu.slider(TIMER_POS, "X", {"hctimerx"}, "", 0, 100, 97, 1, function(x)
                    TimerPos.X = x / 100
                end)
                menu.slider(TIMER_POS, "Y", {"hctimery"}, "", 0, 100, 12, 1, function(y)
                    TimerPos.Y = y / 100
                end)

            ---

            menu.divider(TIMER_POS, "Stand")

                menu.link(TIMER_POS, menu.ref_by_command_name("infotextx"), true)
                menu.link(TIMER_POS, menu.ref_by_command_name("infotexty"), true)

            ---

        ---

        TIMER_COLOR = menu.list(COOLDOWN_TIMER, TRANSLATE("Text Color"), {}, "", function(); end)

            TIMER_COLOR_HC = menu.list(TIMER_COLOR, TRANSLATE("Heist Control"), {}, "", function(); end)

            TIMER_COLOR_STAND = menu.list(TIMER_COLOR, "Stand", {}, "", function(); end)

                HudCommandRef = menu.ref_by_path("Stand>Settings>Appearance>Colours>HUD Colour", 44)
                HudChildren = menu.get_children(HudCommandRef)
                for _, child in pairs(HudChildren) do
                    menu.link(TIMER_COLOR_STAND, child)
                end

            ---

        ---

        IS_STAND_OVERLAY = menu.toggle(COOLDOWN_TIMER, TRANSLATE("Use Stand's Overlay"), {}, TRANSLATE("Enabled: Use Stand's Overlay & Settings: Game > Info Overlay") .. "\n\n" .. TRANSLATE("Disabled: Use Heist Control's Overlay & Settings"), function(); end)
        CUSTOM_TIMER_TIME = menu.slider(COOLDOWN_TIMER, TRANSLATE("Set Custom Time (Seconds)"), {"hctimertime"}, "", 0, 259200, 1200, 60, function(); end)

    ---

    menu.divider(COOLDOWN_TIMER, TRANSLATE("Heist Cooldown Timer"))

        TIMER_CAYO = menu.toggle(COOLDOWN_TIMER, TRANSLATE("Cayo Perico Heist"), {"hctimercp"}, "", function()
            if not menu.get_value(TIMER_CAYO) then
                TimerCayo.Total, TimerCayo.Min, TimerCayo.Plus, TimerCayo.Sec = 1200, 0, 0, 0
            end

            while menu.get_value(TIMER_CAYO) do
                if TimerCayo.Total == 0 then
                    NOTIFY(TRANSLATE("Cayo Perico Heist") .. " - " .. TRANSLATE("Cooldown time has passed, you can play the heist again!"))
                    menu.apply_default_state(TIMER_CAYO)
                end

                TimerCayo.Total = TimerCayo.Total - 1
                TimerCayo.Min = math.floor(TimerCayo.Total / 60)
                TimerCayo.Plus = TimerCayo.Plus + 1
                TimerCayo.Sec = 1200 - TimerCayo.Min * 60 - TimerCayo.Plus
                util.yield(1000)
            end
        end)

        TIMER_CASINO = menu.toggle(COOLDOWN_TIMER, TRANSLATE("Diamond Casino Heist"), {"hctimercah"}, "", function()
            if not menu.get_value(TIMER_CASINO) then
                TimerCasino.Total, TimerCasino.Min, TimerCasino.Plus, TimerCasino.Sec = 1200, 0, 0, 0
            end

            while menu.get_value(TIMER_CASINO) do
                if TimerCasino.Total == 0 then
                    NOTIFY(TRANSLATE("Diamond Casino Heist") .. " - " .. TRANSLATE("Cooldown time has passed, you can play the heist again!"))
                    menu.apply_default_state(TIMER_CASINO)
                end

                TimerCasino.Total = TimerCasino.Total - 1
                TimerCasino.Min = math.floor(TimerCasino.Total / 60)
                TimerCasino.Plus = TimerCasino.Plus + 1
                TimerCasino.Sec = 1200 - TimerCasino.Min * 60 - TimerCasino.Plus
                util.yield(1000)
            end
        end)

        TIMER_DOOMS = menu.toggle(COOLDOWN_TIMER, TRANSLATE("Doomsday Heist"), {"hctimerdooms"}, "", function()
            if not menu.get_value(TIMER_DOOMS) then
                TimerDooms.Total, TimerDooms.Min, TimerDooms.Plus, TimerDooms.Sec = 1200, 0, 0, 0
            end

            while menu.get_value(TIMER_DOOMS) do
                if TimerDooms.Total == 0 then
                    NOTIFY(TRANSLATE("Doomsday Heist") .. " - " .. TRANSLATE("Cooldown time has passed, you can play the heist again!"))
                    menu.apply_default_state(TIMER_DOOMS)
                end
                
                TimerDooms.Total = TimerDooms.Total - 1
                TimerDooms.Min = math.floor(TimerDooms.Total / 60)
                TimerDooms.Plus = TimerDooms.Plus + 1
                TimerDooms.Sec = 1200 - TimerDooms.Min * 60 - TimerDooms.Plus
                util.yield(1000)
            end
        end)

        TIMER_CLASSIC = menu.toggle(COOLDOWN_TIMER, TRANSLATE("Classic Heist"), {"hctimerclassic"}, "", function()
            if not menu.get_value(TIMER_CLASSIC) then
                TimerClassic.Total, TimerClassic.Min, TimerClassic.Plus, TimerClassic.Sec = 1200, 0, 0, 0
            end

            while menu.get_value(TIMER_CLASSIC) do
                if TimerClassic.Total == 0 then
                    NOTIFY(TRANSLATE("Classic Heist") .. " - " .. TRANSLATE("Cooldown time has passed, you can play the heist again!"))
                    menu.apply_default_state(TIMER_CLASSIC)
                end

                TimerClassic.Total = TimerClassic.Total - 1
                TimerClassic.Min = math.floor(TimerClassic.Total / 60)
                TimerClassic.Plus = TimerClassic.Plus + 1
                TimerClassic.Sec = 1200 - TimerClassic.Min * 60 - TimerClassic.Plus
                util.yield(1000)
            end
        end)

        TIMER_ROBBERY = menu.toggle(COOLDOWN_TIMER, TRANSLATE("LS Tuners Robbery"), {"hctimerrobbery"}, "", function()
            if not menu.get_value(TIMER_ROBBERY) then
                TimerRobbery.Total, TimerRobbery.Min, TimerRobbery.Plus, TimerRobbery.Sec = 1200, 0, 0, 0
            end

            while menu.get_value(TIMER_ROBBERY) do
                if TimerRobbery.Total == 0 then
                    NOTIFY(TRANSLATE("LS Tuners Robbery") .. " - " .. TRANSLATE("Cooldown time has passed, you can play the heist again!"))
                    menu.apply_default_state(TIMER_ROBBERY)
                end

                TimerRobbery.Total = TimerRobbery.Total - 1
                TimerRobbery.Min = math.floor(TimerRobbery.Total / 60)
                TimerRobbery.Plus = TimerRobbery.Plus + 1
                TimerRobbery.Sec = 1200 - TimerRobbery.Min * 60 - TimerRobbery.Plus
                util.yield(1000)
            end
        end)

        TIMER_AGENCY = menu.toggle(COOLDOWN_TIMER, TRANSLATE("The Contract: Agency"), {"hctimeragency"}, "", function()
            if not menu.get_value(TIMER_AGENCY) then
                TimerAgency.Total, TimerAgency.Min, TimerAgency.Plus, TimerAgency.Sec = 1200, 0, 0, 0
            end

            while menu.get_value(TIMER_AGENCY) do
                if TimerAgency.Total == 0 then
                    NOTIFY(TRANSLATE("The Contract: Agency") .. " - " .. TRANSLATE("Cooldown time has passed, you can play the heist again!"))
                    menu.apply_default_state(TIMER_AGENCY)
                end

                TimerAgency.Total = TimerAgency.Total - 1
                TimerAgency.Min = math.floor(TimerAgency.Total / 60)
                TimerAgency.Plus = TimerAgency.Plus + 1
                TimerAgency.Sec = 1200 - TimerAgency.Min * 60 - TimerAgency.Plus
                util.yield(1000)
            end
        end)

        TIMER_CUSTOM = menu.toggle(COOLDOWN_TIMER, TRANSLATE("Custom Timer"), {"hctimercustom"}, "", function()
            if menu.get_value(TIMER_CUSTOM) then
                TimerCustom.Total = menu.get_value(CUSTOM_TIMER_TIME)
            else
                TimerCustom.Total, TimerCustom.Min, TimerCustom.Plus, TimerCustom.Sec = menu.get_value(CUSTOM_TIMER_TIME), 0, 0, 0
            end

            while menu.get_value(TIMER_CUSTOM) do
                if TimerCustom.Total == 0 then
                    NOTIFY(TRANSLATE("Custom Timer") .. " - " .. TRANSLATE("Cooldown time has passed, you can play the heist again!"))
                    menu.apply_default_state(TIMER_CUSTOM)
                end

                TimerCustom.Total = TimerCustom.Total - 1
                TimerCustom.Min = math.floor(TimerCustom.Total / 60)
                TimerCustom.Plus = TimerCustom.Plus + 1
                TimerCustom.Sec = menu.get_value(CUSTOM_TIMER_TIME) - TimerCustom.Min * 60 - TimerCustom.Plus
                util.yield(1000)
            end
        end)

    ---

    TimerRGB = HEX_TO_RGBA("Stand", READ_SETTING("Timer Color Code"))
    util.create_tick_handler(function()
        local TimerTypes = { -- { is_timer_enabled, timer_name, minutes, seconds }
            { menu.get_value(TIMER_CAYO), TRANSLATE("Cayo Perico Heist"), TimerCayo.Min, TimerCayo.Sec },
            { menu.get_value(TIMER_CASINO), TRANSLATE("Diamond Casino Heist"), TimerCasino.Min, TimerCasino.Sec },
            { menu.get_value(TIMER_DOOMS), TRANSLATE("Doomsday Heist"), TimerDooms.Min, TimerDooms.Sec },
            { menu.get_value(TIMER_CLASSIC), TRANSLATE("Classic Heist"), TimerClassic.Min, TimerClassic.Sec },
            { menu.get_value(TIMER_ROBBERY), TRANSLATE("LS Tuners Robbery"), TimerRobbery.Min, TimerRobbery.Sec },
            { menu.get_value(TIMER_AGENCY), TRANSLATE("The Contract: Agency"), TimerAgency.Min, TimerAgency.Sec },
            { menu.get_value(TIMER_CUSTOM), TRANSLATE("Custom Timer"), TimerCustom.Min, TimerCustom.Sec },
        }
        local IsOneOfThemEnabled = false
        for i = 1, #TimerTypes do
            if TimerTypes[i][1] then
                IsOneOfThemEnabled = true
            end
        end
        if not IsOneOfThemEnabled then return end

        for i = 1, #TimerTypes do
            for j = 3, 4 do
                if TimerTypes[i][j] < 10 then
                    TimerTypes[i][j] = 0 .. TimerTypes[i][j]
                end
            end
        end
        if menu.get_value(IS_STAND_OVERLAY) then
            for i = 1, #TimerTypes do
                if TimerTypes[i][1] then
                    util.draw_debug_text(TimerTypes[i][2] .. " [" .. TimerTypes[i][3] .. ":" .. TimerTypes[i][4] .. "]")
                end
            end
        else
            if IsOneOfThemEnabled then
                for i = 1, #TimerTypes do
                    directx.draw_text(TimerPos.X, TimerPos.Y + 0.02 * (i - 1), TimerTypes[i][2] .. " [" .. TimerTypes[i][3] .. ":" .. TimerTypes[i][4] .. "]", 2, 0.6, TimerRGB, false)
                end
            end
        end
    end)

---

NEAR_PED_CAM = menu.list(TOOLS, TRANSLATE("Manage Nearby Peds And Cams"), {}, "", function(); end)

    menu.divider(NEAR_PED_CAM, TRANSLATE("Peds"))

        menu.toggle_loop(NEAR_PED_CAM, TRANSLATE("Ignore You"), {"hcignoreped"}, TRANSLATE("Makes hostile peds (Included guards, polices, and gangs) ignore you even saw you. Except for the rare case, they don't shoot to you."), function()
            PLAYER.SET_EVERYONE_IGNORE_PLAYER(players.user(), true) -- https://github.com/ozarkv40/ozark-src, <3
        end, function()
            PLAYER.SET_EVERYONE_IGNORE_PLAYER(players.user(), false)
        end)

        menu.action(NEAR_PED_CAM, TRANSLATE("Remove Weapons"), {"hcremwepon"}, "", function()
            for _, ped in pairs(entities.get_all_peds_as_handles()) do
                if IS_PLAYER_PED(ped) or ENTITY.IS_ENTITY_DEAD(ped) then goto out end
                WEAPON.REMOVE_ALL_PED_WEAPONS(ped, true)
                ::out::
            end
        end)

        menu.action(NEAR_PED_CAM, TRANSLATE("Delete"), {"hcdelped"}, "", function()
            for _, ped in pairs(entities.get_all_peds_as_handles()) do
                if IS_PLAYER_PED(ped) or ENTITY.IS_ENTITY_DEAD(ped) then goto out end
                entities.delete_by_handle(ped)
                ::out::
            end
        end)

        menu.action(NEAR_PED_CAM, TRANSLATE("Kill"), {"hckillped"}, "", function()
            for _, ped in pairs(entities.get_all_peds_as_handles()) do
                if IS_PLAYER_PED(ped) or ENTITY.IS_ENTITY_DEAD(ped) then goto out end
                ENTITY.SET_ENTITY_HEALTH(ped, 0)
                ::out::
            end
        end)

        menu.action(NEAR_PED_CAM, TRANSLATE("Shoot"), {"hcshootped"}, "", function() -- Thanks for coding this, @pedro9558 on Discord
            for _, ped in pairs(entities.get_all_peds_as_handles()) do
                if IS_PLAYER_PED(ped) or ENTITY.IS_ENTITY_DEAD(ped) then goto out end
                if PED.GET_VEHICLE_PED_IS_USING(ped) ~= 0 then TASK.CLEAR_PED_TASKS_IMMEDIATELY(ped) end

                local PedPos = ENTITY.GET_ENTITY_COORDS(ped)
                local AddPos = ENTITY.GET_ENTITY_COORDS(ped)
                AddPos.z = AddPos.z + 1
                MISC.SHOOT_SINGLE_BULLET_BETWEEN_COORDS(AddPos.x, AddPos.y, AddPos.z, PedPos.x, PedPos.y, PedPos.z, 1000, false, 0xC472FE2, players.user_ped(), false, true, 1000)
                ::out::
            end
        end)

    ---

    menu.divider(NEAR_PED_CAM, TRANSLATE("Cameras"))

        AllCamLists = {
            util.joaat("prop_cctv_cam_01a"),
            util.joaat("prop_cctv_cam_01b"),
            util.joaat("prop_cctv_cam_02a"),
            util.joaat("prop_cctv_cam_03a"),
            util.joaat("prop_cctv_cam_04a"),
            util.joaat("prop_cctv_cam_04c"),
            util.joaat("prop_cctv_cam_05a"),
            util.joaat("prop_cctv_cam_06a"),
            util.joaat("prop_cctv_cam_07a"),
            util.joaat("prop_cs_cctv"),
            util.joaat("p_cctv_s"),
            util.joaat("hei_prop_bank_cctv_01"),
            util.joaat("hei_prop_bank_cctv_02"),
            util.joaat("ch_prop_ch_cctv_cam_02a"),
            util.joaat("xm_prop_x17_server_farm_cctv_01"),
        }

        menu.action(NEAR_PED_CAM, TRANSLATE("Taze"), {"hctazecam"}, "", function()
            for _, ent in pairs(entities.get_all_objects_as_handles()) do
                for __, cam in pairs(AllCamLists) do
                    if ENTITY.GET_ENTITY_MODEL(ent) == cam then
                        local CamPos = ENTITY.GET_ENTITY_COORDS(ent)
                        local AddPos = ENTITY.GET_ENTITY_COORDS(ent)
                        AddPos.z = AddPos.z + 1
                        MISC.SHOOT_SINGLE_BULLET_BETWEEN_COORDS(AddPos.x, AddPos.y, AddPos.z, CamPos.x, CamPos.y, CamPos.z, 1000, false, 0x3656C8C1, players.user_ped(), false, true, 1000)
                    end
                end
            end
        end)

        menu.action(NEAR_PED_CAM, TRANSLATE("Delete"), {"hcdelcam"}, "", function()
            for _, cam in pairs(AllCamLists) do
                DELETE_OBJECT_BY_HASH(cam)
            end
        end)

    ---

---

BYPASS_DOOR = menu.list(TOOLS, TRANSLATE("Bypass Locked Doors"), {}, "", function(); end)

    menu.divider(BYPASS_DOOR, TRANSLATE("Settings"))

        IMPROVED_NO_CLIP_SPEED = menu.slider(BYPASS_DOOR, TRANSLATE("Speed of Improved No Clip"), {"hcspeednoclip"}, "", 1, 100, 10, 5, function()
            local CommandRef = menu.ref_by_command_name("levitatespeed")
            menu.trigger_command(CommandRef, menu.get_value(IMPROVED_NO_CLIP_SPEED) * 0.01)
        end)

        DISTANCE_TPTF = menu.slider(BYPASS_DOOR, TRANSLATE("Distance of Teleport To Forward"), {"hcdistptf"}, "", 1, 100, 10, 5, function(); end)

    ---

    menu.divider(BYPASS_DOOR, TRANSLATE("Bypass Locked Doors"))

        IMPROVED_NO_CLIP = menu.toggle(BYPASS_DOOR, TRANSLATE("Improved No Clip"), {"hcnoclip"}, "", function() -- From Command Box Scripts: No Clip
            local Commands = { -- { command_ref, arg }
                { menu.ref_by_command_name("levitate"), "on" },
                { menu.ref_by_command_name("levitatespeed"), menu.get_value(IMPROVED_NO_CLIP_SPEED) * 0.01 },
                { menu.ref_by_command_name("levitatesprintmultiplier"), "0.50" },
                { menu.ref_by_command_name("levitatepassivemin"), "0" },
                { menu.ref_by_command_name("levitatepassivemax"), "0" },
                { menu.ref_by_command_name("levitatepassivespeed"), "0" },
                { menu.ref_by_command_name("levitateassistup"), "0" },
                { menu.ref_by_command_name("levitateassistdown"), "0" },
                { menu.ref_by_command_name("levitateassistdeadzone"), "0" },
                { menu.ref_by_command_name("levitateassistsnap"), "0" },
            }
            if menu.get_value(IMPROVED_NO_CLIP) then
                for i = 1, #Commands do
                    menu.trigger_command(Commands[i][1], Commands[i][2])
                end
            else
                for i = 1, #Commands do
                    menu.apply_default_state(Commands[i][1])
                end
            end
        end)

        menu.action(BYPASS_DOOR, TRANSLATE("Teleport To Forward"), {"hctptf"}, "", function() -- Credit goes to LanceScript Reloaded
            local Handle = PED.IS_PED_IN_ANY_VEHICLE(players.user_ped(), false) and PED.GET_VEHICLE_PED_IS_IN(players.user_ped(), false) or players.user_ped()
            local Pos = ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(Handle, 0, menu.get_value(DISTANCE_TPTF) * 0.1, 0)
            ENTITY.SET_ENTITY_COORDS_NO_OFFSET(Handle, Pos.x, Pos.y, Pos.z, false, false, false)
        end)

    ---

---

menu.list_action(TOOLS, TRANSLATE("Request Services"), {"hcreq"}, "", {
    { 1, TRANSLATE("MOC"), {"moc"}, "" },
    { 2, TRANSLATE("Avenger"), {"avenger"}, "" },
    { 3, TRANSLATE("Terrorbyte"), {"terrorbyte"}, "" },
    { 4, TRANSLATE("Kosatka"), {"kosatka"}, "" },
    { 5, TRANSLATE("Acid Lab"), {"acidlab"}, "" },
    { 6, TRANSLATE("Dingy"), {"dingy"}, "" },
    { 7, TRANSLATE("Motorbike"), {"motorbike"}, "" },
    { 8, TRANSLATE("Ballistic Armor"), {"ballisticarmor"}, "" },
    { 9, TRANSLATE("RC Tank"), {"rctank"}, "" },
}, function(index)
    if index == 1 then
        SET_INT_GLOBAL(2738934 + 945, 1)
    elseif index == 2 then
        SET_INT_GLOBAL(2738934 + 953, 1)
    elseif index == 3 then
        SET_INT_GLOBAL(2738934 + 958, 1)
    elseif index == 4 then
        SET_INT_GLOBAL(2738934 + 975, 1)
    elseif index == 5 then
        SET_INT_GLOBAL(2738934 + 959, 1)
    elseif index == 6 then
        SET_INT_GLOBAL(2738934 + 977, 1)
    elseif index == 7 then
        SET_INT_GLOBAL(2738934 + 1009, 1)
    elseif index == 8 then
        SET_INT_GLOBAL(2738934 + 916, 1)
    elseif index == 9 then
        SET_INT_GLOBAL(2738934 + 6932, 1)
    end
end)

PRESET_STAT_EDITOR = menu.list(TOOLS, TRANSLATE("Preset Stat Editor"), {}, "", function(); end)

    PLAYTIME_EDITOR = menu.list(PRESET_STAT_EDITOR, TRANSLATE("Playtime"), {}, "", function(); end)

        menu.divider(PLAYTIME_EDITOR, TRANSLATE("Method"))

            IS_TIME_ADDING_METHOD = menu.toggle(PLAYTIME_EDITOR, TRANSLATE("Add Additional Playtime"), {}, TRANSLATE("Enabled: Add Method") .. "\n" .. TRANSLATE("- Adds Up To Your Current Playtime") .. "\n\n" .. TRANSLATE("Disabled: Overwrite Method") .. "\n" .. TRANSLATE("- Overwrites Your Current Playtime") .. "\n\n" .. TRANSLATE("Note: The overwrite method supports up to 24.8 days, but add method supports up to 50,000 days"), function(); end)

        ---
        
        menu.divider(PLAYTIME_EDITOR, TRANSLATE("Modify Stat"))

            PLAYTIME_DAYS = menu.slider(PLAYTIME_EDITOR, TRANSLATE("Days"), {"hcplaytimedays"}, "", 0, 50000, 0, 1, function(); end)
            PLAYTIME_HOURS = menu.slider(PLAYTIME_EDITOR, TRANSLATE("Hours"), {"hcplaytimehours"}, "", 0, 50000, 0, 1, function(); end)
            PLAYTIME_MINS = menu.slider(PLAYTIME_EDITOR, TRANSLATE("Minutes"), {"hcplaytimemins"}, "", 0, 50000, 0, 1, function(); end)

        ---

        menu.divider(PLAYTIME_EDITOR, TRANSLATE("Set Stat"))

            PlaytimeStats = {
                { TRANSLATE("Total Playtime"), "TOTAL_PLAYING_TIME" },
                { TRANSLATE("GTA Online Playtime"), "MP_PLAYING_TIME" },
                { TRANSLATE("Deathmatches"), "MPPLY_TOTAL_TIME_SPENT_DEATHMAT" },
                { TRANSLATE("Races"), "MPPLY_TOTAL_TIME_SPENT_RACES" },
                { TRANSLATE("Creator"), "MPPLY_TOTAL_TIME_MISSION_CREATO" },
            }
            for i = 1, #PlaytimeStats do
                menu.action(PLAYTIME_EDITOR, PlaytimeStats[i][1], {}, "", function()
                    if not menu.get_value(IS_TIME_ADDING_METHOD) then
                        STAT_SET_INT(PlaytimeStats[i][2], menu.get_value(PLAYTIME_DAYS) * 86400000 + menu.get_value(PLAYTIME_HOURS) * 3600000 + menu.get_value(PLAYTIME_MINS) * 60000)
                    else
                        STAT_INCREMENT(PlaytimeStats[i][2], menu.get_value(PLAYTIME_DAYS) * 86400000 + menu.get_value(PLAYTIME_HOURS) * 3600000 + menu.get_value(PLAYTIME_MINS) * 60000)
                    end
    
                    NOTIFY
                    (
                        TRANSLATE("Successfully set!") .. "\n\n" .. 
                        TRANSLATE("Days") .. ": " .. menu.get_value(PLAYTIME_DAYS) .. "\n" .. 
                        TRANSLATE("Hours") .. ": " .. menu.get_value(PLAYTIME_HOURS) .. "\n" .. 
                        TRANSLATE("Mins") .. ": " .. menu.get_value(PLAYTIME_MINS)
                    )

                    FORCE_CLOUD_SAVE()
                end)
            end

        ---

    ---

    CASH_EDITOR = menu.list(PRESET_STAT_EDITOR, TRANSLATE("Cash Earned & Spent"), {}, "", function(); end)

        menu.divider(CASH_EDITOR, TRANSLATE("Modify Stat"))

            CASH_EDITOR_AMOUNT = menu.slider(CASH_EDITOR, TRANSLATE("Cash Amount"), {"hccasheditor"}, "($)", INT_MIN, INT_MAX, 0, 10000, function(); end)

        ---

        menu.divider(CASH_EDITOR, TRANSLATE("Set Stat"))

            menu.action(CASH_EDITOR, TRANSLATE("Total Earned"), {}, "", function()
                STAT_SET_INT("MPPLY_TOTAL_EVC", menu.get_value(CASH_EDITOR_AMOUNT))
                FORCE_CLOUD_SAVE()
            end)
            menu.action(CASH_EDITOR, TRANSLATE("Total Spent"), {}, "", function()
                STAT_SET_INT("MPPLY_TOTAL_SVC", menu.get_value(CASH_EDITOR_AMOUNT))
                FORCE_CLOUD_SAVE()
            end)

        ---

        menu.divider(CASH_EDITOR, TRANSLATE("Related Earned Cash"))

            menu.action(CASH_EDITOR, TRANSLATE("Jobs"), {}, "", function()
                STAT_SET_INT("MONEY_EARN_JOBS", menu.get_value(CASH_EDITOR_AMOUNT))
                FORCE_CLOUD_SAVE()
            end)
            menu.action(CASH_EDITOR, TRANSLATE("Betting"), {}, "", function()
                STAT_SET_INT("MONEY_EARN_BETTING", menu.get_value(CASH_EDITOR_AMOUNT))
                FORCE_CLOUD_SAVE()
            end)
            menu.action(CASH_EDITOR, TRANSLATE("Shared"), {}, "", function()
                STAT_SET_INT("MONEY_EARN_SHARED", menu.get_value(CASH_EDITOR_AMOUNT))
                FORCE_CLOUD_SAVE()
            end)
            menu.action(CASH_EDITOR, TRANSLATE("Car Sales"), {}, "", function()
                STAT_SET_INT("MONEY_EARN_SELLING_VEH", menu.get_value(CASH_EDITOR_AMOUNT))
                FORCE_CLOUD_SAVE()
            end)
            menu.action(CASH_EDITOR, TRANSLATE("Others"), {}, "", function()
                STAT_SET_INT("MONEY_EARN_GOOD_SPORT", menu.get_value(CASH_EDITOR_AMOUNT))
                FORCE_CLOUD_SAVE()
            end)
            menu.action(CASH_EDITOR, TRANSLATE("Picked Up"), {}, "", function()
                STAT_SET_INT("MONEY_EARN_PICKED_UP", menu.get_value(CASH_EDITOR_AMOUNT))
                FORCE_CLOUD_SAVE()
            end)

        ---

    CREW_LEVEL_EDITOR = menu.list(PRESET_STAT_EDITOR, TRANSLATE("Crew Level"), {}, "", function(); end)

        for i = 0, 4 do
            menu.divider(CREW_LEVEL_EDITOR, TRANSLATE("Crew") .. " " .. i)

                CREW_RP = menu.readonly(CREW_LEVEL_EDITOR, TRANSLATE("Crew RP"))
                CREW_ID = menu.readonly(CREW_LEVEL_EDITOR, TRANSLATE("Crew ID"))
                CREW_CURRENT = menu.readonly(CREW_LEVEL_EDITOR, TRANSLATE("Current Crew Level"))
                CREW_LEVEL = menu.slider(CREW_LEVEL_EDITOR, TRANSLATE("Choose Crew Level"), { "hccrewlevel" .. i }, "", 1, 8000, 1, 1, function(); end)
                menu.action(CREW_LEVEL_EDITOR, TRANSLATE("Set Crew Level"), { "hcsetcrewlevel" .. i }, "", function()
                    local RpForRank = util.get_rp_required_for_rank(menu.get_value(CREW_LEVEL))
                    STAT_SET_INT("MPPLY_CREW_LOCAL_XP_" .. i, RpForRank)
                end)

                menu.set_value(CREW_RP, STAT_GET_INT("MPPLY_CREW_LOCAL_XP_" .. i))
                menu.set_value(CREW_ID, STAT_GET_INT("MPPLY_CREW_" .. i .. "_ID"))
                menu.set_value(CREW_CURRENT, STAT_GET_INT("MPPLY_CURRENT_CREW_RANK"))

            ---
        end

    ---

---

GTAHAXUI_STAT_EDITOR = menu.list(TOOLS, TRANSLATE("GTAHaXUI Stat Editor"), {}, TRANSLATE("GTAHaXUI is a free mod menu for editing stats, globals, and locals from UnknownCheats. Heist Control can help you using customizable GTAHaXUI's stat txt files. Note that you can download the files by googling easily."), function(); end)

    GTAHAXUI_STAT_EDITOR_LIST = menu.list(GTAHAXUI_STAT_EDITOR, TRANSLATE("Load Custom Stat Files"), {"hchaxui"}, TRANSLATE("Supported Stat Types") .. "\n\n" .. "- 'INT32': " .. TRANSLATE("For normal numbers, generally called 'Int(eger)'") .. "\n" .. "- 'INT64': " .. TRANSLATE("For more big numbers") .. "\n" .. "- 'BOOL': " ..  TRANSLATE("'true' or 'false'"), function(); end)

        menu.divider(GTAHAXUI_STAT_EDITOR_LIST, TRANSLATE("Tools"))

            menu.action(GTAHAXUI_STAT_EDITOR_LIST, TRANSLATE("Refresh"), {}, TRANSLATE("Refresh the list via restarting Heist Control."), function()
                WRITE_SETTING("Saved Command Name", "hchaxui")
                util.restart_script()
            end)

        ---

        menu.divider(GTAHAXUI_STAT_EDITOR_LIST, TRANSLATE("Load Custom Stat Files"))

            local HaxUIFiles = {} -- { file_name }
            for idx, file_dir in pairs(filesystem.list_files(FolderDirs.HaxUI)) do
                if string.contains(file_dir, ".txt") then 
                    menu.list(GTAHAXUI_STAT_EDITOR_LIST, DIR_TO_FILE_NAME("GTAHaXUI", file_dir), { "hchaxui" .. idx }, "", function(); end)
                    table.insert(HaxUIFiles, DIR_TO_FILE_NAME("GTAHaXUI", file_dir))
                end
            end

            for idx1, file_name in pairs(HaxUIFiles) do
                local open = io.open(FolderDirs.HaxUI .. file_name .. ".txt", "r")
                local Contents = {}
                for line in open:lines() do
                    table.insert(Contents, line)
                end
                open:close()

                local StatTypes = { -- https://www.unknowncheats.me/forum/2689198-post2471.html
                    "INT32",
                    "INT64",
                    "BOOL",
                }
                local HelpTexts = {
                    Comment = TRANSLATE("Perfect. The file has consisted of the most ideal format. Go ahead!"),
                    Type = "N/A",
                    NumOfLine = #Contents,
                    InvalidLine = 0,
                    MPx = 0,
                    MPPLY = 0,
                }
                for _, file_content in pairs(Contents) do
                    for __, stat_type in pairs(StatTypes) do
                        if string.contains(file_content, stat_type) then -- If Heist Control detects GTAHaXUI's file stat type
                            HelpTexts.Type = stat_type
                            goto out
                        end
                    end
                end
                for _, file_content in pairs(Contents) do
                    if string.startswith(file_content, "$MP") then -- If at least one of the valid stats are included
                        HelpTexts.Type = "AUTO"
                        goto out
                    end
                end
                ::out::

                local Stats = {} -- { stat_name, value }
                for idx2, file_content in pairs(Contents) do
                    if string.startswith(file_content, "$MPPLY_") then -- If a MPPLY stat
                        if Contents[idx2+1] ~= nil then
                            if not string.startswith(Contents[idx2+1], "$MP") then
                                local _, i = string.find(file_content, "$MPPLY_")
                                local Stat = string.sub(file_content, i - 5, string.len(file_content))
                                Stat = string.upper(Stat)
                                HelpTexts.MPPLY = HelpTexts.MPPLY + 1
                                table.insert(Stats, { Stat, Contents[idx2+1] })
                            else
                                HelpTexts.InvalidLine = HelpTexts.InvalidLine + 1
                            end
                        end
                    elseif string.startswith(file_content, "$MP") then -- If a MPx stat
                        if Contents[idx2+1] ~= nil then
                            if not string.startswith(Contents[idx2+1], "$MP") then
                                local _, i = string.find(file_content, "$MP")
                                local Stat = string.sub(file_content, i + 3, string.len(file_content))
                                Stat = string.upper(Stat)
                                HelpTexts.MPx = HelpTexts.MPx + 1
                                table.insert(Stats, { Stat, Contents[idx2+1] })
                            else
                                HelpTexts.InvalidLine = HelpTexts.InvalidLine + 1
                            end
                        end
                    else -- If not a stat name
                        if Contents[idx2-1] ~= nil then -- If not the first line of the txt file
                            if not string.startswith(Contents[idx2-1], "$MP") then -- Unless the previous line is stat name
                                HelpTexts.InvalidLine = HelpTexts.InvalidLine + 1
                            end
                        end
                    end
                end

                if HelpTexts.InvalidLine ~= 0 then
                    HelpTexts.Comment = TRANSLATE("Seems some of lines are invalid. But it doesn't matter too much. Go ahead.")
                end
                if HelpTexts.Type == "N/A" then
                    HelpTexts.Comment = TRANSLATE("Please check this file has been typed for GTAHaXUI. Applying it won't affect anything in GTAV.")
                end

                local CommandRef = menu.ref_by_command_name("hchaxui" .. idx1)
                menu.divider(CommandRef, TRANSLATE("Tools"))

                    menu.action(CommandRef, TRANSLATE("Refresh"), {}, TRANSLATE("Refresh the list via restarting Heist Control."), function()
                        WRITE_SETTING("Saved Command Name", "hchaxui" .. idx1)
                        util.restart_script()
                    end)

                    menu.action(CommandRef, TRANSLATE("Apply Stats"), {}, "", function()
                        if HelpTexts.Type == "N/A" then NOTIFY(HelpTexts.Comment) return end
                        menu.show_warning(CommandRef, CLICK_MENU, TRANSLATE("Do you sure apply the number of stats?") .. "\n" .. "- " .. HelpTexts.MPx + HelpTexts.MPPLY, function()
                            for i = 1, #Stats do
                                if string.isalpha(string.lower(Stats[i][2])) then -- If stat value is BOOL
                                    if string.contains(Stats[i][2], "true") then
                                        STAT_SET_BOOL(Stats[i][1], true)
                                    elseif string.contains(Stats[i][2], "false") then
                                        STAT_SET_BOOL(Stats[i][1], false)
                                    end
                                else
                                    if INT_MIN <= tonumber(Stats[i][2]) or tonumber(Stats[i][2]) <= INT_MAX then -- If stat value is INT32
                                        STAT_SET_INT(Stats[i][1], tonumber(Stats[i][2]))
                                    else -- If stat value is INT64
                                        STAT_SET_INT(Stats[i][1], 0)
                                        STAT_INCREMENT(Stats[i][1], tonumber(Stats[i][2]))
                                    end
                                end
                            end

                            NOTIFY(TRANSLATE("Successfully set!"))
                            FORCE_CLOUD_SAVE()
                        end, function()
                            menu.focus(CommandRef)
                            NOTIFY(TRANSLATE("Successfully cancelled!"))
                        end)
                    end)

                    menu.action(CommandRef, TRANSLATE("Delete This File"), {}, "", function()
                        menu.show_warning(CommandRef, CLICK_MENU, TRANSLATE("Do you sure delete this file? It cannot be recovered!"), function()
                            local Children = menu.get_children(CommandRef)
                            for _, child in pairs(Children) do
                                menu.delete(child)
                            end
                            os.remove(FolderDirs.HaxUI .. file_name .. ".txt")

                            menu.delete(CommandRef)
                            NOTIFY(TRANSLATE("Successfully deleted!"))
                        end, function()
                            menu.trigger_command(CommandRef)
                            NOTIFY(TRANSLATE("Successfully cancelled!"))
                        end)
                    end)

                ---

                menu.divider(CommandRef, TRANSLATE("Comment"))

                    menu.action(CommandRef, TRANSLATE("Comment"), {}, HelpTexts.Comment, function(); end)

                ---

                menu.divider(CommandRef, TRANSLATE("Information"))

                    menu.action(CommandRef, TRANSLATE("Type") .. ": " .. HelpTexts.Type, {}, TRANSLATE("Except for 'N/A', doesn't matter what it is. Heist Control will make it compatible with GTAV using all methods.") .. "\n\n" .. TRANSLATE("'N/A' means this file isn't for setting stats for GTAHaXUI."), function(); end)
                    menu.action(CommandRef, TRANSLATE("Total Number of Lines") .. ": " .. HelpTexts.NumOfLine, {}, TRANSLATE("It means the number of lines of the loaded file."), function(); end)
                    menu.action(CommandRef, TRANSLATE("Number of Invalid Lines") .. ": " .. HelpTexts.InvalidLine, {}, TRANSLATE("Unless this value is '0', some of stats may not be applied, but doesn't matter unless almost of total number of lines are invalid."), function(); end)
                    menu.action(CommandRef, TRANSLATE("Number of 'MPx' Stats") .. ": " .. HelpTexts.MPx, {}, TRANSLATE("It means the number of 'MP0_ABCDE_FGHIJ' or 'MP1_ABCDE_FGHIJ' format stats."), function(); end)
                    menu.action(CommandRef, TRANSLATE("Number of 'MPPLY' Stats") .. ": " .. HelpTexts.MPPLY, {}, TRANSLATE("It means the number of 'MPPLY_ABCDE_FGHIJ' format stats."), function(); end)

                ---
            end

        ---

    ---

    menu.action(GTAHAXUI_STAT_EDITOR, TRANSLATE("Open Folder for Custom Stat Files"), {}, FolderDirs.HaxUI, function()
        util.open_folder(FolderDirs.HaxUI)
    end)
    
    menu.hyperlink(GTAHAXUI_STAT_EDITOR, TRANSLATE("Visit GTAHaXUI"), "https://www.unknowncheats.me/forum/grand-theft-auto-v/461672-gtahax-1-58-external-thread-3-a.html", "")
    
---

INFO_SPOOFING = menu.list(TOOLS, TRANSLATE("Stat Spoofing"), {}, TRANSLATE("Change your session to apply!"), function(); end)

    INFO_SPOOFING_WALLET_MONEY = menu.list(INFO_SPOOFING, TRANSLATE("Wallet Money"), {}, "", function(); end) -- freemode.c

        menu.toggle_loop(INFO_SPOOFING_WALLET_MONEY, TRANSLATE("Enable"), {}, "", function()
            SET_INT_GLOBAL((1845281 + 1 + players.user() * 883) + 206 + 3, menu.get_value(WALLET_MONEY_SPOOFING))
        end, function()
            SET_INT_GLOBAL((1845281 + 1 + players.user() * 883) + 206 + 3, players.get_wallet(players.user()))
        end)

        WALLET_MONEY_SPOOFING = menu.slider(INFO_SPOOFING_WALLET_MONEY, TRANSLATE("Value"), {"hcwalletmoneyspoofing"}, "", INT_MIN, INT_MAX, players.get_wallet(players.user()), 10000, function(); end)

    --- 

    INFO_SPOOFING_MONEY = menu.list(INFO_SPOOFING, TRANSLATE("Total Money"), {}, "", function(); end) -- freemode.c

        menu.toggle_loop(INFO_SPOOFING_MONEY, TRANSLATE("Enable"), {}, "", function()
            SET_INT_GLOBAL((1845281 + 1 + players.user() * 883) + 206 + 56, menu.get_value(TOTAL_MONEY_SPOOFING))
        end, function()
            SET_INT_GLOBAL((1845281 + 1 + players.user() * 883) + 206 + 56, players.get_money(players.user()))
        end)

        TOTAL_MONEY_SPOOFING = menu.slider(INFO_SPOOFING_MONEY, TRANSLATE("Value"), {"hctotalmoneyspoofing"}, "", INT_MIN, INT_MAX, players.get_bank(players.user()), 10000, function(); end)

    ---

    INFO_SPOOFING_KILL = menu.list(INFO_SPOOFING, TRANSLATE("Kills"), {}, "", function(); end) -- freemode.c

        menu.toggle_loop(INFO_SPOOFING_KILL, TRANSLATE("Enable"), {}, "", function()
            SET_INT_GLOBAL((1845281 + 1 + players.user() * 883) + 206 + 28, menu.get_value(KILL_SPOOFING))
        end, function()
            SET_INT_GLOBAL((1845281 + 1 + players.user() * 883) + 206 + 28, players.get_kills(players.user()))
        end)

        KILL_SPOOFING = menu.slider(INFO_SPOOFING_KILL, TRANSLATE("Value"), {"hckillspoofing"}, "", INT_MIN, INT_MAX, players.get_kills(players.user()), 1, function(); end)

    ---

    INFO_SPOOFING_DEATH = menu.list(INFO_SPOOFING, TRANSLATE("Deaths"), {}, "", function(); end)

        menu.toggle_loop(INFO_SPOOFING_DEATH, TRANSLATE("Enable"), {}, "", function() -- freemode.c
            SET_INT_GLOBAL((1845281 + 1 + players.user() * 883) + 206 + 29, menu.get_value(DEATH_SPOOFING))
        end, function()
            SET_INT_GLOBAL((1845281 + 1 + players.user() * 883) + 206 + 29, players.get_deaths(players.user()))
        end)

        DEATH_SPOOFING = menu.slider(INFO_SPOOFING_DEATH, TRANSLATE("Value"), {"hcdeathspoofing"}, "", INT_MIN, INT_MAX, players.get_deaths(players.user()), 1, function(); end)

    ---

---

TOOLS_OTH = menu.list(TOOLS, TRANSLATE("Others"), {}, "", function(); end)

    menu.toggle_loop(TOOLS_OTH, TRANSLATE("Disable Transaction Errors"), {"hcnotransactionerr"}, "", function()
        if not util.is_session_started() then return end

        if GET_INT_GLOBAL(4537461) == 4 or 20 then
            SET_INT_GLOBAL(4537455, 0) -- https://github.com/jonaaa20/RecoverySuite
        end
    end)

    menu.toggle_loop(TOOLS_OTH, TRANSLATE("Auto Become a CEO/MC"), {"hcautobecomeceomc"}, TRANSLATE("Detects the cases that you should be a CEO/MC to start some heists/missions, make you one of it."), function()
        if not util.is_session_started() then return end

        local CEOLabels = {
            "HIP_HELP_BBOSS",
            "HIP_HELP_BBOSS2",
            "HPBOARD_REG",
            "HPBOARD_REGB",
            "HT_NOT_BOSS",
            "HUB_PC_BLCK",
            "NHPG_HELP_BBOSS",
            "OFF_COMP_REG",
            "TRUCK_PC_BLCK",
            "TUN_HELP_BBOSS",
            "BUNK_PC_BLCK",
            "CH_FINALE_REG",
            "CH_PREP_REG",
            "CH_SETUP_REG",
            "FHQ_PC_BLCK",
            "HANG_PC_BLCK",
            "HFBOARD_REG",
            "HIBOARD_REG",
            "HIBOARD_REGB",
            "MP_OFF_LAP_1",
            "MP_OFF_LAP_PC",
            "OFF_COMP_REG",
            "ARC_PC_BLCK",
            "ARC_HT_0",
            "ARC_HT_0B",
            "ACID_SLL_HLP2",
            "HRBOARD_REG",
            "HRBOARD_REGB",
        }
        for _, label in pairs(CEOLabels) do
            if IS_HELP_MSG_DISPLAYED(label) then
                if players.get_boss(players.user()) == -1 then menu.trigger_commands("ceostart") end
                if players.get_org_type(players.user()) == 1 then menu.trigger_commands("ceotomc") end
                NOTIFY(TRANSLATE("Seems like you need to be a CEO. So, Heist Control made you become CEO."))
            end
        end

        local MCLabels = {
            "CLBHBKRREG",
            "ARC_HT_1",
            "ARC_HT_1B",
        }
        for _, label in pairs(MCLabels) do
            if IS_HELP_MSG_DISPLAYED(label) then
                if players.get_boss(players.user()) == -1 then menu.trigger_commands("mcstart") end
                if players.get_org_type(players.user()) == 0 then menu.trigger_commands("ceotomc") end
                NOTIFY(TRANSLATE("Seems like you need to be a MC President. So, Heist Control made you become MC President."))
            end
        end
    end)

    menu.toggle_loop(TOOLS_OTH, TRANSLATE("Auto Collect Targets"), {}, TRANSLATE("Collects targets via clicking left mouse button. Note that there are some delays before disabling completely."), function()
        if HUD.IS_PAUSE_MENU_ACTIVE() then return end -- If pause menu is showing
        if util.spoof_script("appinternet", function(); end) then return end -- If Internet on cellphone is showing

        PAD.SET_CONTROL_VALUE_NEXT_FRAME(0, 237, 1) -- Clicks left mouse button
        util.yield(50)
    end)

    menu.textslider(TOOLS_OTH, TRANSLATE("Skips Conversation With NPCs"), {}, TRANSLATE("Skipping white texts where are center, under of the screen.") .. "\n\n" .. TRANSLATE("Would helpful for skipping something cannot be skipped using 'Game > Skip Cutscene'"), {
        TRANSLATE("All"),
        TRANSLATE("One Line"),
    }, function(index)
        if AUDIO.IS_SCRIPTED_CONVERSATION_ONGOING() then
            if index == 1 then
                AUDIO.STOP_SCRIPTED_CONVERSATION(false)
            elseif index == 2 then
                AUDIO.SKIP_TO_NEXT_SCRIPTED_CONVERSATION_LINE()
            end
        end
    end)

    menu.action(TOOLS_OTH, TRANSLATE("Clear All Help Messages"), {}, TRANSLATE("Clearing a black box with white help texts where are left, above of the screen.") .. "\n\n" .. TRANSLATE("Would helpful for skipping something cannot be skipped using 'Game > Skip Cutscene'"), function()
        HUD.CLEAR_ALL_HELP_MESSAGES()
    end)

    menu.action(TOOLS_OTH, TRANSLATE("Motion Skip"), {}, TRANSLATE("a.k.a Pause Menu Glitch") .. "\n\n" .. TRANSLATE("Can be used for getting targets slightly more fast."), function()
        TASK.CLEAR_PED_TASKS_IMMEDIATELY(players.user_ped())
    end)
    
---

---


--- Setting & About HC

menu.divider(INFOS, TRANSLATE("Language"))

    HC_LANG = menu.list_action(INFOS, TRANSLATE("Language") .. ": " .. READ_SETTING("Language"), {"hclang"}, "", {
        { 1, "Custom", {"custom"}, "" },
        { 2, "Chinese - 中文", {"chinese"}, "" },
        { 3, "English", {"english"}, "" },
        { 4, "French - français", {"french"}, "" },
        { 5, "German - Deutsch", {"german"}, "" },
        { 6, "Italian - Italiano", {"italian"}, "" },
        { 7, "Japanese - 日本語", {"japanese"}, "" },
        { 8, "Korean - 한국어", {"korean"}, "Using this language without the preset font will cause the situation that almost of characters are broken." .. "\n\n" .. "Please enter this command on Command Box: 'presetfont nanumgothic'" },
        { 9, "Polish - Polski", {"polish"}, "" },
        { 10, "Portuguese - Português", {"portuguese"}, "" },
        { 11, "Russian - русский", {"russian"}, "" },
        { 12, "Spanish - Español", {"spanish"}, "" },
        { 13, "Vietnamese - Tiếng Việt", {"vietnamese"}, "Using this language without the preset font will cause the situation that almost of characters are broken." .. "\n\n" .. "Please enter this command on Command Box: 'presetfont bevietnamprolight'"},
    }, function(_, name)
        menu.show_warning(HC_LANG, CLICK_MENU, TRANSLATE("Would you like to restart HC now?"), function()
            WRITE_SETTING("Language", name)
            util.restart_script()
        end, function()
            menu.focus(HC_LANG)
            NOTIFY(TRANSLATE("Successfully cancelled!"))
        end)
    end)

    HC_LANG_GEN = menu.list(INFOS, TRANSLATE("Generate Translation Template"), {}, "", function(); end)

        menu.divider(HC_LANG_GEN, TRANSLATE("Generate New Translation File"))

            TRANS_FILE_NAME = menu.text_input(HC_LANG_GEN, TRANSLATE("Name of The File"), {"hcgennewtrans"}, TRANSLATE("HC will overwrite if name of the file already exists."), function(); end, "Custom")

            menu.action(HC_LANG_GEN, TRANSLATE("Generate New Translation File"), {}, TRANSLATE("This action will take a few seconds. Please wait for it patiently, don't press multiple times."), function()
                local Name = menu.get_value(TRANS_FILE_NAME)
                if Name == "" then
                    NOTIFY(TRANSLATE("Please input name of the file!"))
                    menu.focus(TRANS_FILE_NAME)
                    return
                end

                menu.trigger_commands("hcupdatetransenglish")
                NOTIFY(TRANSLATE("Waiting for updating English.txt..."))
                util.yield(5000)

                local File = Name .. ".txt"
                local GeneratedFileDir = FolderDirs.Lang .. File
                io.copyto(FolderDirs.Lang .. "English.txt", GeneratedFileDir)
                NOTIFY(TRANSLATE("Waiting for generating:") .. " " .. File .. "...")
                repeat util.yield_once() until filesystem.exists(GeneratedFileDir)

                NOTIFY
                (
                    File .. ": " .. TRANSLATE("Successfully Generated!") .. "\n\n" .. 
                    TRANSLATE("Directory of the file:") .. " " .. "%AppData%\\Stand\\Lua Scripts\\store\\Heist Control\\Language\\" .. File
                )
            end)

        ---

        menu.divider(HC_LANG_GEN, TRANSLATE("Update Translation File"))

            UPDATE_FILE_LIST = menu.list(HC_LANG_GEN, TRANSLATE("Update Translation File"), {"hcupdatetrans"}, "", function(); end)

                menu.divider(UPDATE_FILE_LIST, TRANSLATE("Tools"))

                    menu.action(UPDATE_FILE_LIST, TRANSLATE("Refresh"), {}, TRANSLATE("Refresh the list via restarting Heist Control."), function()
                        WRITE_SETTING("Saved Command Name", "hcupdatetrans")
                        util.restart_script()
                    end)

                ---
                
                menu.divider(UPDATE_FILE_LIST, TRANSLATE("Update Translation File"))

                    for _, path in ipairs(filesystem.list_files(FolderDirs.Lang)) do
                        if string.contains(path, ".txt") then
                            menu.action(UPDATE_FILE_LIST, DIR_TO_FILE_NAME("Language", path), {"hcupdatetrans" .. DIR_TO_FILE_NAME("Language", path)}, TRANSLATE("This action will take a few seconds. Please wait for it patiently, don't press multiple times."), function()
                                local Dir = filesystem.scripts_dir() .. SCRIPT_FILENAME
                                local open = io.open(Dir, "r")
                                local CodeTable = {}
                                for line in open:lines() do
                                    table.insert(CodeTable, line)
                                end
                                open:close()
                            
                                local GeneratedCodeTable = {}
                                local StartPos = 0
                                for _, trans in pairs(CodeTable) do
                                    while trans:find("TRANSLATE", StartPos) ~= nil do
                                        local CodeBlackListedTexts = {
                                            "TRANSLATE(Text)",
                                            '"TRANSLATE", start',
                                        }
                                        for __, Text in pairs(CodeBlackListedTexts) do
                                            if trans:find(Text) then 
                                                goto out_of_code_loop
                                            end
                                        end
                            
                                        local __, i = trans:find("TRANSLATE", StartPos)
                                        local ___, j = trans:find('")', i + 1)
                                        if i and j ~= nil then
                                            local Text = string.sub(trans, i + 3, j - 2)
                                            table.insert(GeneratedCodeTable, Text)
                                            StartPos = j + 1
                                        else
                                            goto out_of_code_loop
                                        end
                                    end
                                    
                                    ::out_of_code_loop::
                                    StartPos = 0
                                end
                                
                                ::out_of_duplicated_check_loop::
                                for idx1, code1 in pairs(GeneratedCodeTable) do
                                    for idx2, code2 in pairs(GeneratedCodeTable) do
                                        if code1 == code2 then
                                            if idx1 < idx2 then
                                                table.remove(GeneratedCodeTable, idx2)
                                                goto out_of_duplicated_check_loop
                                            end
                                        end
                                    end
                                end

                                local open = io.open(path, "r")
                                local TransTable = {}
                                for line in open:lines() do
                                    table.insert(TransTable, line)
                                end
                                open:close()

                                local GeneratedTransTable = {}
                                for _, trans in pairs(TransTable) do
                                    GeneratedTransTable[#GeneratedTransTable+1] = { nil, nil } -- { english_translation, local_language_translation }
                                end

                                local BlacklistedChars = {
                                    "#",
                                }
                                for idx, trans in pairs(TransTable) do
                                    if string.contains(trans, TransFormat) then
                                        for _, Text in pairs(BlacklistedChars) do
                                            if trans:find(Text) or trans == "" or trans == " " then
                                                goto out_of_trans_loop
                                            end
                                        end
                            
                                        local i = trans:find(TransFormat)
                                        GeneratedTransTable[idx][1] = string.sub(trans, 0, i - 1)

                                        local _, j = trans:find(TransFormat)
                                        GeneratedTransTable[idx][2] = string.sub(trans, j + 1, string.len(trans))
                                    end
                            
                                    ::out_of_trans_loop::
                                end

                                local ExistsTrans = {} -- In the Lua: Exists, In the translation: Exists
                                local NotExistTrans = {} -- In the Lua: Exists, In the translation: Not Exist
                                local NumberOfExistsTrans = 0
                                local NumberOfNotExistTrans = 0
                                for idx, _ in pairs(GeneratedTransTable) do
                                    if GeneratedTransTable[idx][1] and GeneratedTransTable[idx][2] ~= nil then
                                        for __, code in pairs(GeneratedCodeTable) do
                                            if GeneratedTransTable[idx][1] == code then
                                                table.insert(ExistsTrans, GeneratedTransTable[idx][1] .. TransFormat .. GeneratedTransTable[idx][2])
                                                NumberOfExistsTrans = NumberOfExistsTrans + 1
                                            end
                                        end
                                    end

                                    for __, code in pairs(GeneratedCodeTable) do
                                        local IsExists1 = false
                                        for i, ___ in pairs(GeneratedTransTable) do
                                            if code == GeneratedTransTable[i][1] then
                                                IsExists1 = true
                                            end
                                        end

                                        if not IsExists1 then
                                            local Translation = code .. TransFormat .. code
                                            local IsExists2 = false
                                            for ___, trans in pairs(NotExistTrans) do
                                                if Translation == trans then
                                                    IsExists2 = true
                                                end
                                            end

                                            if not IsExists2 then
                                                table.insert(NotExistTrans, Translation)
                                                NumberOfNotExistTrans = NumberOfNotExistTrans + 1
                                            end
                                        end
                                    end
                                end

                                local FinalTrans = {}
                                local ExistsNoteTrans = { -- "" = Blank, means '\n'
                                    "# DON'T REMOVE '#', OTHERWISE WILL CAUSE ERRORS!",
                                    "",
                                    "# Generated Date: " .. os.date("%m/%d/%Y %I:%M:%S %p"),
                                    "# Heist Control Version: " .. tostring(HC_VERSION),
                                    "",
                                    "# Thank you for translating Heist Control!",
                                    "# You should translate right-side of '=' character.",
                                    "# You can use all characters except '=' character.",
                                    "# Using '#' character means the line will be ignored.",
                                    "# Please join the Discord Server for Heist Control if you don't know how to translate.",
                                    "",
                                }
                                for _, trans in pairs(ExistsNoteTrans) do
                                    table.insert(FinalTrans, trans)
                                end

                                for idx, trans in pairs(ExistsTrans) do
                                    table.insert(FinalTrans, trans)
                                end

                                local NotExistNoteTrans = {
                                    "",
                                    "",
                                    "# Start of newly updated translations.",
                                    "# Translate them!",
                                    "",
                                    "",
                                }
                                if NumberOfNotExistTrans ~= 0 then
                                    for _, trans in pairs(NotExistNoteTrans) do
                                        table.insert(FinalTrans, trans)
                                    end
                                end

                                for _, trans in pairs(NotExistTrans) do
                                    table.insert(FinalTrans, trans)
                                end

                                CREATE_OR_RESET_FILE(path)
                                for _, trans in pairs(FinalTrans) do
                                    local open = io.open(path, "a+")
                                    open:write(trans .. "\n")
                                    open:close()
                                end

                                NOTIFY
                                (
                                    DIR_TO_FILE_NAME("Language", path) .. ".txt: " .. TRANSLATE("Successfully Updated!") .. "\n\n" ..
                                    TRANSLATE("- Total number of translations:") .. " " .. NumberOfExistsTrans + NumberOfNotExistTrans .. "\n\n" .. 
                                    TRANSLATE("- Number of not modified translations:") .. " " .. NumberOfExistsTrans .. "\n" .. 
                                    TRANSLATE("- Number of modified (updated) translations:") .. " " .. NumberOfNotExistTrans
                                )
                            end)
                        end
                    end

                ---

            ---

        ---

        menu.divider(HC_LANG_GEN, TRANSLATE("Tools"))

            menu.action(HC_LANG_GEN, TRANSLATE("Open Folder for Translations"), {}, FolderDirs.Lang, function()
                util.open_folder(FolderDirs.Lang)
            end)

        ---

    ---

---

menu.divider(INFOS, TRANSLATE("Settings"))

    NOTIFICATION_SETTING = menu.list(INFOS, TRANSLATE("Notification") .. ": " .. READ_SETTING("Notification Type"), {"hcnotification"}, "", function(); end)

        menu.divider(NOTIFICATION_SETTING, TRANSLATE("Notification's Style"))

            NOTIFICATION_ICON_SETTING = menu.list_action(NOTIFICATION_SETTING, TRANSLATE("Icon") .. ": " .. READ_SETTING("Notification Icon"), {}, "", {
                { 1, TRANSLATE("HC Logo"), {}, "" },
                { 2, TRANSLATE("Lester"), {}, "" },
                { 3, TRANSLATE("Legend Of Heist"), {}, "" }, 
                { 4, TRANSLATE("Skull Head"), {}, "" },
                { 5, TRANSLATE("Warstock"), {}, "" },
                { 6, TRANSLATE("Black R*"), {}, "" },
                { 7, TRANSLATE("R* Social Club"), {}, "" },
            }, function(index)
                local IconTypes = {
                    "Logo",
                    "CHAR_LESTER",
                    "CHAR_ALL_PLAYERS_CONF",
                    "CHAR_LESTER_DEATHWISH",
                    "CHAR_MILSITE",
                    "CHAR_MP_FM_CONTACT",
                    "CHAR_SOCIAL_CLUB",
                }
                WRITE_SETTING("Notification Icon Code", IconTypes[index])

                local Children = menu.get_children(NOTIFICATION_ICON_SETTING)
                for idx, ref in pairs(Children) do
                    if index == idx then
                        WRITE_SETTING("Notification Icon", menu.get_menu_name(ref))
                    end
                end

                WRITE_SETTING("Notification Type", "In-Game")
                menu.set_menu_name(NOTIFICATION_ICON_SETTING, TRANSLATE("Icon") .. ": " .. READ_SETTING("Notification Icon"))
                menu.trigger_commands("clearnotifications")
                menu.trigger_commands("clearstandnotifys")
                NOTIFY(TRANSLATE("Successfully set!"))
            end)

            NOTIFICATION_COLOR_SETTING = menu.list_action(NOTIFICATION_SETTING, TRANSLATE("Background Color") .. ": " .. READ_SETTING("Notification Color"), {}, "", {
                { 1, TRANSLATE("White"), {}, "" },
                { 2, TRANSLATE("Black"), {}, "" },
                { 3, TRANSLATE("Red"), {}, "" },
                { 4, TRANSLATE("Orange"), {}, "" },
                { 5, TRANSLATE("Yellow"), {}, "" },
                { 6, TRANSLATE("Mint"), {}, "" },
                { 7, TRANSLATE("Green"), {}, "" },
                { 8, TRANSLATE("Light Blue"), {}, "" },
            }, function(index)
                local Children = menu.get_children(NOTIFICATION_COLOR_SETTING)
                for idx, ref in pairs(Children) do
                    if index == idx then
                        WRITE_SETTING("Notification Color", menu.get_menu_name(ref))
                    end
                end
                
                local ColorTypes = {
                    160,
                    140,
                    6,
                    130,
                    180,
                    200,
                    184,
                    40,
                }
                WRITE_SETTING("Notification Color Code", ColorTypes[index])
                
                WRITE_SETTING("Notification Type", "In-Game")
                menu.set_menu_name(NOTIFICATION_COLOR_SETTING, TRANSLATE("Background Color") .. ": " .. READ_SETTING("Notification Color"))
                menu.trigger_commands("clearnotifications")
                menu.trigger_commands("clearstandnotifys")
                NOTIFY(TRANSLATE("Successfully set!"))
            end)

        ---

        menu.divider(NOTIFICATION_SETTING, TRANSLATE("Type"))

            menu.action(NOTIFICATION_SETTING, "Stand", {}, "", function()
                WRITE_SETTING("Notification Type", "Stand")         
                menu.set_menu_name(NOTIFICATION_SETTING, TRANSLATE("Notification") .. ": " .. READ_SETTING("Notification Type"))   
                NOTIFY(TRANSLATE("Successfully set!"))
            end)
            menu.action(NOTIFICATION_SETTING, TRANSLATE("In-Game"), {}, "", function()
                WRITE_SETTING("Notification Type", "In-Game")
                menu.set_menu_name(NOTIFICATION_SETTING, TRANSLATE("Notification") .. ": " .. READ_SETTING("Notification Type"))
                NOTIFY(TRANSLATE("Successfully set!"))
            end)
            menu.action(NOTIFICATION_SETTING, TRANSLATE("No Notification"), {}, "", function()
                WRITE_SETTING("Notification Type", "No Notification")
                menu.set_menu_name(NOTIFICATION_SETTING, TRANSLATE("Notification") .. ": " .. READ_SETTING("Notification Type"))
                NOTIFY(TRANSLATE("Successfully set!"))
            end)

        ---

    ---

    TIMER_SETTING = menu.list_action(INFOS, TRANSLATE("Heist Cooldown Timer") .. ": " .. READ_SETTING("Timer Color"), {"hctimercolor"}, TRANSLATE("'Stand' setting is synced with Stand's default feature: 'Stand > Settings > Appearance > Colours > AR Colour'") .. "\n\n" .. TRANSLATE("If you changed the Stand's setting while HC is still running, need to restart HC to apply."), {
        { 1, "Stand", {}, "" }, 
        { 2, TRANSLATE("Black"), {}, "" },
        { 3, TRANSLATE("White"), {}, "" },
        { 4, TRANSLATE("Red"), {}, "" },
        { 5, TRANSLATE("Orange"), {}, "" },
        { 6, TRANSLATE("Yellow"), {}, "" },
        { 7, TRANSLATE("Mint"), {}, "" }, 
        { 8, TRANSLATE("Green"), {}, "" },
        { 9, TRANSLATE("Light Blue"), {}, "" },
    }, function(index)
        local Children = menu.get_children(TIMER_SETTING)
        for idx, ref in pairs(Children) do
            if index == idx then
                WRITE_SETTING("Timer Color", menu.get_menu_name(ref))
            end
        end

        local ColorCodes = {
            "000000FF",
            "FFFFFFFF",
            "FF0000FF",
            "FFA500FF",
            "FFFF00FF",
            "A2E4B8FF",
            "008000FF",
            "ADD8E6FF",
        }
        if index ~= 1 then
            WRITE_SETTING("Timer Color Code", ColorCodes[index-1])
        else
            WRITE_SETTING("Timer Color Code", GET_STAND_STATE("AR Colour"))
        end

        TimerRGB = HEX_TO_RGBA("Stand", READ_SETTING("Timer Color Code"))
        menu.set_menu_name(TIMER_SETTING, TRANSLATE("Heist Cooldown Timer") .. ": " .. READ_SETTING("Timer Color"))
        NOTIFY(TRANSLATE("Successfully set!"))
    end)

---

menu.divider(INFOS, TRANSLATE("About HC"))

    menu.hyperlink(INFOS, TRANSLATE("Join Discord Server!"), "https://discord.gg/KTFAYQn5Xz", TRANSLATE("If you have any questions regarding Heist Control? Joining it will help you so much!") .. "\n\n" .. TRANSLATE("- Download sharable customized translations and GTAHaXUI stat files.") .. "\n" .. TRANSLATE("- Post a suggestion or an issue to improve Heist Control."))
    menu.hyperlink(INFOS, TRANSLATE("Changelog"), "https://github.com/IceDoomfist/Stand-Heist-Control/releases", TRANSLATE("If you want to know what was changed in the latest version, click me!"))

---

---



--- Others

if READ_SETTING("Saved Command Name") ~= "N/A" then
    menu.trigger_commands(READ_SETTING("Saved Command Name"))
    WRITE_SETTING("Saved Command Name", "N/A")
end

menu.trigger_commands("hcnotransactionerr")

HCTimerSettingChildren = menu.get_children(TIMER_SETTING)
for _, child in pairs(HCTimerSettingChildren) do
    menu.link(TIMER_COLOR_HC, child)
end

ForCayoPresets = { -- { command_ref, default_help_text }
    {
        { CP_REM_FEE, "" },
    },
    {
        { CP_NON_HOST_CUT, "(%)" },
        { CP_NON_HOST_CUT_LOOP, "" },     
    },
    {
        { CP_HOST_CUT, "(%)" },
        { CP_HOST_CUT_LOOP, "" },
    },
    {
        { CP_2P_CUT, "(%)" },
        { CP_2P_CUT_LOOP, "" },
    },
    {
        { CP_3P_CUT, "(%)" },
        { CP_3P_CUT_LOOP, "" },
    },
    {
        { CP_4P_CUT, "(%)" },
        { CP_4P_CUT_LOOP, "" },
    },
}
CayoPresetLists = { -- { command_ref, is_enabled }
    { QUICK_PRESET, false },
    { AUTOAMTED_SOLO_SAPPHIRE, false },
    { AUTOMATED_SOLO_RUBY, false },
    { AUTOAMTED_2P_SAPPHIRE, false },
    { AUTOAMTED_2P_RUBY, false },
    { AUTOAMTED_3P_SAPPHIRE, false },
    { AUTOAMTED_3P_RUBY, false },
    { AUTOAMTED_4P_SAPPHIRE, false },
    { AUTOAMTED_4P_RUBY, false },
}
util.create_tick_handler(function()
    local CayoEnabledPresets = 0
    for i = 1, #CayoPresetLists do
        if CayoPresetLists[i][2] then
            CayoEnabledPresets = CayoEnabledPresets + 1
        end
    end
    if CayoEnabledPresets > 1 then
        NOTIFY(TRANSLATE("Don't enable both of automated presets at once") .. " - " .. TRANSLATE("Cayo Perico Heist") .. "\n\n" .. TRANSLATE("Successfully cancelled!"))
        for i = 1, #CayoPresetLists do
            if CayoPresetLists[i][2] then
                menu.set_value(CayoPresetLists[i][1], false)
            end
        end
    end
end)

ForCasinoPresets = { -- { command_ref, value, default_help_text }
    { CAH_NON_HOST_CUT, 60, "(%)" },
    { CAH_NON_HOST_CUT_LOOP, false, "" },
    { CAH_HOST_CUT, 60, "(%)" },
    { CAH_HOST_CUT_LOOP, true, "" },
    { CAH_2P_CUT, 147, "(%)" },
    { CAH_2P_CUT_LOOP, true, "" },
    { CAH_3P_CUT, 147, "(%)" },
    { CAH_3P_CUT_LOOP, true, "" },
    { CAH_4P_CUT, 147, "(%)" },
    { CAH_4P_CUT_LOOP, true, "" },
}
CasinoPresetLists = { -- { command_ref, is_enabled }
    { DIAMOND_SS, false },
    { DIAMOND_BA, false },
    { DIAMOND_AA, false },
    { GOLD_SS, false },
    { GOLD_BA, false },
    { GOLD_AA, false },
}
util.create_tick_handler(function()
    local CasinoEnabledPresets = 0
    for i = 1, #CasinoPresetLists do
        if CasinoPresetLists[i][2] then
            CasinoEnabledPresets = CasinoEnabledPresets + 1
        end
    end
    if CasinoEnabledPresets > 1 then
        NOTIFY(TRANSLATE("Don't enable both of automated presets at once") .. " - " .. TRANSLATE("Diamond Casino Heist") .. "\n\n" .. TRANSLATE("Successfully cancelled!"))
        for i = 1, #CasinoPresetLists do
            if CasinoPresetLists[i][2] then
                menu.set_value(CasinoPresetLists[i][1], false)
            end
        end
    end
end)

ForDoomsPresets = { -- { command_ref, default_help_text }
    { DOOMS_NON_HOST_CUT, "(%)" },
    { DOOMS_NON_HOST_CUT_LOOP, "" },
    { DOOMS_HOST_CUT, "(%)" },
    { DOOMS_HOST_CUT_LOOP, "" },
    { DOOMS_2P_CUT, "(%)" },
    { DOOMS_2P_CUT_LOOP, "" },
    { DOOMS_3P_CUT, "(%)" },
    { DOOMS_3P_CUT_LOOP, "" },
    { DOOMS_4P_CUT, "(%)" },
    { DOOMS_4P_CUT_LOOP, "" },
}
DoomsPresetLists = { -- { command_ref, is_enabled }
    { DOOMS_PRESETS_ACT1, false },
    { DOOMS_PRESETS_ACT2, false },
    { DOOMS_PRESETS_ACT3, false },
}
util.create_tick_handler(function()
    local DoomsEnabledPresets = 0
    for i = 1, #DoomsPresetLists do
        if DoomsPresetLists[i][2] then
            DoomsEnabledPresets = DoomsEnabledPresets + 1
        end
    end
    if DoomsEnabledPresets > 1 then
        NOTIFY(TRANSLATE("Don't enable both of automated presets at once") .. " - " .. TRANSLATE("Doomsday Heist") .. "\n\n" .. TRANSLATE("Successfully cancelled!"))
        for i = 1, #DoomsPresetLists do
            if DoomsPresetLists[i][2] then
                menu.set_value(DoomsPresetLists[i][1], false)
            end
        end
    end
end)

TPs = {
    {
        { CAYO_TELE_COMPOUND, nil },
        { CAYO_TELE_ISLAND, nil },
        { TELEPORT_CP_KOSATKA, HUD.GET_BLIP_COORDS(SubBlip) },
    },

    {
        { CAYO_TELE_AIRSTRIP, nil },
        { CAYO_TELE_CROP_FIELDS, nil },
        { CAYO_TELE_MAIN_DOCK, nil },
        { CAYO_TELE_NORTH_DOCK, nil },
        { CAYO_TELE_ISLAND_RADIO, v3.new(5263.7124, -5407.5835, 65.24931) },
        { CAYO_TELE_ISLAND_DRAINGE_1, v3.new(5044.001, -5815.6426, -11.808871) },
        { CAYO_TELE_ISLAND_DRAINGE_2, v3.new(5053.773, -5773.2266, -5.40778) },
        { CAYO_TELE_ISLAND_SAFE_ZONE, v3.new(4771.479, -6165.737, -39.079613) },
    },

    {
        { CAYO_TELE_STORAGE, nil },
        { CAYO_TELE_VAULT, nil },
        { CAYO_TELE_COMPOUND_OFFICE, v3.new(5010.12, -5750.1353, 28.84334) },
        { CAYO_TELE_COMPOUND_FRONT_EXIT, v3.new(4990.0386, -5717.6895, 19.880217) },
    },
    {
        { CAYO_TELE_STORAGE_NORTH, v3.new(5081.0415, -5755.32, 15.829645) },
        { CAYO_TELE_STORAGE_WEST, v3.new(5006.722, -5786.5967, 17.831688) },
        { CAYO_TELE_STORAGE_SOUTH, v3.new(5027.603, -5734.682, 17.255005) },
    },
    {
        { CAYO_TELE_VAULT_PRIMARY_TARGET, v3.new(5006.7, -5756.2, 14.8) },
        { CAYO_TELE_VAULT_SECONDARY_TARGET, v3.new(4999.764160, -5749.863770, 14.840000) },
    },

    {
        { CAYO_TELE_AIRSTRIP_1, v3.new(4503.587402, -4555.740723, 2.854459) },
        { CAYO_TELE_AIRSTRIP_2, v3.new(4437.821777, -4447.841309, 3.028436) },
        { CAYO_TELE_AIRSTRIP_3, v3.new(4447.091797, -4442.184082, 5.936794) },
    },
    {
        { CAYO_TELE_CROP_FIELDS_1, v3.new(5330.527, -5269.7515, 33.18603) },
    },
    {
        { CAYO_TELE_MAIN_DOCK_1, v3.new(5193.909668, -5135.642578, 2.045917) },
        { CAYO_TELE_MAIN_DOCK_2, v3.new(4963.184570, -5108.933105, 1.670808) },
        { CAYO_TELE_MAIN_DOCK_3, v3.new(4998.709473, -5165.559570, 1.464137) },
        { CAYO_TELE_MAIN_DOCK_4, v3.new(4924.693359, -5243.244629, 1.223599) },
    },
    {
        { CAYO_TELE_NORTH_DOCK_1, v3.new(5132.558594, -4612.922852, 1.162808) },
        { CAYO_TELE_NORTH_DOCK_2, v3.new(5065.255371, -4591.706543, 1.555012) },
        { CAYO_TELE_NORTH_DOCK_3, v3.new(5090.916016, -4682.670898, 1.107098) },
    },

    {
        { TELEPORT_CAH_ENTRANCE, ArcadePos },
        { TELEPORT_CAH_IN_BOARD, v3.new(2711.773, -369.458, -54.781) },
        { TELEPORT_CAH_IN_EXIT, v3.new(2677.237, -361.494, -55.187) },
        { TELEPORT_CAH_IN_DISPOSAL, v3.new(2542.052, -214.3084, -58.722965) },
        { TELEPORT_CAH_IN_LOBBY, v3.new(2547.9192, -273.16754, -58.723003) },
        { TELEPORT_CAH_IN_DOOR, v3.new(2465.4746, -279.2276, -70.694145) },
        { TELEPORT_CAH_IN_VAULT_IN, v3.new(2515.1252, -238.91661, -70.73713) },
        { TELEPORT_CAH_IN_VAULT_OUT, v3.new(2497.5098, -238.50768, -70.7388) },
        { TELEPORT_CAH_IN_DAILY_CASH, v3.new(2520.8645, -286.30685, -58.723007) },
        { TELEPORT_CAH_OUT_GATE, v3.new(917.24634, 48.989567, 80.89892) },
        { TELEPORT_CAH_OUT_LOBBY, v3.new(965.14856, -9.05023, 80.63045) },
        { TELEPORT_CAH_OUT_DISPOSAL, v3.new(997.5346, 84.51491, 80.990555) },
    },

    {
        { TELEPORT_DOOMS_ENTRANCE, FacilityPos },
        { TELEPORT_DOOMS_SCREEN, v3.new(350.69284, 4872.308, -60.794243) },
        { TELEPORT_DOOMS_BOARD, v3.new(515.528, 4835.353, -62.587) },
        { TELEPORT_DOOMS_CELL, v3.new(512.888, 4833.033, -68.989) },
    },
}
for i = 1, #TPs do
    for j = 1, #TPs[i] do
        if TPs[i][j][2] ~= nil then
            menu.on_tick_in_viewport(TPs[i][j][1], function()
                if GET_CURSOR_POSITION() == j then
                    local Command = menu.ref_by_path("Stand>Settings>Appearance>Stream-Proof Rendering", 44)
                    if menu.get_value(Command) then return end
        
                    local PlayerPos = players.get_position(players.user())
                    local Color = HEX_TO_RGBA("Game", GET_STAND_STATE("HUD Colour"))
                    GRAPHICS.DRAW_LINE(PlayerPos.x, PlayerPos.y, PlayerPos.z, TPs[i][j][2].x, TPs[i][j][2].y, TPs[i][j][2].z, Color.r, Color.g, Color.b, Color.a)
                    HUD.LOCK_MINIMAP_POSITION(TPs[i][j][2].x, TPs[i][j][2].y)
                    local BeaconPos = v3.new(TPs[i][j][2].x, TPs[i][j][2].y, TPs[i][j][2].z)
                    util.draw_ar_beacon(BeaconPos)
                end
            end)
        else
            menu.on_tick_in_viewport(TPs[i][j][1], function()
                HUD.UNLOCK_MINIMAP_POSITION()
            end)
        end
    end
end

TPPlaces = {
    TELEPORT_CP,
    TELEPORT_CAH,
    TELEPORT_DOOMS,
}
for _, list in pairs(TPPlaces) do
    menu.on_tick_in_viewport(list, function()
        HUD.UNLOCK_MINIMAP_POSITION()
    end)
end

menu.divider(menu.my_root(), "Business Management")

--[[ https://imgur.com/a/kchuhXW

Credits:
- https://www.unknowncheats.me/forum/3337151-post1560.html  <3 boredom1234

Script created by ICYPhoenix#0727 and Ren#5219
]]
--util.require_natives(1651208000)
local IS_RELEASE_VERSION <const> = false
local IS_BETA_VERSION <const> = false
local IGNORE_VERSION_DIFFERENCE <const> = false
local THIS_RELEASE_VERSION <const> = "1.0.0"
local STAND_RESOURCE_DIR = filesystem.resources_dir()
local MB_RESOUCES_DIR = STAND_RESOURCE_DIR .. "Musiness Banager/"
local MB_TRANSLATIONS_DIR = MB_RESOUCES_DIR .. "Translations/"
local MBPrefix = ""
local og_toast = util.toast
local og_log = util.log
local nullsub = function() --[[util.toast("nullsub")]] end
util.toast = function(str, flag) assert(str != nil, "No string given") if flag ~= nil then og_toast(MBPrefix .. tostring(str), flag) else og_toast(MBPrefix .. tostring(str)) end end
util.log = function(str) assert(str != nil, "No string given") og_log(MBPrefix .. tostring(str)) end
util.yield_x = function(int) for i = 1, int do util.yield_once() end end -- yields x amount of ticks
local menu, players, entities, directx, util, v3, lang, filesystem, async_http, memory = menu, players, entities, directx, util, v3, lang, filesystem, async_http, memory

--#region natives
-- regex for removing comments in the native arguments: --\[\[(?:(?:\w)|(?:\d)|\*)*(?: \((?:(?:\w)|(?:\d)|\*)*\))*\]\] 
-- regex for finding natives in the script that have not yet been converted to local-natives: [A-Z][A-Z][A-Z]\.(?:_|[A-Z][A-Z][A-Z][A-Z][A-Z])
local nv = native_invoker
local ENTITY_SET_ENTITY_COORDS_NO_OFFSET                                = function(entity,xPos,yPos,zPos,xAxis,yAxis,zAxis)nv.begin_call();nv.push_arg_int(entity);nv.push_arg_float(xPos);nv.push_arg_float(yPos);nv.push_arg_float(zPos);nv.push_arg_bool(xAxis);nv.push_arg_bool(yAxis);nv.push_arg_bool(zAxis);nv.end_call("239A3351AC1DA385");end
local ENTITY_GET_ENTITY_COORDS                                          = function(entity,alive)nv.begin_call();nv.push_arg_int(entity);nv.push_arg_bool(alive);nv.end_call("3FEF770D40960D5A");return nv.get_return_value_vector3();end
local ENTITY_FREEZE_ENTITY_POSITION                                     = function(entity,toggle)nv.begin_call();nv.push_arg_int(entity);nv.push_arg_bool(toggle);nv.end_call("428CA6DBD1094446");end
local CAM_CREATE_CAM_WITH_PARAMS                                        = function(camName,posX,posY,posZ,rotX,rotY,rotZ,fov,p8,p9)nv.begin_call();nv.push_arg_string(camName);nv.push_arg_float(posX);nv.push_arg_float(posY);nv.push_arg_float(posZ);nv.push_arg_float(rotX);nv.push_arg_float(rotY);nv.push_arg_float(rotZ);nv.push_arg_float(fov);nv.push_arg_bool(p8);nv.push_arg_int(p9);nv.end_call("B51194800B257161");return nv.get_return_value_int();end
local CAM_DESTROY_CAM                                                   = function(cam,bScriptHostCam)nv.begin_call();nv.push_arg_int(cam);nv.push_arg_bool(bScriptHostCam);nv.end_call("865908C81A2C22E9");end
local CAM_GET_FINAL_RENDERED_CAM_FOV                                    = function()nv.begin_call();nv.end_call("80EC114669DAEFF4");return nv.get_return_value_float();end
local CAM_GET_FINAL_RENDERED_CAM_ROT                                    = function(rotationOrder)nv.begin_call();nv.push_arg_int(rotationOrder);nv.end_call("5B4E4C817FCC2DFB");return nv.get_return_value_vector3();end
local CAM_SET_CAM_ACTIVE                                                = function(cam,active)nv.begin_call();nv.push_arg_int(cam);nv.push_arg_bool(active);nv.end_call("026FB97D0A425F84");end
local CAM_RENDER_SCRIPT_CAMS                                            = function(render,ease,easeTime,p3,p4,p5)nv.begin_call();nv.push_arg_bool(render);nv.push_arg_bool(ease);nv.push_arg_int(easeTime);nv.push_arg_bool(p3);nv.push_arg_bool(p4);nv.push_arg_int(p5);nv.end_call("07E5B515DB0636FC");end
local GRAPHICS_TOGGLE_PAUSED_RENDERPHASES                               = function(toggle)nv.begin_call();nv.push_arg_bool(toggle);nv.end_call("DFC252D8A3E15AB7");end
local GRAPHICS_DONT_RENDER_IN_GAME_UI                                   = function(p0)nv.begin_call();nv.push_arg_bool(p0);nv.end_call("22A249A53034450A");end
local PAD_SET_CONTROL_VALUE_NEXT_FRAME                                  = function(padIndex,control,amount)nv.begin_call();nv.push_arg_int(padIndex);nv.push_arg_int(control);nv.push_arg_float(amount);nv.end_call("E8A25867FBA3B05E");return nv.get_return_value_bool();end
local PAD_SET_CURSOR_POSITION                                           = function(x,y)nv.begin_call();nv.push_arg_float(x);nv.push_arg_float(y);nv.end_call("FC695459D4D0E219");return nv.get_return_value_bool();end
local PLAYER_PLAYER_PED_ID                                              = function()nv.begin_call();nv.end_call("D80958FC74E988A6");return nv.get_return_value_int();end
local SYSTEM_START_NEW_SCRIPT                                           = function(scriptName,stackSize)nv.begin_call();nv.push_arg_string(scriptName);nv.push_arg_int(stackSize);nv.end_call("E81651AD79516E48");return nv.get_return_value_int();end
local SCRIPT_GET_NUMBER_OF_THREADS_RUNNING_THE_SCRIPT_WITH_THIS_HASH    = function(scriptHash)nv.begin_call();nv.push_arg_int(scriptHash);nv.end_call("2C83A9DA6BFFC4F9");return nv.get_return_value_int();end
local SCRIPT_DOES_SCRIPT_EXIST                                          = function(scriptName)nv.begin_call();nv.push_arg_string(scriptName);nv.end_call("FC04745FBE67C19A");return nv.get_return_value_bool();end
local SCRIPT_REQUEST_SCRIPT                                             = function(scriptName)nv.begin_call();nv.push_arg_string(scriptName);nv.end_call("6EB5F71AA68F2E8E");end
local SCRIPT_HAS_SCRIPT_LOADED                                          = function(scriptName)nv.begin_call();nv.push_arg_string(scriptName);nv.end_call("E6CC9F3BA0FB9EF1");return nv.get_return_value_bool();end
local SCRIPT_SET_SCRIPT_AS_NO_LONGER_NEEDED                             = function(scriptName)nv.begin_call();nv.push_arg_string(scriptName);nv.end_call("C90D2DCACD56184C");end
local STATS_STAT_GET_INT                                                = function(statHash,outValue,p2)nv.begin_call();nv.push_arg_int(statHash);nv.push_arg_pointer(outValue);nv.push_arg_int(p2);nv.end_call("767FBC2AC802EF3D");return nv.get_return_value_bool();end
local STATS_STAT_SET_INT                                                = function(statName,value,save)nv.begin_call();nv.push_arg_int(statName);nv.push_arg_int(value);nv.push_arg_bool(save);nv.end_call("B3271D7AB655B441");return nv.get_return_value_bool();end
local STATS_STAT_SET_BOOL                                               = function(statName,value,save)native_invoker.begin_call();native_invoker.push_arg_int(statName);native_invoker.push_arg_bool(value);native_invoker.push_arg_bool(save);native_invoker.end_call("4B33C4243DE0C432");return native_invoker.get_return_value_bool();end
local STATS_STAT_GET_BOOL                                               = function(statHash,outValue,p2)native_invoker.begin_call();native_invoker.push_arg_int(statHash);native_invoker.push_arg_pointer(outValue);native_invoker.push_arg_int(p2);native_invoker.end_call("11B5E6D2AE73F48E");return native_invoker.get_return_value_bool();end
local STATS_SET_PACKED_STAT_BOOL_CODE                                   = function(index,value,characterSlot)native_invoker.begin_call();native_invoker.push_arg_int(index);native_invoker.push_arg_bool(value);native_invoker.push_arg_int(characterSlot);native_invoker.end_call("DB8A58AEAA67CD07");end
local STATS_GET_PACKED_STAT_BOOL_CODE                                   = function(index,characterSlot)native_invoker.begin_call();native_invoker.push_arg_int(index);native_invoker.push_arg_int(characterSlot);native_invoker.end_call("DA7EBFC49AE3F1B0");return native_invoker.get_return_value_bool();end
local NETSHOPPING_NET_GAMESERVER_TRANSACTION_IN_PROGRESS                = function()native_invoker.begin_call()native_invoker.end_call_2(0x613F125BA3BD2EB9)return native_invoker.get_return_value_bool();end
local TERMINATE_ALL_SCRIPTS_WITH_THIS_NAME                              = function(scriptName)native_invoker.begin_call()native_invoker.push_arg_string(scriptName)native_invoker.end_call_2(0x9DC711BC69C548DF)end

--#endregion natives

local MenuLabels = {
    BUNKER="Bunker",
    BUSINESS="Business",
    MCBUSINESS="MC Business",
    WAREHOUSE="Warehouse",
    NIGHTCLUB="Nightclub",
    NIGHTCLUBSAFE="Nightclub Safe",
    SPECIALCARGO="Special Cargo",
    SELLMISSION="Sell Mission",
    BUYMISSION="Buy Mission",
    START="Start",
    MONEY="Money",
    STOCK="Stock",
    SUPPLIES="Supplies",
    CRATES="Crates",
    PRODUCT="Product",
    INFOOVERLAY="Info Overlay",
    TERRORBYTE="Terrorbyte",
    --! STOCK, SUPPLIES, PRODUCT should all be what the game calls it, or something equivalent
    --! You might want to leave TERRORBYTE the same, unless the game calls it something different

    HTTPGIVEUP="Failed to establish connection to remote.",
    HTTPINVALID="Received an invalid response from remote! This may be due to Cloudflare or your antivirus blocking the connection. Please either establish a new VPN connection, and or switch networks.",
    HTTPFAILSAFE="Activating Killswitches due to failsafe.",
    SCRIPTOUTOFDATE="Script is out of date! Please restart the script to get the latest from the repository!",

    KILLSWITCH_SAFELOOP="Killing Nightclub Safe AFK Money Loop due to killswitch",
    KILLSWITCH_SPECIALCARGO="Killing Special Cargo due to killswitch",
    KILLSWITCH_MAXSELLPRICE="Killing Max Sell Price due to killswitch",
    KILLSWITCH_AUTOCOMPLETE="Killing Auto Complete due to killswitch",

    TRANSACTIONSSTUCK_TOAST="It seems that your transactions are stuck. Please switch sessions or restart the game.",
    BEALONE_TOAST="There are too many players in your lobby! Triggering bealone",

    PREFIX_SAFELOOP="[Safe Loop] {1}",
    PREFIX_SPECIALCARGO="[Special Cargo] {1}",
    PREFIX_TOTALEARNED="Total Earned: {1}",
    PREFIX_MOTD="MOTD: {1}",
    --! {1} is a number, the amount of money earned in total.
    PREFIX="{1} {2}",
    --! This can be '[x1] x2' where x1 is the prefix, and x2 is the message. This might go unused though..

    INFO_SCWAREHOUSE="SC Warehouse {1}: {2}/{3}",
    --! {1} is slot {2} is amount {3} is capacity
    INFO_HUBBUSINESS="Hub {1}: {2}/{3}",
    --! {1} is name {2} is stock {3} is max capacity
    INFO_NCSAFE="Nightclub Safe $: {1}",
    --! {1} is value
    INFO_MCBUSINESS="MC {1}: {2}% | {3}/{4}",
    --! {1} is name {2} is supplies {3} is product {4} is capacity
    INFO_BUNKER="Bunker: {1}% | {2}/{3}",
    --! {1} is supplies {2} is product {3} is capacity

    FINDSAFERWAYS="Find safer ways to make money",
    FINDSAFERWAYS_DESC="Please at least read this before proceeding with the money options found below",

    MAXSELLPRICE="Max Sell Price",
    MAXSELLPRICE_DESC="Sell your {1} for the maximum possible price no matter how much {2} you have",
    --! {1} and {2} are the same, and may be one of the following: [STOCK], [SUPPLIES], or [PRODUCT]

    MONITOR="Monitor",

    MONITOR_EXTRA="Monitor {1}",
    MONITOR_DESC="Shows you the amount of {1} you have in your {2}, using the {3}",
    --! {1} could be [STOCK], [SUPPLIES], [PRODUCT], or [MONEY] {2} could be [NIGHTCLUBSAFE], [BUSINESS], or [WAREHOUSE]. {3} is [INFOOVERLAY] for now, but could be changed in the future.

    BYPASSCOOLDOWN="Bypass {1} Cooldown",
    --! {1} may be one of the following: [SELLMISSION], [BUYMISSION]
    BYPASSCOOLDOWN_DESC="Allows you to {1} another {2} without having to wait on a cooldown",
    --! {1} is [START] for now, and {2} could be [SELLMISSION] or [BUYMISSION] for now.

    SETPRODUCT="Set Product",
    SETPRODUCT_DESC="Set how much product you have directly",
    SETPRODUCT_TOAST="Product set.",

    MAXPRODUCTALL="Max Product of All",
    MAXPRODUCTALL_DESC="Sets all of your product amount to max",
    MAXPRODUCTALL_TOAST="All product maxed.",

    MAXPRODUCTIONSPEED="Max Production Speed",
    MCMAXPRODUCTIONSPEED_DESC="Takes effect instantly",
    NCMAXPRODUCTIONSPEED_DESC="Takes effect after a unit finishes producing",
    MAXPRODUCTIONSPEED_TOAST="Production speed maxed.",
    MAXPRODUCTIONSPEEDSLOW_TOAST="Production speed maxed. It will take effect once a good has been produced.",

    MAXIMUMCAPACITY="Maximum Capacity",
    MAXIMUMCAPACITY_DESC="Affects how much stock you can potentially hold",
    MAXIMUMCAPACITY_TOAST="Capacity modified.",

    SUPPLYPRODUCTRATIO="Supply->Product Ratio",
    SUPPLYPRODUCTRATIO_DESC="Sets how much supply it takes to make one product. Lower values means better efficiency",
    SUPPLYPRODUCTRATIO_TOAST="Ratio modified.",

    RESUPPLY="Resupply",
    RESUPPLY_DESC="Will instantly deliver supplies to your business, free of charge",

    TRIGGERPRODUCTION="Trigger Production",
    TRIGGERPRODUCTION_DESC="Puts production into effect immediately",
    TRIGGERPRODUCTION_TOAST="Production Triggered.",

    ENFORCEEASIESTMISSION="Enforce Easiest Sell Mission",
    ENFORCEEASIESTMISSION_DESC="This will make sure you always get the quickest and easiest sell mission. Although, if you're too quick you may not get paid?",

    SPECIALCARGOLIST_DESC="Note that sell values cap out at $6m.",

    SPECIALCARGOWAREHOUSE_DESC="Select which warehouse to monitor and modify, since you can own five of them.",
    SPECIALCARGOMONITOR_DESC="Displays how many special cargo crates you have in the selected warehouse",
    SPECIALCARGONOWAREHOUSE="No Warehouse",
    SPECIALCARGONOWAREHOUSE_DESC="You don't have a warehouse in this slot!",
    SPECIALCARGOMAXSELLPRICE_DESC="Changes the sell price of your CEO's Special Cargo crates to $6m. Keep this enabled to ensure proper math on future sales",
    OPENSCREEN="Open {1} Screen",
    OPENSCREEN_DESC="Opens the {1} Screen",
    --! {1} could be [TERRORBYTE] or [WAREHOUSE]
    SELLACRATE="Press To Sell A Crate",
    SELLACRATE_DESC="Automatically sells one Special Cargo Crate",

    NOTINSELECTEDWAREHOUSE_TOAST="You are not at your currently selected warehouse!",

    AUTOCOMPLETE="Autocomplete {1}",
    AUTOCOMPLETE_DESC="Makes the {1} complete automatically",
    --! {1} could be [SELLMISSION] or [BUYMISSION]

    NCLIST_DESC="Note that sell values cap out at $4m.\nDO NOT attempt to 'sell all'",
    NCREVENUE="Revenue",
    NCREVENUE_DESC="Edits how much revenue your Nightclub gains, no matter how popular you are",
    NCREVENUE_TOAST="Revenue set.",

    NCMAXPOPULARITY="Max Nightclub Popularity",
    NCMAXPOPULARITY_DESC="Sets your Nightclub popularity to 100%",
    NCMAXPOPULARITY_TOAST="Maxed Nightclub popularity.",

    NCSAFELOOP="AFK Money Loop",
    NCSAFELOOP_DESC="Open your Nightclub safe before enabling this feature!\nWill allow you to passively gain $300k every ~4-5 seconds",

    NCSAFELOOPDELAY="Loop Delay",
    NCSAFELOOPDELAY_DESC="Will set how long the afk loop waits (in milliseconds) in between major steps",
    NCSAFELOOPDELAY_TOAST="Delay modified.",

    NCSAFELOOPTRANSACTIONTIMEOUT="Transaction Timeout",
    NCSAFELOOPTRANSACTIONTIMEOUT_DESC="Sets how long to wait for a transaction to process before giving up",
    NCSAFELOOPTIMEOUTMODIFIED_TOAST="Transaction Timeout modified.",

    NCSAFELOOPSTOP="Stop Loop After $x Amount",
    NCSAFELOOPSTOP_DESC="Will stop the AFK Money Loop after you earn the set amount",
    NCSAFELOOPSTOP_TOAST="Limit set.",

    NCRESETSAFEVALUE="Reset Safe Value",
    --! Referenced in [NCSAFELOOPSAFEOVERLIMIT_TOAST]
    NCRESETSAFEVALUE_DESC="If your Nightclub Safe is above $300k or below $0 then this should fix it.",
    NCRESETSAFEVALUEWAIT_TOAST="Please wait while your Nightclub Safe is being reset.",
    NCRESETSAFEVALUESUCCESS_TOAST="Your Nightclub Safe should be reset now.",
    NCRESETSAFEVALUESKIP_TOAST="Your Nightclub Safe appears to be fine",

    NCSAFELOOPMAXIMUMVALUEREACHED_TOAST="Maximum value has been reached!",
    NCSAFELOOPNOTINNIGHTCLUB_TOAST="You don't appear to be in your Nightclub. Make sure you are in your Nightclub with the safe open before using this feature!",
    NCSAFELOOPTIMEOUT_TOAST="Seems like you've hit transaction timeout.",
    NCSAFELOOPSAFEOVERLIMIT_TOAST="Uh oh, it seems like the safe went over the limit. Use 'Reset Safe Value' then try again",
    --! References [NCRESETSAFEVALUE]
    NCSAFELOOPSOMETHINGWENTWRONG_TOAST="Something didn't go as it should... if you can reproduce this issue, please report it.",

    MCLIST_DESC="Note that sell values cap out at $2.5m.",

    BUNKERLIST_DESC="Note that sell values cap out at $2.7m.",

    TELEPORTTO="Teleport to {1}",
    TELEPORTTO_DESC="Teleports you to your {1}",
    --! {1} may be one of the following: [PROPERTY], [WAREHOUSE], [NIGHTCLUB], or [NIGHTCLUBSAFE]

    NOTINNIGHTCLUB_TOAST="You are not in your Nightclub!",

    SHOWMOTDBLANK_TOAST="The MOTD is blank.",
    WARNINGRISKY_TOAST="",

    --! Nightclub
    ALREADYINPROPERTY="You are already in your {1}!",
    --! {1} may be [NIGHTCLUB], [WAREHOUSE], [BUSINESS]
 
    --! Nightclub categories
    HUBCARGO="Cargo",
    HUBWEED="Weed",
    HUBWEAPONS="Weapons",
    HUBMETH="Meth",
    HUBCOCAINE="Cocaine",
    HUBCASH="Cash",
    HUBFORGERY="Forgery",
 
    --! MC categories
    MCFORGERY="Forgery",
    MCWEED="Weed",
    MCCASH="Cash",
    MCMETH="Meth",
    MCCOCAINE="Cocaine",
    MCBUNKER="Bunker",

    --! Special Cargo
    SPECIALCARGONOMORECRATES="You have no more crates in your warehouse!",
    SPECIALCARGONEEDCEO="You are in an MC! You need to be in a CEO.",
    SPECIALCARGOMAXCRATESOURCE="Max Crate Sourcing Amount",
    SPECIALCARGOMAXCRATESOURCE_DESC="Sets the amount of crates your staff will deliver",
    SPECIALCARGOSETDELIVERTIME="Minimize Delivery Time",
    SPECIALCARGOSETDELIVERTIME_DESC="Sets the amount of time to pass before you staff will deliver, to zero",
}

-- Register English labels now
for k, v in MenuLabels do
    MenuLabels[k] = lang.register(v)
end

local MCBusinessPropertyInfo = {
    [1]  = {name = "Paleto Bay Meth Lab",                      coords = {x = 52.903,     y =  6338.585,  z = 31.35  }, type = 3},  -- "MP_BWH_METH_1",
    [2]  = {name = "Mount Chiliad Weed Farm",                  coords = {x = 416.7524,   y =  6520.753,  z = 27.7121}, type = 1},  -- "MP_BWH_WEED_1",
    [3]  = {name = "Paleto Bay Cocaine Lockup",                coords = {x = 51.7653,    y =  6486.163,  z = 31.428 }, type = 4},  -- "MP_BWH_CRACK_1",
    [4]  = {name = "Paleto Bay Counterfeit Cash Factory",      coords = {x = -413.6606,  y =  6171.938,  z = 31.4782}, type = 2},  -- "MP_BWH_CASH_1",
    [5]  = {name = "Paleto Bay Forgery Office",                coords = {x = -163.6828,  y =  6334.845,  z = 31.5808}, type = 0},  -- "MP_BWH_FAKEID_1",
    [6]  = {name = "El Burro Heights Meth Lab",                coords = {x = 1454.671,   y =  -1651.986, z = 67     }, type = 3},  -- "MP_BWH_METH_2",
    [7]  = {name = "Downtown Vinewood Weed Farm",              coords = {x = 102.14,     y =  175.26,    z = 104.56 }, type = 1},  -- "MP_BWH_WEED_2",
    [8]  = {name = "Morningwood Cocaine Lockup",               coords = {x = -1462.622,  y =  -381.826,  z = 38.802 }, type = 4},  -- "MP_BWH_CRACK_2",
    [9]  = {name = "Vespucci Canals Counterfeit Cash Factory", coords = {x = -1171.005,  y =  -1380.922, z = 4.937  }, type = 2},  -- "MP_BWH_CASH_2",
    [10] = {name = "Textile City Forgery Office",              coords = {x = 299.071,    y =  -759.072,  z = 29.333 }, type = 0},  -- "MP_BWH_FAKEID_2",
    [11] = {name = "Senora Desert Meth Lab",                   coords = {x = 201.8909,   y =  2461.782,  z = 55.6885}, type = 3},  -- "MP_BWH_METH_3",
    [12] = {name = "San Chianski Weed Farm",                   coords = {x = 2848.369,   y =  4450.147,  z = 48.5139}, type = 1},  -- "MP_BWH_WEED_3",
    [13] = {name = "Zancudo River Cocaine Lockup",             coords = {x = 387.5332,   y =  3585.042,  z = 33.2922}, type = 4},  -- "MP_BWH_CRACK_3",
    [14] = {name = "Senora Desert Counterfeit Cash Factory",   coords = {x = 636.6344,   y =  2785.126,  z = 42.0111}, type = 2},  -- "MP_BWH_CASH_3",
    [15] = {name = "Grapeseed Forgery Office",                 coords = {x = 1657.066,   y =  4851.732,  z = 41.9882}, type = 0},  -- "MP_BWH_FAKEID_3",
    [16] = {name = "Terminal Meth Lab",                        coords = {x = 1181.44,    y =  -3113.82,  z = 6.03   }, type = 3},  -- "MP_BWH_METH_4",
    [17] = {name = "Elysian Island Weed Farm",                 coords = {x = 136.973,    y =  -2472.795, z = 5.98   }, type = 1},  -- "MP_BWH_WEED_4",
    [18] = {name = "Elysian Island Cocaine Lockup",            coords = {x = -253.31,    y =  -2591.15,  z = 5.97   }, type = 4},  -- "MP_BWH_CRACK_4",
    [19] = {name = "Cypress Flats Counterfeit Cash Factory",   coords = {x = 671.451,    y =  -2667.502, z = 6.0812 }, type = 2},  -- "MP_BWH_CASH_4",
    [20] = {name = "Elysian Island Forgery Office",            coords = {x = -331.52,    y =  -2778.97,  z = 5.12   }, type = 0},  -- "MP_BWH_FAKEID_4",
    [21] = {name = "Grand Senora Oilfields Bunker",            coords = {x = 492.8395,   y = 3014.057,   z = 39.9793}, type = 5},  -- "MP_BUNKER_1",
    [22] = {name = "Grand Senora Desert Bunker",               coords = {x = 849.603,    y = 3021.697,   z = 40.3076}, type = 5},  -- "MP_BUNKER_2",
    [23] = {name = "Route 68 Bunker",                          coords = {x = 39.5967,    y = 2930.506,   z = 54.8034}, type = 5},  -- "MP_BUNKER_3",
    [24] = {name = "Farmhouse Bunker",                         coords = {x = 1572.078,   y = 2226.001,   z = 77.2829}, type = 5},  -- "MP_BUNKER_4",
    [25] = {name = "Smoke Tree Road Bunker",                   coords = {x = 2110.019,   y = 3326.12,    z = 44.3526}, type = 5},  -- "MP_BUNKER_5",
    [26] = {name = "Thomson Scrapyard Bunker",                 coords = {x = 2489.36,    y = 3162.12,    z = 48.0015}, type = 5},  -- "MP_BUNKER_6",
    [27] = {name = "Grapeseed Bunker",                         coords = {x = 1801.273,   y = 4705.483,   z = 38.8253}, type = 5},  -- "MP_BUNKER_7",
    [28] = {name = "Paleto Forest Bunker",                     coords = {x = -755.5687,  y = 5943.835,   z = 18.9008}, type = 5},  -- "MP_BUNKER_9",
    [29] = {name = "Raton Canyon Bunker",                      coords = {x = -388.8392,  y = 4340.109,   z = 55.1741}, type = 5},  -- "MP_BUNKER_10",
    [30] = {name = "Lago Zancudo Bunker",                      coords = {x = -3031.356,  y = 3334.059,   z = 9.1805 }, type = 5},  -- "MP_BUNKER_11",
    [31] = {name = "Chumash Bunker",                           coords = {x = -3157.599,  y = 1376.695,   z = 15.866 }, type = 5},  -- "MP_BUNKER_12",
}

local WarehousePropertyInfo = {
    [1]  = {name = "Pacific Bait Storage",      capacity = 16,      coords = {x = 54.191,    y = -2569.248,  z = 6.0046 }}, -- "MP_WHOUSE_0",
    [2]  = {name = "White Widow Garage",        capacity = 16,      coords = {x = -1083.054, y = -1261.893,  z = 5.534  }}, -- "MP_WHOUSE_1",
    [3]  = {name = "Celltowa Unit",             capacity = 16,      coords = {x = 896.3665,  y = -1035.749,  z = 35.1096}}, -- "MP_WHOUSE_2",
    [4]  = {name = "Convenience Store Lockup",  capacity = 16,      coords = {x = 247.473,   y = -1956.943,  z = 23.1908}}, -- "MP_WHOUSE_3",
    [5]  = {name = "Foreclosed Garage",         capacity = 16,      coords = {x = -424.828,  y = 185.825,    z = 80.775 }}, -- "MP_WHOUSE_4",
    [6]  = {name = "Xero Gas Factory",          capacity = 111,     coords = {x = -1042.482, y = -2023.516,  z = 13.1616}}, -- "MP_WHOUSE_5",
    [7]  = {name = "Derriere Lingerie Backlot", capacity = 42,      coords = {x = -1268.119, y = -812.2741,  z = 17.1075}}, -- "MP_WHOUSE_6",
    [8]  = {name = "Bilgeco Warehouse",         capacity = 111,     coords = {x = -873.65,   y = -2735.948,  z = 13.9438}}, -- "MP_WHOUSE_7",
    [9]  = {name = "Pier 400 Utility Building", capacity = 16,      coords = {x = 274.5224,  y = -3015.413,  z = 5.6993 }}, -- "MP_WHOUSE_8",
    [10] = {name = "GEE Warehouse",             capacity = 42,      coords = {x = 1569.69,   y = -2129.792,  z = 78.3351}}, -- "MP_WHOUSE_9",
    [11] = {name = "LS Marine Building 3",      capacity = 42,      coords = {x = -315.551,  y = -2698.654,  z = 7.5495 }}, -- "MP_WHOUSE_10",
    [12] = {name = "Railyard Warehouse",        capacity = 42,      coords = {x = 499.81,    y = -651.982,   z = 24.909 }}, -- "MP_WHOUSE_11",
    [13] = {name = "Fridgit Annexe",            capacity = 42,      coords = {x = -528.5296, y = -1784.573,  z = 21.5853}}, -- "MP_WHOUSE_12",
    [14] = {name = "Disused Factory Outlet",    capacity = 42,      coords = {x = -295.8596, y = -1353.238,  z = 31.3138}}, -- "MP_WHOUSE_13",
    [15] = {name = "Discount Retail Unit",      capacity = 42,      coords = {x = 349.839,   y = 328.889,    z = 104.272}}, -- "MP_WHOUSE_14",
    [16] = {name = "Logistics Depot",           capacity = 111,     coords = {x = 926.2818,  y = -1560.311,  z = 30.7404}}, -- "MP_WHOUSE_15",
    [17] = {name = "Darnell Bros Warehouse",    capacity = 111,     coords = {x = 759.566,   y = -909.466,   z = 25.244 }}, -- "MP_WHOUSE_16",
    [18] = {name = "Wholesale Furniture",       capacity = 111,     coords = {x = 1037.813,  y = -2173.062,  z = 31.5334}}, -- "MP_WHOUSE_17",
    [19] = {name = "Cypress Warehouses",        capacity = 111,     coords = {x = 1019.116,  y = -2511.69,   z = 28.302 }}, -- "MP_WHOUSE_18",
    [20] = {name = "West Vinewood Backlot",     capacity = 111,     coords = {x = -245.3405, y = 203.3286,   z = 83.818 }}, -- "MP_WHOUSE_19",
    [21] = {name = "Old Power Station",         capacity = 42,      coords = {x = 539.346,   y = -1945.682,  z = 24.984 }}, -- "MP_WHOUSE_20",
    [22] = {name = "Walker & Sons Warehouse",   capacity = 111,     coords = {x = 96.1538,   y = -2216.4,    z = 6.1712 }}, -- "MP_WHOUSE_21",
}

local NightclubPropertyInfo = {
    [1]  = {name = "La Mesa Nightclub",           coords = {x = 757.009,   y =  -1332.32,  z = 27.1802 }},
    [2]  = {name = "Mission Row Nightclub",       coords = {x = 345.7519,  y =  -978.8848, z = 29.2681 }},
    [3]  = {name = "Strawberry Nightclub",        coords = {x = -120.906,  y =  -1260.49,  z = 29.2088 }},
    [4]  = {name = "West Vinewood Nightclub",     coords = {x = 5.53709,   y =  221.35,    z = 107.6566}},
    [5]  = {name = "Cypress Flats Nightclub",     coords = {x = 871.47,    y =  -2099.57,  z = 30.3768 }},
    [6]  = {name = "LSIA Nightclub",              coords = {x = -676.625,  y =  -2458.15,  z = 13.8444 }},
    [7]  = {name = "Elysian Island Nightclub",    coords = {x = 195.534,   y =  -3168.88,  z = 5.7903  }},
    [8]  = {name = "Downtown Vinewood Nightclub", coords = {x = 373.05,    y =  252.13,    z = 102.9097}},
    [9]  = {name = "Del Perro Nightclub",         coords = {x = -1283.38,  y =  -649.916,  z = 26.5198 }},
    [10] = {name = "Vespucci Canals Nightclub",   coords = {x = -1174.85,  y =  -1152.3,   z = 5.56128 }},
}

local HubTypesOrderedWithLabels = {
    [0] = {name = "Cargo",      label = MenuLabels.HUBCARGO},
    [1] = {name = "Weapons",    label = MenuLabels.HUBWEAPONS},
    [2] = {name = "Cocaine",    label = MenuLabels.HUBCOCAINE},
    [3] = {name = "Meth",       label = MenuLabels.HUBMETH},
    [4] = {name = "Weed",       label = MenuLabels.HUBWEED},
    [5] = {name = "Forgery",    label = MenuLabels.HUBFORGERY},
    [6] = {name = "Cash",       label = MenuLabels.HUBCASH},
}

local MCBusinessTypesOrderedWithLabels = {
    [0] = {name = "Forgery",    label = MenuLabels.MCFORGERY},
    [1] = {name = "Weed",       label = MenuLabels.MCWEED},
    [2] = {name = "Cash",       label = MenuLabels.MCCASH},
    [3] = {name = "Meth",       label = MenuLabels.MCMETH},
    [4] = {name = "Cocaine",    label = MenuLabels.MCCOCAINE},
    [5] = {name = "Bunker",     label = MenuLabels.MCBUNKER},
}

local MyBusinesses = {
    [0] = {property = 0, type = "None"},
    [1] = {property = 0, type = "None"},
    [2] = {property = 0, type = "None"},
    [3] = {property = 0, type = "None"},
    [4] = {property = 0, type = "None"},
    [5] = {property = 0, type = "None"},

    ["Forgery"] = {slot = 0, property = 0, product = 0, supplies = 0, upgraded = false},
    ["Weed"]    = {slot = 0, property = 0, product = 0, supplies = 0, upgraded = false},
    ["Cash"]    = {slot = 0, property = 0, product = 0, supplies = 0, upgraded = false},
    ["Meth"]    = {slot = 0, property = 0, product = 0, supplies = 0, upgraded = false},
    ["Cocaine"] = {slot = 0, property = 0, product = 0, supplies = 0, upgraded = false},
    ["Bunker"]  = {slot = 0, property = 0, product = 0, supplies = 0, upgraded = false, research = 0},

    ["Hub"] = {
        ["Cargo"]   = 0, -- 0 -- CEO?
        ["Weapons"] = 0, -- 1
        ["Cocaine"] = 0, -- 2
        ["Meth"]    = 0, -- 3
        ["Weed"]    = 0, -- 4
        ["Forgery"] = 0, -- 5
        ["Cash"]    = 0, -- 6
    }
}

local MenuCurrentWarehouses = {
    [0] = {"Name", {}, ""},
    [1] = {"Name", {}, ""},
    [2] = {"Name", {}, ""},
    [3] = {"Name", {}, ""},
    [4] = {"Name", {}, ""},
}

local Selected_Warehouse = 0
local NCSafePos = {x = -1615.6832, y = -3015.7546, z = -75.204994}

local tunables_global = 262145
local globals = {
    Hub = {
        MaxSellPrice = 4000000 - 2100000,
        ProSpd = 1000,
        SellCooldownActive = 1956863+28+1, -- appbusinesshub

        Cargo = {
            SellDefaultValue    = 10000,
            ProSpdDefaultValue  = 8400000,
            CapDefaultValue     = 50,
        },

        Weapons = {
            SellDefaultValue    = 5000,
            ProSpdDefaultValue  = 4800000,
            CapDefaultValue     = 100,
        },

        Cocaine = {
            SellDefaultValue    = 27000,
            ProSpdDefaultValue  = 14400000,
            CapDefaultValue     = 10,
        },

        Meth = {
            SellDefaultValue    = 11475,
            ProSpdDefaultValue  = 7200000,
            CapDefaultValue     = 20,
        },

        Weed = {
            SellDefaultValue    = 2025,
            ProSpdDefaultValue  = 2400000,
            CapDefaultValue     = 80,
        },

        Forgery = {
            SellDefaultValue    = 1350,
            ProSpdDefaultValue  = 1800000,
            CapDefaultValue     = 60,
        },

        Cash = {
            SellDefaultValue    = 4725,
            ProSpdDefaultValue  = 3600000,
            CapDefaultValue     = 40,
        },
    },

    MC = {
        MaxSellPrice = 2000000,

        Forgery = {
            Sell1DefaultValue   = 1350,
            Sell2DefaultValue   = 1.5,
            ProSpd1DefaultValue = 300000,
            ProSpd2DefaultValue = 300000,
            Ratio1DefaultValue  = 4,
            Ratio2DefaultValue  = 2,
            CapDefaultValue     = 60,
        },

        Cash = {
            Sell1DefaultValue   = 4725,
            Sell2DefaultValue   = 1.5,
            ProSpd1DefaultValue = 720000,
            ProSpd2DefaultValue = 720000,
            Ratio1DefaultValue  = 10,
            Ratio2DefaultValue  = 5,
            CapDefaultValue     = 40,
        },

        Cocaine = {
            Sell1DefaultValue   = 27000,
            Sell2DefaultValue   = 1.5,
            ProSpd1DefaultValue = 3000000,
            ProSpd2DefaultValue = 3000000,
            Ratio1DefaultValue  = 50,
            Ratio2DefaultValue  = 25,
            CapDefaultValue     = 10,
        },

        Meth = {
            Sell1DefaultValue   = 11475,
            Sell2DefaultValue   = 1.5,
            ProSpd1DefaultValue = 1800000,
            ProSpd2DefaultValue = 1800000,
            Ratio1DefaultValue  = 24,
            Ratio2DefaultValue  = 12,
            CapDefaultValue     = 20,
        },

        Weed = {
            Sell1DefaultValue   = 2025,
            Sell2DefaultValue   = 1.5,
            ProSpd1DefaultValue = 360000,
            ProSpd2DefaultValue = 360000,
            Ratio1DefaultValue  = 4,
            Ratio2DefaultValue  = 2,
            CapDefaultValue     = 80,
        },

        Bunker = {
            Sell1DefaultValue = 5000,
            Sell2DefaultValue = 1.5,
            ProSpd1DefaultValue = 600000,
            ProSpd2DefaultValue = 90000,
            ProSpd3DefaultValue = 90000,
            Ratio1DefaultValue = 10,
            Ratio2DefaultValue = 5,
            CapDefaultValue = 100,
        },
    },

    SafeLimit         = 300000,
    SafeStatus1       = 1663308, -- freemode, bitset below "CLUB_PAY"
    SafeStatus2       = 2707518, -- freemode

    MCSupplyTime    = 1663174+1, -- freemode, above "BPLJT_LOWW", if (!func_XXXXX(bVar1)), +1 because array

    SpecialCargoMaxSellPriceValue   = 6000000,

    SpecialCargoSellFuncSomething   = 1943366, -- gb_contraband_sell, PED::SET_PED_SHOOT_RATE(iParam0, == 1
    SpecialCargoDeliveryCrates      = 1882599+12, -- freemode, "SRC_CRG_TICKER_1", == 1

    IsUsingComputerScreen = 76498, -- freemode
}

local locals = {
    ----------------
    -- Special Cargo
    ----------------
    --appsecuroserv
    SpecialCargoSecuroString = "appsecuroserv",
    SpecialCargoSecuroArgs = 4592, -- arg count needed to properly start the script, possibly outdated
    SpecialCargoCurrentProperty = 737, -- warehouse property id (non-global-index based))
    SpecialCargoScreenStatus = 560, -- status: 3011 = sold? 1 = error, 3012 = confirm?
    SpecialCargoCratesToSell = 741, -- "MP_WH_SELL", "WH
    SpecialCargoSellFromOption = 742, -- ^^^^^^^ (not current property id, but buttons [1-3])
    SpecialCargoCurrentBitset = 561, -- ^^^^^^^ bit 13 controls if it is warehouse or securoserv
    SpecialCargoStartingPosX = 758, -- struct<3> Local_ -- float  (if distance to this from self is greater than 5f to this local, kill script)
    SpecialCargoStartingPosY = 758+1, -- ^^^^^^^
    SpecialCargoStartingPosZ = 758+2, -- ^^^^^^^

    --gb_contraband_sell
    SpecialCargoSellString = "gb_contraband_sell",
    SpecialCargoSellType = 545+584,
    SpecialCargoSellSubType = 545+7, -- return 5000;
    SpecialCargoSellAmount = 545+57, -- ^ in function below
    SpecialCargoSellStatus = 545+583,

    --gb_contraband_buy
    SpecialCargoBuyString = "gb_contraband_buy",
    SpecialCargoBuyComplete = 603+192,
    SpecialCargoBuyCollected = 603+186,
    SpecialCargoBuyCollected2 = 478,

    --appHackerTruck
    SpecialCargoBuyScreenString = "appHackerTruck",
    SpecialCargoBuyScreenArgs = 4592, -- arg count needed to properly start the script, possibly outdated

    ----------------
    -- NightClub
    ----------------
    NCSafeScriptString = "freemode",
    NCSafeTransactionStatus = 19938+1, -- , 39, 0);
    NCSafeAddMoneyAmount = 19938+2, -- same as above

    NCHubScriptString = "appbusinesshub",
    NCHubSellCooldown = 121, -- a local
    NCHubSellCooldownBit = 27, -- a bitset bit

    ----EZNCMission = ,

    ----------------
    -- MC
    ----------------
    MCSellScriptString = "gb_biker_contraband_sell",
    MCEZMissionStarted = 704+122, -- == 3 && (Local
    MCEZMission = 704+17, -- ^ function below

    MCLaptopString = "appbikerbusiness",
    MCLaptopCurrentProperty = 526, -- (iVar2 > -1 && iVar2 < 7) &&
}

-- Also search for [[update]]

--#region Generated by internal tooling
globals.Hub.Cargo.Sell = tunables_global+23969
globals.Hub.Cargo.ProSpd = tunables_global+23954
globals.Hub.Cargo.Cap = tunables_global+23976
globals.Hub.Weapons.Sell = tunables_global+23963
globals.Hub.Weapons.ProSpd = tunables_global+23948
globals.Hub.Weapons.Cap = tunables_global+23970
globals.Hub.Cocaine.Sell = tunables_global+23964
globals.Hub.Cocaine.ProSpd = tunables_global+23949
globals.Hub.Cocaine.Cap = tunables_global+23971
globals.Hub.Meth.Sell = tunables_global+23965
globals.Hub.Meth.ProSpd = tunables_global+23950
globals.Hub.Meth.Cap = tunables_global+23972
globals.Hub.Weed.Sell = tunables_global+23966
globals.Hub.Weed.ProSpd = tunables_global+23951
globals.Hub.Weed.Cap = tunables_global+23973
globals.Hub.Forgery.Sell = tunables_global+23967
globals.Hub.Forgery.ProSpd = tunables_global+23952
globals.Hub.Forgery.Cap = tunables_global+23974
globals.Hub.Cash.Sell = tunables_global+23968
globals.Hub.Cash.ProSpd = tunables_global+23953
globals.Hub.Cash.Cap = tunables_global+23975
globals.MC.Forgery.Sell1 = tunables_global+17319
globals.MC.Forgery.Sell2 = tunables_global+18875
globals.MC.Forgery.ProSpd1 = tunables_global+17293
globals.MC.Forgery.Ratio1 = tunables_global+17307
globals.MC.Forgery.Ratio2 = tunables_global+17313
globals.MC.Forgery.Cap = tunables_global+18744
globals.MC.Cash.Sell1 = tunables_global+17320
globals.MC.Cash.Sell2 = tunables_global+18875
globals.MC.Cash.ProSpd1 = tunables_global+17294
globals.MC.Cash.Ratio1 = tunables_global+17308
globals.MC.Cash.Ratio2 = tunables_global+17314
globals.MC.Cash.Cap = tunables_global+18752
globals.MC.Cocaine.Sell1 = tunables_global+17321
globals.MC.Cocaine.Sell2 = tunables_global+18875
globals.MC.Cocaine.ProSpd1 = tunables_global+17292
globals.MC.Cocaine.Ratio1 = tunables_global+17309
globals.MC.Cocaine.Ratio2 = tunables_global+17315
globals.MC.Cocaine.Cap = tunables_global+18736
globals.MC.Meth.Sell1 = tunables_global+17322
globals.MC.Meth.Sell2 = tunables_global+18875
globals.MC.Meth.ProSpd1 = tunables_global+17291
globals.MC.Meth.Ratio1 = tunables_global+17310
globals.MC.Meth.Ratio2 = tunables_global+17316
globals.MC.Meth.Cap = tunables_global+18728
globals.MC.Weed.Sell1 = tunables_global+17323
globals.MC.Weed.Sell2 = tunables_global+18875
globals.MC.Weed.ProSpd1 = tunables_global+17290
globals.MC.Weed.Ratio1 = tunables_global+17311
globals.MC.Weed.Ratio2 = tunables_global+17317
globals.MC.Weed.Cap = tunables_global+18720
globals.MC.Bunker.Sell1 = tunables_global+21254
globals.MC.Bunker.Sell2 = tunables_global+21227
globals.MC.Bunker.ProSpd1 = tunables_global+21249
globals.MC.Bunker.ProSpd2 = tunables_global+21250
globals.MC.Bunker.ProSpd3 = tunables_global+21251
globals.MC.Bunker.Ratio1 = tunables_global+21006
globals.MC.Bunker.Ratio2 = tunables_global+21007
globals.MC.Bunker.Cap = tunables_global+21248
globals.SafeCap = tunables_global+23680
globals.SafeRevenue = tunables_global+23657
globals.MCSupplyDelay = tunables_global+18764
globals.BunkSupplyDelay = tunables_global+21274
globals.SpecialCargoBypassBuyCooldown = tunables_global+15499
globals.SpecialCargoBypassSellCooldown = tunables_global+15500
globals.SpecialCargoCrateMaxThreshold = tunables_global+15731
globals.SpecialCargoRewardPerCrate = tunables_global+15752
globals.SpecialCargoCrateMultiplier3 = tunables_global+16593
globals.SpecialCargoCrateMultiplier2 = tunables_global+16594
globals.SpecialCargoCrateMultiplier1 = tunables_global+16595
globals.SpecialCargoBonus = tunables_global+15524
globals.SpecialCargoDeliveryTime = tunables_global+31874
--#endregion Generated by internal tooling

local TotalEarnedTypes = {
    --type   = {prefix = label, amount = 0}
    -- Do not use GetLabelText in here, these are prefixes and will be converted later
    safeloop = {prefix = MenuLabels.PREFIX_SAFELOOP, amount = 0},   
    specialcargo = {prefix = MenuLabels.PREFIX_SPECIALCARGO, amount = 0},
}

local I32_MAX = 2147483647

-----------------------------------
-- String Functions
-----------------------------------
--#region String Functions

local function ReplacePlaceholder(str, rep, num)
    local b, e = str:find("{"..num.."}")
    if b and e then
        return (str:sub(0, b-1) .. rep .. str:sub(e+1, -1))
    else
        util.log(string.format("Expected {%i} Placeholder in: %s", num, str))
        return str
    end
end

---@param label string
---@param ... string|integer
---@return string
local function GetLabelText(label, ...)
    -- Usage: GetLabelText("Press {1} to interact.", "E")                   -- Returns "Press E to interact."
    -- Usage: GetLabelText("Press {1} to open {2}.", "X", "the menu")       -- Returns "Press X to open the menu."
    -- Usage: GetLabelText("Press {2} to open {1}.", "in fullscreen", "F")  -- Returns "Press F to open in fullscreen."
    -- Note: NUMBER OF ARGS GIVEN TO FUNCTION AND ARGS IN LABEL MUST MATCH!
    -- Note: EMPTY ARGS OR DUPLICATE ARGS IN LABEL IS UNDEFINED BEHAVIOUR!
    local args = {...}
    local str = lang.get_localised(label)
    for i = 1, #args do
        str = ReplacePlaceholder(str, lang.get_localised(args[i]), i)
    end
    return str
end
local function GetLabelTextLiteral(label, ...)
    local args = {...}
    local str = lang.get_localised(label)
    for i = 1, #args do
        str = ReplacePlaceholder(str, args[i], i)
    end
    return str
end

local function GetKeyValueFromLine(line, size)
    local find = string.find(line, "=")
    if not find then return end
    size = size or 2
    local key = string.sub(line, 0, find-size)
    local value = string.sub(line, find+size, -1)
    return key, value
end

local function GetCharacterFromString(str, charpos)
    return str:sub(charpos, charpos)
    --return str[charpos] -- pluto only
end
--#endregion String Functions

-----------------------------------
-- Version Functions
-----------------------------------
--#region Version Functions

local function VersionStringToTable(str)
    local result = {}
    local s = str .. "."
    for match in string.gmatch(s, "(.-)%.") do
        table.insert(result, match)
    end
    return result
end

---@param lversion string
---@param rversion string
---@param vtypes table?
---@return boolean
---@return string
-- returns true if up to date or above date, false if out of date
local function VersionCheck(lversion, rversion, vtypes)
    local lvtable = VersionStringToTable(lversion)
    local rvtable = VersionStringToTable(rversion)
    for index in ipairs(lvtable) do
        if lvtable[index] < rvtable[index] then
            return false, "out of date by a " .. (vtypes and vtypes[index] or index) .. " version"
        elseif lvtable[index] > rvtable[index] then
            break
        end
    end
    return true, "is not out of date"
end
--#endregion Version Functions

-----------------------------------
-- Translation Functions
-----------------------------------
--#region Translation Functions

---@return boolean
---@return table
local function GetTranslationFileMetadata(path)
    local metadata = {}
    local file, err = io.open(path, "r")
    if file then
        local line = file:read("l")
        local iter = 0
        while GetCharacterFromString(line, 1) == "@" do
            local key, value = GetKeyValueFromLine(line:sub(2), 1)
            if key then
                metadata[key] = value
            else
                --util.log("Failure in getting key-value from line:\n"..line)
                if not SCRIPT_SILENT_START then
                    util.toast("Failure in reading translation file!")
                end
                break
            end
            if iter >= 10 then
                break
            end
            iter = iter + 1
            line = file:read("l")
        end
        file:close()
    else
        --util.log("Failure in opening:\n"..path.."\nReason: "..(err or "unspecified"))
        return false, metadata
    end
    return true, metadata
end

---@param language table|string
local function TranslateLabels(path)
    local lvalue, rvalue
    for line in io.lines(path) do
        local first_char = GetCharacterFromString(line, 1)
        if first_char == "!" or first_char == "#" or first_char == "@" then

        else
            lvalue, rvalue = GetKeyValueFromLine(line, 1)
            if lvalue then
                if MenuLabels[lvalue] ~= nil then
                    lang.translate(MenuLabels[lvalue], rvalue:gsub("\\n", "\n") or "ERROR")
                else
                    util.toast("Error occurred while reading Translation file. Translation file may be corrupt or out of date.")
                    --util.log("Translation file attempted to assign a non-existant MenuLabel a value. $"..lvalue)
                end
            end
        end
    end
end

do
    local l = lang.get_current()
    local path = MB_TRANSLATIONS_DIR .. l .. ".txt"
    if filesystem.exists(path) then
       lang.set_translate(l)
       TranslateLabels(path)
    end
end
--#endregion Translation Functions

local menu_findsaferways = menu.hyperlink(menu.my_root(), MenuLabels.FINDSAFERWAYS, "https://stand.sh/help/money", MenuLabels.FINDSAFERWAYS_DESC)
if not SCRIPT_SILENT_START then
    --util.toast(lang.get_string(MenuLabels.WARNINGRISKY_TOAST, lang.get_current()))
end

-----------------------------------
-- HTTP Functions
-----------------------------------
--#region HTTP Functions
local MOTD = ""

local HTTPHosts = {
    {HOST = "gist.githubusercontent.com", PATH = "/VSussyImpostor/8cf3bf39ae47218c4ee20a9ef96871ca/raw"},
    {HOST = "pastebin.com", PATH = "/raw/yaMG2Vz1"},
}

--HTTP Contents below
--[[
motd = ""
version = "0.3.2"
killswitch_safeloop = false
killswitch_specialcargo = false
killswitch_maxsellprice = false
killswitch_autocomplete = false
]]

local HTTP = {
    PENDING = false,
    SUCCESS = false,
    TRIES = 0,
    HOST = HTTPHosts[1].HOST,
    PATH = HTTPHosts[1].PATH,
    HOST_NUMBER = 1,
    SUCCESS_WAIT_TIME = (90 * 1000), -- 1 minute, 30 seconds
    GIVEUP_TIME = (30 * 1000), -- 30 seconds
    WAIT_TIME = (3 * 1000), -- 3 seconds
    FAILSAFE = false,
}

local remote = {
    motd = "",
    version = "",
    killswitches = {
        ["safeloop"] = false,
        ["specialcargo"] = false,
        ["maxsellprice"] = false,
        ["autocomplete"] = false,
    },
}

local function StringToBoolean(str)
    return str == "true"
end

local function LinesToTable(lines)
    local result = {}
    for s in lines:gmatch("[^\r\n]+") do
        table.insert(result, s)
    end
    return result
end

local function IsKeyKillswitch(key)
    return key:startswith("killswitch_")
end

local function GetKillswitchFromKey(key)
    -- 12 is the length of "killswitch_"
    return string.sub(key, 12, -1)
end

local function ActivateFailsafe()
    if not HTTP.FAILSAFE then
        util.toast(MenuLabels.HTTPFAILSAFE .. " (HTTP E3)")
        for name, value in pairs(remote.killswitches) do
            remote.killswitches[name] = true
        end
        HTTP.FAILSAFE = true -- in order to avoid this chunk of code running multiple times
    end
end

local function HandleHTTPResponse(response)
    for index, line in ipairs(LinesToTable(response)) do
        local key, value = GetKeyValueFromLine(line)
        if not key or not value then
            util.toast(MenuLabels.HTTPINVALID .. " (HTTP E2)")
            HTTP.SUCCESS = false -- don't immmediately trigger failsafe, treat this as a failed request
            return -- jump out of handling, try again
        end
        if IsKeyKillswitch(key) then
            remote.killswitches[GetKillswitchFromKey(key)] = StringToBoolean(value)
        else
            remote[key] = string.sub(value, 2, -2) -- drop the quotes
        end
    end

    HTTP.FAILSAFE = false -- reset failsafe if it triggered before

    if not IGNORE_VERSION_DIFFERENCE and IS_RELEASE_VERSION and not VersionCheck(THIS_RELEASE_VERSION, remote.version) then
        util.toast(lang.get_localised(MenuLabels.SCRIPTOUTOFDATE), TOAST_ALL)
    end
end

local function HTTPGiveUp()
    util.toast(MenuLabels.HTTPGIVEUP .. " (HTTP E1)", TOAST_ALL)
    ActivateFailsafe()
end

local function HTTPSwitchHost()
    HTTP.HOST_NUMBER = HTTP.HOST_NUMBER == #HTTPHosts and 1 or HTTP.HOST_NUMBER + 1
    HTTP.HOST = HTTPHosts[HTTP.HOST_NUMBER].HOST
    HTTP.PATH = HTTPHosts[HTTP.HOST_NUMBER].PATH
end

local function HTTPFail()
    -- if not IS_RELEASE_VERSION then
    --     util.toast("HTTP Attempt Failed.", TOAST_ALL)
    -- end
    HTTP.PENDING = false
    HTTP.SUCCESS = false
    HTTP.TRIES = HTTP.TRIES + 1
end

local function HTTPSuccess(response)
    -- if not IS_RELEASE_VERSION then
    --     util.toast("HTTP Attempt Succeeded.", TOAST_ALL)
    -- end
    HTTP.PENDING = false
    HTTP.SUCCESS = true
    HandleHTTPResponse(response)
end

local function HTTPTry()
    while HTTP.PENDING do -- prevent two http requests at once
        util.yield()
    end
    HTTP.PENDING = true
    async_http.init(HTTP.HOST, HTTP.PATH, HTTPSuccess, HTTPFail)
    async_http.dispatch()
    while HTTP.PENDING do
        util.yield()
    end
    return HTTP.SUCCESS
end

local function HTTPHeartbeat()
    HTTPTry()
    if HTTP.SUCCESS then
        util.yield(HTTP.SUCCESS_WAIT_TIME)
    elseif HTTP.TRIES == 1 then
        util.yield(HTTP.WAIT_TIME)
    elseif HTTP.TRIES == 2 then
        util.yield(HTTP.WAIT_TIME)
        HTTPSwitchHost()
    elseif HTTP.TRIES == 3 then
        util.yield(HTTP.WAIT_TIME)
    elseif HTTP.TRIES >= 4 then -- Forcing an HTTP connection by debug functions will increment the count, so we do >= to account for that case
        -- Our connection is fucked, give up
        HTTPGiveUp()
        util.yield(HTTP.GIVEUP_TIME)
        HTTP.TRIES = 0
    end
end

--#endregion HTTP Functions

-----------------------------------
-- Custom Command Functions
-----------------------------------
--#region Custom Command Functions
local function RegisterUpdatingReadOnlyCommand(list, title, value_func)
    local command = menu.readonly(list, title, value_func())
    local handler = menu.on_tick_in_viewport(command, function() 
        menu.set_value(command, value_func())
    end)
    return command, handler
end
--#endregion Custom Command Functions

-----------------------------------
-- Basic Functions
-----------------------------------
--#region Basic Functions

local function SetBits(int, ...)
    local bits = {...}
    for ind, bit in ipairs(bits) do
        int = int | (1 << bit)
    end
    return int
end

local function ClearBits(int, ...)
    local bits = {...}
    for ind, bit in ipairs(bits) do
        int = int & ~(1 << bit)
    end
    return int
end

local function IsBitSet(int, offset)
    return ((int >> offset) & 1) == 1
end

local function IntToBitString(int)
    local bits = {}
    for i = 0, 31 do
        bits[31 - i] = IsBitSet(int, i) and 1 or 0
    end
    return table.concat(bits, "", 0)
end

local prefix = "MP" .. util.get_char_slot() .. "_"
local stat_ptr = memory.alloc(4)
---@return integer|nil
local function GetStatInt(stat)
    if STATS_STAT_GET_INT(util.joaat(stat), stat_ptr, -1) then
        return memory.read_int(stat_ptr)
    else
        --util.log("Failed to get stat " .. stat)
    end
    return nil
end

local function GetStatBool(stat)
    if STATS_STAT_GET_BOOL(util.joaat(stat), stat_ptr, -1) then
        return memory.read_bool(stat_ptr)
    else
        --util.log("Failed to get stat " .. stat)
    end
    return nil
end

local function GetPackedStatBool(stat)
    return STATS_GET_PACKED_STAT_BOOL_CODE(stat, util.get_char_slot())
end

local function SetStatInt(stat, value)
    if STATS_STAT_SET_INT(util.joaat(stat), value, true) then
        return true
    else
        --util.log("Failed to set stat "..stat.." to "..value)
    end
    return false
end

local function SetStatBool(stat, value)
    if STATS_STAT_SET_BOOL(util.joaat(stat), value, true) then
        return true
    else
        --util.log("Failed to set stat "..stat.." to "..value)
    end
    return false
end

local function SetPackedStatBool(stat, value)
    STATS_SET_PACKED_STAT_BOOL_CODE(stat, value, util.get_char_slot())
end

local function GetGlobalInt(address)
    return memory.read_int(memory.script_global(address))
end

local function GetGlobalFloat(address)
    return memory.read_float(memory.script_global(address))
end

local function SetGlobalInt(address, value)
    memory.write_int(memory.script_global(address), value)
end

local function SetGlobalFloat(address, value)
    memory.write_float(memory.script_global(address), value)
end

local function SetGlobalBits(address, ...)
    local value = GetGlobalInt(address)
    if value then
        return SetGlobalInt(address, SetBits(value, ...))
    end
end

local function GetLocalInt(script_str, script_local)
    local addr = memory.script_local(script_str, script_local)
    return addr ~= 0 and memory.read_int(addr) or nil
end

local function GetLocalFloat(script_str, script_local)
    local addr = memory.script_local(script_str, script_local)
    return addr ~= 0 and memory.read_float(addr) or nil
end

local function GetLocalString(script_str, script_local)
    local addr = memory.script_local(script_str, script_local)
    return addr ~= 0 and memory.read_string(addr) or nil
end

local function ClearGlobalBits(address, ...)
    local value = GetGlobalInt(address)
    if value then
        return SetGlobalInt(address, ClearBits(value, ...))
    end
end

local function SetLocalInt(script_str, script_local, value)
    local addr = memory.script_local(script_str, script_local)
    if addr ~= 0 then
        memory.write_int(addr, value)
    end
    return addr ~= 0
end

local function SetLocalFloat(script_str, script_local, value)
    local addr = memory.script_local(script_str, script_local)
    if addr ~= 0 then
        memory.write_float(addr, value)
    end
    return addr ~= 0
end

local function SetLocalString(script_str, script_local, value)
    local addr = memory.script_local(script_str, script_local)
    if addr ~= 0 then
        memory.write_string(addr, value)
    end
    return addr ~= 0
end

local function SetLocalBits(script_str, script_local, ...)
    local value = GetLocalInt(script_str, script_local)
    if value then
        return SetLocalInt(script_str, script_local, SetBits(value, ...))
    end
end

local function ClearLocalBits(script_str, script_local, ...)
    local value = GetLocalInt(script_str, script_local)
    if value then
        return SetLocalInt(script_str, script_local, ClearBits(value, ...))
    end
end

local function IsScriptRunning(str)
    return SCRIPT_GET_NUMBER_OF_THREADS_RUNNING_THE_SCRIPT_WITH_THIS_HASH(util.joaat(str)) > 0
end

local function StartScript(str, arg_count)
    if not SCRIPT_DOES_SCRIPT_EXIST(str) then
        return false
    end
    if IsScriptRunning(str) then
        return true
    end
    SCRIPT_REQUEST_SCRIPT(str)
    while not SCRIPT_HAS_SCRIPT_LOADED (str) do
        util.yield()
    end
    SYSTEM_START_NEW_SCRIPT(str, arg_count or 0)
    SCRIPT_SET_SCRIPT_AS_NO_LONGER_NEEDED(str)
    return true
end

local function IsInSession()
    return util.is_session_started() and not util.is_session_transition_active()
end

local function PressScaleformButton(buttonID)
    PAD_SET_CONTROL_VALUE_NEXT_FRAME(2, buttonID, 1)
    util.yield()
    PAD_SET_CONTROL_VALUE_NEXT_FRAME(2, buttonID, 0) -- this line is probably not needed but oh well
end


local function PressEnterOnScaleform()
    PressScaleformButton(201)
end

local function PressBackOnScaleform()
    PressScaleformButton(202)
end

local function SetEntityCoords(entity, coords)
    ENTITY_SET_ENTITY_COORDS_NO_OFFSET(entity, coords.x, coords.y, coords.z, false, false, false)
end

local function TeleportTo(coords)
    local ent = entities.get_user_vehicle_as_handle(false)
    if ent == INVALID_GUID then ent = players.user_ped() end
    SetEntityCoords(ent, coords)
end

local function LoadArea(coords)
    local has_ground, ground_z = util.get_ground_z(coords.x, coords.y, coords.z)
    if not has_ground then
        local rot = CAM_GET_FINAL_RENDERED_CAM_ROT(2)
        local cam = CAM_CREATE_CAM_WITH_PARAMS("DEFAULT_SCRIPTED_CAMERA", coords.x, coords.y, coords.z+2, rot.x, rot.y, rot.z, CAM_GET_FINAL_RENDERED_CAM_FOV(), true, 2)
        CAM_SET_CAM_ACTIVE(cam, true)
        CAM_RENDER_SCRIPT_CAMS(true, false, 0, false, false, 0)
        local count = 0
        local max = 500
        while not has_ground and count < max do
            has_ground, ground_z = util.get_ground_z(coords.x, coords.y, coords.z+count)
            count = count + 1
            util.yield()
        end
        CAM_RENDER_SCRIPT_CAMS(false, false, 0, false, false, 0)
        CAM_SET_CAM_ACTIVE(cam, false)
        CAM_DESTROY_CAM(cam, false)
        return max > count
    end
    return true
end

local function AddToTotalEarned(amount, type)
    type.amount = type.amount + amount
    local str = type and GetLabelTextLiteral(type.prefix, GetLabelTextLiteral(MenuLabels.PREFIX_TOTALEARNED, type.amount)) or GetLabelTextLiteral(MenuLabels.PREFIX_TOTALEARNED, type.amount)
    util.toast(str, TOAST_ABOVE_MAP | TOAST_LOGGER)
end
--#endregion Basic Functions

-----------------------------------
-- Global Functions
-----------------------------------
--#region Global Functions

-- [[update]]
local function GetOrgOffset()
    -- GPBD_FM_3
    return (1887305 + 1 + (players.user() * 610) + 10)
end

local function IsInOrg()
    return GetGlobalInt(GetOrgOffset()) ~= -1
end

local function GetOrgType()
    -- Returns -1, 0, 1. None, CEO, MC. This will only work if you are the boss of the org
    return GetGlobalInt(GetOrgOffset() + 430)
end

local function RegisterAsCEO()
    if IsInSession() and not IsInOrg() then
        SetGlobalInt(GetOrgOffset(), players.user()) -- Set self as boss
        SetGlobalInt(GetOrgOffset() + 430, 0) -- Set type to CEO
    end
end

-- Business / Other Online Work Stuff [[update]]
local function GetOnlineWorkOffset()
    -- GLOBAL_PLAYER_STAT
    return (1845281 + 1 + (players.user() * 883) + 268)
end

local function GetNightClubHubOffset()
    return (GetOnlineWorkOffset() + 314)
end

local function GetNightClubOffset()
    return (GetOnlineWorkOffset() + 358) -- CLUB_OWNER_X
end

local function GetWarehouseOffset()
    return (GetOnlineWorkOffset() + 120) + 1
end

local function GetMCBusinessOffset()
    return (GetOnlineWorkOffset() + 197) + 1
end

-- Nightclub
local function GetHubValueOffsetFromSlot(slot) 
    return (GetNightClubHubOffset() + 8 + 1) + slot
end

local function GetHubValueFromSlot(slot)
    return GetGlobalInt(GetHubValueOffsetFromSlot(slot))
end

local function SetHubValueFromSlot(slot, value)
    SetGlobalInt(GetHubValueOffsetFromSlot(slot), value)
end

local function GetHubProductOfTypeFromStat(slot)
    return GetStatInt(prefix .. "HUB_PROD_TOTAL_" .. slot)
end

local function GetSafeCashValueFromStat()
    return GetStatInt(prefix .. "CLUB_SAFE_CASH_VALUE")
end

local function GetNightClubPropertyID()
    return GetGlobalInt(GetNightClubOffset())
end

-- MC Businesses
local function GetMCBusinessDataOffset(slot)
    return GetMCBusinessOffset() + (slot * 13)
end

local function GetMCBusinessProductionSpeed2(slot)
    return GetMCBusinessDataOffset(slot) + 9
end

local function GetBusinessSuppliesFromStat(slot)
    return GetStatInt(prefix .. "MATTOTALFORFACTORY" .. slot)
end

local function GetBusinessProductFromStat(slot)
    return GetStatInt(prefix .. "PRODTOTALFORFACTORY" .. slot)
end

local function GetBunkerResearchFromStat()
    return GetStatInt(prefix .. "RESEARCHTOTALFORFACTORY5")
end

local function GetMCBusinessEquipmentUpgradeStatusFromStat(slot)
    return GetStatInt(prefix .. "FACTORYUPGRADES" .. slot)
end

local function GetMCBusinessStaffUpgradeStatusFromStat(slot)
    return GetStatInt(prefix .. "FACTORYUPGRADES" .. slot .. "_1")
end

-- Special Cargo
local function GetSpecialCargoCrateAmountOffset(slot)
    return GetWarehouseOffset() + (slot * 3) + 1
end

local function GetSpecialCargoCrateAmount(warehouse)
    return GetGlobalInt(GetSpecialCargoCrateAmountOffset(warehouse))
end

local function SetSpecialCargoCrateAmount(warehouse, value)
    return SetGlobalInt(GetSpecialCargoCrateAmountOffset(warehouse), value)
end
--#endregion Global Functions

local function PopulateMyBusinessesTable()
    if util.is_session_started() then
        for slot = 0, 4 do
            local property      = GetStatInt(prefix .. "factoryslot" .. slot) -- returns a property ID number
            local property_info = MCBusinessPropertyInfo[property]
            local type_number   = property_info and property_info.type or -1
            local type_string   = property_info and MCBusinessTypesOrderedWithLabels[type_number].name or "None"
            

            MyBusinesses[slot]         = {property = property, type = type_number}
            MyBusinesses[type_string]  = {
                slot = slot,                        property = property,
                product = GetBusinessProductFromStat(slot), supplies = GetBusinessSuppliesFromStat(slot),
            }
        end

        do -- Bunker
            local slot_and_type = 5
            local property      = GetStatInt(prefix .. "factoryslot" .. slot_and_type) -- returns a property ID number
            local type_string   = MCBusinessTypesOrderedWithLabels[slot_and_type].name
            

            MyBusinesses[slot_and_type]    = {property = property, type = slot_and_type}
            MyBusinesses[type_string]       = {property = property, slot = 5,
                product = GetBusinessProductFromStat(slot_and_type), supplies = GetBusinessSuppliesFromStat(slot_and_type),
                research = GetBunkerResearchFromStat()
            }
        end

        for index, data in pairs(HubTypesOrderedWithLabels) do
            --MyBusinesses.Hub[data.name] = GetHubProductOfType(index) -- this reads the stat, Set Product manipluates the global only. Set Max Sell Price with this wont work.
            MyBusinesses.Hub[data.name] = GetHubValueFromSlot(index) -- however, this one will work since its reading the global.
        end
    end
end

-- returns true if already alone, false if it it had to bealone
local function CheckIfAlone()
    if #players.list() > 1 then
        util.toast(lang.get_localised(MenuLabels.BEALONE_TOAST))
        menu.trigger_commands("bealone")
        util.yield(1000)
        return false
    end
    return true
end

-- [[update]]
local function GetPlayerPropertyOffset()
    -- GlobalplayerBD
    return (2657971 + 1 + (players.user() * 465) + 322 + 8)
end

local function GetPlayerPropertyID()
    return GetGlobalInt(GetPlayerPropertyOffset())
end

local function SetPlayerPropertyID(id)
    return SetGlobalInt(GetPlayerPropertyOffset(), id)
end

local function SetPlayerInOrgWork(work_id)
    if IsInSession() then
        SetGlobalInt(GetOrgOffset() + 33, work_id)
        SetGlobalInt(GetOrgOffset() + 35, work_id)
    end
end

local function GetPlayerInOrgWork()
    return IsInSession() and GetGlobalInt(GetOrgOffset() + 33) or -1
end

-- Special Cargo
local function GetWarehouseSlotFromProperty(warehouse)
    for slot = 0, 4 do
        if GetGlobalInt(GetWarehouseOffset() + (slot * 3)) == warehouse then
            return slot
        end
    end
    return -1
end

local function GetWarehousePropertyFromSlot(slot)
    return GetGlobalInt(GetWarehouseOffset() + (slot * 3))
end

local function SetSpecialCargoValues(state)
    local MaxSellPrice = globals.SpecialCargoMaxSellPriceValue
    if state then
        

        util.create_thread(function()
            local warehouse = GetLocalInt(locals.SpecialCargoSecuroString, locals.SpecialCargoCurrentProperty)
            if warehouse ~= nil then
                if warehouse ~= 0 and warehouse ~= GetWarehousePropertyFromSlot(Selected_Warehouse) then
                    util.toast(lang.get_localised(MenuLabels.NOTINSELECTEDWAREHOUSE_TOAST))
                end
            end
        end)

        local crate_amount = GetSpecialCargoCrateAmount(Selected_Warehouse)

        if crate_amount > 0 then
            SetGlobalInt(globals.SpecialCargoCrateMaxThreshold, 0)
            SetGlobalInt(globals.SpecialCargoRewardPerCrate, MaxSellPrice)
            local rounded = math.floor(100 / crate_amount)
            local ceiled  = math.ceil(100 / crate_amount)
            if (crate_amount <= 6) or (crate_amount >= 100) then
                SetGlobalInt(globals.SpecialCargoCrateMultiplier3, ceiled)
                SetGlobalInt(globals.SpecialCargoCrateMultiplier2, ceiled)
                SetGlobalInt(globals.SpecialCargoCrateMultiplier1, ceiled)
            else
                SetGlobalInt(globals.SpecialCargoCrateMultiplier3, rounded)
                SetGlobalInt(globals.SpecialCargoCrateMultiplier2, rounded)
                SetGlobalInt(globals.SpecialCargoCrateMultiplier1, rounded)
            end
        end
    else
        SetGlobalInt(globals.SpecialCargoCrateMaxThreshold, 111) -- 111
        SetGlobalInt(globals.SpecialCargoRewardPerCrate,    20000) -- 20000
        SetGlobalInt(globals.SpecialCargoCrateMultiplier3,  100) -- 100
        SetGlobalInt(globals.SpecialCargoCrateMultiplier2,  50) -- 50
        SetGlobalInt(globals.SpecialCargoCrateMultiplier1,  20) -- 20
    end
end

local function GetSpecialCargoCrateAmountFromStat(slot)
    return GetStatInt(prefix .. "contotalforwhouse" .. slot) or 0
end

-- Nightclub
local function GetSafeCashValueGlobal()
    return GetGlobalInt(GetNightClubOffset() + 5)
end

local function IsPlayerInNightclub()
    return (GetPlayerPropertyID() > 101) and (GetPlayerPropertyID() < 112)
end

local function TriggerNCSafeAddMoneyTransaction(amount, bypass_rollover_protection)
    if not IsInSession() then
        return
    end
    local aaa = GetLocalInt(locals.NCSafeScriptString, locals.NCSafeAddMoneyAmount)
    if not aaa then
        return
    end
    local SafeValue = GetSafeCashValueGlobal()
    local safemax = 300000

    if not bypass_rollover_protection then
        if (SafeValue > safemax) then
            amount = I32_MAX - SafeValue + 2
        elseif (SafeValue + amount) > safemax then
            util.toast("The amount given would put you over the maximum limit! Cancelling addition.", TOAST_ALL) --! Needs a label, but this should never be seen by the user anyways
            return
        elseif (SafeValue == -2147483648) then
            amount = 2147483647
        elseif (SafeValue < 0) then
            amount = math.abs(SafeValue)
        end
    end

    SetLocalInt(locals.NCSafeScriptString, locals.NCSafeAddMoneyAmount, amount)
    SetGlobalInt(globals.SafeStatus1, ClearBits(GetGlobalInt(globals.SafeStatus1), 1))
    SetLocalInt(locals.NCSafeScriptString, locals.NCSafeTransactionStatus, 2)
    SetGlobalInt(globals.SafeStatus2, 2)
    util.yield(3000)
end

local function FixNCSafe()
    local GetSafeValue = GetSafeCashValueFromStat
    if not (IsInSession() and (GetSafeValue() > 300000 or GetSafeValue() < 0)) then
        util.toast(lang.get_localised(MenuLabels.NCRESETSAFEVALUESKIP_TOAST))
        return
    end
    while IsInSession() and (GetSafeValue() > 300000 or GetSafeValue() < 0) do
        if IsPlayerInNightclub() then
            TeleportTo({x = -1620.5, y = -3014.9, z = -75.2})
        end
        local before = GetSafeValue()
        TriggerNCSafeAddMoneyTransaction(300000, false)
        local after = GetSafeValue()
        if before == after then
            util.toast(lang.get_localised(MenuLabels.TRANSACTIONSSTUCK_TOAST))
            return
        elseif (after <= 300000 and after >= 0) then
            util.toast(lang.get_localised(MenuLabels.NCRESETSAFEVALUESUCCESS_TOAST))
            return
        end
        util.yield()
    end
end

local function FixNCHubCapacities()
    SetGlobalBits((GetNightClubHubOffset() + 4), 0, 1, 2, 3, 4) -- This will correct your nightclub capacity values if for some reason rockstar decided to fuck you over, although its only a temp fix. thanks r*
end

local function SetNightclubPayTimeLeft(time)
    return SetStatInt(prefix .. "CLUB_PAY_TIME_LEFT", time or -1)
end

-- MC Business
local function ResupplyBusinessSlot(slot)
    SetGlobalInt(globals.MCSupplyTime + slot, 1)
end

local function TeleportToMCProperty(property_id)
    if property_id ~= 0 and IsInSession() then
        local coords = MCBusinessPropertyInfo[property_id].coords
        if LoadArea(coords) then
            TeleportTo(coords)
        end
    end
end

----------------------------------
-- Start of menu options
----------------------------------

----------------------------------
-- Nightclub Shit
----------------------------------
--#region Nightclub Shit
local NCMan = menu.list(menu.my_root(), MenuLabels.NIGHTCLUB, {}, MenuLabels.NCLIST_DESC)

    menu.action(NCMan, GetLabelText(MenuLabels.TELEPORTTO, MenuLabels.NIGHTCLUB), {"tpnightclub"}, GetLabelText(MenuLabels.TELEPORTTO_DESC, MenuLabels.NIGHTCLUB), function()
        if IsInSession() then
            local property = GetNightClubPropertyID()
            if property ~= 0 and IsInSession() then
                local coords = NightclubPropertyInfo[property].coords
                if LoadArea(coords) then
                    TeleportTo(coords)
                end
            end
        end
    end)

    menu.toggle_loop(NCMan, GetLabelText(MenuLabels.BYPASSCOOLDOWN, MenuLabels.SELLMISSION), {}, GetLabelText(MenuLabels.BYPASSCOOLDOWN_DESC, MenuLabels.START, MenuLabels.SELLMISSION), function()
        if IsInSession() then
            SetGlobalInt(globals.Hub.SellCooldownActive, 0)

            if IsScriptRunning(locals.NCHubScriptString) then
                local int = GetLocalInt(locals.NCHubScriptString, locals.NCHubSellCooldown)
                if int then
                    ClearLocalBits(locals.NCHubScriptString, locals.NCHubSellCooldown, locals.NCHubSellCooldownBit)
                end
            end
        end
    end)

    -- Generate Nightclub options
    for index = 0, #HubTypesOrderedWithLabels do
        local name = HubTypesOrderedWithLabels[index].name
        local label = HubTypesOrderedWithLabels[index].label
        local list = menu.list(NCMan, label)

        menu.toggle_loop(list, MenuLabels.MONITOR, {"monitorhub"..name}, GetLabelText(MenuLabels.MONITOR_DESC, MenuLabels.STOCK, MenuLabels.NIGHTCLUB, MenuLabels.INFOOVERLAY), function()
            if IsInSession() then
                local value = GetGlobalInt(globals.Hub[name].Cap)
                util.draw_debug_text(GetLabelTextLiteral(MenuLabels.INFO_HUBBUSINESS, lang.get_localised(label), MyBusinesses.Hub[name], value))
            end
        end)

        menu.toggle_loop(list, MenuLabels.MAXSELLPRICE, {"maxsellhub"..name}, GetLabelText(MenuLabels.MAXSELLPRICE_DESC, MenuLabels.STOCK, MenuLabels.STOCK), function()
            if remote.killswitches.maxsellprice then
                util.toast(lang.get_localised(MenuLabels.KILLSWITCH_MAXSELLPRICE))
                SetGlobalInt(globals.Hub[name].Sell, globals.Hub[name].SellDefaultValue)
                util.stop_thread()
                return
            end
    
            if IsInSession() then
                if MyBusinesses.Hub[name] ~= 0 then
                    CheckIfAlone()
                    SetGlobalInt(globals.Hub[name].Sell, globals.Hub.MaxSellPrice // MyBusinesses.Hub[name])
                end
            end
        end, function()
            SetGlobalInt(globals.Hub[name].Sell, globals.Hub[name].SellDefaultValue)
        end)

        local toggle_active
        menu.toggle(list, MenuLabels.MAXPRODUCTIONSPEED, {"maxprodhub"..name}, MenuLabels.NCMAXPRODUCTIONSPEED_DESC, function(toggle)
            toggle_active = toggle
            if toggle then
                --! Missing Global Here (one that goes into effect immediately)
                util.toast(lang.get_localised(MenuLabels.MAXPRODUCTIONSPEEDSLOW_TOAST))
            end
            while toggle_active do
                if IsInSession() then
                    SetGlobalInt(globals.Hub[name].ProSpd, globals.Hub.ProSpd)
                end
                util.yield()
            end
        end)

        menu.click_slider(list, MenuLabels.MAXIMUMCAPACITY, {"setcaphub"..name}, MenuLabels.MAXIMUMCAPACITY_DESC, 1, 999, GetGlobalInt(globals.Hub[name].Cap), 5, function(value)
            if IsInSession() then
                SetGlobalInt(globals.Hub[name].Cap, value)
                util.toast(lang.get_localised(MenuLabels.MAXIMUMCAPACITY_TOAST))
            end
        end)

        -- if not IS_RELEASE_VERSION then
        --!     this was probably patched by rockstar? cant be arsed to fix this, nobody really used it anyways?
        --     menu.click_slider(list, "[DEBUG] " .. MenuLabels.SETPRODUCT, {"setproducthub"..name}, MenuLabels.SETPRODUCT_DESC, 0, GetGlobalInt(globals.Hub[name].Cap), GetGlobalInt(globals.Hub[name].Cap), 1, function(value) --! implement default values for set product limits
        --         if IsInSession() then
        --             SetHubValueFromSlot(index, value)
        --             util.toast(lang.get_localised(MenuLabels.SETPRODUCT_TOAST))
        --         end
        --     end)
        -- end
    end

    ----------------------------------
    -- Nightclub Safes
    ----------------------------------

    local NCSafe = menu.list(NCMan, MenuLabels.NIGHTCLUBSAFE)
        menu.toggle_loop(NCSafe, MenuLabels.MONITOR, {"monitorncsafe"}, GetLabelText(MenuLabels.MONITOR_DESC, MenuLabels.MONEY, MenuLabels.NIGHTCLUBSAFE, MenuLabels.INFOOVERLAY), function()
            if IsInSession() then
                local safeval = GetSafeCashValueFromStat()
                util.draw_debug_text(GetLabelTextLiteral(MenuLabels.INFO_NCSAFE, safeval))
            end
        end)

        menu.action(NCSafe, GetLabelText(MenuLabels.TELEPORTTO, MenuLabels.NIGHTCLUBSAFE), {"tpncsafe"}, GetLabelText(MenuLabels.TELEPORTTO_DESC, MenuLabels.NIGHTCLUBSAFE), function()
            if IsInSession() then
                if IsPlayerInNightclub() then
                    TeleportTo(NCSafePos)
                else
                    util.toast(lang.get_localised(MenuLabels.NOTINNIGHTCLUB_TOAST))
                    menu.trigger_commands("tpnightclub")
                end
            end
        end)

        menu.action(NCSafe, MenuLabels.NCMAXPOPULARITY, {"resupplyncsafe"}, MenuLabels.NCMAXPOPULARITY_DESC, function()
            if IsInSession() then
                menu.trigger_commands("clubpopularity 100")
                util.toast(lang.get_localised(MenuLabels.NCMAXPOPULARITY_TOAST))
            end
        end)

        menu.action(NCSafe, MenuLabels.TRIGGERPRODUCTION, {"triggerncsafe"}, MenuLabels.TRIGGERPRODUCTION_DESC, function()
            if IsInSession() then
                if SetNightclubPayTimeLeft(-1) then
                    util.toast(lang.get_localised(MenuLabels.TRIGGERPRODUCTION_TOAST))
                end
            end
        end)

        menu.click_slider(NCSafe, MenuLabels.MAXIMUMCAPACITY, {"setcapncsafe"}, MenuLabels.MAXIMUMCAPACITY_DESC, 1, 300000, 210000, 10000, function(value)
            if IsInSession() then
                local address = memory.script_global(globals.SafeCap)
                memory.write_int(address, value)
                util.toast(lang.get_localised(MenuLabels.MAXIMUMCAPACITY_TOAST))
            end
        end)

        menu.click_slider(NCSafe, MenuLabels.NCREVENUE, {"revenuencsafe"}, MenuLabels.NCREVENUE_DESC, 1, 300000, 50000, 10000, function(value)
            if IsInSession() then
                for i = 1, 20 do
                    SetGlobalInt(globals.SafeRevenue + i, globals.SafeLimit)
                end
            end
        end)

        local NCSafeLoopDelay = 200
        local NCSafeLoopTransactionTimeout = 30000
        local NCSafeLoopUserLimit = 0

        menu.toggle_loop(NCSafe, MenuLabels.NCSAFELOOP, {"ncafkloop"}, MenuLabels.NCSAFELOOP_DESC, function(toggle)
            if remote.killswitches.safeloop then
                util.toast(lang.get_localised(MenuLabels.KILLSWITCH_SAFELOOP), TOAST_ALL)
                util.stop_thread()
                return
            end

            if IsInSession() then

                local function StopSafeLoop(msg)
                    util.toast(msg, TOAST_ALL)
                    util.stop_thread()
                end

                if NCSafeLoopUserLimit ~= 0 and (TotalEarnedTypes.safeloop.amount >= NCSafeLoopUserLimit) then
                    StopSafeLoop(lang.get_localised(MenuLabels.NCSAFELOOPMAXIMUMVALUEREACHED_TOAST))
                elseif not IsPlayerInNightclub() then
                    StopSafeLoop(lang.get_localised(MenuLabels.NCSAFELOOPNOTINNIGHTCLUB_TOAST))
                end

                if GetGlobalInt(globals.SafeCap) ~= globals.SafeLimit then
                    SetGlobalInt(globals.SafeCap, globals.SafeLimit)
                    for i = 1, 20 do
                        SetGlobalInt(globals.SafeRevenue + i, globals.SafeLimit)
                    end
                end

                local MyPed = PLAYER_PLAYER_PED_ID()
                ENTITY_FREEZE_ENTITY_POSITION(MyPed, true)

                local ValueBeforeAdding = GetSafeCashValueFromStat()

                SetEntityCoords(MyPed, NCSafePos)

                if ValueBeforeAdding == globals.SafeLimit then
                    local timeout = util.current_time_millis() + NCSafeLoopTransactionTimeout
                    while timeout > util.current_time_millis() and ValueBeforeAdding == GetSafeCashValueFromStat() do
                        util.yield()
                    end
                    if ValueBeforeAdding > GetSafeCashValueFromStat() then
                        -- we've picked it up!
                        ValueBeforeAdding = GetSafeCashValueFromStat()
                    else
                        StopSafeLoop(GetLabelText(MenuLabels.PREFIX_SAFELOOP, MenuLabels.NCSAFELOOPTIMEOUT_TOAST) .. " (1)")
                    end
                elseif ValueBeforeAdding > globals.SafeLimit then
                    StopSafeLoop(lang.get_localised(MenuLabels.NCSAFELOOPSAFEOVERLIMIT_TOAST))
                end

                -- okay, so far so good, fill the safe
                SetNightclubPayTimeLeft(-1)

                -- check if the safe value changes
                local timeout = util.current_time_millis() + NCSafeLoopTransactionTimeout
                while timeout > util.current_time_millis() and ValueBeforeAdding == GetSafeCashValueFromStat() do
                    util.yield()
                end

                -- if the safe doesn't change
                if timeout < util.current_time_millis() and ValueBeforeAdding == GetSafeCashValueFromStat() then
                    -- we've hit transaction timeout... shit
                    StopSafeLoop(GetLabelText(MenuLabels.PREFIX_SAFELOOP, MenuLabels.NCSAFELOOPTIMEOUT_TOAST) .. " (2)")
                end

                local ValueAfterAdding = GetSafeCashValueFromStat()

                if ValueAfterAdding > globals.SafeLimit then
                    -- shit, its over 300k
                    StopSafeLoop(MenuLabels.NCSAFELOOPSAFEOVERLIMIT_TOAST)
                end

                SetEntityCoords(MyPed, NCSafePos)

                timeout = util.current_time_millis() + NCSafeLoopTransactionTimeout
                while timeout > util.current_time_millis() and ValueAfterAdding == GetSafeCashValueFromStat() do
                    -- wait for the user to collect the money
                    util.yield()
                end

                -- if the safe doesn't change
                if timeout < util.current_time_millis() and ValueAfterAdding == GetSafeCashValueFromStat() then
                    -- we've hit transaction timeout... shit
                    StopSafeLoop(GetLabelText(MenuLabels.PREFIX_SAFELOOP, MenuLabels.NCSAFELOOPTIMEOUT_TOAST) .. " (3)")
                end

                if ValueAfterAdding > GetSafeCashValueFromStat() then
                    -- success! user has collected the money
                    AddToTotalEarned(globals.SafeLimit, TotalEarnedTypes.safeloop)
                    if NCSafeLoopDelay and NCSafeLoopDelay > 0 then
                        util.yield(NCSafeLoopDelay)
                    end
                else
                    StopSafeLoop(MenuLabels.NCSAFELOOPSOMETHINGWENTWRONG_TOAST)
                end

                util.yield()
            end
        end, function()
            ENTITY_FREEZE_ENTITY_POSITION(PLAYER_PLAYER_PED_ID(), false)
            if remote.killswitches.safeloop then
                return
            end
            TeleportTo({x = -1615.86, y = -3015.5, z = -75.2})
        end)

        menu.slider(NCSafe, MenuLabels.NCSAFELOOPDELAY, {"ncafkloopdelay"}, MenuLabels.NCSAFELOOPDELAY_DESC, 0, 100000, NCSafeLoopDelay, 100, function(peepeepoopoo)
            NCSafeLoopDelay = peepeepoopoo -- clever
            util.toast(lang.get_localised(MenuLabels.NCSAFELOOPDELAY_TOAST))
        end)

        menu.slider(NCSafe, MenuLabels.NCSAFELOOPTRANSACTIONTIMEOUT, {"ncafktransactiontimeout"}, MenuLabels.NCSAFELOOPTRANSACTIONTIMEOUT_DESC, 1000, NCSafeLoopTransactionTimeout, NCSafeLoopTransactionTimeout, 100, function(peepeepoopoo)
            NCSafeLoopTransactionTimeout = peepeepoopoo -- clever
            util.toast(lang.get_localised(MenuLabels.NCSAFELOOPTIMEOUTMODIFIED_TOAST))
        end)

        menu.slider(NCSafe, MenuLabels.NCSAFELOOPSTOP, {"ncafkamount"}, MenuLabels.NCSAFELOOPSTOP_DESC, 0, 999999999, 0, 300000, function(value)
            NCSafeLoopUserLimit = value
            util.toast(lang.get_localised(MenuLabels.NCSAFELOOPSTOP_TOAST))
        end)

        menu.action(NCSafe, MenuLabels.NCRESETSAFEVALUE, {}, MenuLabels.NCRESETSAFEVALUE_DESC, FixNCSafe)

        if not IS_RELEASE_VERSION then
            menu.action(NCSafe, "[DEBUG] Fuck The Safe", {}, "", function()
                TriggerNCSafeAddMoneyTransaction(300000, true)
            end)

            menu.toggle(NCSafe, "[DEBUG] Disable Rendering", {}, "", function(toggle)
                GRAPHICS.TOGGLE_PAUSED_RENDERPHASES(not toggle)
                GRAPHICS.DONT_RENDER_IN_GAME_UI(toggle)
            end)
        end
--#endregion Nightclub Shit

----------------------------------
-- MC Club Shit
----------------------------------
--#region MC Club Shit
local MCMan = menu.list(menu.my_root(), GetLabelText(MenuLabels.MCBUSINESS), {}, MenuLabels.MCLIST_DESC)

    menu.toggle_loop(MCMan, MenuLabels.ENFORCEEASIESTMISSION, {}, MenuLabels.ENFORCEEASIESTMISSION_DESC, function()
        local value = GetLocalInt(locals.MCSellScriptString, locals.MCEZMission)
        if value and value ~= 0 then
            SetLocalInt(locals.MCSellScriptString, locals.MCEZMission, 0)
        end
    end)

    if not IS_RELEASE_VERSION and not IS_BETA_VERSION then
        menu.toggle_loop(MCMan, "[DEBUG] Autocomplete Sell Mission", {}, "This doesnt work too well lol", function()
            if GetLocalInt(locals.MCSellScriptString, 696) then
                util.toast("Script is running")
                if GetLocalInt(locals.MCSellScriptString, locals.MCEZMissionStarted) then
                    util.toast("mission started, waiting 30 secs")
                    util.yield(30000)
                    SetLocalInt(locals.MCSellScriptString, locals.MCEZMissionStarted, 1)
                else
                    util.toast(GetLocalInt(locals.MCSellScriptString, locals.MCEZMissionStarted))
                end
            end
        end)
    end

    -- Generate MC Business options
    for index = 0, 4 do
        local name = MCBusinessTypesOrderedWithLabels[index].name
        local label = MCBusinessTypesOrderedWithLabels[index].label
        

        local list = menu.list(MCMan, label)

        menu.toggle_loop(list, MenuLabels.MONITOR, {"monitor"..name}, GetLabelText(MenuLabels.MONITOR_DESC, MenuLabels.PRODUCT, MenuLabels.BUSINESS, MenuLabels.INFOOVERLAY), function()
            if IsInSession() then
                local capacity = GetGlobalInt(globals.MC[name].Cap)
                util.draw_debug_text(GetLabelTextLiteral(MenuLabels.INFO_MCBUSINESS, lang.get_localised(label), MyBusinesses[name].supplies, MyBusinesses[name].product, capacity))
            end
        end)

        menu.toggle_loop(list, MenuLabels.RESUPPLY, {"resupply"..name}, MenuLabels.RESUPPLY_DESC, function()
            if IsInSession() then
                if MyBusinesses[name].property ~= 0 then
                    if MyBusinesses[name].supplies < 50 then
                        ResupplyBusinessSlot(MyBusinesses[name].slot)
                        util.yield(5000)
                    end
                end
            end
        end)

        menu.toggle_loop(list, MenuLabels.MAXSELLPRICE, {"maxsell"..name}, GetLabelText(MenuLabels.MAXSELLPRICE_DESC, MenuLabels.PRODUCT, MenuLabels.PRODUCT), function()
            if remote.killswitches.maxsellprice then
                util.toast(lang.get_localised(MenuLabels.KILLSWITCH_MAXSELLPRICE))
                SetGlobalInt(globals.MC[name].Sell1, globals.MC[name].Sell1DefaultValue)
                SetGlobalFloat(globals.MC[name].Sell2, globals.MC[name].Sell2DefaultValue)
                util.stop_thread()
                return
            end

            if IsInSession() then
                if MyBusinesses[name].property ~= 0 then
                    CheckIfAlone()
                    if MyBusinesses[name].product > 0 then
                        SetGlobalInt(globals.MC[name].Sell1, globals.MC.MaxSellPrice // MyBusinesses[name].product)
                        SetGlobalFloat(globals.MC[name].Sell2, 1)
                    end
                end
            end
        end, function()
            SetGlobalInt(globals.MC[name].Sell1, globals.MC[name].Sell1DefaultValue)
            SetGlobalFloat(globals.MC[name].Sell2, globals.MC[name].Sell2DefaultValue)
        end)

        local var
        menu.toggle(list, MenuLabels.MAXPRODUCTIONSPEED, {"maxprod"..name}, MenuLabels.MCMAXPRODUCTIONSPEED_DESC, function(toggle)
            var = toggle
            if var then
                SetGlobalInt(GetMCBusinessProductionSpeed2(MyBusinesses[name].slot), 0)
                util.toast(lang.get_localised(MenuLabels.MAXPRODUCTIONSPEED_TOAST))
            end
            while var do
                SetGlobalInt(globals.MC[name].ProSpd1, 500)
                util.yield()
            end
            SetGlobalInt(globals.MC[name].ProSpd1, globals.MC[name].ProSpd1DefaultValue)
        end)

        menu.click_slider(list, MenuLabels.SUPPLYPRODUCTRATIO, {"ratio"..name}, MenuLabels.SUPPLYPRODUCTRATIO_DESC, 1, 4, 1, 1, function(value)
            if IsInSession() then
                SetGlobalInt(globals.MC[name].Ratio1, value)
                SetGlobalInt(globals.MC[name].Ratio2, value)
                util.toast(lang.get_localised(MenuLabels.SUPPLYPRODUCTRATIO_TOAST))
            end
        end)

        menu.click_slider(list, MenuLabels.MAXIMUMCAPACITY, {"setcap"..name}, MenuLabels.MAXIMUMCAPACITY_DESC, 1, 999, globals.MC[name].CapDefaultValue, 1, function(value)
            if IsInSession() then
                SetGlobalInt(globals.MC[name].Cap, value)
                util.toast(lang.get_localised(MenuLabels.MAXIMUMCAPACITY_TOAST))
            end
        end)

        menu.action(list, GetLabelText(MenuLabels.TELEPORTTO, MenuLabels.BUSINESS), {"tpbusiness"..name}, GetLabelText(MenuLabels.TELEPORTTO_DESC, MenuLabels.BUSINESS), function()
            if IsInSession() then
                TeleportToMCProperty(MyBusinesses[name].property)
            end
        end)
    end
--#endregion MC Club Shit

--------------------------
-- Bunker Shit
--------------------------
--#region Bunker Shit
local BunkMan = menu.list(menu.my_root(), MenuLabels.BUNKER, {}, MenuLabels.BUNKERLIST_DESC)
    menu.toggle_loop(BunkMan, MenuLabels.MONITOR, {"monitorbunker"}, GetLabelText(MenuLabels.MONITOR_DESC, MenuLabels.PRODUCT, MenuLabels.BUNKER, MenuLabels.INFOOVERLAY), function()
        if IsInSession() then
            local capacity = GetGlobalInt(globals.MC.Bunker.Cap)
            util.draw_debug_text(GetLabelTextLiteral(MenuLabels.INFO_BUNKER, MyBusinesses.Bunker.supplies, MyBusinesses.Bunker.product, capacity))
        end
    end)

    menu.toggle_loop(BunkMan, MenuLabels.RESUPPLY, {"resupplybunker"}, MenuLabels.RESUPPLY_DESC, function()
        if IsInSession() then
            if MyBusinesses.Bunker.property ~= 0 then
                if MyBusinesses.Bunker.supplies <= 9 then
                    ResupplyBusinessSlot(MyBusinesses.Bunker.slot)
                    util.yield(5000)
                end
            end
        end
    end)

    menu.toggle_loop(BunkMan, MenuLabels.MAXSELLPRICE, {"maxsellbunker"}, GetLabelText(MenuLabels.MAXSELLPRICE_DESC, MenuLabels.PRODUCT, MenuLabels.PRODUCT), function()
        if remote.killswitches.maxsellprice then
            util.toast(lang.get_localised(MenuLabels.KILLSWITCH_MAXSELLPRICE))
            SetGlobalInt(globals.MC.Bunker.Sell1, globals.MC.Bunker.Sell1DefaultValue)
            SetGlobalFloat(globals.MC.Bunker.Sell2, globals.MC.Bunker.Sell2DefaultValue)
            util.stop_thread()
            return
        end

        if IsInSession() then
            if MyBusinesses.Bunker.product ~= 0 then
                CheckIfAlone()
                SetGlobalInt(globals.MC.Bunker.Sell1, 2500000 // MyBusinesses.Bunker.product)
                SetGlobalFloat(globals.MC.Bunker.Sell2, 1)
            end
        end
    end, function()
        SetGlobalInt(globals.MC.Bunker.Sell1, globals.MC.Bunker.Sell1DefaultValue)
        SetGlobalFloat(globals.MC.Bunker.Sell2, globals.MC.Bunker.Sell2DefaultValue)
    end)

    local BunkProSpdVar
    menu.toggle(BunkMan, MenuLabels.MAXPRODUCTIONSPEED, {"maxprodbunker"}, MenuLabels.MCMAXPRODUCTIONSPEED_DESC, function(peepeepoopoo)
        BunkProSpdVar = peepeepoopoo
        if BunkProSpdVar then
            SetGlobalInt(GetMCBusinessProductionSpeed2(MyBusinesses.Bunker.slot), 0)
            util.toast(lang.get_localised(MenuLabels.MAXPRODUCTIONSPEED_TOAST))
        else
            SetGlobalInt(globals.MC.Bunker.ProSpd1, 600000)
            SetGlobalInt(globals.MC.Bunker.ProSpd2, 90000)
            SetGlobalInt(globals.MC.Bunker.ProSpd3, 90000)
        end
        while BunkProSpdVar do
            if IsInSession() then
                SetGlobalInt(globals.MC.Bunker.ProSpd1, 1000) -- base
                SetGlobalInt(globals.MC.Bunker.ProSpd2, 1000) -- equipment
                SetGlobalInt(globals.MC.Bunker.ProSpd3, 1000) -- staff upg
            end
            util.yield()
        end
    end)

    menu.click_slider(BunkMan, MenuLabels.SUPPLYPRODUCTRATIO, {"ratiobunker"}, MenuLabels.SUPPLYPRODUCTRATIO_DESC, 1, 10, 10, 1, function(value)
        if IsInSession() then
            SetGlobalInt(globals.MC.Bunker.Ratio1, value) -- no upgrade
            SetGlobalInt(globals.MC.Bunker.Ratio2, value) -- with upgrade
            util.toast(lang.get_localised(MenuLabels.SUPPLYPRODUCTRATIO_TOAST))
        end
    end)

    menu.click_slider(BunkMan, MenuLabels.MAXIMUMCAPACITY, {"setcapbunker"}, MenuLabels.MAXIMUMCAPACITY_DESC, 1, 999, 100, 1, function(value)
        if IsInSession() then
            SetGlobalInt(globals.MC.Bunker.Cap, value)
            util.toast(lang.get_localised(MenuLabels.MAXIMUMCAPACITY_TOAST))
        end
    end)

    menu.action(BunkMan, GetLabelText(MenuLabels.TELEPORTTO, MenuLabels.BUNKER), {"tpbunker"}, GetLabelText(MenuLabels.TELEPORTTO_DESC, MenuLabels.BUNKER), function()
        TeleportToMCProperty(MyBusinesses.Bunker.property)
    end)
--#endregion Bunker Shit

--------------------------
-- Debug Shit
--------------------------
if not IS_RELEASE_VERSION then
    local MBDebug = menu.list(menu.my_root(), "Debug Shit", {"mbdebug"})
    local MBDebug_MC = menu.list(MBDebug, "MC Shit", {"mbdebugmc"})
    for i = 0, 5 do
        --local type = MCBusinessTypesInOrder[i]
        local type = MCBusinessTypesOrderedWithLabels[i].name
        local label = MCBusinessTypesOrderedWithLabels[i].label

        local thislist = menu.list(MBDebug_MC, label, {"mbdebugmc"..type})
        RegisterUpdatingReadOnlyCommand(thislist, "Slot"        , function() return MyBusinesses[type].slot end)
        RegisterUpdatingReadOnlyCommand(thislist, "Property"    , function() return MyBusinesses[type].property end)
        RegisterUpdatingReadOnlyCommand(thislist, "Product"     , function()
            return MyBusinesses[type].product
        end)
        RegisterUpdatingReadOnlyCommand(thislist, "Supplies "    , function() return MyBusinesses[type].supplies end)
        menu.action(thislist, GetLabelText(MenuLabels.TELEPORTTO, MenuLabels.BUSINESS), {}, GetLabelText(MenuLabels.TELEPORTTO_DESC, MenuLabels.BUSINESS), function()
            local coords = MCBusinessPropertyInfo[MyBusinesses[type].property].coords
            if coords then
                if LoadArea(coords) then
                    TeleportTo(coords)
                end
            else
                util.toast("You do not have a "..type)
            end
        end)
    end

    local MBDebug_NC = menu.list(MBDebug, "NC Shit", {"mbdebugnc"})
    for i = 0, #HubTypesOrderedWithLabels do
        local name = HubTypesOrderedWithLabels[i].name
        local label = HubTypesOrderedWithLabels[i].label
        local thislist = menu.list(MBDebug_NC, label, {"mbdebugnc"..name})
        RegisterUpdatingReadOnlyCommand(thislist, "Product"     ,  function() return MyBusinesses.Hub[name] end)
        RegisterUpdatingReadOnlyCommand(thislist, "Capacity"     , function() return GetGlobalInt(globals.Hub[name].Cap) end)
    end
    menu.click_slider(MBDebug_NC, "Set Product All", {}, "Will not put it over your cap", 0, 100, 0, 1, function(value)
        for i = 0, #HubTypesOrderedWithLabels do
            local cap = GetGlobalInt(globals.Hub[HubTypesOrderedWithLabels[i].name].Cap)
            SetGlobalInt(GetHubValueOffsetFromSlot(i), value > cap and cap or value)
        end
    end)

    --menu.action(MBDebug_CEO, "Sync Globals With Stats")
end
--------------------------
-- End Debug Shit
--------------------------

util.create_tick_handler(function()
    prefix = "MP" .. util.get_char_slot() .. "_" -- update our prefix live incase the user switches characters while script is running

    if IsInSession() then
        PopulateMyBusinessesTable()

        FixNCHubCapacities()
    end
    return true
end)

menu.divider(menu.my_root(), "Gifts And Unlocks")

local UNLOCKS = menu.list(menu.my_root(), "Unlocks", { "nyunlocks" }, "Do all unlocks in your account.", function() end)

menu.action(UNLOCKS,"Unlock All", {}, "This option will unlock everything possible.", function()
    local is_player_male = ENTITY.GET_ENTITY_MODEL(PLAYER.PLAYER_PED_ID()) == util.joaat('mp_m_freemode_01')
    if is_player_male then
        packed_bool_range(3483, 3492) -- Death Defying T-Shirt (Male), For Hire T-Shirt (Male), Gimme That T-Shirt (Male), Asshole T-Shirt (Male), Can't Touch This T-Shirt (Male), Decorated T-Shirt (Male), Psycho Killer T-Shirt (Male), One Man Army T-Shirt (Male), Shot Caller T-Shirt (Male), Showroom T-Shirt (Male)
        packed_bool_range(6082, 6083) -- Black Benny's T-Shirt, White Benny's T-Shirt
        packed_bool_range(6097, 6097) -- I Heart LC (T-Shirt) (Male)
        packed_bool_range(6169, 6169) -- DCTL T-Shirt (Male)
        packed_bool_range(6303, 6304) -- Crosswalk Tee (Male), R* Crosswalk Tee (Male)
        packed_bool_range(15708, 15708) -- Black The Black Madonna Emb. Tee (Male)
        packed_bool_range(15710, 15710) -- The Black Madonna Star Tee (Male)
        packed_bool_range(15717, 15717) -- White Dixon Repeated Logo Tee (Male)
        packed_bool_range(15720, 15720) -- Black Dixon Wilderness Tee (Male)
        packed_bool_range(15724, 15724) -- Tale Of Us Black Box Tee (Male)
        packed_bool_range(15728, 15728) -- Black Tale Of Us Emb. Tee (Male)
        packed_bool_range(15730, 15730) -- Black Solomun Yellow Logo Tee (Male)
        packed_bool_range(15732, 15732) -- White Solomun Tee (Male)
        packed_bool_range(15737, 15737) -- ??? (Tattoo) (Male)
        packed_bool_range(15887, 15887) -- Lucky 7s (Tattoo) (Male)
        packed_bool_range(15894, 15894) -- The Royals (Tattoo) (Male)
        packed_bool_range(28393, 28416) -- Badlands Revenge II Retro Tee (Male), Badlands Revenge II Pixtro Tee (Male), Degenatron Glitch Tee (Male), Degenatron Logo Tee (Male), The Wizard's Ruin Rescue Tee (Male), The Wizard's Ruin Vow Tee (Male), Space Monkey Art Tee (Male), Crotch Rockets Tee (Male), Street Legal Tee (Male), Get Truckin' Tee (Male), Arcade Trophy Tee (Male), Videogeddon Tee (Male), Insert Coin Tee (Male), Plushie Princess Tee (Male), Plushie Wasabi Kitty Tee (Male), Plushie Master Tee (Male), Plushie Muffy Tee (Male), Plushie Humpy Tee (Male), Plushie Saki Tee (Male), Plushie Grindy Tee (Male), Plushie Poopie Tee (Male), Plushie Smoker Tee (Male), Shiny Wasabi Kitty Claw Tee (Male), Nazar Speaks Tee (Male)
        packed_bool_range(28447, 28451) -- 11 11 Tee (Male), King Of QUB3D Tee (Male), Qubism Tee (Male), God Of QUB3D Tee (Male), QUB3D Boxart Tee (Male)
        packed_bool_range(28452, 28478) -- Channel X Aged Tee (Male), Rebel Radio Aged Tee (Male), LSUR Aged Tee (Male), Steel Horse Solid Logo Aged Tee (Male), Black Western Logo Aged Tee (Male), White Nagasaki Aged Tee (Male), Black Principe Aged Tee (Male), Albany Vintage Aged Tee (Male), Benefactor Aged Tee (Male), Bravado Aged Tee (Male), Declasse Aged Tee (Male), Dinka Aged Tee (Male), Grotti Aged Tee (Male), Lampadati Aged Tee (Male), Ocelot Aged Tee (Male), Overflod Aged Tee (Male), Pegassi Aged Tee (Male), Pfister Aged Tee (Male), Vapid Aged Tee (Male), Weeny Aged Tee (Male), Toe Shoes Aged T-Shirt (Male), Vanilla Unicorn Aged T-Shirt (Male), Fake Vapid Aged T-Shirt (Male), I Married My Dad Aged T-Shirt (Male), White Rockstar Camo Aged Tee (Male), Razor Aged T-Shirt (Male), Noise Rockstar Logo Aged Tee (Male)
        packed_bool_range(30355, 30361) -- Noise Aged Tee (Male), Emotion 98.3 Aged T-Shirt (Male), KDST Aged T-Shirt (Male), KJAH Radio Aged T-Shirt (Male), Bounce FM Aged T-Shirt (Male), K-Rose Aged T-Shirt (Male), Blue The Diamond Resort LS Aged Tee (Male)
        packed_bool_range(30407, 30410) -- White Keinemusik Tee (Male), Blue Keinemusik Tee (Male), Moodymann Tee (Male), Palms Trax Tee (Male)
        packed_bool_range(30418, 30422) -- Faces of Death Tee (Male), Straight to Video Tee (Male), Monkey See Monkey Die Tee (Male), Trained to Kill Tee (Male), The Director Tee (Male)
        packed_bool_range(41273, 41284) -- Monkey (Tattoo) (Male), Dragon (Tattoo) (Male), Snake (Tattoo) (Male), Goat (Tattoo) (Male), Rat (Tattoo) (Male), Rabbit (Tattoo) (Male), Ox (Tattoo) (Male), Pig (Tattoo) (Male), Rooster (Tattoo) (Male), Dog (Tattoo) (Male), Horse (Tattoo) (Male), Tiger (Tattoo) (Male)
        packed_bool_range(41293, 41293) -- Hinterland Work T-Shirt (Male)
    else
        packed_bool_range(3496, 3505) -- Death Defying Top (Female), For Hire Top (Female), Gimme That Top (Female), Asshole Top (Female), Can't Touch This Top (Female), Decorated Top (Female), Psycho Killer Top (Female), One Man Army Top (Female), Shot Caller Top (Female), Showroom Top (Female)
        packed_bool_range(6091, 6092) -- Black Benny's T-Shirt, White Benny's T-Shirt
        packed_bool_range(6106, 6106) -- I Heart LC (T-Shirt) (Female)
        packed_bool_range(6181, 6181) -- DCTL T-Shirt (Female)
        packed_bool_range(6316, 6317) -- Crosswalk Tee (Female), R* Crosswalk Tee (Female)
        packed_bool_range(15719, 15719) -- Black The Black Madonna Emb. Tee (Female)
        packed_bool_range(15721, 15721) -- The Black Madonna Star Tee (Female)
        packed_bool_range(15728, 15728) -- White Dixon Repeated Logo Tee (Female)
        packed_bool_range(15731, 15731) -- Black Dixon Wilderness Tee (Female)
        packed_bool_range(15735, 15735) -- Tale Of Us Black Box Tee (Female)
        packed_bool_range(15739, 15739) -- Black Tale Of Us Emb. Tee (Female)
        packed_bool_range(15741, 15741) -- Black Solomun Yellow Logo Tee (Female)
        packed_bool_range(15743, 15743) -- White Solomun Tee (Female)
        packed_bool_range(15748, 15748) -- ??? (Tattoo) (Female)
        packed_bool_range(15898, 15898) -- Lucky 7s (Tattoo) (Female)
        packed_bool_range(15905, 15905) -- The Royals (Tattoo) (Female)
        packed_bool_range(28404, 28427) -- Badlands Revenge II Retro Tee (Female), Badlands Revenge II Pixtro Tee (Female), Degenatron Glitch Tee (Female), Degenatron Logo Tee (Female), The Wizard's Ruin Rescue Tee (Female), The Wizard's Ruin Vow Tee (Female), Space Monkey Art Tee (Female), Crotch Rockets Tee (Female), Street Legal Tee (Female), Get Truckin' Tee (Female), Arcade Trophy Tee (Female), Videogeddon Tee (Female), Insert Coin Tee (Female), Plushie Princess Tee (Female), Plushie Wasabi Kitty Tee (Female), Plushie Master Tee (Female), Plushie Muffy Tee (Female), Plushie Humpy Tee (Female), Plushie Saki Tee (Female), Plushie Grindy Tee (Female), Plushie Poopie Tee (Female), Plushie Smoker Tee (Female), Shiny Wasabi Kitty Claw Tee (Female), Nazar Speaks Tee (Female)
        packed_bool_range(28458, 28462) -- 11 11 Tee (Female), King Of QUB3D Tee (Female), Qubism Tee (Female), God Of QUB3D Tee (Female), QUB3D Boxart Tee (Female)
        packed_bool_range(28463, 28478) -- Channel X Aged Tee (Female), Rebel Radio Aged Tee (Female), LSUR Aged Tee (Female), Steel Horse Solid Logo Aged Tee (Female), Black Western Logo Aged Tee (Female), White Nagasaki Aged Tee (Female), Black Principe Aged Tee (Female), Albany Vintage Aged Tee (Female), Benefactor Aged Tee (Female), Bravado Aged Tee (Female), Declasse Aged Tee (Female), Dinka Aged Tee (Female), Grotti Aged Tee (Female), Lampadati Aged Tee (Female), Ocelot Aged Tee (Female), Overflod Aged Tee (Female)
        packed_bool_range(30418, 30421) -- White Keinemusik Tee (Female), Blue Keinemusik Tee (Female), Moodymann Tee (Female), Palms Trax Tee (Female)
        packed_bool_range(30355, 30372) -- Pegassi Aged Tee (Female), Pfister Aged Tee (Female), Vapid Aged Tee (Female), Weeny Aged Tee (Female), Toe Shoes Aged T-Shirt (Female), Vanilla Unicorn Aged T-Shirt (Female), Fake Vapid Aged T-Shirt (Female), I Married My Dad Aged T-Shirt (Female), White Rockstar Camo Aged Tee (Female), Razor Aged T-Shirt (Female), Noise Rockstar Logo Aged Tee (Female), Noise Aged Tee (Female), Emotion 98.3 Aged T-Shirt (Female), KDST Aged T-Shirt (Female), KJAH Radio Aged T-Shirt (Female), Bounce FM Aged T-Shirt (Female), K-Rose Aged T-Shirt (Female), Blue The Diamond Resort LS Aged Tee (Female)
        packed_bool_range(30429, 30433) -- Faces of Death Tee (Female), Straight to Video Tee (Female), Monkey See Monkey Die Tee (Female), Trained to Kill Tee (Female), The Director Tee (Female)
        packed_bool_range(41285, 41296) -- Monkey (Tattoo) (Female), Dragon (Tattoo) (Female), Snake (Tattoo) (Female), Goat (Tattoo) (Female), Rat (Tattoo) (Female), Rabbit (Tattoo) (Female), Ox (Tattoo) (Female), Pig (Tattoo) (Female), Rooster (Tattoo) (Female), Dog (Tattoo) (Female), Horse (Tattoo) (Female), Tiger (Tattoo) (Female)
        packed_bool_range(41304, 41304) -- Hinterland Work T-Shirt (Female)
    end

    packed_bool_range(110, 113) -- Red Check Pajamas, Green Check Pajamas, Black Check Pajamas, I Heart LC T-shirt
    packed_bool_range(115, 115) -- Roosevelt
    packed_bool_range(124, 124) -- Sanctus
    packed_bool_range(129, 129) -- Albany Hermes
    packed_bool_range(135, 137) -- Vapid Clique, Buzzard Attack Chopper, Insurgent Pick-Up
    packed_bool_range(3593, 3599) --'Statue Of Happiness' T-shirt, 'Pisswasser' Beer Hat, 'Benedict' Beer Hat, 'J Lager' Beer Hat, 'Patriot' Beer Hat, 'Blarneys' Beer Hat, 'Supa Wet' Beer Hat
    packed_bool_range(3604, 3605) -- Liberator, Sovereign
    packed_bool_range(3608, 3609) --'Elitas' T-shirt, High Flyer Parachute Bag
    packed_bool_range(3616, 3616) -- Please Stop Me Mask
    packed_bool_range(3750, 3750) -- Stocking
    packed_bool_range(3765, 3769) -- The Fleeca Job, The Prison Break, The Humane Labs Raid, Series A Funding, The Pacific Standard Job (Elite Challenges)
    packed_bool_range(3770, 3781) --'Death Defying' T-shirt, 'For Hire' T-shirt, 'Gimme That' T-shirt, 'Asshole' T-shirt, 'Can't Touch This' T-shirt, 'Decorated' T-shirt, 'Psycho Killer' T-shirt, 'One Man Army' T-shirt, 'Shot Caller' T-shirt, 'Showroom' T-shirt, 'Elite Challenge' T-Shirt, 'Elite Lousy' T-Shirt
    packed_bool_range(3783, 3802) -- Fake Dix White T-Shirt, Fake Dix Gold T-Shirt, Fake Didier Sachs T-Shirt, Fake Enema T-Shirt, Fake Le Chien No2 T-Shirt, Fake Le Chien Crew T-Shirt, Fake Santo Capra T-Shirt, Fake Vapid T-Shirt, Fake Perseus T-Shirt, Fake Sessanta Nove T-Shirt, 'Vinewood Zombie' T-shirt, 'Meltdown' T-shirt, 'I Married My Dad' T-shirt, 'Die Already 4' T-shirt, 'The Shoulder Of Orion II' T-shirt, 'Nelson In Naples' T-shirt, 'The Many Wives of Alfredo Smith' T-shirt, 'An American Divorce' T-shirt, 'The Loneliest Robot' T-shirt, 'Capolavoro' T-shirt
    packed_bool_range(4247, 4269) --'Magnetics Script' Hat, 'Magnetics Block' Hat, 'Low Santos' Hat, 'Boars' Hat, 'Benny's' Hat, 'Westside' Hat, 'Eastside' Hat, 'Strawberry' Hat, 'S.A.' Hat, 'Davis' Hat, 'Vinewood Zombie' T-shirt, 'Knife After Dark' T-shirt, 'The Simian' T-shirt, 'Zombie Liberals In The Midwest' T-shirt, 'Twilight Knife' T-shirt, 'Butchery and Other Hobbies' T-shirt, 'Cheerleader Massacre 3' T-shirt, 'Cannibal Clown' T-shirt, 'Hot Serial Killer Stepmom' T-shirt, 'Splatter And Shot' T-shirt, 'Meathook For Mommy' T-shirt, 'Psycho Swingers' T-shirt, 'Vampires On The Beach' T-shirt
    packed_bool_range(4300, 4327) -- Brown Corpse Bride Bobblehead, White Corpse Bride Bobblehead, Pink Corpse Bride Bobblehead, White Mask Slasher Bobblehead, Red Mask Slasher Bobblehead, Yellow Mask Slasher Bobblehead, Blue Zombie Bobblehead, Green Zombie Bobblehead, Pale Zombie Bobblehead, Possessed Urchin Bobblehead, Demonic Urchin Bobblehead, Gruesome Urchin Bobblehead, Tuxedo Frank Bobblehead, Purple Suit Frank Bobblehead, Stripped Suit Frank Bobblehead, Black Mummy Bobblehead, White Mummy Bobblehead, Brown Mummy Bobblehead, Pale Werewolf Bobblehead, Dark Werewolf Bobblehead, Gray Werewolf Bobblehead, Fleshy Vampire Bobblehead, Bloody Vampire Bobblehead, B&W Vampire Bobblehead, Halloween Loop 1, Halloween Loop 2, Franken Stange, Lurcher
    packed_bool_range(4333, 4335) -- Naughty Cap, Nice Cap, Abominable Snowman
    packed_bool_range(7467, 7495) --'Accountant' T-shirt, 'Bahama Mamas' T-shirt, 'Drone' T-shirt, 'Grotti' T-shirt, 'Golf' T-shirt, 'Maisonette' T-shirt, 'Manopause' T-shirt, 'Marlowe' T-shirt, 'Meltdown' T-shirt, 'Pacific Bluffs' T-shirt, 'Prolaps' T-shirt, 'Tennis' T-shirt, 'Toe Shoes' T-shirt, 'Crest' T-shirt, 'Vanilla Unicorn' T-shirt, Pastel Blue Pajamas, Pastel Yellow Pajamas, Pastel Pink Pajamas, Pastel Green Pajamas, Vibrant Check Pajamas, Blue Check Pajamas, Red Swirl Motif Pajamas, White Graphic Pajamas, Blue Swirl Pajamas, Yellow Swirl Pajamas, Red Swirl Pajamas, Navy Pinstripe Pajamas, Bold Pinstripe Pajamas, Orange Pinstripe Pajamas
    packed_bool_range(7515, 7528) -- Pastel Blue Smoking Jacket, Pastel Yellow Smoking Jacket, Pastel Pink Smoking Jacket, Pastel Green Smoking Jacket, Vibrant Check Smoking Jacket, Blue Check Smoking Jacket, Red Swirl Motif Smoking Jacket, White Graphic Smoking Jacket, Blue Swirl Smoking Jacket, Yellow Swirl Smoking Jacket, Red Swirl Smoking Jacket, Navy Pinstripe Smoking Jacket, Bold Pinstripe Smoking Jacket, Orange Pinstripe Smoking Jacket
    packed_bool_range(7551, 7551) -- DCTL T-Shirt
    packed_bool_range(7595, 7601) -- White Jock Cranley Suit, Red Jock Cranley Suit, Blue Jock Cranley Suit, Black Jock Cranley Suit, Pink Jock Cranley Suit, Gold Jock Cranley Suit, Silver Jock Cranley Suit
    packed_bool_range(9362, 9385) -- Western Brand White T-Shirt, Western Brand Black T-Shirt, Western Logo White T-Shirt, Western Logo Black T-Shirt, Steel Horse Solid Logo T-Shirt, Steel Horse Logo T-Shirt, Steel Horse Brand White T-Shirt, Steel Horse Brand Black T-Shirt, Nagasaki White T-Shirt, Nagasaki White and Red T-Shirt, Nagasaki Black T-Shirt, Purple Helmets Black T-Shirt, Principe Black T-Shirt, Black Steel Horse Hoodie, Steel Horse Brand White T-Shirt, Western Black Hoodie, Western Logo White T-Shirt, Nagasaki White Hoodie, Nagasaki White and Red Hoodie, Nagasaki Black Hoodie, Purple Helmets Black Hoodie, Principe Logo, Crosswalk T-Shirt, R* Crosswalk T-Shirt
    packed_bool_range(9426, 9440) -- Base5 T-Shirt, Bitch'n' Dog Food T-Shirt, BOBO T-Shirt, Bounce FM T-Shirt, Crocs Bar T-Shirt, Emotion 98.3 T-Shirt, Fever 105 T-Shirt, Flash T-Shirt, Homies Sharp T-Shirt, K-DST T-Shirt, KJAH Radio T-Shirt, K-ROSE T-Shirt, Victory Fist T-Shirt, Vinyl Countdown T-Shirt, Vivisection T-Shirt
    packed_bool_range(9443, 9443) -- Unicorn
    packed_bool_range(9461, 9481) -- Ballistic Equipment, LS UR T-Shirt, Non-Stop-Pop FM T-Shirt, Radio Los Santos T-Shirt, Los Santos Rock Radio T-Shirt, Blonded Los Santos 97.8 FM T-Shirt, West Coast Talk Radio T-Shirt, Radio Mirror Park T-Shirt, Rebel Radio T-Shirt, Channel X T-Shirt, Vinewood Boulevard Radio T-Shirt, FlyLo FM T-Shirt, Space 103.2 T-Shirt, West Coast Classics T-Shirt, East Los FM T-Shirt, The Lab T-Shirt, The Lowdown 91.1 T-Shirt, WorldWide FM T-Shirt, Soulwax FM T-Shirt, Blue Ark T-Shirt, Blaine County Radio T-Shirt
    packed_bool_range(15381, 15382) -- APC SAM Battery, Ballistic Equipment
    packed_bool_range(15388, 15423) -- Black Ammu-Nation Cap, Black Ammu-Nation Hoodie, Black Ammu-Nation T-Shirt, Black Coil Cap, Black Coil T-Shirt, Black Hawk & Little Hoodie, Black Hawk & Little Logo T-Shirt, Black Hawk & Little T-Shirt, Black Shrewsbury Hoodie, Black Vom Feuer Cap, Black Warstock Hoodie, Green Vom Feuer T-Shirt, Red Hawk & Little Cap, Warstock Cap, White Ammu-Nation T-Shirt, White Coil Hoodie, White Coil T-Shirt, White Hawk & Little Hoodie, White Hawk & Little T-Shirt, White Shrewsbury T-Shirt, White Shrewsbury Cap, White Shrewsbury Hoodie, White Shrewsbury Logo T-Shirt, White Vom Feuer Cap, White Vom Feuer Hoodie, Wine Coil Cap, Yellow Vom Feuer Logo T-Shirt, Yellow Vom Feuer T-Shirt, Yellow Warstock T-Shirt, Blue R* Class of '98, Red R* Class of '98, Noise Rockstar Logo T-Shirt, Noise T-Shirt, Razor T-Shirt, Black Rockstar Camo, White Rockstar Camo
    packed_bool_range(15425, 15439) -- Knuckleduster Pocket T-Shirt, Rockstar Logo Blacked Out T-Shirt, Rockstar Logo White Out T-Shirt, Half-track 20mm Quad Autocannon, Weaponized Tampa Dual Remote Minigun, Weaponized Tampa Rear-Firing Mortar, Weaponized Tampa Front Missile Launchers, Dune FAV 40mm Grenade Launcher, Dune FAV 7.62mm Minigun, Insurgent Pick-Up Custom .50 Cal Minigun, Insurgent Pick-Up Custom Heavy Armor Plating, Technical Custom 7.62mm Minigun, Technical Custom Ram-bar, Technical Custom Brute-bar, Technical Custom Heavy Chassis Armor
    packed_bool_range(15447, 15474) -- Oppressor Missiles, Fractal Livery Set, Digital Livery Set, Geometric Livery Set, Nature Reserve Livery, Naval Battle Livery, Anti-Aircraft Trailer Dual 20mm Flak, Anti-Aircraft Trailer Homing Missile Battery, Mobile Operations Center Rear Turrets, Incendiary Rounds, Hollow Point Rounds, Armor Piercing Rounds, Full Metal Jacket Rounds, Explosive Rounds, Pistol Mk II Mounted Scope, Pistol Mk II Compensator, SMG Mk II Holographic Sight, SMG Mk II Heavy Barrel, Heavy Sniper Mk II Night Vision Scope, Heavy Sniper Mk II Thermal Scope, Heavy Sniper Mk II Heavy Barrel, Combat MG Mk II Holographic Sight, Combat MG Mk II Heavy Barrel, Assault Rifle Mk II Holographic Sight, Assault Rifle Mk II Heavy Barrel, Carbine Rifle Mk II Holographic Sight, Carbine Rifle Mk II Heavy Barrel, Proximity Mines
    packed_bool_range(15491, 15499) -- Weaponized Tampa Heavy Chassis Armor, Brushstroke Camo Mk II Weapon Livery, Skull Mk II Weapon Livery, Sessanta Nove Mk II Weapon Livery, Perseus Mk II Weapon Livery, Leopard Mk II Weapon Livery, Zebra Mk II Weapon Livery, Geometric Mk II Weapon Livery, Boom! Mk II Weapon Livery
    packed_bool_range(15552, 15560) -- Bronze Greatest Dancer Trophy, Bronze Number One Nightclub Trophy, Bronze Battler Trophy, Silver Greatest Dancer Trophy, Silver Number One Nightclub Trophy, Silver Battler Trophy, Gold Greatest Dancer Trophy, Gold Number One Nightclub Trophy, Gold Battler Trophy
    packed_bool_range(18099, 18099) -- The Forest
    packed_bool_range(18116, 18118) -- The Data Breaches, The Bogdan Problem, The Doomsday Scenario (Elite Challenges)
    packed_bool_range(18121, 18125) -- Green Wireframe Bodysuit, Orange Wireframe Bodysuit, Blue Wireframe Bodysuit, Pink Wireframe Bodysuit, Yellow Wireframe Bodysuit
    packed_bool_range(18134, 18137) -- Hideous Krampus Mask, Fearsome Krampus Mask, Odious Krampus Mask, Heinous Krampus Mask
    packed_bool_range(22124, 22132) -- Maisonette Los Santos T-Shirt, Studio Los Santos T-Shirt, Galaxy T-Shirt, Gefängnis T-Shirt, Omega T-Shirt, Technologie T-Shirt, Paradise T-Shirt, The Palace T-Shirt, Tony's Fun House T-Shirt
    packed_bool_range(22137, 22139) -- Nightclub Hotspot Trophy
    packed_bool_range(24963, 25000) -- Apocalypse Cerberus, Future Shock Cerberus, Apocalypse Brutus, Nightmare Cerberus, Apocalypse ZR380, Future Shock Brutus, Impaler, Bolt Burger Hunger T-Shirt, Apocalypse Sasquatch - Livery set, Rat-Truck, Glendale, Slamvan, Dominator, Issi Classic, Spacesuit Alien T-Shirt set, Gargoyle, Future Shock Deathbike - Light Armor w/ Shield, Blue Lights, Electric Blue Lights, Mint Green Lights, Lime Green Lights, Yellow Lights, Golden Shower Lights, Orange Lights, Red Lights, Pony Pink Lights, Hot Pink Lights, Purple Lights, Blacklight Lights, Taxi Custom, Dozer, Clown Van, Trashmaster, Barracks Semi, Mixer, Space Docker, Tractor, Nebula Bodysuit set
    packed_bool_range(25002, 25002) -- Up-n-Atomizer
    packed_bool_range(25005, 25006) -- Epsilon Robes, Kifflom T-Shirt
    packed_bool_range(25008, 25009) -- The Rookie
    packed_bool_range(25010, 25010) -- Skip arena wall help
    packed_bool_range(25014, 25014) -- Skip arena wall tutorial
    packed_bool_range(25018, 25099) -- Black & White Bones Festive Sweater, Slasher Festive Sweater, Black & Red Bones Festive Sweater, Red Bones Festive Sweater, Burger Shot Festive Sweater, Red Bleeder Festive Sweater, Blue Bleeder Festive Sweater, Blue Cluckin' Festive Sweater, Green Cluckin' Festive Sweater, Blue Slaying Festive Sweater, Green Slaying Festive Sweater, Hail Santa Festive Sweater, Merry Sprunkmas Festive Sweater, Ice Cold Sprunk Festive Sweater, Albany T-Shirt, Albany Vintage T-Shirt, Annis T-Shirt, Benefactor T-Shirt, BF T-Shirt, Bollokan T-Shirt, Bravado T-Shirt, Brute T-Shirt, Buckingham T-Shirt, Canis T-Shirt, Chariot T-Shirt, Cheval T-Shirt, Classique T-Shirt, Coil T-Shirt, Declasse T-Shirt, Dewbauchee T-Shirt, Dilettante T-Shirt, Dinka T-Shirt, Dundreary T-Shirt, Emperor T-Shirt, Enus T-Shirt, Fathom T-Shirt, Gallivanter T-Shirt, Grotti T-Shirt, Hijak T-Shirt, HVY T-Shirt, Imponte T-Shirt, Invetero T-Shirt, Jobuilt T-Shirt, Karin T-Shirt, Lampadati T-Shirt, Maibatsu T-Shirt, Mamba T-Shirt, Mammoth T-Shirt, MTL T-Shirt, Obey T-Shirt, Ocelot T-Shirt, Overflod T-Shirt, Pegassi T-Shirt, Pfister T-Shirt, Progen T-Shirt, Rune T-Shirt, Schyster T-Shirt, Shitzu T-Shirt, Truffade T-Shirt, Ubermacht T-Shirt, Vapid T-Shirt, Vulcar T-Shirt, Weeny T-Shirt, Willard T-Shirt, Albany Nostalgia T-Shirt, Albany USA T-Shirt, Albany Dealership T-Shirt, Annis JPN T-Shirt, BF Surfer T-Shirt, Bollokan Prairie T-Shirt, Bravado Stylized T-Shirt, Brute Impregnable T-Shirt, Brute Heavy Duty T-Shirt, Buckingham Luxe T-Shirt, Canis USA T-Shirt, Canis American Legend T-Shirt, Canis Wolf T-Shirt, Cheval Marshall T-Shirt, Coil USA T-Shirt, Coil Raiden T-Shirt, Declasse Logo T-Shirt, Declasse Girl T-Shirt
    packed_bool_range(25101, 25109) -- Nightmare Brutus, Apocalypse Scarab, Future Shock Scarab, Nightmare Scarab, Future Shock ZR380, Nightmare ZR380, Apocalypse Imperator, Future Shock Imperator, Nightmare Imperator
    packed_bool_range(25111, 25134) -- Future Shock Deathbike - Reinforced Armor w/ Shield, Future Shock Deathbike - Heavy Armor w/ Shield, Future Shock Sasquatch - Livery set, Nightmare Sasquatch - Livery set, Apocalypse Cerberus - Livery set, Future Shock Cerberus - Livery set, All variants of Sasquatch - Light Armor, All variants of Sasquatch - Reinforced Armor, All variants of Sasquatch - Heavy Armor, Nightmare Cerberus - Livery set, Apocalypse Bruiser - Livery set, Future Shock Bruiser - Livery set, Nightmare Bruiser - Livery set, Apocalypse Slamvan - Livery set, All variants of Cerberus - Body Spikes, Future Shock Slamvan - Livery set, All variants of Cerberus - Light Armor, All variants of Cerberus - Reinforced Armor, All variants of Cerberus - Heavy Armor, Nightmare Slamvan - Livery set, Apocalypse Brutus - Livery set, Future Shock Brutus - Livery set, Nightmare Brutus - Livery set, Apocalypse Scarab - Livery set
    packed_bool_range(25136, 25179) -- All variants of Bruiser - Body Spikes, Future Shock Scarab - Livery set, Nightmare Scarab - Livery set, All variants of Bruiser - Light Armor, All variants of Bruiser - Reinforced Armor, All variants of Bruiser - Heavy Armor, Apocalypse Dominator - Livery set, Future Shock Dominator - Livery set, Nightmare Dominator - Livery set, Apocalypse Impaler - Livery set, Future Shock Impaler - Livery set, Nightmare Impaler - Livery set, All variants of Slamvan - Body Spikes, Apocalypse Imperator - Livery set, Future Shock Imperator - Livery set, All variants of Slamvan - Light Armor, All variants of Slamvan - Reinforced Armor, All variants of Slamvan - Heavy Armor, Nightmare Imperator - Livery set, Apocalypse ZR380 - Livery set, Future Shock ZR380 - Livery set, Nightmare ZR380 - Livery set, Apocalypse Issi - Livery set, Future Shock Issi - Livery set, All variants of Brutus - Light Armor, All variants of Brutus - Reinforced Armor, All variants of Brutus - Heavy Armor, Nightmare Issi - Livery set, Apocalypse Deathbike - Livery set, Future Shock Deathbike - Livery set, Nightmare Deathbike - Livery set, All variants of Sasquatch - Heavy Armored Front, Apocalypse Scarab - Body Spikes set, Future Shock Scarab - Body Spikes set, Nightmare Scarab - Body Spikes set, All variants of Sasquatch - Heavy Armored Hood, All variants of Sasquatch - Mohawk Exhausts, All variants of Scarab - Light Armor, All variants of Scarab - Reinforced Armor, All variants of Scarab - Heavy Armor, All variants of Sasquatch - Dual Mohawk Exhausts, Apocalypse & Nightmare Sasquatch - Rear Spears Left, Optics Headset Mask set, All variants of Dominator - Body Spikes
    packed_bool_range(25181, 25237) -- Apocalypse & Nightmare Sasquatch - Rear Spears Right, Apocalypse & Nightmare Sasquatch - Skull Cross, All variants of Dominator - Light Armor, All variants of Dominator - Reinforced Armor, All variants of Dominator - Heavy Armor, Apocalypse & Nightmare Sasquatch - Ram Skull Cross, Apocalypse & Nightmare Sasquatch - Blonde Doll Cross, All variants of Impaler - Body Spikes, Apocalypse & Nightmare Sasquatch - Brunette Doll Cross, Apocalypse & Nightmare Cerberus - Bastioned Ram-bars, All variants of Impaler - Light Armor, All variants of Impaler - Reinforced Armor, All variants of Impaler - Heavy Armor, All variants of Cerberus - Bolstered Hood Cage, All variants of Cerberus - Reinforced Riot Hood, All variants of Cerberus - Juggernaut Hood, Apocalypse & Nightmare Cerberus - War Spearheads, All variants of Imperator - Body Spikes, Apocalypse & Nightmare Cerberus - War Spear Kit, Apocalypse & Nightmare Cerberus - Nade Spearheads, Apocalypse & Nightmare Cerberus - Nade Spear Kit, All variants of Imperator - Light Armor, All variants of Imperator - Reinforced Armor, All variants of Imperator - Heavy Armor, Apocalypse & Nightmare Cerberus - Skull Spearheads, Apocalypse & Nightmare Cerberus - Skull Spear Kit, Apocalypse & Nightmare Cerberus - Arrow Spearheads, Apocalypse & Nightmare Cerberus - Arrow Spear Kit, All variants of ZR380 - Body Spikes, Apocalypse & Nightmare Cerberus - Tridents, Apocalypse & Nightmare Cerberus - Wasteland Ritual, All variants of ZR380 - Light Armor, All variants of ZR380 - Reinforced Armor, All variants of ZR380 - Heavy Armor, Future Shock Cerberus - Panel Detail, Future Shock Cerberus - Crane Pipes, All variants of Issi - Body Spikes, Future Shock Cerberus - Hedgehog, Future Shock Cerberus - Hedgehog MK2, Future Shock Bruiser - Heavy Plated Armored Grille / Apocalypse & Nightmare Bruiser - Diamond Heavy Armor Grille, All variants of Issi - Light Armor, All variants of Issi - Reinforced Armor, All variants of Issi - Heavy Armor, All variants of Bruiser - Twin Oval Exhaust, Cluckin' Bell Mask, All variants of Bruiser - Long Triple Rear Exhausts, All variants of Bruiser - Front & Rear Triple Exhausts, All variants of Deathbike - Light Armor, All variants of Deathbike - Reinforced Armor, All variants of Deathbike - Heavy Armor, Kinetic Mines, Apocalypse Bruiser - Skull & Cross / Nightmare Bruiser - Painted Skull & Cross, Spike Mines, Slick Mines, Sticky Mines, EMP Mines, RC Bandito
    packed_bool_range(25244, 25400) -- Robot Bodysuit set, Hero Bodysuit set, Shapes Bodysuit set, Contours Bodysuit set, Martian Bodysuit set, Reptile Bodysuit set, Galaxy Bodysuit set, Space Creature Suits, Space Cyclops Suits, Space Horror Suits, Retro Spacesuits, Astronaut Suits, Space Traveler Suits, Character Suits: Pogo Space Monkey, Character Suits: Republican Space Ranger, Death Bird Mask set, Stalker Mask set, Raider Mask set, Marauder Mask set, Paco the Taco Mask, Burger Shot Mask, Space Rangers T-Shirt set, Space Ranger Logo T-Shirt set, Phases T-Shirt set, Rocket Splash T-Shirt set, Two Moons T-Shirt set, Freedom Isn't Free T-Shirt set, Apocalyptic Raider Top set, Apocalyptic Leather Feather Top set, Apocalyptic Mercenary Vest set, Benedict Light Beer Hoodie, Taco Bomb Hoodie, Cluckin' Bell Logo Bomb Hoodie, Patriot Beer Hoodie, Pisswasser Hoodie, Burger Shot Hoodie, Corn Dog Hoodie, Donut Hoodie, Lucky Plucker Hoodie, Logger Light Hoodie, Pizza Hoodie, Fries Hoodie, Mushrooms Hoodie, Redwood Hoodie, eCola Infectious Hoodie, Cluckin' Bell Logo Hoodie, Lemons Hoodie, Tacos Hoodie, Burger Shot Pattern Sweater, Burger Shot Logo Sweater, Burger Shot Sweater, Sprunk Sweater set, Wigwam Sweater, Taco Bomb Chili Sweater, Taco Bomb Sweater set, Cluckin' Bell Logo Bomb Sweater, Blue Cluckin' Bell Sweater, Black Cluckin' Bell Sweater, eCola Sweater set, MeTV Sweater set, Heat Sweater set, Degenatron Sweater, Pisswasser Sweater set, Bolt Burger Sweater, Lucky Plucker Logo Bomb Sweater, Lucky Plucker Sweater, Burger Shot Hockey Shirt set, Cluckin' Bell Hockey Shirt set, Wigwam Hockey Shirt, Redwood Hockey Shirt, Bean Machine Hockey Shirt, Red eCola Hockey Shirt, Black eCola Hockey Shirt, Phat Chips Hockey Shirt set, Sprunk Hockey Shirt set, Sprunk Classic Hockey Shirt, Burger Shot Black T-Shirt, Burger Shot Logo T-Shirt, Cluckin' Bell Logo T-Shirt, Cluckin' Bell Black T-Shirt, Cluckin' Bell Filled Logo T-Shirt, eCola Black T-Shirt, Lucky Plucker T-Shirt, Pisswasser T-Shirt, Sprunk T-Shirt, Taco Bomb Chili T-Shirt, Taco Bomb Black T-Shirt, Up-n-Atom Hamburgers T-Shirt, Up-n-Atom Logo T-Shirt, Wigwam T-Shirt, Degenatron ROYGBIV T-Shirt, CNT T-Shirt, Qub3d T-Shirt, Righteous Slaughter T-Shirt, Space Monkey Full T-Shirt, Space Monkey Pixel T-Shirt, Space Monkey Enemy T-Shirt, Burger Shot Bleeder T-Shirt, Heat Rises T-Shirt, Space Monkey Logo T-Shirt, Space Monkey Suit T-Shirt, Space Monkey Face T-Shirt, Space Monkey Mosaic T-Shirt, Bolt Burger Logo T-Shirt, Exsorbeo 720 T-Shirt, Heat Ball Logo T-Shirt set, Heat Logo T-Shirt set, Heat Pop Art Logo T-Shirt set, MeTV Logo T-Shirt set, MeTV 90s T-Shirt set, Burger Shot Target T-Shirt, eCola Infectious T-Shirt, Up-n-Atom White T-Shirt, Jock Cranley Patriot T-Shirt, CCC TV T-Shirt, Degenatron Logo T-Shirt, eCola White T-Shirt, eCola Pass It On T-Shirt, Tw@ T-Shirt, Chain Pants set, Chain Shorts set, Leather Stitch Pants set, Raider Pants set, Light Ups Shoes set, Flaming Skull Boots set, Skull Harness Boots set, Plated Boots set, Burger Shot Food Cap set, Apocalypse Bruiser - Double Cross Ram Skull / Nightmare Bruiser - Painted Ram Skull & Cross, Burger Shot Logo Cap, Burger Shot Bullseye Cap, Cluckin' Bell Logo Cap set, Apocalypse Bruiser - Cross & Skull Large Blade Kit / Nightmare Bruiser - Painted Skull Large Blade Kit, Cluckin' Bell Logos Cap, Hotdogs Cap set, Taco Bomb Cap set, Apocalypse Bruiser - Ram Skull Nade Kit / Nightmare Bruiser - Painted Ram Skull Nade Kit, Apocalypse Bruiser - Ram Skull Medieval Kit / Nightmare Bruiser - Painted Skull Medieval Kit, Lucky Plucker Cap set, Lucky Plucker Logos Cap set, Apocalypse Bruiser - Ram Skull Medieval Madness / Nightmare Bruiser - Painted Skull Medieval Madness, Apocalypse Bruiser - Barrels & Junk, Pisswasser Cap set, Apocalypse Bruiser - Skeleton Cage, Future Shock Bruiser - Light Cover, Future Shock Bruiser - Spare Tire, Taco Canvas Hat, Burger Shot Canvas Hat, Cluckin' Bell Canvas Hat, Hotdogs Canvas Hat, Shunt Boost, Boost Upgrade 20%, Boost Upgrade 60%, Boost Upgrade 100%, Jump Upgrade 20%, Jump Upgrade 60%, Jump Upgrade 100%
    packed_bool_range(25405, 25405) -- Festive tint (Up-n-Atomizer)
    packed_bool_range(25407, 25511) -- Future Shock Bruiser - Crates, Nightmare Bruiser - Large Burger, Nightmare Bruiser - Large Doughnuts, Nightmare Bruiser - Large eCola Cans, All variants of Slamvan - Rear Bumper Reinforced Armor, All variants of Slamvan - Rear Bumper Heavy Armor, Apocalypse Slamvan - Basic Spears, Apocalypse Slamvan - Battle Cross, Apocalypse Slamvan - War Cross, Apocalypse Slamvan - Battle Spears, Apocalypse Slamvan - War Spears, Nightmare Slamvan - Knife Spears, Nightmare Slamvan - Fork & Knife, Apocalypse & Nightmare Brutus - Gassed Up Bar, Apocalypse & Nightmare Brutus - Roadblock, Apocalypse & Nightmare Brutus - Junk Trunk, Apocalypse & Nightmare Brutus - Fire Spitters, Apocalypse & Nightmare Brutus - Hell Chambers, Apocalypse & Nightmare Brutus - Heavy Armored Arches, Apocalypse & Nightmare Brutus - Toothy, Apocalypse & Nightmare Brutus - Armored Spares, Apocalypse & Nightmare Brutus - Armored Supplies, Apocalypse & Nightmare Brutus - Eternally Chained, Apocalypse & Nightmare Brutus - Speared, Future Shock Scarab - Primary Full Armor, All variants of Scarab - Secondary Full Armor, All variants of Scarab - Carbon Full Armor, Future Shock Scarab - Heavy Duty Cooling / Apocalypse & Nightmare Scarab - Air Filtration Vents & Long Range Equipment, Apocalypse & Nightmare Scarab - Rusty Full Armor, Apocalypse & Nightmare Scarab - Rear War Poles, Apocalypse & Nightmare Scarab - Rear Spears, Apocalypse & Nightmare Scarab - Skull Cross, Apocalypse & Nightmare Scarab - Skull Cross w/ War Poles, Apocalypse & Nightmare Scarab - Skull Cross w/ Spears, Apocalypse & Nightmare Scarab - Load'a War Poles, Apocalypse & Nightmare Scarab - Load'a Spears, Apocalypse & Nightmare Scarab - Scarab Mega Cover set, Apocalypse & Nightmare Scarab - Armored Mega Cover set, Apocalypse & Nightmare Scarab - Cage, Apocalypse & Nightmare Scarab - Plated Cage, Future Shock Scarab - Livery Armor, Future Shock Scarab - Primary Full Armor, Future Shock Scarab - Livery Full Armor, Future Shock Scarab - Carbon Full Armor, Future Shock Scarab - Matte Full Armor, Future Shock Scarab - Futuristic Panel Armor, Future Shock Scarab - Plated Livery Full Armor, All variants of Dominator - Triple Front Exhausts, All variants of Dominator - Horn Exhausts, All variants of Dominator - Triple Rear Exhausts, Apocalypse & Nightmare Dominator - Rear Pointing War Poles, Apocalypse & Nightmare Dominator - Front Facing Axes, Apocalypse & Nightmare Dominator - Front Facing Spears, Apocalypse & Nightmare Dominator - Unholy Cross, Apocalypse & Nightmare Dominator - Brutal Unholy Cross, Apocalypse & Nightmare Dominator - Bunch of War Poles, Apocalypse & Nightmare Dominator - Front Pointing War Poles, Apocalypse & Nightmare Dominator - Skull Hood, Apocalypse & Nightmare Impaler - Got Pole?, Apocalypse & Nightmare Impaler - Getting Medieval, Apocalypse & Nightmare Impaler - Wasteland Peacock, Apocalypse & Nightmare Impaler - Shish-Kebbabed, Apocalypse & Nightmare Impaler - It's A Stick Up, Apocalypse & Nightmare Impaler - The Dark Ages, Apocalypse & Nightmare Impaler - Dolly Spearton, Apocalypse & Nightmare Impaler - War Poles, All variants of Imperator - Shakotan Exhaust, Apocalypse & Nightmare Imperator - Whole Lotta Pole, Apocalypse & Nightmare Imperator - Getting Medieval, Apocalypse & Nightmare Imperator - It's A Stick Up, Apocalypse & Nightmare Imperator - Boom On A Spear, Apocalypse & Nightmare Imperator - Village Justice, Apocalypse & Nightmare Imperator - Wasteland Peacock, Apocalypse & Nightmare Imperator - Shish-Kebbabed, Apocalypse & Nightmare Imperator - Junk Pipes, Apocalypse & Nightmare Imperator - Mega Zorst, Apocalypse & Nightmare Imperator - Ride 'Em Cowboy, Apocalypse & Nightmare Imperator - Cannibal Totem, All variants of ZR380 - Side Exhausts, All variants of ZR380 - Spike Exhausts, Apocalypse & Nightmare ZR380 - Mismatch, Future Shock ZR380 - Ray Gun Exhausts, Future Shock ZR380 - Sprint Car Wing, Future Shock ZR380 - Armor Plating Mk. 3, Future Shock ZR380 - Rear Phantom Covers, All variants of Issi - Heavy Duty Ram Bar, Apocalypse & Nightmare Issi - Spear, Apocalypse & Nightmare Issi - Left War Poles, Apocalypse & Nightmare Issi - Dolly Spearton, Apocalypse & Nightmare Issi - Right War Poles, Apocalypse & Nightmare Issi - Skull Cross, Apocalypse & Nightmare Issi - Dolly Spearton Set, Apocalypse & Nightmare Issi - Dual War Poles, Apocalypse & Nightmare Issi - Dolly Spearton W/ War Pole, Apocalypse & Nightmare Issi - Skull Cross W/ Spear, Apocalypse & Nightmare Issi - Skull Cross W/ War Pole, Apocalypse & Nightmare Issi - Skull Cross W/ Dolly, Apocalypse & Nightmare Issi - Left Spear, Apocalypse & Nightmare Issi - Right Spear, Apocalypse & Nightmare Issi - Left Skull Axe, Apocalypse & Nightmare Issi - Right Axe, Apocalypse & Nightmare Issi - Dual Spears, Apocalypse & Nightmare Issi - Spear & Axe, Apocalypse & Nightmare Issi - Axe & Spear, Apocalypse & Nightmare Issi - Dual Axes
    packed_bool_range(25516, 25516) -- RC Tank
    packed_bool_range(25520, 25521) -- Metal Detector
    packed_bool_range(26811, 26964) -- Action Figures, Playing Cards
    packed_bool_range(26968, 27088) -- Impotent Rage Outfit, High Roller, Tiger Scuba, Sprunk Racing Suit, Neon Bodysuit, Extreme Strike Vest, The Chimera (Outfit), White Racing Suit, The Reconnaissance (Outfit), Blue Jock Cranley Suit, Italian Biker Suit, The Hazard (Outfit), Mid Strike Vest, Splinter Gorka Suit, The Gunfighter (Outfit), Black Plate Carrier*, Hunter Leather Fur Jacket, Chamois Plate Carrier*, Black Heavy Utility Vest, The Puff (Outfit), Ox Blood Patched Cut, Color Geo PRB Leather, Blue Tactical Blouson, Orange Big Cat*, Color Geo Sweater, Vivid Gradient Puffer, Color Diamond Sweater, Classic SN Print Sweater, Power Motocross, The Buzz (Outfit), Pegassi Racing Jacket, Woodland Camo Parka, Le Chien Print Sweater, The Pincer (Outfit), Vibrant Gradient Shortsleeve, Urban Gradient Shortsleeve, White Chevron SC Track, Slalom Motocross, Blue Savanna Shortsleeve, Green Didier Sachs Field, Candy Motocross, Tutti Frutti Pattern Sweater, The Vespucci (Outfit), Contrast Camo Service Shirt, Tropical Pattern Sweater, Black Service Shirt, SecuroServ 1 (Outfit), Black Sports Blagueurs Hoodie, Gold Shiny T-Shirt, OJ Shortsleeve, Primary Squash Hoodie, Purple Camo Bigness Hoodie, Bold Abstract Bigness Hoodie, Pink SN Hoodie, Red Boating Blazer, Multicolor Leaves Shortsleeve, Neon Leaves Güffy Hoodie, Black Dotted Shortsleeve, Drive Motocross, Red Patterned Shortsleeve, Steel Horse Satin Jacket, Orange Squash Hoodie, Regal Loose Shirt, White Güffy Hoodie, Stealth Utility Vest, Red Floral Sweater, Black & Red Bigness Jersey, The Slick (Outfit), Splat Squash Sweater, Tan Hooded Jacket, Brushstroke Combat Shirt, White & Red Bigness Jersey, Black Combat Top, Lime Longline Hoodie, Red Bold Check, Bold Camo Sand Castle Sweater, Red Combat Shirt, Red Mist XI Dark, Cyan Manor Sweater, Flecktarn Sleeveless Shirt, Forest Camo Battle Vest, LS Jardineros Dark, Liberty Cocks Dark, Angelica T-Shirt, Hinterland Ship Sweater, Wine Sleeveless Shirt, Cobble Sleeveless, Black Dense Logo Sweater*, White Flying Bravo Hoodie, Cat T-Shirt*, Color Geo T-Shirt, Bold Abstract Bigness T-Shirt, Neon Leaves Güffy T-Shirt, Black Baggy Hoodie, White Manor Zigzag T-Shirt, Double P Baseball Shirt, Aqua Camo Rolled Tee, Dark Woodland T-Shirt, White Bigness T-Shirt, Black No Retreat Tank, White Benny's T-Shirt, Red Smuggler Tank, Angels of Death Vivid Tee, Blue Hit & Run Tank, Waves T-Shirt*, Beige Turtleneck, Hinterland Nugget T-Shirt, Mustard Güffy Tank, Nagasaki White and Red Hoodie, Grotti Tee, Western Logo Black Tee, Butchery and other Hobbies, Black Ammu-Nation Hoodie*, Fake Santo Capra T-Shirt, Death Defying T-Shirt, Bahama Mamas, Showroom T-Shirt, LS UR Tee, J Lager Beer Hat, Unicorn, Gingerbread
    packed_bool_range(27109, 27115) -- The Diamond Classic T-Shirt, The Diamond Vintage T-Shirt, Red The Diamond LS T-Shirt, Blue The Diamond Resort LS T-Shirt, Red The Diamond Resort T-Shirt, Blue D Casino T-Shirt, Red The Diamond Classic T-Shirt
    packed_bool_range(27120, 27145) -- White The Diamond Hoodie, Black The Diamond Hoodie, Ash The Diamond Hoodie, Gray The Diamond Hoodie, Red The Diamond Hoodie, Orange The Diamond Hoodie, Blue The Diamond Hoodie, Black The Diamond Silk Robe, White The Diamond Cap, Black The Diamond Cap, White LS Diamond Cap, Black LS Diamond Cap, Red The Diamond Cap, Orange The Diamond Cap, Blue LS Diamond Cap, Green The Diamond Cap, Orange LS Diamond Cap, Purple The Diamond Cap, Pink LS Diamond Cap, White The Diamond LS Tee*, Black The Diamond LS Tee, Black The Diamond Resort LS Tee, White The Diamond Resort Tee, Black The Diamond Resort Tee, Black LS Diamond Tee, Black D Casino Tee
    packed_bool_range(27147, 27182) -- I've Been Shamed Tee, Blue I've Been Shamed Tee, Fame or Shame Stars Tee, Red Fame or Shame Stars Tee, No Talent Required Tee, Red No Talent Required Tee, Team Tracey Tee, Blue Team Tracey Tee, Monkey Business Tee, Red Monkey Business Tee, Fame or Shame Logo Tee, Blue Fame or Shame Logo Tee, Stars Fame or Shame Robe, Black Fame or Shame Robe, Red Stars Fame or Shame Robe, Red Fame or Shame Robe, White Fame or Shame Robe, Black Fame or Shame Shades, Red Fame or Shame Shades, Blue Fame or Shame Shades, White Fame or Shame Shades, Gold Fame or Shame Mics, Silver Fame or Shame Mics, Red Fame or Shame Kronos, Green Fame or Shame Kronos, Blue Fame or Shame Kronos, Black Fame or Shame Kronos, America Loves You Tee, Blue America Loves You Tee, Fame or Shame No Evil Tee, You're So Original! Tee, Red You're So Original! Tee, Oh No He Didn't! Tee, Blue Oh No He Didn't! Tee, You're Awful Tee, Red You're Awful Tee
    packed_bool_range(27184, 27213) -- Invade and Persuade Enemies T-Shirt, Invade and Persuade Oil T-Shirt, Invade and Persuade Tour T-Shirt, Invade and Persuade Green T-Shirt, Invade and Persuade RON T-Shirt, Street Crimes Hoods T-Shirt, Street Crimes Punks T-Shirt, Street Crimes Yokels T-Shirt, Street Crimes Bikers T-Shirt, Street Crimes Action T-Shirt, Street Crimes Boxart T-Shirt, Street Crimes Logo T-Shirt, Claim What's Yours T-Shirt, Choose Your Side T-Shirt, Street Crimes Color Gangs T-Shirt, Street Crimes Red Gangs T-Shirt, White Street Crimes Icons T-Shirt, Black Street Crimes Icons T-Shirt, Invade and Persuade Logo T-Shirt, Mission I T-Shirt, Mission II T-Shirt, Mission IV T-Shirt, Mission III T-Shirt, Invade and Persuade Boxart T-Shirt, Invade and Persuade Invader T-Shirt, Invade and Persuade Suck T-Shirt, Invade and Persuade Jets T-Shirt, Invade and Persuade Gold T-Shirt, Invade and Persuade Hero T-Shirt, Invade and Persuade Barrels T-Shirt
    packed_bool_range(27247, 27247) -- Madam Nazar (Arcade Trophy)
    packed_bool_range(28099, 28148) -- Signal Jammers
    packed_bool_range(28158, 28158) -- Navy Revolver
    packed_bool_range(28171, 28191) -- Green Reindeer Lights Bodysuit, Ho-Ho-Ho Sweater, Traditional Festive Lights Bodysuit, Yellow Reindeer Lights Bodysuit, Neon Festive Lights Bodysuit, Plushie Grindy T-Shirt, Plushie Saki T-Shirt , Plushie Humpy T-Shirt, Plushie Smoker T-Shirt, Plushie Poopie T-Shirt, Plushie Muffy T-Shirt, Plushie Wasabi Kitty T-Shirt, Plushie Princess T-Shirt, Plushie Master T-Shirt, Pixel Pete's T-Shirt, Wonderama T-Shirt, Warehouse T-Shirt, Eight Bit T-Shirt, Insert Coin T-Shirt, Videogeddon T-Shirt, Nazar Speaks T-Shirt
    packed_bool_range(28194, 28196) -- Silent & Sneaky, The Big Con, Aggressive (Elite Challenges)
    packed_bool_range(28197, 28222) -- Badlands Revenge II Gunshot T-Shirt, Badlands Revenge II Eagle T-Shirt, Badlands Revenge II Pixtro T-Shirt, Badlands Revenge II Romance T-Shirt, Badlands Revenge II Bear T-Shirt, Badlands Revenge II Help Me T-Shirt & Badlands Revenge II Retro T-Shirt, Race and Chase Decor T-Shirt, Race and Chase Vehicles T-Shirt, Race and Chase Finish T-Shirt, Crotch Rockets T-Shirt, Street Legal T-Shirt & Get Truckin' T-Shirt, Wizard's Ruin Loot T-Shirt, The Wizard's Ruin Rescue T-Shirt, The Wizard's Ruin Vow T-Shirt, Thog Mighty Sword T-Shirt, Thog T-Shirt & Thog Bod T-Shirt, Space Monkey 3 T-Shirt, Space Monkey Space Crafts T-Shirt, Space Monkey Pixel T-Shirt, Space Monkey Boss Fights T-Shirt, Radioactive Space Monkey T-Shirt & Space Monkey Art T-Shirt, Monkey's Paradise T-Shirt, Retro Defender of the Faith T-Shirt, Penetrator T-Shirt, Defender of the Faith T-Shirt, Love Professor His T-Shirt & Love Professor Hers T-Shirt, Love Professor Nemesis T-Shirt, Love Professor Friendzoned T-Shirt, Love Professor Secrets T-Shirt & Love Professor Score T-Shirt, Shiny Wasabi Kitty Claw T-Shirt, Pixtro T-Shirt, Akedo T-Shirt & Arcade Trophy T-Shirt
    packed_bool_range(28224, 28227) -- White Dog With Cone T-Shirt, Yellow Dog With Cone T-Shirt, Dog With Cone Slip-Ons & Dog With Cone Chain, Refuse Collectors Outfit, Undertakers Outfit, Valet Outfit
    packed_bool_range(28229, 28249) -- Prison Guards Outfits, FIB Suits, Black Scuba, Gruppe Sechs Gear, Bugstars Uniforms, Maintenance Outfit, Yung Ancestors Outfit, Firefighter Outfit, Orderly Armor Outfit, Upscale Armor Outfit, Evening Armor Outfit, Reinforced: Padded Combat Outfit, Reinforced: Bulk Combat Outfit, Reinforced: Compact Combat Outfit, Balaclava Crook Outfit, Classic Crook Outfit, High-end Crook Outfit, Infiltration: Upgraded Tech Outfit, Infiltration: Advanced Tech Outfit, Infiltration: Modernized Tech Outfit, Degenatron Glitch T-Shirt
    packed_bool_range(28254, 28255) -- Get Metal T-Shirt / Axe of Fury T-Shirt, 11 11 T-Shirt / Axe of Fury T-Shirt
    packed_bool_range(30230, 30251) -- Movie Props, Space Interloper Outfit
    packed_bool_range(30254, 30295) -- King Of QUB3D T-Shirt, Qubism T-Shirt, God Of QUB3D T-Shirt, QUB3D Boxart T-Shirt, Qub3d Qub3s T-Shirt, Yacht Captain Outfit, BCTR Aged T-Shirt, BCTR T-Shirt, Cultstoppers Aged T-Shirt, Cultstoppers T-Shirt, Daily Globe Aged T-Shirt, Daily Globe T-Shirt, Eyefind Aged T-Shirt, Eyefind T-Shirt, Facade Aged T-Shirt, Facade T-Shirt, Fruit Aged T-Shirt, Fruit T-Shirt, LSHH Aged T-Shirt, LSHH T-Shirt, MyRoom Aged T-Shirt, MyRoom T-Shirt, Rebel Aged T-Shirt, Rebel T-Shirt, Six Figure Aged T-Shirt, Six Figure T-Shirt, Trash Or Treasure Aged T-Shirt, Trash Or Treasure T-Shirt, Tw@ Logo Aged T-Shirt, Tw@ Logo T-Shirt, Vapers Den Aged T-Shirt, Vapers Den T-Shirt, WingIt Aged T-Shirt, WingIt T-Shirt, ZiT Aged T-Shirt, ZiT T-Shirt, Green Dot Tech Mask, Orange Dot Tech Mask, Blue Dot Tech Mask, Pink Dot Tech Mask, Lemon Sports Track Pants, Lemon Sports Track Top
    packed_bool_range(30524, 30557) -- Grotti Aged T-Shirt, Lampadati Aged T-Shirt, Ocelot Aged T-Shirt, Overflod Aged T-Shirt, Pegassi Aged T-Shirt, Pfister Aged T-Shirt, Vapid Aged T-Shirt, Weeny Aged T-Shirt, Blue The Diamond Resort LS Aged T-Shirt, KJAH Radio Aged T-Shirt, K-Rose Aged T-Shirt, Emotion 98.3 Aged T-Shirt, KDST Aged T-Shirt, Bounce FM Aged T-Shirt, Fake Vapid Aged T-Shirt, I Married My Dad Aged T-Shirt, ToeShoes Aged T-Shirt, Vanilla Unicorn Aged T-Shirt, Steel Horse Solid Logo Aged T-Shirt, Black Western Logo Aged T-Shirt, White Nagasaki Aged T-Shirt, Black Principe Aged T-Shirt, Noise Aged T-Shirt, Noise Rockstar Logo Aged T-Shirt, Razor Aged T-Shirt, White Rockstar Camo Aged T-Shirt, LSUR Aged T-Shirt, Rebel Radio Aged T-Shirt, Channel X Aged T-Shirt, Albany Vintage Aged T-Shirt, Benefactor Aged T-Shirt, Bravado Aged T-Shirt, Declasse Aged T-Shirt, Dinka Aged T-Shirt
    packed_bool_range(30563, 30693) -- Panther Varsity Jacket Closed, Panther Tour Jacket, Broker Prolaps Basketball Top, Panic Prolaps Basketball Top, Gussét Frog T-Shirt, Warped Still Slipping T-Shirt, Yellow Still Slipping T-Shirt, Black Rockstar T-Shirt, Black Exsorbeo 720 Logo T-Shirt, Manor PRBG T-Shirt, Manor Tie-dye T-Shirt, Open Wheel Sponsor T-Shirt, Rockstar Yellow Pattern T-Shirt, Rockstar Gray Pattern T-Shirt, Rockstar Rolling T-Shirt, Santo Capra Patterns Sweater, Rockstar Studio Colors Sweater, Bigness Jackal Sweater, Bigness Tie-dye Sweater, Bigness Faces Sweater, Broker Prolaps Basketball Shorts, Panic Prolaps Basketball Shorts, Exsorbeo 720 Sports Shorts, Bigness Tie-dye Sports Pants, Enus Yeti Forwards Cap, 720 Forwards Cap, Exsorbeo 720 Forwards Cap, Güffy Double Logo Forwards Cap, Rockstar Forwards Cap, Blue Bangles (L), Red Bangles (L), Pink Bangles (L), Yellow Bangles (L), Orange Bangles (L), Green Bangles (L), Red & Blue Bangles (L), Yellow & Orange Bangles (L), Green & Pink Bangles (L), Rainbow Bangles (L), Sunset Bangles (L), Tropical Bangles (L), Blue & Pink Glow Shades, Red Glow Shades, Orange Glow Shades, Yellow Glow Shades, Green Glow Shades, Blue Glow Shades, Pink Glow Shades, Blue & Magenta Glow Shades, Purple & Yellow Glow Shades, Blue & Yellow Glow Shades, Pink & Yellow Glow Shades, Red & Yellow Glow Shades, Blue Glow Necklace, Red Glow Necklace, Pink Glow Necklace, Yellow Glow Necklace, Orange Glow Necklace, Green Glow Necklace, Festival Glow Necklace, Carnival Glow Necklace, Tropical Glow Necklace, Hot Glow Necklace, Neon Glow Necklace, Party Glow Necklace, Sunset Glow Necklace, Radiant Glow Necklace, Sunrise Glow Necklace, Session Glow Necklace, Combat Shotgun, Perico Pistol, White Keinemusik T-Shirt, Blue Keinemusik T-Shirt, Moodymann T-Shirt, Palms Trax T-Shirt, Midnight Tint Oversize Shades, Sunset Tint Oversize Shades, Black Tint Oversize Shades, Blue Tint Oversize Shades, Gold Tint Oversize Shades, Green Tint Oversize Shades, Orange Tint Oversize Shades, Red Tint Oversize Shades, Pink Tint Oversize Shades, Yellow Tint Oversize Shades, Lemon Tint Oversize Shades, Gold Rimmed Oversize Shades, White Checked Round Shades, Pink Checked Round Shades, Yellow Checked Round Shades, Red Checked Round Shades, White Round Shades, Black Round Shades, Pink Tinted Round Shades, Blue Tinted Round Shades, Green Checked Round Shades, Blue Checked Round Shades, Orange Checked Round Shades, Green Tinted Round Shades, Brown Square Shades, Yellow Square Shades, Black Square Shades, Tortoiseshell Square Shades, Green Square Shades, Red Square Shades, Pink Tinted Square Shades, Blue Tinted Square Shades, White Square Shades, Pink Square Shades, All White Square Shades, Mono Square Shades, Green Calavera Mask, Navy Calavera Mask, Cherry Calavera Mask, Orange Calavera Mask, Purple Calavera Mask, Dark Blue Calavera Mask, Lavender Calavera Mask, Yellow Calavera Mask, Pink Calavera Mask, Neon Stitch Emissive Mask, Vibrant Stitch Emissive Mask, Pink Stitch Emissive Mask, Blue Stitch Emissive Mask, Neon Skull Emissive Mask, Vibrant Skull Emissive Mask, Pink Skull Emissive Mask, Orange Skull Emissive Mask, Dark X-Ray Emissive Mask, Bright X-Ray Emissive Mask, Purple X-Ray Emissive Mask
    packed_bool_range(30699, 30704) -- Palms Trax LS T-Shirt, Moodymann Whatupdoe T-Shirt, Moodymann Big D T-Shirt, Keinemusik Cayo Perico T-Shirt, Still Slipping Blarneys T-Shirt, Still Slipping Friend T-Shirt
    packed_bool_range(31708, 31714) -- CircoLoco Records - Blue EP, CircoLoco Records - Green EP, CircoLoco Records - Violet EP, CircoLoco Records - Black EP, Moodymann - Kenny's Backyard Boogie, NEZ - You Wanna?, NEZ ft. Schoolboy Q - Let's Get It
    packed_bool_range(31736, 31736) -- The Frontier Outfit
    packed_bool_range(31755, 31755) -- Auto Shop Race 'n Chase
    packed_bool_range(31760, 31764) -- Faces of Death T-Shirt, Straight to Video T-Shirt, Monkey See Monkey Die T-Shirt, Trained to Kill T-Shirt, The Director T-Shirt
    packed_bool_range(31766, 31777) -- Sprunk Forwards Cap, eCola Forwards Cap, Black Banshee T-Shirt, Blue Banshee T-Shirt, LS Customs T-Shirt, Rockstar Games Typeface T-Shirt, Wasted! T-Shirt, Baseball Bat T-Shirt, Knuckleduster T-Shirt, Rampage T-Shirt, Penitentiary Coveralls, LS Customs Coveralls
    packed_bool_range(31779, 31796) -- The Ringleader Outfit, The Knuckles Outfit, The Breaker Outfit, The Dealer Outfit, Bearsy, Banshee Hoodie, eCola Varsity, Sprunk Varsity, LS Customs Varsity, LS Customs Tour Jacket, eCola Bodysuit, Sprunk Bodysuit, Sprunk Chute Bag, eCola Chute Bag, Halloween Chute Bag, Sprunk Chute, eCola Chute, Halloween Chute
    packed_bool_range(31805, 31808) -- The Old Hand Outfit, The Overworked Outfit, The Longshoreman Outfit, The Underpaid Outfit
    packed_bool_range(31810, 31824) -- Annis ZR350, Pfister Comet S2, Dinka Jester RR, Emperor Vectre, Ubermacht Cypher, Pfister Growler, Karin Calico GTF, Annis Remus, Vapid Dominator ASP, Karin Futo GTX, Dinka RT3000, Vulcar Warrener HKR, Karin Sultan RS Classic, Vapid Dominator GTT, Karin Previon
    packed_bool_range(31826, 31858) -- Emperor Forwards Cap / Emperor Backwards Cap, Beige Knit Sneakers, Gray Emperor Classic Hoodie, Pursuit Series (Gameplay), Cyan Check Sleeveless Puffer, Dinka SPL (Wheel Mod), Blue Hayes Retro Racing, White Emperor Motors T-Shirt, Quick Fix (Gameplay), Cyan Check Puffer, Euros - Speed Trail (Livery), Never Barcode Print Hoodie, Hayes Modern Racing, Diversion (Gameplay), Gray Leather Bomber, Futo GTX - Chokusen Dorifuto (Livery), Karin Forwards Cap / Karin Backwards Cap, Cream Knit Sneakers, Private Takeover (Gameplay), Yellow Pfister Hoodie, Retro Turbofan (Wheel Mod), Red Check Sleeveless Puffer, White Hayes Retro Racing, Setup (Gameplay), Navy Emperor Motors T-Shirt, RT3000 - Stance Andreas (Livery), Red Check Puffer, Never Triangle Print Hoodie, Wingman (Gameplay), LTD Modern Racing, Jester RR - 10 Minute Car (Livery), Green Crowex Pro Racing Suit, Mustard Tan Leather Bomber
    packed_bool_range(31860, 31863) -- Omnis Forwards Cap / Omnis Backwards Cap, Conical Turbofan (Wheel Mod), Black Knit Sneakers, Green Emperor Classic Hoodie
    packed_bool_range(31865, 31868) -- Green Geo Sleeveless Puffer, ZR350 - Atomic Drift Team (Livery), White Globe Oil Retro Racing, Yellow Annis Rally T-Shirt
    packed_bool_range(31870, 31928) -- Green Geo Puffer, Warrener HKR - Classic Vulcar (Livery), Life ZigZag Print Hoodie, Blue Dinka Modern Racing, Gray Benefactor Racing Suit, Orange Tan Leather Bomber, Ice Storm (Wheel Mod), Annis Forwards Cap / Annis Backwards Cap, Gray & Purple Knit Sneakers, Black Crowex Pro Racing Suit, Gray Pfister Hoodie, Calico GTF - Fukaru Rally (Livery), Black Geo Sleeveless Puffer, Green Crowex Retro Racing, Blue Xero Gas Racing Suit, Blue Annis Noise T-Shirt, Remus - Blue Lightning (Livery), Black Geo Puffer, Life Static Print Hoodie, Dark Benefactor Racing Suit, Red Dinka Modern Racing, Super Turbine (Wheel Mod), Chestnut Tan Leather Bomber, Vapid Forwards Cap / Vapid Backwards Cap, Red Xero Gas Racing Suit, Gray & Magenta Knit Sneakers, Dominator GTT - Oldschool Oval (Livery), Black Vapid Ellie Hoodie, Cream Bigness Sleeveless Puffer, Wildstyle Racing Suit, Red Globe Oil Retro Racing, Tailgater S - Crevis Race (Livery), Light Dinka T-Shirt, Cream Bigness Puffer, Modern Mesh (Wheel Mod), Never Crosshair Print Hoodie, Euros - Drift Tribe (Livery), Yellow Vapid Modern Racing, Dark Tan Leather Bomber, Forged Star (Wheel Mod), Light Dinka Forwards Cap / Light Dinka Backwards Cap, Futo GTX - Drift King (Livery), Gray & Aqua Knit Sneakers, Gray Karin Hoodie, Showflake (Wheel Mod), Purple Bigness Sleeveless Puffer, RT3000 - Atomic Motorsport (Livery), Black Crowex Retro Racing, Black Annis Noise T-Shirt, Giga Mesh (Wheel Mod), Purple Bigness Puffer, Jester RR - Yogarishima (Livery), Hiding Print Hoodie, Ubermacht Modern Racing, Mesh Meister (Wheel Mod), Ox Blood Leather Bomber, ZR350 - Kisama Chevrons (Livery), Dark Dinka Forwards Cap / Dark Dinka Backwards Cap, White & Pink Knit Sneakers
    packed_bool_range(31930, 31933) -- Navy Vapid Ellie Hoodie, Warrener HKR - Classic Vulcar Alt (Livery), Green Aztec Sleeveless Puffer, Calico GTF - Disruption Rally (Livery)
    packed_bool_range(31935, 31938) -- Blue Atomic Retro Racing, Remus - Annis Tech (Livery), Dark Dinka T-Shirt, Dominator GTT - Resto Mod Racer (Livery)
    packed_bool_range(31940, 31943) -- Green Aztec Puffer, Tailgater S - Redwood (Livery), Life Binary Print Hoodie, Euros - King Scorpion (Livery)
    packed_bool_range(31945, 31948) -- White Güffy Modern Racing, Futo GTX - Tandem Battle (Livery), Dark Nut Leather Bomber, RT3000 - Dinka Performance (Livery)
    packed_bool_range(31950, 31953) -- White Güffy Forwards Cap / White Güffy Backwards Cap, Jester RR - Fuque (Livery), Gray & Yellow Knit Sneakers, ZR350 - Winning is Winning (Livery)
    packed_bool_range(31955, 31958) -- Navy Karin Hoodie, Warrener HKR - Redwood Racing (Livery), Black Aztec Sleeveless Puffer, Calico GTF - Redwood Rally (Livery)
    packed_bool_range(31960, 31963) -- Yellow Atomic Retro Racing, Remus - Atomic Motorsport (Livery), Light Vapid Ellie T-Shirt, Dominator GTT - Flame On (Livery)
    packed_bool_range(31965, 31968) -- Black Aztec Puffer, Tailgater S - Disruption Logistics (Livery), Lucky Penny Print Hoodie, Euros - Sprunk Light (Livery)
    packed_bool_range(31970, 31973) -- Black Güffy Modern Racing, Futo GTX - Itasha Drift (Livery), Navy Blue Leather Bomber, RT3000 - Shiny Wasabi Kitty (Livery)
    packed_bool_range(31975, 31978) -- Black Güffy Forwards Cap / Black Güffy Backwards Cap, Jester RR - Xero Gas Rally (Livery), Grayscale Knit Sneakers, ZR350 - Annis Racing Tribal (Livery)
    packed_bool_range(31980, 31983) -- Light Obey Hoodie, Warrener HKR - Vulcar Turbo (Livery), Cream Splinter Sleeveless Puffer, Calico GTF - Prolaps Rally (Livery)
    packed_bool_range(31985, 31988) -- Blue Redwood Retro Racing, Remus - Shiny Wasabi Kitty (Livery), Dark Vapid Ellie T-Shirt, Dominator GTT - The Patriot (Livery)
    packed_bool_range(31990, 31993) -- Cream Splinter Puffer, Tailgater S - Colored Camo Livery (Livery), Light Dinka Modern Racing, Euros - Candybox Gold (Livery)
    packed_bool_range(31995, 31998) -- Dark Green Leather Bomber, Futo GTX - Stance Andreas (Livery), Hellion Forwards Cap / Hellion Backwards Cap, RT3000 - Total Fire (Livery)
    packed_bool_range(32000, 32003) -- Gray & Cyan Knit Sneakers, Jester RR - Split Siberia (Livery), Black Ubermacht Hoodie, ZR350 - Annis Racing Tribal Alt (Livery)
    packed_bool_range(32005, 32008) -- Dark Splinter Sleeveless Puffer, Warrener HKR - Vulcar Turbo Alt (Livery), White Logo Ruiner T-Shirt, Calico GTF - Xero Gas Rally (Livery)
    packed_bool_range(32010, 32013) -- Dark Splinter Puffer, Remus - Fukaru Motorsport (Livery), Dark Dinka Modern Racing, Dominator GTT - 70s Street Machine (Livery)
    packed_bool_range(32015, 32018) -- White Leather Bomber, Tailgater S - Army Camo Solid (Livery), Lampadati Forwards Cap / Lampadati Backwards Cap, Lilac Knit Sneakers
    packed_bool_range(32020, 32023) -- Dark Obey Hoodie, Green Latin Sleeveless Puffer, Gray Vapid Truck T-Shirt, Green Latin Puffer
    packed_bool_range(32025, 32028) -- Blue Bravado Modern Racing, Red Leather Bomber, White Knit Sneakers, Red Ubermacht Hoodie
    packed_bool_range(32030, 32033) -- Black Latin Sleeveless Puffer, White Obey Omnis T-Shirt, Black Latin Puffer, Black Bravado Modern Racing
    packed_bool_range(32035, 32038) -- Ice Knit Sneakers, Blue Annis Noise Hoodie, Orange Camo Sleeveless Puffer, Light Blue Vapid Truck T-Shirt
    packed_bool_range(32040, 32043) -- Orange Camo Puffer, Imponte Modern Racing, Aqua Sole Knit Sneakers, Green Emperor Modern Hoodie
    packed_bool_range(32045, 32048) -- Aqua Camo Sleeveless Puffer, Black Vapid USA T-Shirt, Aqua Camo Puffer, Xero Modern Racing
    packed_bool_range(32050, 32053) -- Smoky Knit Sneakers, Gray Annis Noise Hoodie, Gradient Sleeveless Puffer, Red Obey Omnis T-Shirt
    packed_bool_range(32055, 32058) -- Gradient Puffer, White & Gold Knit Sneakers, Dark Emperor Modern Hoodie, Red Logo Ruiner T-Shirt
    packed_bool_range(32060, 32063) -- Orange Knit Sneakers, Light Dinka Hoodie, Blue Bravado Gauntlet T-Shirt, Pink Vibrant Knit Sneakers
    packed_bool_range(32065, 32074) -- Gold Lampadati Hoodie, Black Bravado Gauntlet T-Shirt, Lime Highlight Knit Sneakers, Dark Dinka Hoodie, Pfister Pocket T-Shirt, Purple Fade Knit Sneakers, Karin 90s T-Shirt, Teal Knit Sneakers, Black & Lime Knit Sneakers, Cyan Fade Knit Sneakers
    packed_bool_range(32084, 32084) -- Red Highlight Knit Sneakers
    packed_bool_range(32094, 32094) -- Broker Forwards Cap / Broker Backwards Cap
    packed_bool_range(32104, 32104) -- Annis Hellion 4x4 T-Shirt
    packed_bool_range(32114, 32114) -- Pink Gradient Sleeveless Puffer
    packed_bool_range(32124, 32124) -- Fade Broker Modern Racing
    packed_bool_range(32134, 32134) -- Tricolor Lampadati Hoodie
    packed_bool_range(32144, 32144) -- Mono Leather Bomber
    packed_bool_range(32154, 32154) -- Pink Gradient Puffer
    packed_bool_range(32164, 32164) -- Red Redwood Retro Racing
    packed_bool_range(32174, 32174) -- Crash Out Print Hoodie
    packed_bool_range(32224, 32224) -- Tuned For Speed Racing Suit
    packed_bool_range(32312, 32312) -- Dr. Dre VIP Contract
    packed_bool_range(32319, 32323) -- police5 trade price
    packed_bool_range(34262, 34361) -- LD Organics
    packed_bool_range(32273, 32273) -- White Born x Raised T-Shirt
    packed_bool_range(32275, 32275) -- Circoloco T-Shirt
    packed_bool_range(32287, 32287) -- Dr. Dre
    packed_bool_range(32295, 32311) -- Orange Goldfish, Purple Goldfish, Bronze Goldfish, Clownfish, Juvenile Gull, Sooty Gull, Black-headed Gull, Herring Gull, Brown Sea Lion, Dark Sea Lion, Spotted Sea Lion, Gray Sea Lion, Green Festive T-Shirt, Red Festive T-Shirt, Orange DJ Pooh T-Shirt, White WCC DJ Pooh T-Shirt, Blue WCC DJ Pooh T-Shirt
    packed_bool_range(32315, 32316) -- Navy Coveralls, Gray Coveralls, Marathon Hoodie
    packed_bool_range(32366, 32366) -- Declasse Draugur (Trade Price)
    packed_bool_range(32407, 32408) -- NEXT GEN CONTENT: Bottom Dollar Jacket, The Bottom Dollar
    packed_bool_range(34372, 34375) -- Horror Pumpkin, Dinka Kanjo SJ (Trade Price), Dinka Postlude (Trade Price), Black LD Organics Cap / White LD Organics T-Shirt
    packed_bool_range(34378, 34411) -- Junk Energy Chute Bag, Junk Energy Chute, Pumpkin T-Shirt, Pacific Standard Varsity, Pacific Standard Sweater, Cliffford Varsity, Cliffford Hoodie, The Diamond Casino Varsity, The Diamond Strike Vest, Strickler Hat, Sinsimito Cuban Shirt, CLO_E1M_O_MUM, Manor Geo Forwards Cap, Apricot Perseus Forwards Cap, Still Slipping Tie-dye Forwards Cap, Lemon Festive Beer Hat, Bigness Hand-drawn Dome, Grimy Stitched, Pale Stitched, Gray Cracked Puppet, Blushed Cracked Puppet, Green Emissive Lady Liberty, President, Gold Beat Off Earphones, White Spiked Gauntlet (L), Manor Geo Hoodie, Pumpkin Hoodie, LS Smoking Jacket, Hand-Drawn Biker Bomber, Have You Seen Me? Sweater, Still Slipping Tie-dye T-Shirt, Manor Geo Track Pants, Apricot Perseus Track Pants, Sasquatch
    packed_bool_range(34415, 34510) -- Green Vintage Frank, Brown Vintage Frank, Gray Vintage Frank, Pale Vintage Mummy, Green Vintage Mummy, Weathered Vintage Mummy, Conquest, Death, Famine, War, Black Tech Demon, Gray Tech Demon, White Tech Demon, Green Tech Demon, Orange Tech Demon, Purple Tech Demon, Pink Tech Demon, Red Detail Tech Demon, Blue Detail Tech Demon, Yellow Detail Tech Demon, Green Detail Tech Demon, Pink Detail Tech Demon, Orange & Gray Tech Demon, Red Tech Demon, Camo Tech Demon, Aqua Camo Tech Demon, Brown Digital Tech Demon, Gold Tech Demon, Orange & Cream Tech Demon, Green & Yellow Tech Demon, Pink Floral Tech Demon, Black & Green Tech Demon, White & Red Tech Demon, Carbon Tech Demon, Carbon Teal Tech Demon, Black & White Tech Demon, Painted Tiger, Gray Painted Tiger, Gold Painted Tiger, Ornate Painted Tiger, Gray Yeti Flat Cap, Woodland Yeti Flat Cap, Green FB Flat Cap, Blue FB Flat Cap, Gray Lézard Flat Cap, Green Lézard Flat Cap, Light Plaid Lézard Flat Cap, Dark Plaid Lézard Flat Cap, White Striped Lézard Flat Cap, Red Striped Lézard Flat Cap, Brown Crevis Flat Cap, Gray Crevis Flat Cap, Black Broker Flat Cap, Burgundy Broker Flat Cap, White Beat Off Earphones, Yellow Beat Off Earphones, Salmon Beat Off Earphones, Orange Beat Off Earphones, Purple Beat Off Earphones, Pink Beat Off Earphones, Turquoise Beat Off Earphones, Blue Beat Off Earphones, Black Beat Off Earphones, Gray Beat Off Earphones, Teal Beat Off Earphones, Red Beat Off Earphones, Wild Striped Pool Sliders, Neon Striped Pool Sliders, Black SC Coin Pool Sliders, White SC Coin Pool Sliders, Black SC Pattern Pool Sliders, Pink SC Pattern Pool Sliders, Blue SC Pattern Pool Sliders, Camo Yeti Pool Sliders, Gray Camo Yeti Pool Sliders, Black Bigness Pool Sliders, Purple Bigness Pool Sliders, Camo Bigness Pool Sliders, Black Blagueurs Pool Sliders, White Blagueurs Pool Sliders, Pink Blagueurs Pool Sliders, Gray Cimicino Pool Sliders, Rouge Cimicino Pool Sliders, Navy DS Pool Sliders, Red DS Pool Sliders, Floral Güffy Pool Sliders, Green Güffy Pool Sliders, White Güffy Pool Sliders, Blue Heat Pool Sliders, Red ProLaps Pool Sliders, Black LD Organics T-Shirt, Green UFO Boxer Shorts, White UFO Boxer Shorts, Gray Believe Backwards Cap, Black Believe Backwards Cap, Glow Believe Backwards Cap
    packed_bool_range(34703, 34705) -- White Vintage Vampire, Dark Green Vintage Vampire, Light Green Vintage Vampire
    packed_bool_range(34730, 34737) -- Green Festive Beer Hat, Red Snowflake Beer Hat, Blue Snowflake Beer Hat, Red Holly Beer Hat, Pisswasser Festive Beer Hat, Blarneys Festive Beer Hat, Red Reindeer Beer Hat, Borfmas Beer Hat
    packed_bool_range(34761, 34761) -- Gooch Outfit
    packed_bool_range(36630, 36654) -- Snowman
    packed_bool_range(36699, 36770) -- Ice Vinyl, Ice Vinyl Cut, Mustard Vinyl, Mustard Vinyl Cut, Dark Blue Vinyl, Dark Blue Vinyl Cut, Yellow SN Rooster Revere Collar, Red SC Dragon Revere Collar, Blue SC Dragon Revere Collar, Camo Roses Slab Denim, Orange Trickster Type Denim, Black VDG Cardigan, Blue DS Panthers Cardigan, Red DS Panthers Cardigan, Pink SC Baroque Cardigan, Downtown Cab Co. Revere Collar, Valentines Blazer, 420 Smoking Jacket, Yeti Year of the Rabbit T-Shirt, Gray Yeti Combat Shirt, Black Sprunk Festive, Dark Logger Festive, White Logger Festive, Green Logger Festive, Red Logger Festive, Blue Patriot Logo Festive, Black Patriot Logo Festive, Blue Patriot Festive, Red Patriot Festive, Red Pisswasser Festive, Gold Pisswasser Festive, Red Pisswasser Logo Festive, Gold Pisswasser Logo Festive, Green Pride Brew Festive, Yellow Pride Brew Festive, Yellow Holly Pride Festive, White Holly Pride Festive, Sprunk Snowflakes Festive, Broker Checkerboard T-Shirt, Yeti Ape Tucked T-Shirt, Black Bigness Ski, White Bigness Ski, Black Enema Flourish Ski, Teal Enema Flourish Ski, Magenta Enema Flourish Ski, Camo Roses Slab Forwards, Lime Leopard Slab Forwards, Red SC Dragon Embroidered, Classic DS Tiger Embroidered, Gray DS Tiger Embroidered, Black VDG Bandana Wide, Orange Trickster Type Wide, Gray Yeti Battle Pants, Broker Checkerboard Cargos, 420 Smoking Pants, Camo Roses Slab Canvas, Lime Leopard Slab Canvas, White Signs Squash Ugglies & Socks, Traditional Painted Rabbit, Twilight Painted Rabbit, Noh Painted Rabbit, Lime SC Coin Wraps, Pink SC Coin Wraps, Tan Bracelet Ensemble, Red Manor Round Brow Shades, Le Chien Whistle Necklace, Heartbreak Pendant, Rabbit, Budonk-adonk!, The Red-nosed, The Nutcracker, The GoPostal
    packed_bool_range(36774, 36784) -- Johnny On The Spot Polo, The Gooch Mask, Snowman Outfit, Gold New Year Glasses, Silver New Year Glasses, Rainbow New Year Glasses, Yellow Holly Beer Hat, Green Reindeer Beer Hat, Zebra Dome, Purple Snakeskin Spiked, Manor Surano Jacket
    packed_bool_range(36785, 36788) -- WM 29 Pistol, Pistol Mk II - Season's Greetings (Livery), Pump Shotgun - Dildodude Camo (Livery), Micro SMG - Dildodude Camo (Livery)
    packed_bool_range(36809, 36809) -- Nemesis T-Shirts
    packed_bool_range(41316, 41325) -- Ghosts Exposed
    packed_bool_range(41593, 41593) -- The Merryweather Outfit
    packed_bool_range(41656, 41659) -- Squaddie (Trade Price), Suede Bucks Finish, Employee of the Month Finish, Uncle T Finish
    packed_bool_range(41671, 41671) -- Manchez Scout (Trade Price)
    packed_bool_range(41802, 41802) -- Johnny On The Spot Polo
    packed_bool_range(41894, 41894) -- Hinterland Work T-Shirt
    packed_bool_range(41897, 41902) -- Love Fist T-Shirt, San Andreas Federal Reserve T-Shirt, Los Santos, San Andreas T-Shirt, Heist Mask T-Shirt, Los Santos Map T-Shirt, PRB T-Shirt
    packed_bool_range(41915, 41980) -- LS Pounders Cap, Vom Feuer Camo Cap, Western MC Cap, Red & White Ammu-Nation Cap, Santo Capra Cap, Alpine Hat, Alien Tracksuit Pants, Scarlet Vintage Devil Mask, Amber Vintage Devil Mask, Green Vintage Devil Mask, Green Vintage Witch Mask, Yellow Vintage Witch Mask, Orange Vintage Witch Mask, Green Vintage Skull Mask, White Vintage Skull Mask, Brown Vintage Skull Mask, Orange Vintage Werewolf Mask, Blue Vintage Werewolf Mask, Brown Vintage Werewolf Mask, Green Vintage Zombie Mask, Brown Vintage Zombie Mask, Teal Vintage Zombie Mask, Turkey Mask, Royal Calacas Mask, Maritime Calacas Mask, Romance Calacas Mask, Floral Calacas Mask, Stanier LE Cruiser (Trade Price), The Homie, The Retired Criminal, The Groupie, Black SC Ornate Mini Dress, Dark Manor Racing Suit, Bright Manor Racing Suit, Hinterland Bomber Jacket, Red Happy Moon T-Shirt, Black Happy Moon T-Shirt, White Happy Moon T-Shirt, Rockstar Says Relax Tucked T-Shirt, Trevor Heist Mask Tucked T-Shirt, Franklin Heist Mask Tucked T-Shirt, Michael Heist Mask Tucked T-Shirt, Bugstars Tucked T-Shirt, STD Contractors Tucked T-Shirt, Black Los Santos Tucked T-Shirt, San Andreas Republic Tucked T-Shirt, Go Go Space Monkey Tucked T-Shirt, Vom Feuer Camo Tucked T-Shirt, Black SC Ornate Tucked T-Shirt, Warstock Tucked T-Shirt, Western San Andreas Tucked T-Shirt, Ride or Die Tucked T-Shirt, Bourgeoix Tucked T-Shirt, Blêuter'd Tucked T-Shirt, Cherenkov Tucked T-Shirt, Moodymann Portrait Tucked T-Shirt, Rockstar Silver Jubilee Tucked T-Shirt, Rockstar NY Hoodie, Dollar Daggers Hoodie, Merryweather Hoodie, Go Go Space Monkey Hoodie, Rockstar Lion Crest T-Shirt, Ammu-Nation Baseball T-Shirt, Alien Hooded Tracksuit Top, Manor Benefactor Surano T-Shirt, LS Smoking Jacket
    packed_bool_range(41994, 41994) -- Junk Energy Racing Suit
    packed_bool_range(41996, 41996) -- ??? T-Shirt
    packed_bool_range(42054, 42054) -- Strapz Bandana
    packed_bool_range(42063, 42063) -- The LS Panic
    packed_bool_range(42068, 42069) -- Snowman Finish, Santa's Helper Finish
    packed_bool_range(42111, 42111) -- The Coast Guard
    packed_bool_range(42119, 42123) -- Yeti Outfit, Snowman Finish, Santa's Helper Finish, Skull Santa Finish, riot unlocked
    packed_bool_range(42125, 42125) -- riot trade price
    packed_bool_range(42128, 42146) -- eCola Festive Sweater, Sprunk Festive Sweater, 1 Party Hat, 2 Party Hat, 3 Party Hat, 4 Party Hat, 5 Party Hat, 6 Party Hat, 7 Party Hat, 8 Party Hat, 9 Party Hat, 10 Party Hat, 11 Party Hat, 12 Party Hat, 13 Party Hat, 14 Party Hat, 15 Party Hat, Bronze Party Outfit, Silver Party Outfit
    packed_bool_range(42148, 42149) -- Snowball Launcher, DâM-FunK - Even the Score
    packed_bool_range(42152, 42190) -- The LSDS, The McTony Security, Wooden Dragon Mask, Contrast Dragon Mask, Regal Dragon Mask, Midnight Dragon Mask, Pink Heart Shades, Red Heart Shades, Orange Heart Shades, Yellow Heart Shades, Green Heart Shades, Blue Heart Shades, Purple Heart Shades, Black Heart Shades, Fireworks Bucket Hat, Stars and Stripes Bucket Hat, Lady Liberty Bucket Hat, Green Festive Tree Hat, Red Festive Tree Hat, Brown Festive Reindeer Hat, White Festive Reindeer Hat, Bronze New Year's Hat, Gold New Year's Hat, Silver New Year's Hat, Sprunk x eCola Bodysuit, Rockstar Racing Suit, Rockstar Helmet, Coil Earth Day Tee, IR Earth Day Tee, White High Brass Tee, Black High Brass Tee, Black Lunar New Year Tee, Bigness Carnival Sports Tee, Green 420 Dress, Red Lunar New Year Dress, Carnival Sun Dress, Carnival Bandana, Bigness Carnival Bucket Hat, Black 420 Forwards Cap
    packed_bool_range(42217, 42217) -- Cluckin' Bell Forwards Cap
    packed_bool_range(42233, 42234) -- BOXVILLE6, BENSON2
    packed_bool_range(42239, 42242) -- CAVALCADE3, IMPALER5, POLGAUNTLET, DORADO
    packed_bool_range(42244, 42247) -- BALLER8, TERMINUS, BOXVILLE6, BENSON2
    packed_bool_range(42249, 42249) -- Candy Cane
    packed_bool_range(42257, 42268) -- The Street Artist, Ghosts Exposed 2024, Ghosts Exposed Outfit
    packed_bool_range(42280, 42284) -- pizzaboy, poldominator10, poldorado, polimpaler5, polimpaler6 trade price
    packed_bool_range(42286, 42286) -- Ludendorff Survivor
    packed_bool_range(42287, 42287) -- Pizza This... Forwards Cap, Pizza This... Backwards Cap, Pizza This... Outfit
    packed_bool_range(51189, 51189) -- Spray Can
    packed_bool_range(51196, 51197) -- The Shocker, Bottom Dollar Bail Enforcement Tint (Stungun)
    packed_bool_range(51215, 51247) -- Alpine Outfit, Pisswasser Good Time Tee, Gold Pisswasser Shorts, Mid Autumn Festival Shirt, Mid Autumn Festival Sundress (Female), Dia de Muertos Tee, Halloween Spooky Tee, Black Demon Goat Mask, Red Demon Goat Mask, Tan Demon Goat Mask, Black Creepy Cat Mask, Gray Creepy Cat Mask, Brown Creepy Cat Mask, Gray Hooded Skull Mask, Red Hooded Skull Mask, Blue Hooded Skull Mask, Red Flaming Skull Mask, Green Flaming Skull Mask, Orange Flaming Skull Mask, Orange Glow Skeleton Onesie, Purple Glow Skeleton Onesie, Green Glow Skeleton Onesie, Tan Turkey, Brown Turkey, Rockstar Red Logo Sweater, Silver Gun Necklace, Black Gun Necklace, Gold Gun Necklace, Rose Gun Necklace, Bronze Gun Necklace, Black Yeti Fall Sweater, White Yeti Fall Sweater, Red Yeti Fall Sweater
    packed_bool_range(51248, 51257) -- NEXT GEN CONTENT: The Diamond Jackpot Tee, Cobalt Jackal Racing Jersey, Cobalt Jackal Racing Pants, Khaki 247 Chino Pants, Demon Biker Jacket, Purple Güffy Cardigan, SA Denim Biker Jacket, Green 247 Shirt, Barbed Wire Shirt, Ride or Die Gaiter
    packed_bool_range(51258, 51258) -- Pizza This... Tee

    SET_PACKED_STAT_INT(7315, 6) -- WEAPON_STONE_HATCHET
    SET_PACKED_STAT_INT(18981, 4) -- WEAPON_DOUBLEACTION
    SET_PACKED_STAT_INT(22050, 5) -- Oppressor MK2 Trade Price
    SET_PACKED_STAT_INT(22063, 20) -- Dinka Go Go Monkey Blista
    SET_PACKED_STAT_INT(41237, 10) -- Taxi Livery
    SET_PACKED_STAT_INT(41241, 5) -- Allow buying of Chair Shot acid name.
    SET_PACKED_STAT_INT(7671, 100) -- Plant on Desk, Plaque Trophy, Shield Trophy

    STAT_SET_INT("MPPLY_XMAS23_PLATES0", -1) -- Sprunk Plate, eCola Plate
    STAT_SET_INT("MPPLY_XMASLIVERIES18", -1) -- Rockstar Motorsport livery, Sprunk x eCola livery
    STAT_SET_INT("MPPLY_XMASLIVERIES0", -1)
    STAT_SET_INT("MPPLY_XMASLIVERIES1", -1)
    STAT_SET_INT("MPPLY_XMASLIVERIES2", -1)
    STAT_SET_INT("MPPLY_XMASLIVERIES3", -1)
    STAT_SET_INT("MPPLY_XMASLIVERIES4", -1)
    STAT_SET_INT("MPPLY_XMASLIVERIES5", -1)
    STAT_SET_INT("MPPLY_XMASLIVERIES6", -1)
    STAT_SET_INT("MPPLY_XMASLIVERIES7", -1)
    STAT_SET_INT("MPPLY_XMASLIVERIES8", -1)
    STAT_SET_INT("MPPLY_XMASLIVERIES9", -1)
    STAT_SET_INT("MPPLY_XMASLIVERIES10", -1)
    STAT_SET_INT("MPPLY_XMASLIVERIES11", -1)
    STAT_SET_INT("MPPLY_XMASLIVERIES12", -1)
    STAT_SET_INT("MPPLY_XMASLIVERIES13", -1)
    STAT_SET_INT("MPPLY_XMASLIVERIES14", -1)
    STAT_SET_INT("MPPLY_XMASLIVERIES15", -1)
    STAT_SET_INT("MPPLY_XMASLIVERIES16", -1)
    STAT_SET_INT("MPPLY_XMASLIVERIES17", -1)
    STAT_SET_INT("MPPLY_XMASLIVERIES18", -1)
    STAT_SET_INT("MPPLY_XMASLIVERIES19", -1)
    STAT_SET_INT("MPPLY_XMASLIVERIES20", -1)
    STAT_SET_INT("MPX_CHAR_ABILITY_1_UNLCK", -1)
    STAT_SET_INT("MPX_CHAR_ABILITY_2_UNLCK", -1)
    STAT_SET_INT("MPX_CHAR_ABILITY_3_UNLCK", -1)
    STAT_SET_INT("MPX_CHAR_WEAP_UNLOCKED", -1)
    STAT_SET_INT("MPX_CHAR_WEAP_UNLOCKED2", -1)
    STAT_SET_INT("MPX_CHAR_WEAP_ADDON_1_UNLCK", -1)
    STAT_SET_INT("MPX_CHAR_WEAP_ADDON_2_UNLCK", -1)
    STAT_SET_INT("MPX_CHAR_WEAP_ADDON_3_UNLCK", -1)
    STAT_SET_INT("MPX_CHAR_WEAP_ADDON_4_UNLCK", -1)
    STAT_SET_INT("MPX_CHAR_FM_WEAP_UNLOCKED", -1)
    STAT_SET_INT("MPX_CHAR_FM_WEAP_UNLOCKED2", -1)
    STAT_SET_INT("MPX_CHAR_FM_WEAP_UNLOCKED3", -1)
    STAT_SET_INT("MPX_CHAR_FM_WEAP_UNLOCKED4", -1)
    STAT_SET_INT("MPX_CHAR_FM_WEAP_UNLOCKED5", -1)
    STAT_SET_INT("MPX_CHAR_FM_WEAP_UNLOCKED6", -1)
    STAT_SET_INT("MPX_CHAR_FM_WEAP_ADDON_1_UNLCK", -1)
    STAT_SET_INT("MPX_CHAR_FM_WEAP_ADDON_2_UNLCK", -1)
    STAT_SET_INT("MPX_CHAR_FM_WEAP_ADDON_3_UNLCK", -1)
    STAT_SET_INT("MPX_CHAR_FM_WEAP_ADDON_4_UNLCK", -1)
    STAT_SET_INT("MPX_CHAR_FM_WEAP_ADDON_5_UNLCK", -1)
    STAT_SET_INT("MPX_CHAR_FM_WEAP_ADDON_6_UNLCK", -1)
    STAT_SET_INT("MPX_CHAR_FM_WEAP_ADDON_7_UNLCK", -1)
    STAT_SET_INT("MPX_CHAR_FM_WEAP_ADDON_8_UNLCK", -1)
    STAT_SET_INT("MPX_CHAR_FM_WEAP_ADDON_9_UNLCK", -1)
    STAT_SET_INT("MPX_CHAR_FM_WEAP_ADDON_10_UNLCK", -1)
    STAT_SET_INT("MPX_CHAR_FM_WEAP_ADDON_11_UNLCK", -1)
    STAT_SET_INT("MPX_CHAR_FM_WEAP_ADDON_12_UNLCK", -1)
    STAT_SET_INT("MPX_CHAR_FM_WEAP_ADDON_13_UNLCK", -1)
    STAT_SET_INT("MPX_CHAR_FM_WEAP_ADDON_14_UNLCK", -1)
    STAT_SET_INT("MPX_CHAR_FM_WEAP_ADDON_15_UNLCK", -1)
    STAT_SET_INT("MPX_CHAR_FM_WEAP_ADDON_16_UNLCK", -1)
    STAT_SET_INT("MPX_CHAR_FM_WEAP_ADDON_17_UNLCK", -1)
    STAT_SET_INT("MPX_CHAR_FM_WEAP_ADDON_18_UNLCK", -1)
    STAT_SET_INT("MPX_CHAR_FM_WEAP_ADDON_19_UNLCK", -1)
    STAT_SET_INT("MPX_CHAR_FM_WEAP_ADDON_20_UNLCK", -1)
    STAT_SET_INT("MPX_CHAR_FM_HAIRCUT_1_UNLCK", -1)
    STAT_SET_INT("MPX_CHAR_HAIR_UNLCK1", -1)
    STAT_SET_INT("MPX_CHAR_HAIR_UNLCK2", -1)
    STAT_SET_INT("MPX_CHAR_HAIR_UNLCK3", -1)
    STAT_SET_INT("MPX_CHAR_HAIR_UNLCK4", -1)
    STAT_SET_INT("MPX_CHAR_HAIR_UNLCK5", -1)
    STAT_SET_INT("MPX_CHAR_HAIR_UNLCK6", -1)
    STAT_SET_INT("MPX_CHAR_HAIR_UNLCK7", -1)
    STAT_SET_INT("MPX_CHAR_HAIR_UNLCK8", -1)
    STAT_SET_INT("MPX_CHAR_HAIR_UNLCK9", -1)
    STAT_SET_INT("MPX_CHAR_HAIR_UNLCK10", -1)
    STAT_SET_INT("MPX_CHAR_HAIR_UNLCK11", -1)
    STAT_SET_INT("MPX_CHAR_HAIR_UNLCK12", -1)
    STAT_SET_INT("MPX_CHAR_HAIR_UNLCK13", -1)
    STAT_SET_INT("MPX_CHAR_HAIR_UNLCK14", -1)
    STAT_SET_INT("MPX_CHAR_HAIR_UNLCK15", -1)
    STAT_SET_INT("MPX_CHAR_HAIR_UNLCK16", -1)
    STAT_SET_INT("MPX_CHAR_HAIR_UNLCK17", -1)
    STAT_SET_INT("MPX_CHAR_FM_HEALTH_1_UNLCK", -1)
    STAT_SET_INT("MPX_CHAR_FM_HEALTH_2_UNLCK", -1)
    STAT_SET_INT("MPX_CRDEADLINE", 5)
    STAT_SET_INT("MPX_CHAR_KIT_1_FM_UNLCK", -1)
    STAT_SET_INT("MPX_CHAR_KIT_2_FM_UNLCK", -1)
    STAT_SET_INT("MPX_CHAR_KIT_3_FM_UNLCK", -1)
    STAT_SET_INT("MPX_CHAR_KIT_4_FM_UNLCK", -1)
    STAT_SET_INT("MPX_CHAR_KIT_5_FM_UNLCK", -1)
    STAT_SET_INT("MPX_CHAR_KIT_6_FM_UNLCK", -1)
    STAT_SET_INT("MPX_CHAR_KIT_7_FM_UNLCK", -1)
    STAT_SET_INT("MPX_CHAR_KIT_8_FM_UNLCK", -1)
    STAT_SET_INT("MPX_CHAR_KIT_9_FM_UNLCK", -1)
    STAT_SET_INT("MPX_CHAR_KIT_10_FM_UNLCK", -1)
    STAT_SET_INT("MPX_CHAR_KIT_11_FM_UNLCK", -1)
    STAT_SET_INT("MPX_CHAR_KIT_12_FM_UNLCK", -1)
    STAT_SET_INT("MPX_CHAR_KIT_13_FM_UNLCK", -1)
    STAT_SET_INT("MPX_CHAR_KIT_14_FM_UNLCK", -1)
    STAT_SET_INT("MPX_CHAR_KIT_15_FM_UNLCK", -1)
    STAT_SET_INT("MPX_CHAR_KIT_16_FM_UNLCK", -1)
    STAT_SET_INT("MPX_CHAR_KIT_17_FM_UNLCK", -1)
    STAT_SET_INT("MPX_CHAR_KIT_18_FM_UNLCK", -1)
    STAT_SET_INT("MPX_CHAR_KIT_19_FM_UNLCK", -1)
    STAT_SET_INT("MPX_CHAR_KIT_20_FM_UNLCK", -1)
    STAT_SET_INT("MPX_CHAR_KIT_21_FM_UNLCK", -1)
    STAT_SET_INT("MPX_CHAR_KIT_22_FM_UNLCK", -1)
    STAT_SET_INT("MPX_CHAR_KIT_23_FM_UNLCK", -1)
    STAT_SET_INT("MPX_CHAR_KIT_24_FM_UNLCK", -1)
    STAT_SET_INT("MPX_CHAR_KIT_25_FM_UNLCK", -1)
    STAT_SET_INT("MPX_CHAR_KIT_26_FM_UNLCK", -1)
    STAT_SET_INT("MPX_CHAR_KIT_27_FM_UNLCK", -1)
    STAT_SET_INT("MPX_CHAR_KIT_28_FM_UNLCK", -1)
    STAT_SET_INT("MPX_CHAR_KIT_29_FM_UNLCK", -1)
    STAT_SET_INT("MPX_CHAR_KIT_30_FM_UNLCK", -1)
    STAT_SET_INT("MPX_CHAR_KIT_31_FM_UNLCK", -1)
    STAT_SET_INT("MPX_CHAR_KIT_32_FM_UNLCK", -1)
    STAT_SET_INT("MPX_CHAR_KIT_33_FM_UNLCK", -1)
    STAT_SET_INT("MPX_CHAR_KIT_34_FM_UNLCK", -1)
    STAT_SET_INT("MPX_CHAR_KIT_35_FM_UNLCK", -1)
    STAT_SET_INT("MPX_CHAR_KIT_36_FM_UNLCK", -1)
    STAT_SET_INT("MPX_CHAR_KIT_37_FM_UNLCK", -1)
    STAT_SET_INT("MPX_CHAR_KIT_38_FM_UNLCK", -1)
    STAT_SET_INT("MPX_CHAR_KIT_39_FM_UNLCK", -1)
    STAT_SET_INT("MPX_CHAR_KIT_40_FM_UNLCK", -1)
    STAT_SET_INT("MPX_CHAR_KIT_41_FM_UNLCK", -1)
    STAT_SET_INT("MPX_CHAR_FM_ABILITY_1_UNLCK", -1)
    STAT_SET_INT("MPX_CHAR_FM_ABILITY_2_UNLCK", -1)
    STAT_SET_INT("MPX_CHAR_FM_ABILITY_3_UNLCK", -1)
    STAT_SET_INT("MPX_CHAR_FM_CLOTHES_1_UNLCK", -1)
    STAT_SET_INT("MPX_CHAR_FM_CLOTHES_2_UNLCK", -1)
    STAT_SET_INT("MPX_CHAR_FM_CLOTHES_3_UNLCK", -1)
    STAT_SET_INT("MPX_CHAR_FM_CLOTHES_4_UNLCK", -1)
    STAT_SET_INT("MPX_CHAR_FM_CLOTHES_5_UNLCK", -1)
    STAT_SET_INT("MPX_CHAR_FM_CLOTHES_6_UNLCK", -1)
    STAT_SET_INT("MPX_CHAR_FM_CLOTHES_7_UNLCK", -1)
    STAT_SET_INT("MPX_CHAR_FM_CLOTHES_8_UNLCK", -1)
    STAT_SET_INT("MPX_CHAR_FM_CLOTHES_9_UNLCK", -1)
    STAT_SET_INT("MPX_CHAR_FM_CLOTHES_10_UNLCK", -1)
    STAT_SET_INT("MPX_CHAR_FM_CLOTHES_11_UNLCK", -1)
    STAT_SET_INT("MPX_CHAR_FM_VEHICLE_1_UNLCK", -1)
    STAT_SET_INT("MPX_CHAR_FM_VEHICLE_2_UNLCK", -1)
    STAT_SET_INT("MPX_TATTOO_FM_UNLOCKS_0", -1)
    STAT_SET_INT("MPX_TATTOO_FM_UNLOCKS_1", -1)
    STAT_SET_INT("MPX_TATTOO_FM_UNLOCKS_2", -1)
    STAT_SET_INT("MPX_TATTOO_FM_UNLOCKS_3", -1)
    STAT_SET_INT("MPX_TATTOO_FM_UNLOCKS_4", -1)
    STAT_SET_INT("MPX_TATTOO_FM_UNLOCKS_5", -1)
    STAT_SET_INT("MPX_TATTOO_FM_UNLOCKS_6", -1)
    STAT_SET_INT("MPX_TATTOO_FM_UNLOCKS_7", -1)
    STAT_SET_INT("MPX_TATTOO_FM_UNLOCKS_8", -1)
    STAT_SET_INT("MPX_TATTOO_FM_UNLOCKS_9", -1)
    STAT_SET_INT("MPX_TATTOO_FM_UNLOCKS_10", -1)
    STAT_SET_INT("MPX_TATTOO_FM_UNLOCKS_11", -1)
    STAT_SET_INT("MPX_TATTOO_FM_UNLOCKS_12", -1)
    STAT_SET_INT("MPX_TATTOO_FM_UNLOCKS_13", -1)
    STAT_SET_INT("MPX_TATTOO_FM_UNLOCKS_14", -1)
    STAT_SET_INT("MPX_TATTOO_FM_UNLOCKS_15", -1)
    STAT_SET_INT("MPX_TATTOO_FM_UNLOCKS_16", -1)
    STAT_SET_INT("MPX_TATTOO_FM_UNLOCKS_17", -1)
    STAT_SET_INT("MPX_TATTOO_FM_UNLOCKS_18", -1)
    STAT_SET_INT("MPX_TATTOO_FM_UNLOCKS_19", -1)
    STAT_SET_INT("MPX_TATTOO_FM_UNLOCKS_20", -1)
    STAT_SET_INT("MPX_TATTOO_FM_UNLOCKS_21", -1)
    STAT_SET_INT("MPX_TATTOO_FM_UNLOCKS_22", -1)
    STAT_SET_INT("MPX_TATTOO_FM_UNLOCKS_23", -1)
    STAT_SET_INT("MPX_TATTOO_FM_UNLOCKS_24", -1)
    STAT_SET_INT("MPX_TATTOO_FM_UNLOCKS_25", -1)
    STAT_SET_INT("MPX_TATTOO_FM_UNLOCKS_26", -1)
    STAT_SET_INT("MPX_TATTOO_FM_UNLOCKS_27", -1)
    STAT_SET_INT("MPX_TATTOO_FM_UNLOCKS_28", -1)
    STAT_SET_INT("MPX_TATTOO_FM_UNLOCKS_29", -1)
    STAT_SET_INT("MPX_TATTOO_FM_UNLOCKS_30", -1)
    STAT_SET_INT("MPX_TATTOO_FM_UNLOCKS_31", -1)
    STAT_SET_INT("MPX_TATTOO_FM_UNLOCKS_32", -1)
    STAT_SET_INT("MPX_TATTOO_FM_UNLOCKS_33", -1)
    STAT_SET_INT("MPX_TATTOO_FM_UNLOCKS_34", -1)
    STAT_SET_INT("MPX_TATTOO_FM_UNLOCKS_35", -1)
    STAT_SET_INT("MPX_TATTOO_FM_UNLOCKS_36", -1)
    STAT_SET_INT("MPX_TATTOO_FM_UNLOCKS_37", -1)
    STAT_SET_INT("MPX_TATTOO_FM_UNLOCKS_38", -1)
    STAT_SET_INT("MPX_TATTOO_FM_UNLOCKS_39", -1)
    STAT_SET_INT("MPX_TATTOO_FM_UNLOCKS_40", -1)
    STAT_SET_INT("MPX_TATTOO_FM_UNLOCKS_41", -1)
    STAT_SET_INT("MPX_TATTOO_FM_UNLOCKS_42", -1)
    STAT_SET_INT("MPX_TATTOO_FM_UNLOCKS_43", -1)
    STAT_SET_INT("MPX_TATTOO_FM_UNLOCKS_44", -1)
    STAT_SET_INT("MPX_TATTOO_FM_UNLOCKS_45", -1)
    STAT_SET_INT("MPX_TATTOO_FM_UNLOCKS_46", -1)
    STAT_SET_INT("MPX_TATTOO_FM_UNLOCKS_47", -1)
    STAT_SET_INT("MPX_TATTOO_FM_UNLOCKS_48", -1)
    STAT_SET_INT("MPX_TATTOO_FM_UNLOCKS_49", -1)
    STAT_SET_INT("MPX_TATTOO_FM_UNLOCKS_50", -1)
    STAT_SET_INT("MPX_TATTOO_FM_UNLOCKS_51", -1)
    STAT_SET_INT("MPX_TATTOO_FM_UNLOCKS_52", -1)
    STAT_SET_INT("MPX_TATTOO_FM_UNLOCKS_53", -1)
    STAT_SET_INT("MPX_RANKAP_UNLK_0", -1)
    STAT_SET_INT("MPX_RANKAP_UNLK_1", -1)
    STAT_SET_INT("MPX_RANKAP_UNLK_2", -1)
    STAT_SET_INT("MPX_RANKAP_UNLK_3", -1)
    
    -- Flight School
    STAT_SET_INT("MPX_PILOT_SCHOOL_MEDAL_0", 3)
    STAT_SET_INT("MPX_PILOT_SCHOOL_MEDAL_1", 3)
    STAT_SET_INT("MPX_PILOT_SCHOOL_MEDAL_2", 3)
    STAT_SET_INT("MPX_PILOT_SCHOOL_MEDAL_3", 3)
    STAT_SET_INT("MPX_PILOT_SCHOOL_MEDAL_4", 3)
    STAT_SET_INT("MPX_PILOT_SCHOOL_MEDAL_5", 3)
    STAT_SET_INT("MPX_PILOT_SCHOOL_MEDAL_6", 3)
    STAT_SET_INT("MPX_PILOT_SCHOOL_MEDAL_7", 3)
    STAT_SET_INT("MPX_PILOT_SCHOOL_MEDAL_8", 3)
    STAT_SET_INT("MPX_PILOT_SCHOOL_MEDAL_9", 3)
    STAT_SET_INT("MPPLY_PILOT_SCHOOL_MEDAL_0", -1)
    STAT_SET_INT("MPPLY_PILOT_SCHOOL_MEDAL_1", -1)
    STAT_SET_INT("MPPLY_PILOT_SCHOOL_MEDAL_2", -1)
    STAT_SET_INT("MPPLY_PILOT_SCHOOL_MEDAL_3", -1)
    STAT_SET_INT("MPPLY_PILOT_SCHOOL_MEDAL_4", -1)
    STAT_SET_INT("MPPLY_PILOT_SCHOOL_MEDAL_5", -1)
    STAT_SET_INT("MPPLY_PILOT_SCHOOL_MEDAL_6", -1)
    STAT_SET_INT("MPPLY_PILOT_SCHOOL_MEDAL_7", -1)
    STAT_SET_INT("MPPLY_PILOT_SCHOOL_MEDAL_8", -1)
    STAT_SET_INT("MPPLY_PILOT_SCHOOL_MEDAL_9", -1)
    STAT_SET_INT("MPX_PILOT_SCHOOL_LASTMEDAL_0", 3)
    STAT_SET_INT("MPX_PILOT_SCHOOL_LASTMEDAL_1", 3)
    STAT_SET_INT("MPX_PILOT_SCHOOL_LASTMEDAL_2", 3)
    STAT_SET_INT("MPX_PILOT_SCHOOL_LASTMEDAL_3", 3)
    STAT_SET_INT("MPX_PILOT_SCHOOL_LASTMEDAL_4", 3)
    STAT_SET_INT("MPX_PILOT_SCHOOL_LASTMEDAL_5", 3)
    STAT_SET_INT("MPX_PILOT_SCHOOL_LASTMEDAL_6", 3)
    STAT_SET_INT("MPX_PILOT_SCHOOL_LASTMEDAL_7", 3)
    STAT_SET_INT("MPX_PILOT_SCHOOL_LASTMEDAL_8", 3)
    STAT_SET_INT("MPX_PILOT_SCHOOL_LASTMEDAL_9", 3)
    STAT_SET_INT("MPX_CRPILOTSCHOOL", 1)
    STAT_SET_INT("MPX_PILOT_CHECKPOINTCOUNT_9", 27)
    STAT_SET_FLOAT("MPX_PILOT_ELAPSEDTIME_0", 58.0)
    STAT_SET_FLOAT("MPX_PILOT_LANDINGDISTANCE_1", 10.0)
    STAT_SET_FLOAT("MPX_PILOT_LANDINGDISTANCE_2", 2.0)
    STAT_SET_FLOAT("MPX_PILOT_LANDINGDISTANCE_3", 10.0)
    STAT_SET_FLOAT("MPX_PILOT_ELAPSEDTIME_4", 19.0)
    STAT_SET_FLOAT("MPX_PILOT_LANDINGDISTANCE_5", 600.0)
    STAT_SET_FLOAT("MPX_PILOT_LANDINGDISTANCE_6", 25.0)
    STAT_SET_FLOAT("MPX_PILOT_LANDINGDISTANCE_7", 1.0)
    STAT_SET_FLOAT("MPX_PILOT_ELAPSEDTIME_8", 160.0)
    STAT_SET_FLOAT("MPX_PILOT_ELAPSEDTIME_9", 145.0)
    STAT_SET_FLOAT("MPX_PILOT_LASTELAPSEDTIME_0", 58.0)
    STAT_SET_FLOAT("MPX_PILOT_LASTLANDDISTANCE_1", 10.0)
    STAT_SET_FLOAT("MPX_PILOT_LASTLANDDISTANCE_2", 2.0)
    STAT_SET_FLOAT("MPX_PILOT_LASTLANDDISTANCE_3", 10.0)
    STAT_SET_FLOAT("MPX_PILOT_LASTELAPSEDTIME_4", 19.0)
    STAT_SET_FLOAT("MPX_PILOT_LASTLANDDISTANCE_5", 600.0)
    STAT_SET_FLOAT("MPX_PILOT_LASTLANDDISTANCE_6", 25.0)
    STAT_SET_FLOAT("MPX_PILOT_LASTLANDDISTANCE_7", 1.0)
    STAT_SET_FLOAT("MPX_PILOT_LASTELAPSEDTIME_8", 160.0)
    STAT_SET_FLOAT("MPX_PILOT_LASTELAPSEDTIME_9", 145.0)
    STAT_SET_BOOL("MPX_PILOT_ASPASSEDLESSON_0", true)
    STAT_SET_BOOL("MPX_PILOT_ASPASSEDLESSON_1", true)
    STAT_SET_BOOL("MPX_PILOT_ASPASSEDLESSON_2", true)
    STAT_SET_BOOL("MPX_PILOT_ASPASSEDLESSON_3", true)
    STAT_SET_BOOL("MPX_PILOT_ASPASSEDLESSON_4", true)
    STAT_SET_BOOL("MPX_PILOT_ASPASSEDLESSON_5", true)
    STAT_SET_BOOL("MPX_PILOT_ASPASSEDLESSON_6", true)
    STAT_SET_BOOL("MPX_PILOT_ASPASSEDLESSON_7", true)
    STAT_SET_BOOL("MPX_PILOT_ASPASSEDLESSON_8", true)
    STAT_SET_BOOL("MPX_PILOT_ASPASSEDLESSON_9", true)

    -- Arena War
    STAT_SET_INT("MPX_ARENAWARS_AP_LIFETIME", 5045000)
    STAT_SET_INT("MPX_ARENAWARS_AP_TIER", 1000)
    STAT_SET_INT("MPX_ARENAWARS_AP", 0)
    STAT_SET_INT("MPX_ARENAWARS_SKILL_LEVEL", 20)
    STAT_SET_INT("MPX_ARENAWARS_SP", 210)
    STAT_SET_INT("MPX_ARENAWARS_SP_LIFETIME", 210)
    STAT_SET_INT("MPX_ARENAWARS_MATCHES_PLYD", 69420)
    STAT_SET_INT("MPX_ARENAWARS_MATCHES_PLYDT", 1337)
    STAT_SET_INT("MPX_ARENAWARS_CARRER_WINS", 69420)
    STAT_SET_INT("MPX_ARENAWARS_CARRER_WINT", 1337)
    STAT_SET_INT("MPX_ARN_LIFETIME_KILLS", 260000)
    STAT_SET_INT("MPX_ARN_LIFETIME_DEATHS", 10000)
    STAT_SET_INT("MPX_ARN_SPECTATOR_KILLS", 5000)
    STAT_SET_INT("MPX_ARN_W_PASS_THE_BOMB", 2500)
    STAT_SET_INT("MPX_ARN_W_DETONATION", 2500)
    STAT_SET_INT("MPX_ARN_W_ARCADE_RACE", 2500)
    STAT_SET_INT("MPX_ARN_W_CTF", 2500)
    STAT_SET_INT("MPX_ARN_W_TAG_TEAM", 2500)
    STAT_SET_INT("MPX_ARN_W_DESTR_DERBY", 2500)
    STAT_SET_INT("MPX_ARN_W_CARNAGE", 2500)
    STAT_SET_INT("MPX_ARN_W_MONSTER_JAM", 2500)
    STAT_SET_INT("MPX_ARN_W_GAMES_MASTERS", 2500)
    STAT_SET_INT("MPX_ARN_L_PASS_THE_BOMB", 100)
    STAT_SET_INT("MPX_ARN_L_DETONATION", 100)
    STAT_SET_INT("MPX_ARN_L_ARCADE_RACE", 100)
    STAT_SET_INT("MPX_ARN_L_CTF", 100)
    STAT_SET_INT("MPX_ARN_L_TAG_TEAM", 200)
    STAT_SET_INT("MPX_ARN_L_DESTR_DERBY", 100)
    STAT_SET_INT("MPX_ARN_L_CARNAGE", 100)
    STAT_SET_INT("MPX_ARN_L_MONSTER_JAM", 500)
    STAT_SET_INT("MPX_ARN_L_GAMES_MASTERS", 100)
    STAT_SET_INT("MPX_ARN_VEH_MONSTER3", 1500)
    STAT_SET_INT("MPX_ARN_VEH_MONSTER4", 1500)
    STAT_SET_INT("MPX_ARN_VEH_MONSTER5", 1500)
    STAT_SET_INT("MPX_ARN_VEH_CERBERUS", 1500)
    STAT_SET_INT("MPX_ARN_VEH_CERBERUS2", 1500)
    STAT_SET_INT("MPX_ARN_VEH_CERBERUS3", 1500)
    STAT_SET_INT("MPX_ARN_VEH_BRUISER", 1500)
    STAT_SET_INT("MPX_ARN_VEH_BRUISER2", 1500)
    STAT_SET_INT("MPX_ARN_VEH_BRUISER3", 1500)
    STAT_SET_INT("MPX_ARN_VEH_SLAMVAN4", 1500)
    STAT_SET_INT("MPX_ARN_VEH_SLAMVAN5", 1500)
    STAT_SET_INT("MPX_ARN_VEH_SLAMVAN6", 1500)
    STAT_SET_INT("MPX_ARN_VEH_BRUTUS", 1500)
    STAT_SET_INT("MPX_ARN_VEH_BRUTUS2", 1500)
    STAT_SET_INT("MPX_ARN_VEH_BRUTUS3", 1500)
    STAT_SET_INT("MPX_ARN_VEH_SCARAB", 1500)
    STAT_SET_INT("MPX_ARN_VEH_SCARAB2", 1500)
    STAT_SET_INT("MPX_ARN_VEH_SCARAB3", 1500)
    STAT_SET_INT("MPX_ARN_VEH_DOMINATOR4", 1500)
    STAT_SET_INT("MPX_ARN_VEH_DOMINATOR5", 1500)
    STAT_SET_INT("MPX_ARN_VEH_DOMINATOR6", 1500)
    STAT_SET_INT("MPX_ARN_VEH_IMPALER2", 1500)
    STAT_SET_INT("MPX_ARN_VEH_IMPALER3", 1500)
    STAT_SET_INT("MPX_ARN_VEH_IMPALER4", 1500)
    STAT_SET_INT("MPX_ARN_VEH_ISSI4", 1500)
    STAT_SET_INT("MPX_ARN_VEH_ISSI5", 1500)
    STAT_SET_INT("MPX_ARN_VEH_ISSI6", 1500)
    STAT_SET_INT("MPX_ARN_VEH_IMPERATOR", 1500)
    STAT_SET_INT("MPX_ARN_VEH_IMPERATOR2", 1500)
    STAT_SET_INT("MPX_ARN_VEH_IMPERATOR3", 1500)
    STAT_SET_INT("MPX_ARN_VEH_ZR380", 1500)
    STAT_SET_INT("MPX_ARN_VEH_ZR3802", 1500)
    STAT_SET_INT("MPX_ARN_VEH_ZR3803", 1500)
    STAT_SET_INT("MPX_ARN_VEH_DEATHBIKE", 1500)
    STAT_SET_INT("MPX_ARN_VEH_DEATHBIKE2", 1500)
    STAT_SET_INT("MPX_ARN_VEH_DEATHBIKE3", 18257)
    STAT_SET_INT("MPX_AWD_WATCH_YOUR_STEP", 10)
    STAT_SET_INT("MPX_AWD_TOWER_OFFENSE", 10)
    STAT_SET_INT("MPX_AWD_THROUGH_A_LENS", 50)
    STAT_SET_INT("MPX_AWD_SPINNER", 50)
    STAT_SET_INT("MPX_AWD_YOUMEANBOOBYTRAPS", 10)
    STAT_SET_INT("MPX_AWD_MASTER_BANDITO", 10)
    STAT_SET_INT("MPX_AWD_SITTING_DUCK", 10)
    STAT_SET_INT("MPX_AWD_CROWDPARTICIPATION", 50)
    STAT_SET_INT("MPX_AWD_KILL_OR_BE_KILLED", 50)
    STAT_SET_INT("MPX_AWD_MASSIVE_SHUNT", 50)
    STAT_SET_INT("MPX_AWD_YOURE_OUTTA_HERE", 220)
    STAT_SET_INT("MPX_AWD_ARENA_WAGEWORKER", 6785341)
    STAT_SET_INT("MPX_AWD_TIME_SERVED", 70757)
    STAT_SET_INT("MPX_AWD_CAREER_WINNER", 70757)
    STAT_SET_INT("MPX_AWD_READY_FOR_WAR", 50)
    STAT_SET_INT("MPX_AWD_WEVE_GOT_ONE", 50)
    STAT_SET_INT("MPX_AWD_TOP_SCORE", 145020)
    STAT_SET_INT("MPX_ARN_SPECTATOR_DRONE", 1000)
    STAT_SET_INT("MPX_ARN_SPECTATOR_CAMS", 1000)
    STAT_SET_INT("MPX_ARN_SMOKE", 1000)
    STAT_SET_INT("MPX_ARN_DRINK", 1000)
    STAT_SET_INT("MPX_ARN_SPEC_BOX_TIME_MS", 86400000)
    STAT_SET_INT("MPX_ARN_W_THEME_SCIFI", 10)
    STAT_SET_INT("MPX_ARN_W_THEME_APOC", 10)
    STAT_SET_INT("MPX_ARN_W_THEME_CONS", 10)
    STAT_SET_INT("MPX_ARN_BS_TRINKET_SAVED", -1) -- Unlock trinket and stickers.
    STAT_SET_BOOL("MPX_AWD_UNSTOPPABLE", true)
    STAT_SET_BOOL("MPX_AWD_CONTACT_SPORT", true)
    STAT_SET_BOOL("MPX_AWD_BEGINNER", true)
    STAT_SET_BOOL("MPX_AWD_FIELD_FILLER", true)
    STAT_SET_BOOL("MPX_AWD_ARMCHAIR_RACER", true)
    STAT_SET_BOOL("MPX_AWD_LEARNER", true)
    STAT_SET_BOOL("MPX_AWD_SUNDAY_DRIVER", true)
    STAT_SET_BOOL("MPX_AWD_THE_ROOKIE", true)
    STAT_SET_BOOL("MPX_AWD_BUMP_AND_RUN", true)
    STAT_SET_BOOL("MPX_AWD_GEAR_HEAD", true)
    STAT_SET_BOOL("MPX_AWD_DOOR_SLAMMER", true)
    STAT_SET_BOOL("MPX_AWD_HOT_LAP", true)
    STAT_SET_BOOL("MPX_AWD_ARENA_AMATEUR", true)
    STAT_SET_BOOL("MPX_AWD_PAINT_TRADER", true)
    STAT_SET_BOOL("MPX_AWD_SHUNTER", true)
    STAT_SET_BOOL("MPX_AWD_JOCK", true)
    STAT_SET_BOOL("MPX_AWD_WARRIOR", true)
    STAT_SET_BOOL("MPX_AWD_T_BONE", true)
    STAT_SET_BOOL("MPX_AWD_MAYHEM", true)
    STAT_SET_BOOL("MPX_AWD_WRECKER", true)
    STAT_SET_BOOL("MPX_AWD_CRASH_COURSE", true)
    STAT_SET_BOOL("MPX_AWD_ARENA_LEGEND", true)
    STAT_SET_BOOL("MPX_AWD_PEGASUS", true)

    STAT_SET_INT("MPX_REV_NV_KILLS", 69) -- Navy Revolver Kills
    STAT_SET_INT("MPX_XM22_FLOW", -1) -- Acid Lab Unlock
    STAT_SET_INT("MPX_XM22_MISSIONS", -1) -- Acid Lab Unlock
    STAT_SET_INT("MPX_AWD_CALLME", 50) -- Acid Lab Equipment Unlock
    STAT_SET_INT("MPX_H3_VEHICLESUSED", -1) -- Trade Price for Diamond Casino Heist Finale.
    STAT_SET_INT("MPX_H4_H4_DJ_MISSIONS", -1) -- Trade Price for weevil
    STAT_SET_INT("MPX_H4_PROGRESS", -1) -- Trade Price for winky
    STAT_SET_INT("MPX_TUNER_GEN_BS", -1) -- Trade Price for tailgater2
    STAT_SET_INT("MPX_ULP_MISSION_PROGRESS", -1) -- Trade Price greenwood/conada
    STAT_SET_INT("MPX_SUM23_AVOP_PROGRESS", -1) -- Trade Price Raiju
    STAT_SET_BOOL("MPX_AWD_TAXISTAR", true) -- Trade Price for taxi
    STAT_SET_INT("MPX_LFETIME_HANGAR_BUY_COMPLET", 50) -- Trade price for microlight/rogue/alphaz1/havok/starling/molotok/tula/bombushka/howard/mogul/pyro/seabreeze/nokota/hunter
    STAT_SET_INT("MPX_MOST_TIME_ON_3_PLUS_STARS", 300000) -- police4 trade price
    STAT_SET_INT("MPX_AT_FLOW_VEHICLE_BS", -1) -- Trade price for dune4/dune5/wastelander/blazer5/phantom2/voltic2/technical2/boxville5/ruiner2
    STAT_SET_INT("MPX_WVM_FLOW_VEHICLE_BS", -1)
    STAT_SET_INT("MPX_WAM_FLOW_VEHICLE_BS", -1)
    STAT_SET_BOOL("MPX_UNLOCKED_MESSAGE_FLEECA", true)
    STAT_SET_BOOL("MPX_CARMEET_PV_CHLLGE_CMPLT", true)
    STAT_SET_INT("MPX_LIFETIME_BUY_COMPLETE", 1025)
    STAT_SET_INT("MPX_LIFETIME_BUY_UNDERTAKEN", 1025)
    STAT_SET_INT("MPX_LIFETIME_SELL_COMPLETE", 1025)
    STAT_SET_INT("MPX_LIFETIME_SELL_UNDERTAKEN", 1025)
    STAT_SET_INT("MPX_LIFETIME_CONTRA_EARNINGS", 25000000) -- Contraband Earnings
    STAT_SET_INT("MPX_LFETIME_BIKER_BUY_COMPLET", 1025)
    STAT_SET_INT("MPX_LFETIME_BIKER_BUY_UNDERTA", 1025)
    STAT_SET_INT("MPX_LFETIME_BIKER_SELL_COMPLET", 1025)
    STAT_SET_INT("MPX_LFETIME_BIKER_SELL_UNDERTA", 1025)
    STAT_SET_INT("MPX_LFETIME_BIKER_BUY_COMPLET1", 1025)
    STAT_SET_INT("MPX_LFETIME_BIKER_BUY_UNDERTA1", 1025)
    STAT_SET_INT("MPX_LFETIME_BIKER_SELL_COMPLET1", 1025)
    STAT_SET_INT("MPX_LFETIME_BIKER_SELL_UNDERTA1", 1025)
    STAT_SET_INT("MPX_LFETIME_BIKER_BUY_COMPLET2", 1025)
    STAT_SET_INT("MPX_LFETIME_BIKER_BUY_UNDERTA2", 1025)
    STAT_SET_INT("MPX_LFETIME_BIKER_SELL_COMPLET2", 1025)
    STAT_SET_INT("MPX_LFETIME_BIKER_SELL_UNDERTA2", 1025)
    STAT_SET_INT("MPX_LFETIME_BIKER_BUY_COMPLET3", 1025)
    STAT_SET_INT("MPX_LFETIME_BIKER_BUY_UNDERTA3", 1025)
    STAT_SET_INT("MPX_LFETIME_BIKER_SELL_COMPLET3", 1025)
    STAT_SET_INT("MPX_LFETIME_BIKER_SELL_UNDERTA3", 1025)
    STAT_SET_INT("MPX_LFETIME_BIKER_BUY_COMPLET4", 1025)
    STAT_SET_INT("MPX_LFETIME_BIKER_BUY_UNDERTA4", 1025)
    STAT_SET_INT("MPX_LFETIME_BIKER_SELL_COMPLET4", 1025)
    STAT_SET_INT("MPX_LFETIME_BIKER_SELL_UNDERTA4", 1025)
    STAT_SET_INT("MPX_LFETIME_BIKER_BUY_COMPLET5", 1025)
    STAT_SET_INT("MPX_LFETIME_BIKER_BUY_UNDERTA5", 1025)
    STAT_SET_INT("MPX_LFETIME_BIKER_SELL_COMPLET5", 1025)
    STAT_SET_INT("MPX_LFETIME_BIKER_SELL_UNDERTA5", 1025)
    STAT_SET_INT("MPX_LFETIME_BIKER_BUY_COMPLET6", 1025) -- Allow buying of Stank Breath acid name.
    STAT_SET_INT("MPX_LFETIME_BIKER_BUY_UNDERTA6", 1025)
    STAT_SET_INT("MPX_LFETIME_BIKER_SELL_COMPLET6", 1025) -- Allow buying of Squatch Bait acid name.
    STAT_SET_INT("MPX_LFETIME_BIKER_SELL_UNDERTA6", 1025)
    STAT_SET_INT("MPX_LIFETIME_BKR_SELL_EARNINGS0", 25000000)
    STAT_SET_INT("MPX_LIFETIME_BKR_SELL_EARNINGS1", 25000000)
    STAT_SET_INT("MPX_LIFETIME_BKR_SELL_EARNINGS2", 25000000)
    STAT_SET_INT("MPX_LIFETIME_BKR_SELL_EARNINGS3", 25000000)
    STAT_SET_INT("MPX_LIFETIME_BKR_SELL_EARNINGS4", 25000000)
    STAT_SET_INT("MPX_LIFETIME_BKR_SELL_EARNINGS5", 25000000)
    STAT_SET_INT("MPX_LIFETIME_BKR_SELL_EARNINGS6", 25000000) -- Allow buying of Fck Your Sleep acid name.
    STAT_SET_INT("MPX_XMAS2023_ADV_MODE_WINS", 6) -- Unlock Christmas 2023 liveries.
    STAT_SET_INT("MPPLY_XMAS23_PLATES0", -1) -- ECola & Sprunk Plates
    STAT_SET_INT("MPX_COUNT_HOTRING_RACE", 20) -- Liveries for hotring
    STAT_SET_INT("MPX_FINISHED_SASS_RACE_TOP_3", 20) -- Trade price for hotring/everon2
    STAT_SET_INT("MPX_AWD_DISPATCHWORK", 5) -- Trade price for polgreenwood
    STAT_SET_INT("MPX_PROG_HUB_BOUNTIES_ALIVE_BS", -1) -- Cuff Trophy
    STAT_SET_INT("MPX_TIMES_PREV_PLAY_AS_BOSS", 500) -- VIP Variant
    STAT_SET_INT("MPX_GBTELTIMESPLAYEDGOONPREV", 500) -- Bodyguard Varient

    menu.trigger_commands("forcecloudsave")
end)

menu.action(UNLOCKS,"Unlock Rewards", {}, "This option will unlock all rewards.", function()
    STAT_SET_INT("MPX_AWD_FMBBETWIN", 50000) -- Hustler
    STAT_SET_BOOL("MPX_AWD_FMATTGANGHQ", true) -- Grim Reaper Smoking Gun
    STAT_SET_INT("MPX_AWD_FMREVENGEKILLSDM", 50) -- Dragon and Dagger
    STAT_SET_INT("MPX_AWD_100_HEADSHOTS", 500) -- Skull
    STAT_SET_BOOL("MPX_AWD_FMRACEWORLDRECHOLDER", true) -- Racing Blonde
    STAT_SET_BOOL("MPX_AWD_FMKILL3ANDWINGTARACE", true) -- Ride or Die
    STAT_SET_INT("MPX_AWD_FMKILLBOUNTY", 25) -- Skull and Sword
    STAT_SET_INT("MPX_AWD_FM_DM_WINS", 50) -- Burning Heart
    STAT_SET_BOOL("MPX_AWD_FMWINEVERYGAMEMODE", true) -- Angel
    STAT_SET_INT("MPX_HOLDUPS_BITSET", 1048575) -- HoldUps
    STAT_SET_INT("MPX_AWD_HOLD_UP_SHOPS", 20) -- Clown, Clown and Gun, Clown Dual Wield & Clown Dual Wield Dollar
    STAT_SET_INT("MPX_AWD_RACES_WON", 50) -- Racing Brunette
    STAT_SET_INT("MPX_AWD_CAR_BOMBS_ENEMY_KILLS", 25) -- Trust No One
    STAT_SET_INT("MPX_AWD_FM_DM_TOTALKILLS", 500) -- Melting Skull
    STAT_SET_INT("MPX_LAP_DANCED_BOUGHT", 25) -- Hottie
    STAT_SET_INT("MPX_PISTOL_ENEMY_KILLS", 500) -- Way of the Gun (also unlocks Army, Green & Orange tints)
    STAT_SET_INT("MPX_SNIPERRFL_ENEMY_KILLS", 100) -- Broken Skull (also unlocks Army tint)
    STAT_SET_BOOL("MPX_AWD_FMKILLSTREAKSDM", true) -- Flaming Skull
    STAT_SET_BOOL("MPX_AWD_FMMOSTKILLSSURVIVE", true) -- The Wages of Sin
    STAT_SET_INT("MPX_AWD_FM_TDM_MVP", 50) -- Grim Reaper
    STAT_SET_INT("MPX_KILLS_PLAYERS", 1000) -- Blank Scroll, Embellished Scroll, Seven Deadly Sins
    STAT_SET_INT("MPX_AWD_FMHORDWAVESSURVIVE", 10) -- Red Skull T-Shirt
    STAT_SET_INT("MPX_TATTOO_FM_UNLOCKS_2", STAT_GET_INT("MPX_TATTOO_FM_UNLOCKS_2") | 1 << 25) -- Rockstar V Neck
    packed_bool_range(3608, 3608) -- 'Elitas' T-shirt
    STAT_SET_INT("MP0_AWD_WIN_CAPTURE_DONT_DYING", 25) -- Death Defying T-Shirt
    STAT_SET_INT("MPX_AWD_DO_HEIST_AS_MEMBER", 25) -- 'For Hire' T-Shirt
    STAT_SET_INT("MPX_AWD_DO_HEIST_AS_THE_LEADER", 25) -- 'Shot Caller' T-Shirt
    STAT_SET_INT("MPX_AWD_PICKUP_CAP_PACKAGES", 100) -- 'Gimme That' T-Shirt
    STAT_SET_BOOL("MPX_AWD_FINISH_HEIST_NO_DAMAGE", true) -- 'Can't Touch This' T-Shirt
    STAT_SET_INT("MPX_AWD_WIN_GOLD_MEDAL_HEISTS", 25) -- 'Decorated' T-Shirt
    STAT_SET_INT("MPX_AWD_KILL_PSYCHOPATHS", 100) -- 'Psycho Killer' T-Shirt
    STAT_SET_INT("MPX_AWD_KILL_TEAM_YOURSELF_LTS", 25) -- 'One Man Army' T-Shirt
    STAT_SET_BOOL("MPX_AWD_STORE_20_CAR_IN_GARAGES", true) -- 'Showroom' T-Shirt
    packed_bool_range(3765, 3769) -- The Fleeca Job, The Prison Break, The Humane Labs Raid, Series A Funding, The Pacific Standard Job (Elite Challenges)
    STAT_SET_INT("MPX_LOWRIDER_FLOW_COMPLETE", 1) -- Benny T-Shirts
    STAT_SET_INT("MPX_AWD_WIN_CAPTURES", 50) -- Chrome Rims - Sport
    STAT_SET_INT("MPX_AWD_DROPOFF_CAP_PACKAGES", 100) -- Chrome Rims - Lowrider
    STAT_SET_INT("MPX_AWD_KILL_CARRIER_CAPTURE", 100) -- Chrome Rims - Offroad
    STAT_SET_INT("MPX_AWD_FINISH_HEISTS", 50) -- Chrome Rims - High End
    STAT_SET_INT("MPX_AWD_FINISH_HEIST_SETUP_JOB", 50) -- Chrome Rims - Tuner
    STAT_SET_INT("MPX_AWD_NIGHTVISION_KILLS", 100) -- Chrome Rims - Bike
    STAT_SET_INT("MPX_AWD_WIN_LAST_TEAM_STANDINGS", 50) -- Chrome Rims - SUV
    STAT_SET_INT("MPX_AWD_ONLY_PLAYER_ALIVE_LTS", 50) -- Chrome Rims - Muscle
end)

menu.action(UNLOCKS,"Unlock 2023 XMAS", {}, "This option will unlock All 2023 XMAS Gifts.", function()
    if GET_INT_GLOBAL(1575011) ~= 66 then
        util.toast("You need to be in a session.")
        return
    end
    menu.show_warning(UNLOCKS, CLICK_COMMAND, "This will put you in a new session!", function()
        menu.trigger_commands("go inviteonly")
        while (GET_INT_GLOBAL(1575011) ~= 25) do -- Wait for TRANSITION_STATE_FM_TRANSITION_CREATE_PLAYER
            util.yield()
        end

        SET_PACKED_STAT_BOOL(42218, false)
        --SET_TUNABLE(util.joaat("XMASGIFTS2023"), 1) -- Candy Cane, Snowball Launcher
        SET_INT_GLOBAL(262145 + 35157, 1)

        while (GET_INT_GLOBAL(1575011) ~= 66) do -- Wait for TRANSITION_STATE_TERMINATE_MAINTRANSITION
            util.yield()
        end

        menu.trigger_commands("forcecloudsave")
    end)
end)

menu.action(UNLOCKS,"Unlock Business Trophies", {}, "This option will unlock most Business Trophies.", function()
    menu.show_warning(UNLOCKS, CLICK_COMMAND, "Warning! This unlock option will modify your CEO Business, Nightclub, Agency and Arcade Stats!", function()
        -- CEO Office & Clubhouse Trophy + Office full of money
        STAT_SET_INT("MPX_LIFETIME_BUY_COMPLETE", 1025)
        STAT_SET_INT("MPX_LIFETIME_BUY_UNDERTAKEN", 1025)
        STAT_SET_INT("MPX_LIFETIME_SELL_COMPLETE", 1025)
        STAT_SET_INT("MPX_LIFETIME_SELL_UNDERTAKEN", 1025)
        STAT_SET_INT("MPX_LIFETIME_CONTRA_EARNINGS", 25000000) -- Contraband Earnings
        SET_PACKED_STAT_INT(7666, 25) -- Fill CEO office with money
        SET_PACKED_STAT_INT(9357, 4) -- Fill Clubhouse with money

        -- Nightclub Trophies
        packed_bool_range(15552, 15560) -- Greatest Dancer Trophy (Bronze), Number One Trophy (Bronze), Battler Trophy (Bronze), Greatest Dancer Trophy (Silver), Number One Trophy (Silver), Battler Trophy (Silver), Greatest Dancer Trophy (Gold), Number One Trophy (Gold), Battler Trophy (Gold)
        packed_bool_range(22137, 22139) -- Hotspot Trophy
        SET_PACKED_STAT_INT(22051, 50) -- Carved Wooden Box
        SET_PACKED_STAT_INT(22052, 100) -- Ammo Box
        SET_PACKED_STAT_INT(22053, 20) -- Meth
        SET_PACKED_STAT_INT(22054, 80) -- Weed
        SET_PACKED_STAT_INT(22055, 60) -- Passports
        SET_PACKED_STAT_INT(22056, 40) -- Crumpled Cash
        SET_PACKED_STAT_INT(22057, 10) -- Impotent Rage Statue
        SET_PACKED_STAT_INT(22058, 20) -- Gold Business Battle Trophy
        STAT_SET_INT("MPX_NIGHTCLUB_HOTSPOT_TIME_MS", 3600000) -- Hotspot Time
        STAT_SET_INT("MPX_AWD_DANCE_TO_SOLOMUN", 360)
        STAT_SET_INT("MPX_AWD_DANCE_TO_TALEOFUS", 360)
        STAT_SET_INT("MPX_AWD_DANCE_TO_DIXON", 360)
        STAT_SET_INT("MPX_AWD_DANCE_TO_BLKMAD", 360)

        -- Agency Trophies
        STAT_SET_INT("MPX_FIXER_SC_VEH_RECOVERED", 100)
        STAT_SET_INT("MPX_FIXER_SC_VAL_RECOVERED", 100)
        STAT_SET_INT("MPX_FIXER_SC_GANG_TERMINATED", 100)
        STAT_SET_INT("MPX_FIXER_SC_VIP_RESCUED", 100)
        STAT_SET_INT("MPX_FIXER_SC_ASSETS_PROTECTED", 100)
        STAT_SET_INT("MPX_FIXER_SC_EQ_DESTROYED", 100)
        STAT_SET_INT("MPX_FIXER_COUNT", 600) -- Trade price for granger2/deity/patriot3/jubilee
        STAT_SET_INT("MPX_FIXER_EARNINGS", 26340756)
        STAT_SET_INT("MPX_FIXER_COMPLETED_BS", 63)
        STAT_SET_INT("MPX_FIXER_GENERAL_BS", -263217545)
        STAT_SET_INT("MPX_PAYPHONE_BONUS_KILL_METHOD", -1)

        -- Arcade Trophies
        packed_bool_range(27184, 27213) -- Invade and Persuade Enemies T-Shirt, Invade and Persuade Oil T-Shirt, Invade and Persuade Tour T-Shirt, Invade and Persuade Green T-Shirt, Invade and Persuade RON T-Shirt, Street Crimes Hoods T-Shirt, Street Crimes Punks T-Shirt, Street Crimes Yokels T-Shirt, Street Crimes Bikers T-Shirt, Street Crimes Action T-Shirt, Street Crimes Boxart T-Shirt, Street Crimes Logo T-Shirt, Claim What's Yours T-Shirt, Choose Your Side T-Shirt, Street Crimes Color Gangs T-Shirt, Street Crimes Red Gangs T-Shirt, White Street Crimes Icons T-Shirt, Black Street Crimes Icons T-Shirt, Invade and Persuade Logo T-Shirt, Mission I T-Shirt, Mission II T-Shirt, Mission IV T-Shirt, Mission III T-Shirt, Invade and Persuade Boxart T-Shirt, Invade and Persuade Invader T-Shirt, Invade and Persuade Suck T-Shirt, Invade and Persuade Jets T-Shirt, Invade and Persuade Gold T-Shirt, Invade and Persuade Hero T-Shirt, Invade and Persuade Barrels T-Shirt
        packed_bool_range(27247, 27247) -- Madam Nazar (Arcade Trophy)
        packed_bool_range(28176, 28191) -- Plushie Grindy T-Shirt, Plushie Saki T-Shirt , Plushie Humpy T-Shirt, Plushie Smoker T-Shirt, Plushie Poopie T-Shirt, Plushie Muffy T-Shirt, Plushie Wasabi Kitty T-Shirt, Plushie Princess T-Shirt, Plushie Master T-Shirt, Pixel Pete's T-Shirt, Wonderama T-Shirt, Warehouse T-Shirt, Eight Bit T-Shirt, Insert Coin T-Shirt, Videogeddon T-Shirt, Nazar Speaks T-Shirt
        packed_bool_range(28197, 28222) -- Badlands Revenge II Gunshot T-Shirt, Badlands Revenge II Eagle T-Shirt, Badlands Revenge II Pixtro T-Shirt, Badlands Revenge II Romance T-Shirt, Badlands Revenge II Bear T-Shirt, Badlands Revenge II Help Me T-Shirt & Badlands Revenge II Retro T-Shirt, Race and Chase Decor T-Shirt, Race and Chase Vehicles T-Shirt, Race and Chase Finish T-Shirt, Crotch Rockets T-Shirt, Street Legal T-Shirt & Get Truckin' T-Shirt, Wizard's Ruin Loot T-Shirt, The Wizard's Ruin Rescue T-Shirt, The Wizard's Ruin Vow T-Shirt, Thog Mighty Sword T-Shirt, Thog T-Shirt & Thog Bod T-Shirt, Space Monkey 3 T-Shirt, Space Monkey Space Crafts T-Shirt, Space Monkey Pixel T-Shirt, Space Monkey Boss Fights T-Shirt, Radioactive Space Monkey T-Shirt & Space Monkey Art T-Shirt, Monkey's Paradise T-Shirt, Retro Defender of the Faith T-Shirt, Penetrator T-Shirt, Defender of the Faith T-Shirt, Love Professor His T-Shirt & Love Professor Hers T-Shirt, Love Professor Nemesis T-Shirt, Love Professor Friendzoned T-Shirt, Love Professor Secrets T-Shirt & Love Professor Score T-Shirt, Shiny Wasabi Kitty Claw T-Shirt, Pixtro T-Shirt, Akedo T-Shirt & Arcade Trophy T-Shirt
        packed_bool_range(28249, 28249) -- Degenatron Glitch T-Shirt
        packed_bool_range(28254, 28255) -- Get Metal T-Shirt / Axe of Fury T-Shirt, 11 11 T-Shirt / Axe of Fury T-Shirt
        packed_bool_range(30254, 30258) -- King Of QUB3D T-Shirt, Qubism T-Shirt, God Of QUB3D T-Shirt, QUB3D Boxart T-Shirt, Qub3d Qub3s T-Shirt
        packed_bool_range(36809, 36809) -- Nemesis T-Shirts
        STAT_SET_BOOL("MPX_AWD_DEADEYE", true) -- Badlands Revenge II -- Dead Eye
        STAT_SET_BOOL("MPX_AWD_PISTOLSATDAWN", true) -- Badlands Revenge II -- Pistols At Dawn
        STAT_SET_BOOL("MPX_AWD_TRAFFICAVOI", true) -- Race and Chase -- Beat the Traffic
        STAT_SET_BOOL("MPX_AWD_CANTCATCHBRA", true) -- Race and Chase -- All Wheels
        STAT_SET_BOOL("MPX_AWD_WIZHARD", true) -- The Wizard's Ruin -- Feelin' Grogy
        STAT_SET_BOOL("MPX_AWD_APEESCAPE", true) -- Space Monkey 3: Bananas Gone Bad -- Ape Escape
        STAT_SET_BOOL("MPX_AWD_MONKEYKIND", true) -- Space Monkey 3: Bananas Gone Bad -- Monkey Mind
        STAT_SET_BOOL("MPX_AWD_AQUAAPE", true) -- Monkey Paradise -- Aquatic Ape
        STAT_SET_BOOL("MPX_AWD_KEEPFAITH", true) -- Defender of the Faith -- Keeping The Faith
        STAT_SET_BOOL("MPX_AWD_TRUELOVE", true) -- The Love Professor -- True Love
        STAT_SET_BOOL("MPX_AWD_NEMESIS", true) -- The Love Professor -- Nemesis
        STAT_SET_BOOL("MPX_AWD_FRIENDZONED", true) -- The Love Professor -- Friendzoned
        STAT_SET_BOOL("MPX_SCGW_WON_NO_DEATHS", true) -- Street Crimes: Gang Wars Edition -- Win a game without taking any damage
        STAT_SET_BOOL("MPX_IAP_CHALLENGE_0", true) -- Invade and Persuade II -- Score over 2,000,000 in a single playthrough
        STAT_SET_BOOL("MPX_IAP_CHALLENGE_1", true) -- Invade and Persuade II -- Collect 88 barrels in a single playthrough
        STAT_SET_BOOL("MPX_IAP_CHALLENGE_2", true) -- Invade and Persuade II -- Kill 100 animals in a single playthrough
        STAT_SET_BOOL("MPX_IAP_CHALLENGE_3", true) -- Invade and Persuade II -- Travel 3,474,000km on the moon
        STAT_SET_BOOL("MPX_IAP_CHALLENGE_4", true) -- Invade and Persuade II -- Finish any level of Invade and persuade with over 7 livee
        STAT_SET_BOOL("MPX_AWD_KINGOFQUB3D", true) -- QUB3D -- King Of QUB3D
        STAT_SET_BOOL("MPX_AWD_QUBISM", true) -- QUB3D -- Qubism
        STAT_SET_BOOL("MPX_AWD_GODOFQUB3D", true) -- QUB3D -- God Of QUB3D
        STAT_SET_BOOL("MPX_AWD_QUIBITS", true) -- QUB3D -- Qubits
        STAT_SET_BOOL("MPX_AWD_ELEVENELEVEN", true) -- Axe Of Fury -- 11 11
        STAT_SET_BOOL("MPX_AWD_GOFOR11TH", true) -- Axe Of Fury -- Crank It To 11
        STAT_SET_BOOL("MPX_AWD_STRAIGHT_TO_VIDEO", true) -- Camhedz -- Straight To Video
        STAT_SET_BOOL("MPX_AWD_MONKEY_C_MONKEY_DO", true) -- Camhedz -- Monkey See Monkey Do
        STAT_SET_BOOL("MPX_AWD_TRAINED_TO_KILL", true) -- Camhedz -- Trained to Kill
        STAT_SET_BOOL("MPX_AWD_DIRECTOR", true) -- Camhedz -- The Director
        STAT_SET_INT("MPX_AWD_SHARPSHOOTER", 40) -- Badlands Revenge II -- Sharpshooter
        STAT_SET_INT("MPX_AWD_RACECHAMP", 40) -- Race and Chase -- Race Champion
        STAT_SET_INT("MPX_AWD_BATSWORD", 1000000) -- The Wizard's Ruin -- Platinum Sword
        STAT_SET_INT("MPX_AWD_COINPURSE", 950000) -- The Wizard's Ruin -- Platinum Sword -- Coin Purse
        STAT_SET_INT("MPX_AWD_ASTROCHIMP", 3000000) -- Space Monkey 3: Bananas Gone Bad -- Astrochimp
        STAT_SET_INT("MPX_AWD_MASTERFUL", 40000) -- Penetrator -- Masterful
        STAT_SET_INT("MPX_SCGW_NUM_WINS_GANG_0", 50) -- Street Crimes: Gang Wars Edition -- Win 20 games with character 1
        STAT_SET_INT("MPX_SCGW_NUM_WINS_GANG_1", 50) -- Street Crimes: Gang Wars Edition -- Win 20 games with character 2
        STAT_SET_INT("MPX_SCGW_NUM_WINS_GANG_2", 50) -- Street Crimes: Gang Wars Edition -- Win 20 games with character 3
        STAT_SET_INT("MPX_SCGW_NUM_WINS_GANG_3", 50) -- Street Crimes: Gang Wars Edition -- Win 20 games with character 4
        STAT_SET_INT("MPX_IAP_MAX_MOON_DIST", 2147483647) -- Invade and Persuade II -- Travel 3,474,000km on the moon
        STAT_SET_INT("MPX_LAST_ANIMAL", 108) -- Invade and Persuade II -- Kill 100 animals in a single playthrough
        STAT_SET_INT("MPX_CH_ARC_CAB_CLAW_TROPHY", -1) -- Kitty Claw Trophy
        STAT_SET_INT("MPX_CH_ARC_CAB_LOVE_TROPHY", -1) -- The Love Professor Trophy
        STAT_SET_INT("MPX_AWD_FACES_OF_DEATH", 50) -- Camhedz -- Faces Of Death

        menu.trigger_commands("forcecloudsave")
    end)
end)

menu.toggle_loop(UNLOCKS, "Force Pistol to Spawn at Shootout", {}, "This will force the WM 29 Pistol to spawn at the Weazel Plaza Shootout.", function()
    util.spoof_script("fm_content_bank_shootout", function()
        memory.write_int(memory.script_local("fm_content_bank_shootout", 119 + 6), 1)
    end)
end)

menu.toggle_loop(UNLOCKS, "Enable Halloween Penthouse Decoration", {}, "This option will enable Halloween Penthouse Ace Masks, Skulls, etc.", function()
    -- Masks
    SET_INT_GLOBAL(262145 + 27069, 1)
    SET_INT_GLOBAL(262145 + 27070, 1)
    SET_INT_GLOBAL(262145 + 27071, 1)
    SET_INT_GLOBAL(262145 + 27072, 1)

    -- Halloween Skulls
    SET_INT_GLOBAL(262145 + 27760, 22500)
    SET_INT_GLOBAL(262145 + 27761, 22500)
    SET_INT_GLOBAL(262145 + 27762, 22500)
    SET_INT_GLOBAL(262145 + 27763, 22500)
    SET_INT_GLOBAL(262145 + 27764, 22500)
    SET_INT_GLOBAL(262145 + 27765, 22500)

    -- Other Casino Stuff
    SET_INT_GLOBAL(262145 + 27505, 22500)
    SET_INT_GLOBAL(262145 + 27554, 4200)
    SET_INT_GLOBAL(262145 + 27555, 4200)
    SET_INT_GLOBAL(262145 + 27571, 18200)
end)

menu.action(UNLOCKS, "Unlock Knife & Baseball Bat Liveries", {}, "This option will unlock all GTA+ liveries for the Knife and Baseball Bat", function()
    --memory.write_int(memory.tunable(1490225691), 0)
    SET_INT_GLOBAL(262145 + 33309, 0) -- 1490225691
    --memory.write_int(memory.tunable(util.joaat("XM22_GUN_VAN_SLOT_WEAPON_TYPE_9")) + 33273 + 9, -1716189206)
    SET_INT_GLOBAL(262145 + 33273 + 9, -1716189206) -- Knife XM22_GUN_VAN_SLOT_WEAPON_TYPE_9
    --memory.write_int(memory.tunable(util.joaat("XM22_GUN_VAN_SLOT_WEAPON_TYPE_9")) + 33273 + 10, -1786099057)
    SET_INT_GLOBAL(262145 + 33273 + 10, -1786099057) -- BaseBall Bat XM22_GUN_VAN_SLOT_WEAPON_TYPE_9
end)

menu.action(UNLOCKS, "Unlock All Arena Wars Trophies and Toys", {}, "This option will unlock all Arena Wars Trophies and Toys.", function()
    STAT_SET_INT("ARN_BS_TRINKET_TICKERS", -1)
    STAT_SET_INT("ARN_BS_TRINKET_SAVED", -1)
    STAT_SET_INT("AWD_WATCH_YOUR_STEP", 50)
    STAT_SET_INT("AWD_TOWER_OFFENSE", 50)
    STAT_SET_INT("AWD_READY_FOR_WAR", 50)
    STAT_SET_INT("AWD_THROUGH_A_LENS", 50)
    STAT_SET_INT("AWD_SPINNER", 50)
    STAT_SET_INT("AWD_YOUMEANBOOBYTRAPS", 50)
    STAT_SET_INT("AWD_MASTER_BANDITO", 50)
    STAT_SET_INT("AWD_SITTING_DUCK", 50)
    STAT_SET_INT("AWD_CROWDPARTICIPATION", 50)
    STAT_SET_INT("AWD_KILL_OR_BE_KILLED", 50)
    STAT_SET_INT("AWD_MASSIVE_SHUNT", 50)
    STAT_SET_INT("AWD_YOURE_OUTTA_HERE", 200)
    STAT_SET_INT("AWD_WEVE_GOT_ONE", 50)
    STAT_SET_INT("AWD_ARENA_WAGEWORKER", 1000000)
    STAT_SET_INT("AWD_TIME_SERVED", 1000)
    STAT_SET_INT("AWD_TOP_SCORE", 55000)
    STAT_SET_INT("AWD_CAREER_WINNER", 1000)
    STAT_SET_INT("ARENAWARS_SP", 209)
    STAT_SET_INT("ARENAWARS_SKILL_LEVEL", 20)
    STAT_SET_INT("ARENAWARS_SP_LIFETIME", 209)
    STAT_SET_INT("ARENAWARS_AP_TIER", 1000)
    STAT_SET_INT("ARENAWARS_AP_LIFETIME", 47551850)
    STAT_SET_INT("ARENAWARS_CARRER_UNLK", 44)
    STAT_SET_INT("ARN_W_THEME_SCIFI", 1000)
    STAT_SET_INT("ARN_W_THEME_APOC", 1000)
    STAT_SET_INT("ARN_W_THEME_CONS", 1000)
    STAT_SET_INT("ARN_W_PASS_THE_BOMB", 1000)
    STAT_SET_INT("ARN_W_DETONATION", 1000)
    STAT_SET_INT("ARN_W_ARCADE_RACE", 1000)
    STAT_SET_INT("ARN_W_CTF", 1000)
    STAT_SET_INT("ARN_W_TAG_TEAM", 1000)
    STAT_SET_INT("ARN_W_DESTR_DERBY", 1000)
    STAT_SET_INT("ARN_W_CARNAGE", 1000)
    STAT_SET_INT("ARN_W_MONSTER_JAM", 1000)
    STAT_SET_INT("ARN_W_GAMES_MASTERS", 1000)
    STAT_SET_INT("ARN_L_PASS_THE_BOMB", 500)
    STAT_SET_INT("ARN_L_DETONATION", 500)
    STAT_SET_INT("ARN_L_ARCADE_RACE", 500)
    STAT_SET_INT("ARN_L_CTF", 500)
    STAT_SET_INT("ARN_L_TAG_TEAM", 500)
    STAT_SET_INT("ARN_L_DESTR_DERBY", 500)
    STAT_SET_INT("ARN_L_CARNAGE", 500)
    STAT_SET_INT("ARN_L_MONSTER_JAM", 500)
    STAT_SET_INT("ARN_L_GAMES_MASTERS", 500)
    STAT_SET_INT("NUMBER_OF_CHAMP_BOUGHT", 1000)
    STAT_SET_INT("ARN_SPECTATOR_KILLS", 1000)
    STAT_SET_INT("ARN_LIFETIME_KILLS", 1000)
    STAT_SET_INT("ARN_LIFETIME_DEATHS", 500)
    STAT_SET_INT("ARENAWARS_CARRER_WINS", 1000)
    STAT_SET_INT("ARENAWARS_CARRER_WINT", 1000)
    STAT_SET_INT("ARENAWARS_MATCHES_PLYD", 1000)
    STAT_SET_INT("ARENAWARS_MATCHES_PLYDT", 1000)
    STAT_SET_INT("ARN_SPEC_BOX_TIME_MS", 86400000)
    STAT_SET_INT("ARN_SPECTATOR_DRONE", 1000)
    STAT_SET_INT("ARN_SPECTATOR_CAMS", 1000)
    STAT_SET_INT("ARN_SMOKE", 1000)
    STAT_SET_INT("ARN_DRINK", 1000)
    STAT_SET_INT("ARN_VEH_MONSTER", 31000)
    STAT_SET_INT("ARN_VEH_MONSTER", 41000)
    STAT_SET_INT("ARN_VEH_MONSTER", 51000)
    STAT_SET_INT("ARN_VEH_CERBERUS", 1000)
    STAT_SET_INT("ARN_VEH_CERBERUS2", 1000)
    STAT_SET_INT("ARN_VEH_CERBERUS3", 1000)
    STAT_SET_INT("ARN_VEH_BRUISER", 1000)
    STAT_SET_INT("ARN_VEH_BRUISER2", 1000)
    STAT_SET_INT("ARN_VEH_BRUISER3", 1000)
    STAT_SET_INT("ARN_VEH_SLAMVAN4", 1000)
    STAT_SET_INT("ARN_VEH_SLAMVAN5", 1000)
    STAT_SET_INT("ARN_VEH_SLAMVAN6", 1000)
    STAT_SET_INT("ARN_VEH_BRUTUS", 1000)
    STAT_SET_INT("ARN_VEH_BRUTUS2", 1000)
    STAT_SET_INT("ARN_VEH_BRUTUS3", 1000)
    STAT_SET_INT("ARN_VEH_SCARAB", 1000)
    STAT_SET_INT("ARN_VEH_SCARAB2", 1000)
    STAT_SET_INT("ARN_VEH_SCARAB3", 1000)
    STAT_SET_INT("ARN_VEH_DOMINATOR4", 1000)
    STAT_SET_INT("ARN_VEH_DOMINATOR5", 1000)
    STAT_SET_INT("ARN_VEH_DOMINATOR6", 1000)
    STAT_SET_INT("ARN_VEH_IMPALER2", 1000)
    STAT_SET_INT("ARN_VEH_IMPALER3", 1000)
    STAT_SET_INT("ARN_VEH_IMPALER4", 1000)
    STAT_SET_INT("ARN_VEH_ISSI4", 1000)
    STAT_SET_INT("ARN_VEH_ISSI5", 1000)
    STAT_SET_INT("ARN_VEH_ISSI", 61000)
    STAT_SET_INT("ARN_VEH_IMPERATOR", 1000)
    STAT_SET_INT("ARN_VEH_IMPERATOR2", 1000)
    STAT_SET_INT("ARN_VEH_IMPERATOR3", 1000)
    STAT_SET_INT("ARN_VEH_ZR380", 1000)
    STAT_SET_INT("ARN_VEH_ZR3802", 1000)
    STAT_SET_INT("ARN_VEH_ZR3803", 1000)
    STAT_SET_INT("ARN_VEH_DEATHBIKE", 1000)
    STAT_SET_INT("ARN_VEH_DEATHBIKE2", 1000)
    STAT_SET_INT("ARN_VEH_DEATHBIKE3", 1000)
    STAT_SET_BOOL("AWD_BEGINNER", true)
    STAT_SET_BOOL("AWD_FIELD_FILLER", true)
    STAT_SET_BOOL("AWD_ARMCHAIR_RACER", true)
    STAT_SET_BOOL("AWD_LEARNER", true)
    STAT_SET_BOOL("AWD_SUNDAY_DRIVER", true)
    STAT_SET_BOOL("AWD_THE_ROOKIE", true)
    STAT_SET_BOOL("AWD_BUMP_AND_RUN", true)
    STAT_SET_BOOL("AWD_GEAR_HEAD", true)
    STAT_SET_BOOL("AWD_DOOR_SLAMMER", true)
    STAT_SET_BOOL("AWD_HOT_LAP", true)
    STAT_SET_BOOL("AWD_ARENA_AMATEUR", true)
    STAT_SET_BOOL("AWD_PAINT_TRADER", true)
    STAT_SET_BOOL("AWD_SHUNTER", true)
    STAT_SET_BOOL("AWD_JOCK", true)
    STAT_SET_BOOL("AWD_WARRIOR", true)
    STAT_SET_BOOL("AWD_T_BONE", true)
    STAT_SET_BOOL("AWD_MAYHEM", true)
    STAT_SET_BOOL("AWD_WRECKER", true)
    STAT_SET_BOOL("AWD_CRASH_COURSE", true)
    STAT_SET_BOOL("AWD_ARENA_LEGEND", true)
    STAT_SET_BOOL("AWD_PEGASUS", true)
    STAT_SET_BOOL("AWD_UNSTOPPABLE", true)
    STAT_SET_BOOL("AWD_CONTACT_SPORT", true)
end)

menu.action(UNLOCKS, "Unlock Arena Wars Clothes", {}, "This option will unlock all Arena Wars Clothes.", function()
    SET_PACKED_INT_TUNABLE_GLOBAL("ENABLE_LOGIN_ALBANY_LOGO_WHITE_SHIRT", "ENABLE_LOGIN_DECLASSE_LADY_BLACK_SHIRT", 1)
end)

menu.action(UNLOCKS, "Unlock Summer 2020 Awards", {}, "This option will unlock Summer 2020 Awards", function()
    STAT_SET_BOOL("AWD_KINGOFQUB3D", true)
    STAT_SET_BOOL("AWD_QUBISM", true)
    STAT_SET_BOOL("AWD_QUIBITS", true)
    STAT_SET_BOOL("AWD_GODOFQUB3D", true)
    STAT_SET_BOOL("AWD_GOFOR11TH", true)
    STAT_SET_BOOL("AWD_ELEVENELEVEN", true)
end)

menu.action(UNLOCKS, "Unlock Summer 2020 Clothes", {}, "", function()
    SET_PACKED_INT_TUNABLE_GLOBAL("ENABLE_LOGIN_BCTR_AGED_TEE", "ENABLE_LOGIN_LEMON_SPORTS_TRACK_TOP", 1)
end)

menu.action(UNLOCKS, "Unlock LS Tuners Awards", {}, "This option will unlock LS Tuners Awards.", function()
    STAT_SET_INT("AWD_CAR_CLUB_MEM", 100)
    STAT_SET_INT("AWD_SPRINTRACER", 50)
    STAT_SET_INT("AWD_STREETRACER", 50)
    STAT_SET_INT("AWD_PURSUITRACER", 50)
    STAT_SET_INT("AWD_TEST_CAR", 240)
    STAT_SET_INT("AWD_AUTO_SHOP", 50)
    STAT_SET_INT("AWD_CAR_EXPORT", 100)
    STAT_SET_INT("AWD_GROUNDWORK", 40)
    STAT_SET_INT("AWD_ROBBERY_CONTRACT", 100)
    STAT_SET_INT("AWD_FACES_OF_DEATH", 100)
    STAT_SET_BOOL("AWD_CAR_CLUB", true)
    STAT_SET_BOOL("AWD_PRO_CAR_EXPORT", true)
    STAT_SET_BOOL("AWD_UNION_DEPOSITORY", true)
    STAT_SET_BOOL("AWD_MILITARY_CONVOY", true)
    STAT_SET_BOOL("AWD_FLEECA_BANK", true)
    STAT_SET_BOOL("AWD_FREIGHT_TRAIN", true)
    STAT_SET_BOOL("AWD_BOLINGBROKE_ASS", true)
    STAT_SET_BOOL("AWD_IAA_RAID", true)
    STAT_SET_BOOL("AWD_METH_JOB", true)
    STAT_SET_BOOL("AWD_BUNKER_RAID", true)
    STAT_SET_BOOL("AWD_STRAIGHT_TO_VIDEO", true)
    STAT_SET_BOOL("AWD_MONKEY_C_MONKEY_DO", true)
    STAT_SET_BOOL("AWD_TRAINED_TO_KILL", true)
    STAT_SET_BOOL("AWD_DIRECTOR", true)
end)

menu.action(UNLOCKS, "Unlock Contract DLC Animal Masks", {}, "This option will unlock Contract DLC Animal Masks.", function()
    SET_PACKED_INT_TUNABLE_GLOBAL("FIXER_LOGIN_AWARD_FISHMASK_1", "FIXER_LOGIN_AWARD_SEALMASK_4", 1)
end)

menu.action(UNLOCKS, "Unlock Contract DLC DJ Pooh Shirts", {}, "This option will unlock Contract DLC DJ Pooh Shirts", function()
    SET_PACKED_INT_TUNABLE_GLOBAL("FIXER_LOGIN_DJ_POOH_ORANGE", "FIXER_LOGIN_DJ_POOH_BLUE", 1) 
end)

menu.action(UNLOCKS, "Unlock Contract DLC Clothes (Tops)", {}, "", function()
    SET_PACKED_INT_TUNABLE_GLOBAL(-1967834023, -1263992372, 1) 
    SET_PACKED_INT_TUNABLE_GLOBAL(-206691492, -1577621449, 1)
end)

menu.action(UNLOCKS, "Unlock Contract DLC Clothes (Hats)", {}, "", function()
    SET_PACKED_INT_TUNABLE_GLOBAL(638571354, 96152168, 1)
    SET_PACKED_INT_TUNABLE_GLOBAL(-2120678580, -1003907171, 1)
    SET_PACKED_INT_TUNABLE_GLOBAL(191276118, -1484490421, 1)
    SET_PACKED_INT_TUNABLE_GLOBAL("SUM2_CHRISTMAS_BEERHAT_LEMON", "SUM2_CHRISTMAS_BEERHAT_RED_REINDEER", 1)
    SET_INT_TUNABLE_GLOBAL(-339902614, 1)
end)

menu.action(UNLOCKS, "Unlock Contract DLC Clothes (Head Accessories)", {}, "", function()
    SET_PACKED_INT_TUNABLE_GLOBAL(-889497715, -1162924007, 1)
    SET_PACKED_INT_TUNABLE_GLOBAL(1096886904, -359187968, 1)
    SET_PACKED_INT_TUNABLE_GLOBAL(190205845, -171130807, 1)
    SET_PACKED_INT_TUNABLE_GLOBAL(1424509866, -1677619307, 1)
    SET_PACKED_INT_TUNABLE_GLOBAL(-1285035231, -1792568167, 1)
    SET_INT_TUNABLE_GLOBAL(505550305, 1)
end)

menu.action(UNLOCKS, "Unlock Contract DLC Clothes (Shoes)", {}, "", function()
    SET_PACKED_INT_TUNABLE_GLOBAL(467678514, 169972145, 1)
    SET_PACKED_INT_TUNABLE_GLOBAL(245491514, -141827484, 1) 
end)

menu.action(UNLOCKS, "Unlock Drug Wars Clothing", {}, "", function()
    SET_PACKED_INT_TUNABLE_GLOBAL("EVENT_LOGIN_DLC22022_ICE_VINYL_JACKET_3", "PURPLE_SNAKESKIN_MOTOR_HELMET", 1)
end)

menu.action(UNLOCKS, "Unlock Acid Lab Equipment Upgrade", {}, "", function() 
    STAT_SET_INT("AWD_CALLME", 10)
end)

menu.action(UNLOCKS, "Unlock Nightclub Awards", {}, "", function()
    STAT_SET_INT("AWD_DANCE_TO_SOLOMUN", 120)
    STAT_SET_INT("AWD_DANCE_TO_TALEOFUS", 120)
    STAT_SET_INT("AWD_DANCE_TO_DIXON", 120)
    STAT_SET_INT("AWD_DANCE_TO_BLKMAD", 120)
    STAT_SET_INT("AWD_CLUB_DRUNK", 200)
    STAT_SET_INT("NIGHTCLUB_VIP_APPEAR", 700)
    STAT_SET_INT("NIGHTCLUB_JOBS_DONE", 700)
    STAT_SET_INT("NIGHTCLUB_EARNINGS", 20721002)
    STAT_SET_INT("HUB_SALES_COMPLETED", 1001)
    STAT_SET_INT("HUB_EARNINGS", 320721002)
    STAT_SET_INT("DANCE_COMBO_DURATION_MINS", 3600000)
    STAT_SET_INT("NIGHTCLUB_PLAYER_APPEAR", 9506)
    STAT_SET_INT("LIFETIME_HUB_GOODS_SOLD", 784672)
    STAT_SET_INT("LIFETIME_HUB_GOODS_MADE", 507822)
    STAT_SET_INT("DANCEPERFECTOWNCLUB", 120)
    STAT_SET_INT("NUMUNIQUEPLYSINCLUB", 120)
    STAT_SET_INT("DANCETODIFFDJS", 4)
    STAT_SET_INT("NIGHTCLUB_HOTSPOT_TIME_MS", 3600000)
    STAT_SET_INT("NIGHTCLUB_CONT_TOTAL", 20)
    STAT_SET_INT("NIGHTCLUB_CONT_MISSION", -1)
    STAT_SET_INT("CLUB_CONTRABAND_MISSION", 1000)
    STAT_SET_INT("HUB_CONTRABAND_MISSION", 1000)
    STAT_SET_BOOL("AWD_CLUB_HOTSPOT", true)
    STAT_SET_BOOL("AWD_CLUB_CLUBBER", true)
    STAT_SET_BOOL("AWD_CLUB_COORD", true)
end)

menu.action(UNLOCKS, "Unlock Arcade Awards", {}, "Trophies, toys, and clothings are included.", function()
    STAT_SET_INT("AWD_PREPARATION", 40)
    STAT_SET_INT("AWD_ASLEEPONJOB", 20)
    STAT_SET_INT("AWD_DAICASHCRAB", 100000)
    STAT_SET_INT("AWD_BIGBRO", 40)
    STAT_SET_INT("AWD_SHARPSHOOTER", 40)
    STAT_SET_INT("AWD_RACECHAMP", 40)
    STAT_SET_INT("AWD_BATSWORD", 1000000)
    STAT_SET_INT("AWD_COINPURSE", 950000)
    STAT_SET_INT("AWD_ASTROCHIMP", 3000000)
    STAT_SET_INT("AWD_MASTERFUL", 40000)
    STAT_SET_INT("SCGW_NUM_WINS_GANG_0", 50)
    STAT_SET_INT("SCGW_NUM_WINS_GANG_1", 50)
    STAT_SET_INT("SCGW_NUM_WINS_GANG_2", 50)
    STAT_SET_INT("SCGW_NUM_WINS_GANG_3", 50)
    STAT_SET_INT("CH_ARC_CAB_CLAW_TROPHY", -1)
    STAT_SET_INT("CH_ARC_CAB_LOVE_TROPHY", -1)
    STAT_SET_INT("IAP_MAX_MOON_DIST", INT_MAX)
    STAT_SET_INT("IAP_SCORE_0", 69644)
    STAT_SET_INT("IAP_SCORE_1", 50333)
    STAT_SET_INT("IAP_SCORE_2", 63512)
    STAT_SET_INT("IAP_SCORE_3", 46136)
    STAT_SET_INT("IAP_SCORE_4", 21638)
    STAT_SET_INT("IAP_SCORE_5", 2133)
    STAT_SET_INT("IAP_SCORE_6", 1215)
    STAT_SET_INT("IAP_SCORE_7", 2444)
    STAT_SET_INT("IAP_SCORE_8", 38023)
    STAT_SET_INT("IAP_SCORE_9", 2233)
    STAT_SET_INT("SCGW_SCORE_1", 50)
    STAT_SET_INT("SCGW_SCORE_2", 50)
    STAT_SET_INT("SCGW_SCORE_3", 50)
    STAT_SET_INT("SCGW_SCORE_4", 50)
    STAT_SET_INT("SCGW_SCORE_5", 50)
    STAT_SET_INT("SCGW_SCORE_6", 50)
    STAT_SET_INT("SCGW_SCORE_7", 50)
    STAT_SET_INT("SCGW_SCORE_8", 50)
    STAT_SET_INT("SCGW_SCORE_9", 50)

    for i = 0, 9 do
        STAT_SET_INT("IAP_INITIALS_" .. i, 50)
        STAT_SET_INT("DG_DEFENDER_INITIALS_" .. i, 69644)
        STAT_SET_INT("DG_DEFENDER_SCORE_" .. i, 50)
        STAT_SET_INT("DG_MONKEY_INITIALS_" .. i, 69644)
        STAT_SET_INT("DG_MONKEY_SCORE_" .. i, 50)
        STAT_SET_INT("DG_PENETRATOR_INITIALS_" .. i, 69644)
        STAT_SET_INT("DG_PENETRATOR_SCORE_" .. i, 50)
        STAT_SET_INT("GGSM_INITIALS_" .. i, 69644)
        STAT_SET_INT("GGSM_SCORE_" .. i, 50)
        STAT_SET_INT("TWR_INITIALS_" .. i, 69644)
        STAT_SET_INT("TWR_SCORE_" .. i, 50)
    end

    STAT_SET_BOOL("AWD_SCOPEOUT", true)
    STAT_SET_BOOL("AWD_CREWEDUP", true)
    STAT_SET_BOOL("AWD_MOVINGON", true)
    STAT_SET_BOOL("AWD_PROMOCAMP", true)
    STAT_SET_BOOL("AWD_GUNMAN", true)
    STAT_SET_BOOL("AWD_SMASHNGRAB", true)
    STAT_SET_BOOL("AWD_INPLAINSI", true)
    STAT_SET_BOOL("AWD_UNDETECTED", true)
    STAT_SET_BOOL("AWD_ALLROUND", true)
    STAT_SET_BOOL("AWD_ELITETHEIF", true)
    STAT_SET_BOOL("AWD_PRO", true)
    STAT_SET_BOOL("AWD_SUPPORTACT", true)
    STAT_SET_BOOL("AWD_SHAFTED", true)
    STAT_SET_BOOL("AWD_COLLECTOR", true)
    STAT_SET_BOOL("AWD_DEADEYE", true)
    STAT_SET_BOOL("AWD_PISTOLSATDAWN", true)
    STAT_SET_BOOL("AWD_TRAFFICAVOI", true)
    STAT_SET_BOOL("AWD_CANTCATCHBRA", true)
    STAT_SET_BOOL("AWD_WIZHARD", true)
    STAT_SET_BOOL("AWD_APEESCAPE", true)
    STAT_SET_BOOL("AWD_MONKEYKIND", true)
    STAT_SET_BOOL("AWD_AQUAAPE", true)
    STAT_SET_BOOL("AWD_KEEPFAITH", true)
    STAT_SET_BOOL("AWD_TRUELOVE", true)
    STAT_SET_BOOL("AWD_NEMESIS", true)
    STAT_SET_BOOL("AWD_FRIENDZONED", true)
    STAT_SET_BOOL("IAP_CHALLENGE_0", true)
    STAT_SET_BOOL("IAP_CHALLENGE_1", true)
    STAT_SET_BOOL("IAP_CHALLENGE_2", true)
    STAT_SET_BOOL("IAP_CHALLENGE_3", true)
    STAT_SET_BOOL("IAP_CHALLENGE_4", true)
    STAT_SET_BOOL("IAP_GOLD_TANK", true)
    STAT_SET_BOOL("SCGW_WON_NO_DEATHS", true)

    SET_PACKED_INT_TUNABLE_GLOBAL("STREET_CRIMES_BOXART_TEE", "RED_FAME_OR_SHAME_KRONOS", 1) -- For Clothing
end)

menu.action(UNLOCKS, "Unlock Casino Store Ace Masks", {}, "Make sure click before buying. When you change your session, will be changed to non-unlocked status.", function()
    SET_PACKED_INT_TUNABLE_GLOBAL("VC_ACE_OF_SPADES", "VC_ACE_OF_DIAMONDS", 1)
end)

menu.action(UNLOCKS, "Add Cosmetic Decorations To The Office/MC", {}, "To apply, sell special crate or vehicle cargo and change your session!", function()
    STAT_SET_INT("LIFETIME_BUY_COMPLETE", 1000)
    STAT_SET_INT("LIFETIME_BUY_UNDERTAKEN", 1000)
    STAT_SET_INT("LIFETIME_SELL_COMPLETE", 1000)
    STAT_SET_INT("LIFETIME_SELL_UNDERTAKEN", 1000)
    STAT_SET_INT("LIFETIME_CONTRA_EARNINGS", 20000000)
    STAT_SET_INT("LIFETIME_BIKER_BUY_COMPLET", 1000)
    STAT_SET_INT("LIFETIME_BIKER_BUY_UNDERTA", 1000)
    STAT_SET_INT("LIFETIME_BIKER_SELL_COMPLET", 1000)
    STAT_SET_INT("LIFETIME_BIKER_SELL_UNDERTA", 1000)
    STAT_SET_INT("LIFETIME_BKR_SELL_EARNINGS0", 20000000)

    for i = 1, 5 do
        STAT_SET_INT("LIFETIME_BIKER_BUY_COMPLET" .. i, 1000)
        STAT_SET_INT("LIFETIME_BIKER_BUY_UNDERTA" .. i, 1000)
        STAT_SET_INT("LIFETIME_BIKER_SELL_COMPLET" .. i, 1000)
        STAT_SET_INT("LIFETIME_BIKER_SELL_UNDERTA" .. i, 1000)
        STAT_SET_INT("LIFETIME_BKR_SELL_EARNINGS" .. i, 20000000)
    end
end)

menu.action(UNLOCKS, "Unlock Cayo Perico", {}, "Unlocks almost of unlockable stuffs related the heist like clothing, etc.", function()
    STAT_SET_INT("AWD_LOSTANDFOUND", 500000)
    STAT_SET_INT("AWD_SUNSET", 1800000)
    STAT_SET_INT("AWD_TREASURE_HUNTER", 1000000)
    STAT_SET_INT("AWD_WRECK_DIVING", 1000000)
    STAT_SET_INT("AWD_KEINEMUSIK", 1800000)
    STAT_SET_INT("AWD_PALMS_TRAX", 1800000)
    STAT_SET_INT("AWD_MOODYMANN", 1800000)
    STAT_SET_INT("AWD_FILL_YOUR_BAGS", 1000000000)
    STAT_SET_INT("AWD_WELL_PREPARED", 80)
    STAT_SET_INT("H4_H4_DJ_MISSIONS", -1)
    STAT_SET_BOOL("AWD_INTELGATHER", true)
    STAT_SET_BOOL("AWD_COMPOUNDINFILT", true)
    STAT_SET_BOOL("AWD_LOOT_FINDER", true)
    STAT_SET_BOOL("AWD_MAX_DISRUPT", true)
    STAT_SET_BOOL("AWD_THE_ISLAND_HEIST", true)
    STAT_SET_BOOL("AWD_GOING_ALONE", true)
    STAT_SET_BOOL("AWD_TEAM_WORK", true)
    STAT_SET_BOOL("AWD_MIXING_UP", true)
    STAT_SET_BOOL("AWD_PRO_THIEF", true)
    STAT_SET_BOOL("AWD_CAT_BURGLAR", true)
    STAT_SET_BOOL("AWD_ONE_OF_THEM", true)
    STAT_SET_BOOL("AWD_GOLDEN_GUN", true)
    STAT_SET_BOOL("AWD_ELITE_THIEF", true)
    STAT_SET_BOOL("AWD_PROFESSIONAL", true)
    STAT_SET_BOOL("AWD_HELPING_OUT", true)
    STAT_SET_BOOL("AWD_COURIER", true)
    STAT_SET_BOOL("AWD_PARTY_VIBES", true)
    STAT_SET_BOOL("AWD_HELPING_HAND", true)
    STAT_SET_BOOL("AWD_ELEVENELEVEN", true)
    STAT_SET_BOOL("COMPLETE_H4_F_USING_VETIR", true)
    STAT_SET_BOOL("COMPLETE_H4_F_USING_LONGFIN", true)
    STAT_SET_BOOL("COMPLETE_H4_F_USING_ANNIH", true)
    STAT_SET_BOOL("COMPLETE_H4_F_USING_ALKONOS", true)
    STAT_SET_BOOL("COMPLETE_H4_F_USING_PATROLB", true)
    SET_PACKED_INT_TUNABLE_GLOBAL("TOPS_ISLAND_HEIST_EVENT_JACKET_1", "PANTS_BIGNESS_TIE_DYE_SWEAT_PANTS", 1)
    SET_PACKED_INT_TUNABLE_GLOBAL("ACCESSORIES_GLOW_BRACELET_1", "ACCESSORIES_GLOW_NECKLACE_16", 1)
    SET_PACKED_INT_TUNABLE_GLOBAL("HEIST4_FESTIVE_MASK_0", "HEIST4_FESTIVE_MASK_19", 1)
    SET_PACKED_INT_TUNABLE_GLOBAL("ACCESSORIES_SUNGLASSES_1_0", "ACCESSORIES_SUNGLASSES_3_11", 1)
    SET_PACKED_INT_TUNABLE_GLOBAL("PALMS_TRAX_EVENT_TEE_1", "STILL_SLIPPING_EVENT_TEE_2", 1)
end)

menu.action(UNLOCKS, "Unlock Casino Heist", {}, "", function()
    STAT_SET_INT("CAS_HEIST_NOTS", -1)
    STAT_SET_INT("CH_ARC_CAB_CLAW_TROPHY", -1)
    STAT_SET_INT("CH_ARC_CAB_LOVE_TROPHY", -1)
    STAT_SET_INT("SIGNAL_JAMMERS_COLLECTED", 50)
    STAT_SET_INT("AWD_ODD_JOBS", 52)
    STAT_SET_INT("AWD_PREPARATION", 40)
    STAT_SET_INT("AWD_ASLEEPONJOB", 20)
    STAT_SET_INT("AWD_DAICASHCRAB", 100000)
    STAT_SET_INT("AWD_BIGBRO", 40)
    STAT_SET_INT("AWD_SHARPSHOOTER", 40)
    STAT_SET_INT("AWD_RACECHAMP", 40)
    STAT_SET_INT("AWD_BATSWORD", 1000000)
    STAT_SET_INT("AWD_COINPURSE", 950000)
    STAT_SET_INT("AWD_ASTROCHIMP", 3000000)
    STAT_SET_INT("AWD_MASTERFUL", 40000)
    STAT_SET_INT("H3_BOARD_DIALOGUE0", -1)
    STAT_SET_INT("H3_BOARD_DIALOGUE1", -1)
    STAT_SET_INT("H3_BOARD_DIALOGUE2", -1)
    STAT_SET_INT("H3_VEHICLESUSED", -1)
    STAT_SET_BOOL("AWD_FIRST_TIME1", true)
    STAT_SET_BOOL("AWD_FIRST_TIME2", true)
    STAT_SET_BOOL("AWD_FIRST_TIME3", true)
    STAT_SET_BOOL("AWD_FIRST_TIME4", true)
    STAT_SET_BOOL("AWD_FIRST_TIME5", true)
    STAT_SET_BOOL("AWD_FIRST_TIME6", true)
    STAT_SET_BOOL("AWD_ALL_IN_ORDER", true)
    STAT_SET_BOOL("AWD_SUPPORTING_ROLE", true)
    STAT_SET_BOOL("AWD_LEADER", true)
    STAT_SET_BOOL("AWD_ODD_JOBS", true)
    STAT_SET_BOOL("AWD_SURVIVALIST", true)
    STAT_SET_BOOL("AWD_SCOPEOUT", true)
    STAT_SET_BOOL("AWD_CREWEDUP", true)
    STAT_SET_BOOL("AWD_MOVINGON", true)
    STAT_SET_BOOL("AWD_PROMOCAMP", true)
    STAT_SET_BOOL("AWD_GUNMAN", true)
    STAT_SET_BOOL("AWD_SMASHNGRAB", true)
    STAT_SET_BOOL("AWD_INPLAINSI", true)
    STAT_SET_BOOL("AWD_UNDETECTED", true)
    STAT_SET_BOOL("AWD_ALLROUND", true)
    STAT_SET_BOOL("AWD_ELITETHEIF", true)
    STAT_SET_BOOL("AWD_PRO", true)
    STAT_SET_BOOL("AWD_SUPPORTACT", true)
    STAT_SET_BOOL("AWD_SHAFTED", true)
    STAT_SET_BOOL("AWD_COLLECTOR", true)
    STAT_SET_BOOL("AWD_DEADEYE", true)
    STAT_SET_BOOL("AWD_PISTOLSATDAWN", true)
    STAT_SET_BOOL("AWD_TRAFFICAVOI", true)
    STAT_SET_BOOL("AWD_CANTCATCHBRA", true)
    STAT_SET_BOOL("AWD_WIZHARD", true)
    STAT_SET_BOOL("AWD_APEESCAPE", true)
    STAT_SET_BOOL("AWD_MONKEYKIND", true)
    STAT_SET_BOOL("AWD_AQUAAPE", true)
    STAT_SET_BOOL("AWD_KEEPFAITH", true)
    STAT_SET_BOOL("AWD_TRUELOVE", true)
    STAT_SET_BOOL("AWD_NEMESIS", true)
    STAT_SET_BOOL("AWD_FRIENDZONED", true)
    STAT_SET_BOOL("VCM_FLOW_CS_RSC_SEEN", true)
    STAT_SET_BOOL("VCM_FLOW_CS_BWL_SEEN", true)
    STAT_SET_BOOL("VCM_FLOW_CS_MTG_SEEN", true)
    STAT_SET_BOOL("VCM_FLOW_CS_OIL_SEEN", true)
    STAT_SET_BOOL("VCM_FLOW_CS_DEF_SEEN", true)
    STAT_SET_BOOL("VCM_FLOW_CS_FIN_SEEN", true)
    STAT_SET_BOOL("CAS_VEHICLE_REWARD", false)
    STAT_SET_BOOL("HELP_FURIA", true)
    STAT_SET_BOOL("HELP_MINITAN", true)
    STAT_SET_BOOL("HELP_YOSEMITE2", true)
    STAT_SET_BOOL("HELP_ZHABA", true)
    STAT_SET_BOOL("HELP_IMORGEN", true)
    STAT_SET_BOOL("HELP_SULTAN2", true)
    STAT_SET_BOOL("HELP_VAGRANT", true)
    STAT_SET_BOOL("HELP_VSTR", true)
    STAT_SET_BOOL("HELP_STRYDER", true)
    STAT_SET_BOOL("HELP_SUGOI", true)
    STAT_SET_BOOL("HELP_KANJO", true)
    STAT_SET_BOOL("HELP_FORMULA", true)
    STAT_SET_BOOL("HELP_FORMULA2", true)
    STAT_SET_BOOL("HELP_JB7002", true)
end)

menu.action(UNLOCKS, "Unlock Doomsday Heist", {}, "", function()
    STAT_SET_INT("GANGOPS_FM_MISSION_PROG", -1)
    STAT_SET_INT("GANGOPS_FLOW_MISSION_PROG", -1)
    STAT_SET_INT("MPPLY_GANGOPS_ALLINORDER", 100)
    STAT_SET_INT("MPPLY_GANGOPS_LOYALTY", 100)
    STAT_SET_INT("MPPLY_GANGOPS_CRIMMASMD", 100)
    STAT_SET_INT("MPPLY_GANGOPS_LOYALTY2", 100)
    STAT_SET_INT("MPPLY_GANGOPS_LOYALTY3", 100)
    STAT_SET_INT("MPPLY_GANGOPS_CRIMMASMD2", 100)
    STAT_SET_INT("MPPLY_GANGOPS_CRIMMASMD3", 100)
    STAT_SET_INT("MPPLY_GANGOPS_SUPPORT", 100)
    STAT_SET_INT("CR_GANGOP_MORGUE", 10)
    STAT_SET_INT("CR_GANGOP_DELUXO", 10)
    STAT_SET_INT("CR_GANGOP_SERVERFARM", 10)
    STAT_SET_INT("CR_GANGOP_IAABASE_FIN", 10)
    STAT_SET_INT("CR_GANGOP_STEALOSPREY", 10)
    STAT_SET_INT("CR_GANGOP_FOUNDRY", 10)
    STAT_SET_INT("CR_GANGOP_RIOTVAN", 10)
    STAT_SET_INT("CR_GANGOP_SUBMARINECAR", 10)
    STAT_SET_INT("CR_GANGOP_SUBMARINE_FIN", 10)
    STAT_SET_INT("CR_GANGOP_PREDATOR", 10)
    STAT_SET_INT("CR_GANGOP_BMLAUNCHER", 10)
    STAT_SET_INT("CR_GANGOP_BCCUSTOM", 10)
    STAT_SET_INT("CR_GANGOP_STEALTHTANKS", 10)
    STAT_SET_INT("CR_GANGOP_SPYPLANE", 10)
    STAT_SET_INT("CR_GANGOP_FINALE", 10)
    STAT_SET_INT("CR_GANGOP_FINALE_P2", 10)
    STAT_SET_INT("CR_GANGOP_FINALE_P3", 10)
    STAT_SET_BOOL("MPPLY_AWD_GANGOPS_IAA", true)
    STAT_SET_BOOL("MPPLY_AWD_GANGOPS_SUBMARINE", true)
    STAT_SET_BOOL("MPPLY_AWD_GANGOPS_MISSILE", true)
    STAT_SET_BOOL("MPPLY_AWD_GANGOPS_ALLINORDER", true)
    STAT_SET_BOOL("MPPLY_AWD_GANGOPS_LOYALTY", true)
    STAT_SET_BOOL("MPPLY_AWD_GANGOPS_LOYALTY2", true)
    STAT_SET_BOOL("MPPLY_AWD_GANGOPS_LOYALTY3", true)
    STAT_SET_BOOL("MPPLY_AWD_GANGOPS_CRIMMASMD", true)
    STAT_SET_BOOL("MPPLY_AWD_GANGOPS_CRIMMASMD2", true)
    STAT_SET_BOOL("MPPLY_AWD_GANGOPS_CRIMMASMD3", true)
end)

menu.action(UNLOCKER_HEISTS, "Unlock Classic Heist", {}, "", function()
    STAT_SET_INT("AWD_FINISH_HEISTS", 900)
    STAT_SET_INT("MPPLY_WIN_GOLD_MEDAL_HEISTS", 900)
    STAT_SET_INT("AWD_DO_HEIST_AS_MEMBER", 900)
    STAT_SET_INT("AWD_DO_HEIST_AS_THE_LEADER", 900)
    STAT_SET_INT("AWD_FINISH_HEIST_SETUP_JOB", 900)
    STAT_SET_INT("AWD_FINISH_HEIST", 900)
    STAT_SET_INT("HEIST_COMPLETION", 900)
    STAT_SET_INT("HEISTS_ORGANISED", 900)
    STAT_SET_INT("AWD_CONTROL_CROWDS", 900)
    STAT_SET_INT("AWD_WIN_GOLD_MEDAL_HEISTS", 900)
    STAT_SET_INT("AWD_COMPLETE_HEIST_NOT_DIE", 900)
    STAT_SET_INT("HEIST_START", 900)
    STAT_SET_INT("HEIST_END", 900)
    STAT_SET_INT("CUTSCENE_MID_PRISON", 900)
    STAT_SET_INT("CUTSCENE_MID_HUMANE", 900)
    STAT_SET_INT("CUTSCENE_MID_NARC", 900)
    STAT_SET_INT("CUTSCENE_MID_ORNATE", 900)
    STAT_SET_INT("CR_FLEECA_PREP_1", 5000)
    STAT_SET_INT("CR_FLEECA_PREP_2", 5000)
    STAT_SET_INT("CR_FLEECA_FINALE", 5000)
    STAT_SET_INT("CR_PRISON_PLANE", 5000)
    STAT_SET_INT("CR_PRISON_BUS", 5000)
    STAT_SET_INT("CR_PRISON_STATION", 5000)
    STAT_SET_INT("CR_PRISON_UNFINISHED_BIZ", 5000)
    STAT_SET_INT("CR_PRISON_FINALE", 5000)
    STAT_SET_INT("CR_HUMANE_KEY_CODES", 5000)
    STAT_SET_INT("CR_HUMANE_ARMORDILLOS", 5000)
    STAT_SET_INT("CR_HUMANE_EMP", 5000)
    STAT_SET_INT("CR_HUMANE_VALKYRIE", 5000)
    STAT_SET_INT("CR_HUMANE_FINALE", 5000)
    STAT_SET_INT("CR_NARC_COKE", 5000)
    STAT_SET_INT("CR_NARC_TRASH_TRUCK", 5000)
    STAT_SET_INT("CR_NARC_BIKERS", 5000)
    STAT_SET_INT("CR_NARC_WEED", 5000)
    STAT_SET_INT("CR_NARC_STEAL_METH", 5000)
    STAT_SET_INT("CR_NARC_FINALE", 5000)
    STAT_SET_INT("CR_PACIFIC_TRUCKS", 5000)
    STAT_SET_INT("CR_PACIFIC_WITSEC", 5000)
    STAT_SET_INT("CR_PACIFIC_HACK", 5000)
    STAT_SET_INT("CR_PACIFIC_BIKES", 5000)
    STAT_SET_INT("CR_PACIFIC_CONVOY", 5000)
    STAT_SET_INT("CR_PACIFIC_FINALE", 5000)
    STAT_SET_INT("MPPLY_HEIST_ACH_TRACKER", -1)
    STAT_SET_BOOL("MPPLY_AWD_COMPLET_HEIST_MEM", true)
    STAT_SET_BOOL("MPPLY_AWD_COMPLET_HEIST_1STPER", true)
    STAT_SET_BOOL("MPPLY_AWD_FLEECA_FIN", true)
    STAT_SET_BOOL("MPPLY_AWD_HST_ORDER", true)
    STAT_SET_BOOL("MPPLY_AWD_HST_SAME_TEAM", true)
    STAT_SET_BOOL("MPPLY_AWD_HST_ULT_CHAL", true)
    STAT_SET_BOOL("MPPLY_AWD_HUMANE_FIN", true)
    STAT_SET_BOOL("MPPLY_AWD_PACIFIC_FIN", true)
    STAT_SET_BOOL("MPPLY_AWD_PRISON_FIN", true)
    STAT_SET_BOOL("MPPLY_AWD_SERIESA_FIN", true)
    STAT_SET_BOOL("AWD_FINISH_HEIST_NO_DAMAGE", true)
    STAT_SET_BOOL("AWD_SPLIT_HEIST_TAKE_EVENLY", true)
    STAT_SET_BOOL("AWD_ALL_ROLES_HEIST", true)
    STAT_SET_BOOL("AWD_MATCHING_OUTFIT_HEIST", true)
    STAT_SET_BOOL("HEIST_PLANNING_DONE_PRINT", true)
    STAT_SET_BOOL("HEIST_PLANNING_DONE_HELP_0", true)
    STAT_SET_BOOL("HEIST_PLANNING_DONE_HELP_1", true)
    STAT_SET_BOOL("HEIST_PRE_PLAN_DONE_HELP_0", true)
    STAT_SET_BOOL("HEIST_CUTS_DONE_FINALE", true)
    STAT_SET_BOOL("HEIST_IS_TUTORIAL", false)
    STAT_SET_BOOL("HEIST_STRAND_INTRO_DONE", true)
    STAT_SET_BOOL("HEIST_CUTS_DONE_ORNATE", true)
    STAT_SET_BOOL("HEIST_CUTS_DONE_PRISON", true)
    STAT_SET_BOOL("HEIST_CUTS_DONE_BIOLAB", true)
    STAT_SET_BOOL("HEIST_CUTS_DONE_NARCOTIC", true)
    STAT_SET_BOOL("HEIST_CUTS_DONE_TUTORIAL", true)
    STAT_SET_BOOL("HEIST_AWARD_DONE_PREP", true)
    STAT_SET_BOOL("HEIST_AWARD_BOUGHT_IN", true)
end)

menu.action(UNLOCKS, "Unlock The Contract: Agency", {}, "", function()
    STAT_SET_INT("AWD_CONTRACTOR", 50)
    STAT_SET_INT("AWD_COLD_CALLER", 50)
    STAT_SET_INT("AWD_PRODUCER", 60)
    STAT_SET_INT("FIXERTELEPHONEHITSCOMPL", 10)
    STAT_SET_INT("PAYPHONE_BONUS_KILL_METHOD", 10)
    STAT_SET_INT("FIXER_COUNT", 501)
    STAT_SET_INT("FIXER_SC_VEH_RECOVERED", 501)
    STAT_SET_INT("FIXER_SC_VAL_RECOVERED", 501)
    STAT_SET_INT("FIXER_SC_GANG_TERMINATED", 501)
    STAT_SET_INT("FIXER_SC_VIP_RESCUED", 501)
    STAT_SET_INT("FIXER_SC_ASSETS_PROTECTED", 501)
    STAT_SET_INT("FIXER_SC_EQ_DESTROYED", 501)
    STAT_SET_INT("FIXER_EARNINGS", 300000)
    STAT_SET_BOOL("AWD_TEEING_OFF", true)
    STAT_SET_BOOL("AWD_PARTY_NIGHT", true)
    STAT_SET_BOOL("AWD_BILLIONAIRE_GAMES", true)
    STAT_SET_BOOL("AWD_HOOD_PASS", true)
    STAT_SET_BOOL("AWD_STUDIO_TOUR", true)
    STAT_SET_BOOL("AWD_DONT_MESS_DRE", true)
    STAT_SET_BOOL("AWD_BACKUP", true)
    STAT_SET_BOOL("AWD_SHORTFRANK_1", true)
    STAT_SET_BOOL("AWD_SHORTFRANK_2", true)
    STAT_SET_BOOL("AWD_SHORTFRANK_3", true)
    STAT_SET_BOOL("AWD_CONTR_KILLER", true)
    STAT_SET_BOOL("AWD_DOGS_BEST_FRIEND", true)
    STAT_SET_BOOL("AWD_MUSIC_STUDIO", true)
    STAT_SET_BOOL("AWD_SHORTLAMAR_1", true)
    STAT_SET_BOOL("AWD_SHORTLAMAR_2", true)
    STAT_SET_BOOL("AWD_SHORTLAMAR_3", true)
    STAT_SET_BOOL("BS_FRANKLIN_DIALOGUE_0", true)
    STAT_SET_BOOL("BS_FRANKLIN_DIALOGUE_1", true)
    STAT_SET_BOOL("BS_FRANKLIN_DIALOGUE_2", true)
    STAT_SET_BOOL("BS_IMANI_D_APP_SETUP", true)
    STAT_SET_BOOL("BS_IMANI_D_APP_STRAND", true)
    STAT_SET_BOOL("BS_IMANI_D_APP_PARTY", true)
    STAT_SET_BOOL("BS_IMANI_D_APP_PARTY_2", true)
    STAT_SET_BOOL("BS_IMANI_D_APP_PARTY_F", true)
    STAT_SET_BOOL("BS_IMANI_D_APP_BILL", true)
    STAT_SET_BOOL("BS_IMANI_D_APP_BILL_2", true)
    STAT_SET_BOOL("BS_IMANI_D_APP_BILL_F", true)
    STAT_SET_BOOL("BS_IMANI_D_APP_HOOD", true)
    STAT_SET_BOOL("BS_IMANI_D_APP_HOOD_2", true)
    STAT_SET_BOOL("BS_IMANI_D_APP_HOOD_F", true)
end)

menu.action(UNLOCKS, "Unlock Taxi Missions", {}, "", function()
    SET_INT_TUNABLE_GLOBAL("XM22_TAXI_DRIVER_ENABLE", 1)
end)

menu.action(UNLOCKS, "Unlock All Contacts", {}, "", function()
    STAT_SET_INT("FM_ACT_PHN", -1)
    STAT_SET_INT("FM_VEH_TX1", -1)
    STAT_SET_INT("FM_CUT_DONE", -1)
    STAT_SET_INT("FM_CUT_DONE_2", -1)

    for i = 2, 9 do
        STAT_SET_INT("FM_ACT_PH" .. i, -1)
    end
end)

menu.action(UNLOCKS, "Enable Christmas Tunables", {}, "", function(); end)
BypassXMASTunables = {
    memory.tunable_offset("DISABLE_SNOWBALLS"),
    memory.tunable_offset("ENABLE_CLEAR_STRUCT_ON_TRAN_FAIL"),
    memory.tunable_offset("MAX_NUMBER_OF_SNOWBALLS"),
    memory.tunable_offset("PICK_UP_NUMBER_OF_SNOWBALLS"),
}
menu.toggle_loop(UNLOCKS, "Bypass Christmas Clothing", {}, "You must keep this feature enabled in order to wear it!", function()
    SET_PACKED_INT_GLOBAL(BypassXMASTunables[1], BypassXMASTunables[2], 0)
    SET_PACKED_INT_GLOBAL(BypassXMASTunables[3], BypassXMASTunables[4], 7)
end)

menu.action(UNLOCKS, "Unlock Christmas Liveries", {}, "", function()
    for i = 1, 20 do
        STAT_SET_INT("MPPLY_XMASLIVERIES" .. i, -1)
    end
end)

menu.action(UNLOCKS, "Unlock Christmas Content", {}, "", function()
    SET_PACKED_INT_TUNABLE_GLOBAL("DISABLE_SNOWBALLS", "PICK_UP_NUMBER_OF_SNOWBALLS", 1)
    SET_PACKED_INT_TUNABLE_GLOBAL("TOGGLE_CHRISTMAS_EVE_GIFT", "TOGGLE_NEW_YEARS_DAY_GIFT", 1)
    SET_PACKED_INT_TUNABLE_GLOBAL("XMAS2015_VEHICLE", "XMAS2015_MASKS", 1)
    SET_PACKED_INT_TUNABLE_GLOBAL("TOGGLE_2015_CHRISTMAS_EVE_GIFT", "TOGGLE_2015_CHRISTMAS_DAY_GIFT", 1)
    SET_PACKED_INT_TUNABLE_GLOBAL("TOGGLE_2016_CHRISTMAS_EVE_GIFT", "TOGGLE_2016_CHRISTMAS_DAY_GIFT", 1)
    SET_PACKED_INT_TUNABLE_GLOBAL(1840129338, -495986083, 1)
    SET_PACKED_INT_TUNABLE_GLOBAL(-101086705, "TOGGLE_2017_CHRISTMAS_DAY_GIFT", 1)
    SET_PACKED_INT_TUNABLE_GLOBAL("XMASDAYGIFT2018_CAR", "XMASDAYGIFT2018_CAR2", 1)
    SET_PACKED_INT_TUNABLE_GLOBAL("TOGGLE_2018_CHRISTMAS_EVE_GIFT", "TOGGLE_2018_CHRISTMAS_DAY_GIFT", 1)
    SET_PACKED_INT_TUNABLE_GLOBAL("TOGGLE_2019_CHRISTMAS_EVE_GIFT", "TOGGLE_2019_CHRISTMAS_DAY_GIFT", 1)
    SET_PACKED_INT_TUNABLE_GLOBAL("TOGGLE_2021_CHRISTMAS_GIFT", "TOGGLE_2021_NEW_YEARS_GIFT", 1)
    SET_PACKED_INT_TUNABLE_GLOBAL("XMASGIFTS2022", "NEWYEARSGIFTS2022", 1)
    SET_INT_TUNABLE_GLOBAL("TOGGLE_XMAS_CONTENT", 1)
    SET_INT_TUNABLE_GLOBAL("TOGGLE_GIFT_TO_PLAYER_WHEN_LOGGING_ON", 1)
    SET_INT_TUNABLE_GLOBAL("XMAS2015_PYJAMAS", 1)
    SET_INT_TUNABLE_GLOBAL("CHRISTMAS2016_CLOTHING", 1)
    SET_INT_TUNABLE_GLOBAL("CHRISTMAS2017_CLOTHING", 1)
    SET_INT_TUNABLE_GLOBAL("NEW_BH_VEHICLE_TEXT", 1)
    SET_INT_TUNABLE_GLOBAL("TOGGLE_2020_CHRISTMAS_DAY_GIFT", 1)
end)
IndependenceTunables = {
    memory.tunable_offset("INDEPENDENCE_DAY_DEACTIVATE_FIREWORKS_LAUNCHER"),
    memory.tunable_offset("TOGGLE_ACTIVATE_MONSTER_TRUCK"),
    memory.tunable_offset("UNLOCKINDEPENDENCE_BEER_HAT_1"),
    memory.tunable_offset("UNLOCKINDEPENDENCE_STATUE_HAPPINESS_SHIRT"),
    memory.tunable_offset("TOGGLE_ACTIVATE_INDEPENDENCE_PACK"),
}
menu.toggle_loop(UNLOCKS, "Unlocks Independence's Day", {}, "Note: You may need to keep activating to use some of Independence Day's contents.", function()
    SET_PACKED_INT_GLOBAL(IndependenceTunables[1], IndependenceTunables[2], 1)
    SET_PACKED_INT_GLOBAL(IndependenceTunables[3], IndependenceTunables[4], 1)
    SET_INT_GLOBAL(262145 + IndependenceTunables[5], 1)
end)

menu.action(UNLOCKS, TRANSLATE("Unlocks Valentine's Day"), {}, "", function()
    SET_PACKED_INT_TUNABLE_GLOBAL("TURN_ON_VALENTINE_WEAPON", "TURN_ON_VALENTINE_CLOTHING", 1)
    SET_PACKED_INT_TUNABLE_GLOBAL("TURN_ON_VALENTINE_2016_CLOTHING", "TURN_ON_VALENTINE_2016_VEHICLE", 1)
    SET_INT_TUNABLE_GLOBAL("TURN_ON_VALENTINES_EVENT", 1)
end)

menu.action(UNLOCKS, "Unlock Lots of Hats And Shirts", {}, "500+ unlocks are included, try and see how many clothes would be unlocked.", function()
    SET_PACKED_INT_TUNABLE_GLOBAL("DLC_SHIRT_MELTDOWN", "DLC_SHIRT_CAPOLAVORO", 1)
    SET_PACKED_INT_TUNABLE_GLOBAL("AWARD_LOW_HATS_MAGNETICS_SCRIPT", "AWARD_LOW_TSHIRT_VAMPIRES_ON_THE_BEACH", 1)
    SET_PACKED_INT_TUNABLE_GLOBAL("ACCOUNTANTSHIRTEVENT", "CRESTTSHIRTEVENT", 1)
    SET_PACKED_INT_TUNABLE_GLOBAL("AWARD_JUMPSUIT_WHITE", "AWARD_JUMPSUIT_SILVER", 1)
    SET_PACKED_INT_TUNABLE_GLOBAL("TSHIRT_WESTERN_BIG_LOGO_WHITE", 310744591, 1)
    SET_PACKED_INT_TUNABLE_GLOBAL("AWARD_BLACK_AMMUNATION_CAP", "AWARD_RSTAR_LOGO_WHITE", 1)
    SET_PACKED_INT_TUNABLE_GLOBAL("AWARD_EMOTION_983_TSHIRT", "AWARD_FAKE_VAPID_TSHIRT", 1)
    SET_PACKED_INT_TUNABLE_GLOBAL("MAISONETTE_LOS_SANTOS_TSHIRT", "TONYS_FUN_HOUSE_TSHIRT", 1)
    SET_PACKED_INT_TUNABLE_GLOBAL("AWARD_LS_UR", "AWARD_BLAINE_COUNTY_RADIO", 1)
    SET_PACKED_INT_TUNABLE_GLOBAL(-726113206, -1910486921, 1)
    SET_PACKED_INT_TUNABLE_GLOBAL(-1344369866, 1799248495, 1)
    SET_PACKED_INT_TUNABLE_GLOBAL(760292630, 1007326524, 1)
    SET_PACKED_INT_TUNABLE_GLOBAL("HATS_ISLAND_HEIST_EVENT_HAT_1", "HATS_ISLAND_HEIST_EVENT_HAT_5", 1)
    SET_PACKED_INT_TUNABLE_GLOBAL("FIXER_LOGIN_DJ_POOH_ORANGE", "FIXER_LOGIN_DJ_POOH_BLUE", 1)
    SET_INT_TUNABLE_GLOBAL("ENABLE_RACE_CREATOR_JUBILEE", 1)

    SET_INT_TUNABLE_GLOBAL("KIFFLOMTEE_LOGINAWARD", 1) -- Kifflom Tee

    for i = 31768, 32273 do
        SET_PACKED_STAT_BOOL_CODE(i, true)
    end
    
    SET_PACKED_STAT_BOOL_CODE(15408, true) -- Black Shrewsbury Cap
    SET_PACKED_STAT_BOOL_CODE(34510, true) -- Glow Believe Backwards Cap
    SET_PACKED_STAT_BOOL_CODE(34509, true) -- Black Believe Backwards Cap
    SET_PACKED_STAT_BOOL_CODE(34508, true) -- Gray Believe Backwards Cap
    SET_PACKED_STAT_BOOL_CODE(34375, true) -- Black LD Organics Forwards Cap
    SET_PACKED_STAT_BOOL_CODE(27087, true) -- Unicorn
    SET_PACKED_STAT_BOOL_CODE(34372, true) -- Horror Pumpkin
    SET_PACKED_STAT_BOOL_CODE(27088, true) -- Gingerbread
    SET_PACKED_STAT_BOOL_CODE(34378, true) -- Junk Energy Drink Chute Bag
    SET_PACKED_STAT_BOOL_CODE(32275, true) -- Circoloco Tee
    SET_PACKED_STAT_BOOL_CODE(32316, true) -- Marathon Hoodie
    SET_PACKED_STAT_BOOL_CODE(34507, true) -- White UFO Boxer Shorts
    SET_PACKED_STAT_BOOL_CODE(34506, true) -- Green UFO Boxer Shorts
    SET_PACKED_STAT_BOOL_CODE(89, true) -- Rockstar V Neck
    SET_PACKED_STAT_BOOL_CODE(87, true) -- Red Skull V Neck 
    SET_PACKED_STAT_BOOL_CODE(36809, true) -- All Type of 'Nemesis' Tees
    SET_PACKED_STAT_BOOL_CODE(22176, true) -- White Solomun Tee
    SET_PACKED_STAT_BOOL_CODE(22192, true) -- Tale Of Us Black Box Tee
    SET_PACKED_STAT_BOOL_CODE(16008, true) -- White Dixon Repeated Logo Tee
    SET_PACKED_STAT_BOOL_CODE(16009, true) -- The Black Madonna Star Tee
    SET_PACKED_STAT_BOOL_CODE(22172, true) -- Black Solomun Yellow Logo Tee
    SET_PACKED_STAT_BOOL_CODE(22170, true) -- Black Tale Of Us Emb. Tee
    SET_PACKED_STAT_BOOL_CODE(22162, true) -- Black Dixon Wilderness Tee
    SET_PACKED_STAT_BOOL_CODE(22150, true) -- Black The Black Madonna Emb. Tee
    SET_PACKED_STAT_BOOL_CODE(30702, true) -- Blue Keinemusik Tee
    SET_PACKED_STAT_BOOL_CODE(30701, true) -- Moodymann Tee
    SET_PACKED_STAT_BOOL_CODE(30699, true) -- Palms Trax LS Tee
    SET_PACKED_STAT_BOOL_CODE(34380, true) -- Pumpkin Tee 
    SET_PACKED_STAT_BOOL_CODE(3613, true) -- Elitas T-shirt
    SET_PACKED_STAT_BOOL_CODE(3781, true) -- Elite Lousy T-shirt
    SET_PACKED_STAT_BOOL_CODE(3780, true) -- Elite Challenge T-Shirt
    SET_PACKED_STAT_BOOL_CODE(3779, true) -- Showroom T-shirt
    SET_PACKED_STAT_BOOL_CODE(3778, true) -- Shot Caller T-shirt
    SET_PACKED_STAT_BOOL_CODE(3777, true) -- One Man Army T-shirt
    SET_PACKED_STAT_BOOL_CODE(3776, true) -- Psycho Killer T-shirt
    SET_PACKED_STAT_BOOL_CODE(3775, true) -- Decorated T-shirt
    SET_PACKED_STAT_BOOL_CODE(3774, true) -- Can't Touch This T-shirt
    SET_PACKED_STAT_BOOL_CODE(3773, true) -- Asshole T-shirt
    SET_PACKED_STAT_BOOL_CODE(3771, true) -- For Hire T-shirt
    SET_PACKED_STAT_BOOL_CODE(3770, true) -- Death Defying T-shirt
    SET_PACKED_STAT_BOOL_CODE(113, true) -- I Heart LC T-shirt
    SET_PACKED_STAT_BOOL_CODE(7551, true) -- DCTL T-Shirt
    SET_PACKED_STAT_BOOL_CODE(9374, true) -- R* Crosswalk Tee
    SET_PACKED_STAT_BOOL_CODE(9385, true) -- Crosswalk Tee
    SET_PACKED_STAT_BOOL_CODE(15402, true) -- White Ammu-Nation Tee
    SET_PACKED_STAT_BOOL_CODE(15392, true) -- Black Coil Hoodie
end)

menu.action(UNLOCKS, "Unlock Sasquatch Outfit", {}, "", function()
    SET_INT_TUNABLE_GLOBAL(-1966279346, 1)
end)

menu.action(UNLOCKS, "Unlock 'Don't Cross the Line Tee'", {}, "", function()
    STAT_SET_INT("DCTL_WINS", 500)
    STAT_SET_INT("DCTL_PLAY_COUNT", 750)
end)

menu.action(UNLOCKS, "Unlock Some Tattoos", {}, "", function()

    STAT_SET_INT("AWD_CAR_BOMBS_ENEMY_KILLS", 25) -- Trust No One
    STAT_SET_INT("AWD_HOLD_UP_SHOPS", 20) -- Clown, Clown and Gun, Clown Dual Wield & Clown Dual Wield Dollar
    STAT_SET_INT("AWD_FMBBETWIN", 50000) -- Hustler
    STAT_SET_INT("AWD_100_HEADSHOTS", 500) -- Skull
    STAT_SET_INT("AWD_FM_DM_WINS", 50) -- Burning Heart
    STAT_SET_INT("AWD_RACES_WON", 50) -- Racing Brunette
    STAT_SET_INT("AWD_FMREVENGEKILLSDM", 50) -- Dragon and Dagger
    STAT_SET_INT("AWD_FM_DM_TOTALKILLS", 500) -- Melting Skull
    STAT_SET_INT("LAP_DANCED_BOUGHT", 25) -- Hottie
    STAT_SET_INT("AWD_FM_TDM_MVP", 50) -- Grim Reaper
    STAT_SET_INT("AWD_FMKILLBOUNTY", 25) -- Skull and Sword
    STAT_SET_INT("SNIPERRFL_ENEMY_KILLS", 100) -- Broken Skull
    STAT_SET_BOOL("AWD_FMWINEVERYGAMEMODE", true) -- Angel
    STAT_SET_BOOL("AWD_FMMOSTKILLSSURVIVE", true) -- The Wages of Sin
    STAT_SET_BOOL("AWD_FMRACEWORLDRECHOLDER", true) -- Racing Blonde
    STAT_SET_BOOL("AWD_FMATTGANGHQ", true) -- Grim Reaper Smoking Gun
    STAT_SET_BOOL("AWD_FMKILL3ANDWINGTARACE", true) -- Ride or Die
    STAT_SET_BOOL("AWD_FMKILLSTREAKSDM", true) -- Flaming Skull

    STAT_SET_INT("KILLS_PLAYERS", 250) -- Blank Scroll
    STAT_SET_INT("KILLS_PLAYERS", 500) -- Embellished Scroll
    STAT_SET_INT("KILLS_PLAYERS", 1000) -- Seven Deadly Sins
    STAT_SET_BOOL("AWD_FMFULLYMODDEDCAR", true) -- Los Santos Customs

    SET_PACKED_STAT_BOOL_CODE(15887, true) -- Lucky 7s Tattoo - Male
    SET_PACKED_STAT_BOOL_CODE(15894, true) -- The Royals Tattoo - Male
    SET_PACKED_STAT_BOOL_CODE(15898, true) -- Lucky 7s Tattoo - Female
    SET_PACKED_STAT_BOOL_CODE(15905, true) -- The Royals Tattoo - Female
end)

menu.action(UNLOCKS, "Unlock Alien Tatto (Illuminati)", {}, "Change your session to apply!", function()
    SET_PACKED_STAT_BOOL_CODE(15737, true) -- Male
    SET_PACKED_STAT_BOOL_CODE(15748, true) -- Female
end)

menu.action(UNLOCKS, "Unlock Some Trade Prices", {}, "", function()
    STAT_SET_INT("GANGOPS_FLOW_BITSET_MISS0", -1)
    STAT_SET_INT("LFETIME_HANGAR_BUY_UNDETAK", 42)
    STAT_SET_INT("LFETIME_HANGAR_BUY_COMPLET", 42)
    STAT_SET_INT("AT_FLOW_IMPEXP_NUM", 32)
    STAT_SET_INT("AT_FLOW_VEHICLE_BS", -1)
    STAT_SET_INT("WVM_FLOW_VEHICLE_BS", -1)
    STAT_SET_INT("H3_BOARD_DIALOGUE0", -1)
    STAT_SET_INT("H3_BOARD_DIALOGUE1", -1)
    STAT_SET_INT("H3_BOARD_DIALOGUE2", -1)
    STAT_SET_INT("H3_VEHICLESUSED", -1)
    STAT_SET_INT("WAM_FLOW_VEHICLE_BS", -1)
    STAT_SET_BOOL("HELP_VETO", true)
    STAT_SET_BOOL("HELP_VETO2", true)
    STAT_SET_BOOL("HELP_ITALIRSX", true)
    STAT_SET_BOOL("HELP_BRIOSO2", true)
    STAT_SET_BOOL("HELP_MANCHEZ2", true)
    STAT_SET_BOOL("HELP_SLAMTRUCK", true)
    STAT_SET_BOOL("HELP_VETIR", true)
    STAT_SET_BOOL("HELP_SQUADDIE", true)
    STAT_SET_BOOL("HELP_DINGY5", true)
    STAT_SET_BOOL("HELP_VERUS", true)
    STAT_SET_BOOL("HELP_WEEVIL", true)
    STAT_SET_BOOL("HELP_VEHUNTUNER", true)
    STAT_SET_BOOL("FIXER_VEH_HELP", true)
    STAT_SET_BOOL("HELP_DOMINATOR7", true)
    STAT_SET_BOOL("HELP_JESTER4", true)
    STAT_SET_BOOL("HELP_FUTO2", true)
    STAT_SET_BOOL("HELP_DOMINATOR8", true)
    STAT_SET_BOOL("HELP_PREVION", true)
    STAT_SET_BOOL("HELP_GROWLER", true)
    STAT_SET_BOOL("HELP_COMET6", true)
    STAT_SET_BOOL("HELP_VECTRE", true)
    STAT_SET_BOOL("HELP_SULTAN3", true)
    STAT_SET_BOOL("HELP_CYPHER", true)
end)

menu.action(UNLOCKS, "Unlock Taxi Livery", {}, "a.k.a: 'Downtown Cab Co.' livery", function()
    STAT_SET_INT("AWD_TAXIDRIVER", 100)
end)

menu.action(UNLOCKS, "Unlock The Shotaro", {}, "", function()
    STAT_SET_INT("CRDEADLINE", -1)
end)

menu.action(UNLOCKS, "Unlock Service Carbine", {}, "", function()
    SET_INT_TUNABLE_GLOBAL("UNLOCK_SERVICE_CARBINE_FOR_PURCHASE", 1)
end)

menu.action(UNLOCKS, "Unlock Stone Hatchet Challenge", {}, "Change your session to apply!", function()
    STAT_SET_MASKED_INT("MP_NGDLCPSTAT_INT0", 5, 16)
    STAT_SET_BOOL("MPPLY_MELEECHLENGECOMPLETED", true)
end)

menu.action(UNLOCKS, "Unlock Double Action Revolver", {}, "Change your session to apply!", function()
    STAT_SET_MASKED_INT("GANGOPSPSTAT_INT102", 3, 24) 
    STAT_SET_BOOL("MPPLY_HEADSHOTCHLENGECOMPLETED", true)
end)

menu.action(UNLOCKS, "Unlock Navy Revolver", {}, "", function()
    STAT_SET_BOOL("MPPLY_NAVYREVOLVERCOMPLETED", true)
end)

menu.action(UNLOCKS, "Unlock Ceramic Pistol", {}, "", function()
    STAT_SET_INT("CAS_HEIST_FLOW", 4096)
end)

menu.action(UNLOCKS, "Unlock Up-N-Atomizer", {}, "", function()
    SET_INT_GLOBAL(104496, 90) -- freemode.c
end)

menu.action(UNLOCKS, "Unlock Vanilla Unicorn Award", {}, "", function()
for i = 0, 25, 5 do
    STAT_SET_INT("LAP_DANCED_BOUGHT", i)
end
STAT_SET_INT("PROSTITUTES_FREQUENTED", 1000)
end)

menu.action(UNLOCKS, "Unlock Returning Player Bonus", {}, "", function()
SET_INT_GLOBAL(104497, 1) -- freemode.c
SET_INT_GLOBAL(152848, 2) -- freemode.c
end)

menu.toggle_loop(UNLOCKS, "Auto Refill Snacks & Armours", {}, "", function()
    STAT_SET_INT("NO_BOUGHT_YUM_SNACKS", 30)
    STAT_SET_INT("NO_BOUGHT_HEALTH_SNACKS", 15)
    STAT_SET_INT("NO_BOUGHT_EPIC_SNACKS", 15)
    STAT_SET_INT("NUMBER_OF_ORANGE_BOUGHT", 10)
    STAT_SET_INT("NUMBER_OF_BOURGE_BOUGHT", 10)
    STAT_SET_INT("CIGARETTES_BOUGHT", 10)

    for i = 1, 5 do
        STAT_SET_INT("MP_CHAR_ARMOUR_" .. i .. "_COUNT", 10)
    end
end)

menu.action(UNLOCKS, "7 Years GTA Online Playtime", {}, "Make your account look like you've played GTA Online for 7 years.", function()
    STAT_SET_INT("MP_PLAYING_TIME", 0)
    STAT_INCREMENT("MP_PLAYING_TIME", 60 * 60 * 24 * 365 * 7 * 1000)
    FORCE_CLOUD_SAVE()
end)

menu.divider(menu.my_root(), "Credits")

local INFO = menu.list(menu.my_root(), "This script was made by", { "nyscriptcredits" }, "See all creators.", function() end)

menu.divider(INFO, "Script by :")
menu.hyperlink(INFO, "ny", "https://discord.com/users/433382991876849684", "Our Discord Profiles :)")
menu.hyperlink(INFO, "missb4by", "https://discord.com/users/1147960867665756212", "Our Discord Profiles :)")
menu.divider(INFO, "Heist Control")
menu.hyperlink(INFO, "IceDoomfist", "https://discord.com/users/866632873925672960", "IceDoomfist Discord profile (Heist Control)")
menu.divider(INFO, "Business Manager")
menu.hyperlink(INFO, "GitHub", "https://github.com/calamity-inc/MusinessBanager", "Access Business Manager source on GitHub through this link.")
menu.divider(INFO, "Random Events")
menu.hyperlink(INFO, "LordByron_", "https://discord.com/users/575619654324846613", "LordByron_ Discord profile (Random Events)")

menu.divider(menu.my_root(), "V1.1") -- release version
