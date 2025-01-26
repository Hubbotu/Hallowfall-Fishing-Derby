-- Addon Name and Namespace
local addonName, ns = ...

-- Localization Table
local L = {
    ['Glimmerpool'] = GetLocale() == "ruRU" and 'Мерцающий омут' or 'Glimmerpool',
    ['Blood in the Water'] = GetLocale() == "ruRU" and 'Кровь в воде' or 'Blood in the Water',
    ['Bloody Perch Swarm'] = GetLocale() == "ruRU" and 'Косяк кровоокуня' or 'Bloody Perch Swarm',
    ['Calm Surfacing Ripple'] = GetLocale() == "ruRU" and 'Тихая рябь' or 'Calm Surfacing Ripple',
    ['Festering Rotpool'] = GetLocale() == "ruRU" and 'Пагубный омут гнили' or 'Festering Rotpool',
    ['Swarm of Slum Sharks'] = GetLocale() == "ruRU" and 'Стая трущобных акул' or 'Swarm of Slum Sharks',
    ['Infused Ichor Spill'] = GetLocale() == "ruRU" and 'Пятно насыщенного гноя' or 'Infused Ichor Spill',
    ['River Bass Pool'] = GetLocale() == "ruRU" and 'Косяк речного окуня' or 'River Bass Pool',
    ['Anglerseeker Torrent'] = GetLocale() == "ruRU" and 'Поток с ловцами удильщиков' or 'Anglerseeker Torrent',
    ['Stargazer Swarm'] = GetLocale() == "ruRU" and 'Косяк звездочета' or 'Stargazer Swarm',
    ['Azj-Kahet Water'] = GetLocale() == "ruRU" and 'Воды Аз-Кахета' or 'Azj-Kahet Water',
    ['All Pools'] = GetLocale() == "ruRU" and 'Все лунки' or 'All Pools',
    ['Royal Ripple'] = GetLocale() == "ruRU" and 'Королевская рябь' or 'Royal Ripple',
    ['Any Water'] = GetLocale() == "ruRU" and 'Любая вода' or 'Any Water',
    ['Isle of Dorn'] = GetLocale() == "ruRU" and 'Остров Дорн' or 'Isle of Dorn',
    ['The Ringing Deeps'] = GetLocale() == "ruRU" and 'Гулкие глубины' or 'The Ringing Deeps',
    ['Hallowfall'] = GetLocale() == "ruRU" and 'Тайносводье' or 'Hallowfall',
    ['Azj-Kahet'] = GetLocale() == "ruRU" and 'Аз-Кахет' or 'Azj-Kahet',
    -- New Localized Phrases
    ['Throw 10 Whispering Stargazer in water for 5 min buff'] = GetLocale() == "ruRU" and 'Бросьте в воду 10 Шепчущих звездочетов чтобы получить бафф на 5 минут' or 'Throw 10 Whispering Stargazer in water for 5 min buff',
    ['Throw Regal Dottyback in water for buff, so as not to search for pools'] = GetLocale() == "ruRU" and 'Бросьте Монарших псевдохромов в воду для усиления — это проще, чем использовать лунки' or 'Throw Regal Dottyback in water for buff, so as not to search for pools',
    ['Bloody Perch buff increases chance to catch this fish'] = GetLocale() == "ruRU" and 'Бафф от Кровоокуня увеличивает шанс поймать эту рыбу' or 'Bloody Perch buff increases chance to catch this fish',
    ['Use Specular Rainbowfish Lure for increased chance'] = GetLocale() == "ruRU" and 'Используйте Приманка на блестящую радужную рыбку, чтобы увеличить шанс' or 'Use Specular Rainbowfish Lure for increased chance',
    ['Hallowfall Fishing Derby'] = GetLocale() == "ruRU" and 'Рыбоборье в Тайносводье' or 'Hallowfall Fishing Derby',    
    ['MISSING FISH'] = GetLocale() == "ruRU" and 'РЫБА НЕ ПОЙМАНА' or 'MISSING FISH',
    ['DONE'] = GetLocale() == "ruRU" and 'ГОТОВО' or 'DONE',
    -- Russian Names for the Fish
    ['Arathor Hammerfish'] = GetLocale() == "ruRU" and 'Араторская рыба-молот' or 'Arathor Hammerfish',
    ['Awoken Coelacanth'] = GetLocale() == "ruRU" and 'Пробужденный целакант' or 'Awoken Coelacanth',
    ['Bismuth Bitterling'] = GetLocale() == "ruRU" and 'Висмутовый горчак' or 'Bismuth Bitterling',
    ['Bloody Perch'] = GetLocale() == "ruRU" and 'Кровоокунь' or 'Bloody Perch',  
    ['Crystalline Sturgeon'] = GetLocale() == "ruRU" and 'Кристаллический осетр' or 'Crystalline Sturgeon',
    ['Cursed Ghoulfish'] = GetLocale() == "ruRU" and 'Проклятая упырыба' or 'Cursed Ghoulfish',
    ['Dilly-Dally Dace'] = GetLocale() == "ruRU" and 'Сонливый елец' or 'Dilly-Dally Dace',
    ['Dornish Pike'] = GetLocale() == "ruRU" and 'Дорнийская щука' or 'Dornish Pike',
    ['Goldengill Trout'] = GetLocale() == "ruRU" and 'Златожаберка' or 'Goldengill Trout',
    ['Kaheti Slum Shark'] = GetLocale() == "ruRU" and 'Кахетская трущобная акула' or 'Kaheti Slum Shark',
    ['Nibbling Minnow'] = GetLocale() == "ruRU" and 'Кусачая минога' or 'Nibbling Minnow',
    ['Pale Huskfish'] = GetLocale() == "ruRU" and 'Бледная пусторыба' or 'Pale Huskfish',
    ['Queen\'s Lurefish'] = GetLocale() == "ruRU" and 'Королевская чертовка' or 'Queen\'s Lurefish',
    ['Quiet River Bass'] = GetLocale() == "ruRU" and 'Бесшумный речной окунь' or 'Quiet River Bass',
    ['Regal Dottyback'] = GetLocale() == "ruRU" and 'Монарший псевдохром' or 'Regal Dottyback',
    ['Roaring Anglerseeker'] = GetLocale() == "ruRU" and 'Ревущий ловец удильщиков' or 'Roaring Anglerseeker',
    ['Sanguine Dogfish'] = GetLocale() == "ruRU" and 'Кровавый катран' or 'Sanguine Dogfish',
    ['Specular Rainbowfish'] = GetLocale() == "ruRU" and 'Блестящая радужная рыбка' or 'Specular Rainbowfish',
    ['Spiked Sea Raven'] = GetLocale() == "ruRU" and 'Колючий морской ворон' or 'Spiked Sea Raven',
    ['Whispering Stargazer'] = GetLocale() == "ruRU" and 'Шепчущий звездочет' or 'Whispering Stargazer',
}

-- Create Main Frame
local frame = CreateFrame("Frame", addonName, UIParent, BackdropTemplateMixin and "BackdropTemplate")
frame:SetSize(358, 400)
frame:SetPoint("CENTER")
frame:SetMovable(true)
frame:EnableMouse(true)
frame:RegisterForDrag("LeftButton")
frame:SetScript("OnDragStart", function(self) self:StartMoving() end)
frame:SetScript("OnDragStop", function(self) self:StopMovingOrSizing() end)

-- Add Background and Border using BackdropTemplateMixin
frame:SetBackdrop({
    bgFile = "Interface\\DialogFrame\\UI-DialogBox-Background",
    edgeFile = "Interface\\DialogFrame\\UI-DialogBox-Border",
    tile = true,
    tileSize = 32,
    edgeSize = 32,
    insets = { left = 8, right = 8, top = 8, bottom = 8 }
})
frame:SetBackdropColor(0, 0, 0, 1)

-- Add Title Text
local title = frame:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
title:SetPoint("TOP", frame, "TOP", 0, -10)
title:SetText(L['Hallowfall Fishing Derby'])

-- Create Scroll Frame for Content
local scrollFrame = CreateFrame("ScrollFrame", nil, frame, "UIPanelScrollFrameTemplate")
scrollFrame:SetPoint("TOPLEFT", frame, "TOPLEFT", 15, -40)
scrollFrame:SetPoint("BOTTOMRIGHT", frame, "BOTTOMRIGHT", -35, 15)

-- Create Content Frame
local content = CreateFrame("Frame", nil, scrollFrame)
content:SetSize(1, 1) -- Will dynamically resize
scrollFrame:SetScrollChild(content)

-- Add Text Display
local displayText = content:CreateFontString(nil, "ARTWORK", "GameFontHighlightSmall")
displayText:SetPoint("TOPLEFT", content, "TOPLEFT", 0, 0)
displayText:SetJustifyH("LEFT")
displayText:SetJustifyV("TOP")
displayText:SetWidth(340) -- Matches the scrollable width
displayText:SetText("Loading...")

-- Constants for Zones and Pools
local ISLE_OF_DORN = L['Isle of Dorn']
local RINGING_DEEP = L['The Ringing Deeps']
local HALLOWFALL = L['Hallowfall']
local AZJ_KAHET = L['Azj-Kahet']

local ZONE_IDS = {
    [2248] = ISLE_OF_DORN,
    [2339] = ISLE_OF_DORN,
    [2214] = RINGING_DEEP,
    [2215] = HALLOWFALL,
    [2255] = AZJ_KAHET,
    [2213] = AZJ_KAHET,
    [2256] = AZJ_KAHET
}

local ZONE_POOLS = {
    [ISLE_OF_DORN] = {L['Glimmerpool'], L['Calm Surfacing Ripple'], L['River Bass Pool'], L['Bloody Perch Swarm'], L['Festering Rotpool'], L['Stargazer Swarm'], L['All Pools']},
    [RINGING_DEEP] = {L['Glimmerpool'], L['Calm Surfacing Ripple'], L['River Bass Pool'], L['Anglerseeker Torrent'], L['All Pools']},
    [HALLOWFALL] = {L['Glimmerpool'], L['Calm Surfacing Ripple'], L['Bloody Perch Swarm'], L['Blood in the Water'], L['Swarm of Slum Sharks'], L['Infused Ichor Spill'], L['Anglerseeker Torrent'], L['Royal Ripple'], L['All Pools']},
    [AZJ_KAHET] = {L['Glimmerpool'], L['Calm Surfacing Ripple'], L['Swarm of Slum Sharks'], L['Infused Ichor Spill'], L['Royal Ripple'], L['Azj-Kahet Water'], L['All Pools']}
}

local fish = {
    {name = L['Arathor Hammerfish'], questId=82928, zones={HALLOWFALL}, pools={L['Blood in the Water']}, notes='', caught = false},
    {name = L['Awoken Coelacanth'], questId=82936, zones={AZJ_KAHET}, pools={L['Azj-Kahet Water']}, notes=L['Throw 10 Whispering Stargazer in water for 5 min buff'], caught = false},
    {name = L['Bismuth Bitterling'], questId=82920, zones={ISLE_OF_DORN, RINGING_DEEP}, pools={L['Glimmerpool']}, notes='', caught = false},
    {name = L['Bloody Perch'], questId=82918, zones={ISLE_OF_DORN, RINGING_DEEP, HALLOWFALL}, pools={L['Blood in the Water'], L['Bloody Perch Swarm'], L['Calm Surfacing Ripple'], L['Festering Rotpool'], L['Swarm of Slum Sharks']}, notes='', caught = false},
    {name = L['Crystalline Sturgeon'], questId=82919, zones={ISLE_OF_DORN, RINGING_DEEP}, pools={L['Glimmerpool']}, notes='', caught = false},
    {name = L['Cursed Ghoulfish'], questId=82935, zones={ISLE_OF_DORN, RINGING_DEEP, HALLOWFALL, AZJ_KAHET}, pools={L['All Pools']}, notes='', caught = false},
    {name = L['Dilly-Dally Dace'], questId=82947, zones={ISLE_OF_DORN, RINGING_DEEP, HALLOWFALL}, pools={L['Blood in the Water'], L['Calm Surfacing Ripple'], L['Festering Rotpool']}, notes='', caught = false},
    {name = L['Dornish Pike'], questId=82926, zones={ISLE_OF_DORN, RINGING_DEEP, HALLOWFALL}, pools={L['Calm Surfacing Ripple']}, notes='', caught = false},
    {name = L['Goldengill Trout'], questId=82923, zones={ISLE_OF_DORN, RINGING_DEEP, HALLOWFALL, AZJ_KAHET}, pools={L['Festering Rotpool'], L['Glimmerpool'], L['Infused Ichor Spill']}, notes='', caught = false},
    {name = L['Kaheti Slum Shark'], questId=82930, zones={HALLOWFALL, AZJ_KAHET}, pools={L['Blood in the Water'], L['Swarm of Slum Sharks']}, notes='', caught = false},
    {name = L['Nibbling Minnow'], questId=82921, zones={ISLE_OF_DORN, RINGING_DEEP, HALLOWFALL, AZJ_KAHET}, pools={L['Calm Surfacing Ripple']}, notes='', caught = false},
    {name = L['Pale Huskfish'], questId=82931, zones={AZJ_KAHET, ISLE_OF_DORN}, pools={L['Festering Rotpool'], L['Infused Ichor Spill']}, notes='', caught = false},
    {name = L['Queen\'s Lurefish'], questId=82934, zones={HALLOWFALL, AZJ_KAHET}, pools={L['Royal Ripple'], L['Any Water']}, notes=L['Throw Regal Dottyback in water for buff, so as not to search for pools'], caught = false},
    {name = L['Quiet River Bass'], questId=82925, zones={ISLE_OF_DORN, RINGING_DEEP}, pools={L['Calm Surfacing Ripple'], L['River Bass Pool']}, notes='', caught = false},
    {name = L['Regal Dottyback'], questId=82929, zones={HALLOWFALL, AZJ_KAHET}, pools={L['Royal Ripple']}, notes='', caught = false},
    {name = L['Roaring Anglerseeker'], questId=82927, zones={ISLE_OF_DORN, RINGING_DEEP, HALLOWFALL, AZJ_KAHET}, pools={L['Anglerseeker Torrent']}, notes='', caught = false},
    {name = L['Sanguine Dogfish'], questId=82932, zones={ISLE_OF_DORN, RINGING_DEEP, HALLOWFALL, AZJ_KAHET}, pools={L['Blood in the Water'], L['Bloody Perch Swarm']}, notes=L['Bloody Perch buff increases chance to catch this fish'], caught = false},
    {name = L['Specular Rainbowfish'], questId=82924, zones={ISLE_OF_DORN, RINGING_DEEP}, pools={L['Glimmerpool']}, notes=L['Use Specular Rainbowfish Lure for increased chance'], caught = false},
    {name = L['Spiked Sea Raven'], questId=82933, zones={ISLE_OF_DORN, HALLOWFALL}, pools={L['Anglerseeker Torrent'], L['Calm Surfacing Ripple'], L['Glimmerpool'], L['Stargazer Swarm']}, notes='', caught = false},
    {name = L['Whispering Stargazer'], questId=82922, zones={ISLE_OF_DORN, RINGING_DEEP, HALLOWFALL}, pools={L['Stargazer Swarm']}, notes='', caught = false}
}

-- Update Display Function
local function updateDisplay()
    local text = 'Version 1.7.4\n\n'
    local zones = {}
    local currentZoneID = C_Map.GetBestMapForUnit("player")
    local currentZone = ZONE_IDS[currentZoneID] or 'Unknown Zone'

    -- Organize fish by zone and pool
    for _, f in ipairs(fish) do
        f.caught = C_QuestLog.IsQuestFlaggedCompleted(f.questId)
        for _, zone in ipairs(f.zones) do
            zones[zone] = zones[zone] or {pools = {}, allCaught = true}
            for _, pool in ipairs(f.pools) do
                zones[zone].pools[pool] = zones[zone].pools[pool] or {}
                table.insert(zones[zone].pools[pool], f)
            end
            if not f.caught then
                zones[zone].allCaught = false
            end
        end
    end

    -- Build Output Text
    for zone, data in pairs(zones) do
        if zone == currentZone then
            text = text .. '\n|cff00ff00' .. zone .. '|r\n'
            for pool, fishes in pairs(data.pools) do
                local hasUncaughtFish = false
                for _, f in ipairs(fishes) do
                    if not f.caught then
                        hasUncaughtFish = true
                        break
                    end
                end
                if hasUncaughtFish then
                    text = text .. '    |cffffff00' .. pool .. '|r\n'
                    for _, f in ipairs(fishes) do
                        if not f.caught then
                            text = text .. '        ' .. f.name
                            if f.notes ~= '' then
                                text = text .. ' (' .. f.notes .. ')'
                            end
                            text = text .. '\n'
                        end
                    end
                end
            end
        else
            local status = data.allCaught and '|cff00ff00' .. L['DONE'] .. '|r' or '|cffff0000' .. L['MISSING FISH'] .. '|r'
            text = text .. '|cffffff00' .. zone .. '|r - ' .. status .. '\n'
        end
    end
    displayText:SetText(text)
    content:SetHeight(displayText:GetStringHeight())
end

-- Check Buff and Show/Hide Frame
local SPELL_ID = 456024 -- Replace with the correct Spell ID
local function checkBuffAndDisplayFrame()
    local auraTable = C_UnitAuras.GetPlayerAuraBySpellID(SPELL_ID)
    if auraTable then
        frame:Show()
        updateDisplay()
    else
        frame:Hide()
    end
end

-- Event Handling
frame:RegisterEvent("PLAYER_ENTERING_WORLD")
frame:RegisterEvent("QUEST_LOG_UPDATE")
frame:RegisterEvent("ZONE_CHANGED")
frame:RegisterEvent("ZONE_CHANGED_NEW_AREA")
frame:RegisterEvent("ZONE_CHANGED_INDOORS")
frame:RegisterEvent("UNIT_AURA")
frame:SetScript("OnEvent", function(_, event, unit)
    if event == "UNIT_AURA" and unit == "player" then
        checkBuffAndDisplayFrame()
    elseif event == "PLAYER_ENTERING_WORLD" or event == "QUEST_LOG_UPDATE" or event == "ZONE_CHANGED" or event == "ZONE_CHANGED_NEW_AREA" or event == "ZONE_CHANGED_INDOORS" then
        checkBuffAndDisplayFrame()
    end
end)

-- Initial Buff Check
checkBuffAndDisplayFrame()
