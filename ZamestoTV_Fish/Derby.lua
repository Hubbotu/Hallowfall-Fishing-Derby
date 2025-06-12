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
    ['Throw 10 Whispering Stargazer in water for 5 min buff'] = GetLocale() == "ruRU" and 'Бросьте в воду 10 Шепчущих звездочетов чтобы получить бафф на 5 минут' or 'Throw 10 Whispering Stargazer in water for 5 min buff',
    ['Throw Regal Dottyback in water for buff, so as not to search for pools'] = GetLocale() == "ruRU" and 'Бросьте Монарших псевдохромов в воду для усиления — это проще, чем использовать лунки' or 'Throw Regal Dottyback in water for buff, so as not to search for pools',
    ['Bloody Perch buff increases chance to catch this fish'] = GetLocale() == "ruRU" and 'Бафф от Кровоокуня увеличивает шанс поймать эту рыбу' or 'Bloody Perch buff increases chance to catch this fish',
    ['Use Specular Rainbowfish Lure for increased chance'] = GetLocale() == "ruRU" and 'Используйте Приманка на блестящую радужную рыбку, чтобы увеличить шанс' or 'Use Specular Rainbowfish Lure for increased chance',
    ['Hallowfall Fishing Derby'] = GetLocale() == "ruRU" and 'Рыбоборье в Тайносводье' or 'Hallowfall Fishing Derby',    
    ['DONE'] = GetLocale() == "ruRU" and 'Теперь вы можете альтернативным персонажем выловить из любого косяка, чтобы завершить задание' or 'Now you can fish out of any school with an alternate character to complete the quest',
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

-- Fish item IDs for icons
ns.fishItemIds = {
    ["Bloody Perch"] = 220135,
    ["Crystalline Sturgeon"] = 220136,
    ["Bismuth Bitterling"] = 220137,
    ["Dilly-Dally Dace"] = 220134,
    ["Nibbling Minnow"] = 220138,
    ["Whispering Stargazer"] = 220139,
    ["Goldengill Trout"] = 220533,
    ["Specular Rainbowfish"] = 220141,
    ["Quiet River Bass"] = 220142,
    ["Dornish Pike"] = 220143,
    ["Arathor Hammerfish"] = 220144,
    ["Roaring Anglerseeker"] = 220145,
    ["Regal Dottyback"] = 220146,
    ["Kaheti Slum Shark"] = 220147,
    ["Sanguine Dogfish"] = 220149,
    ["Spiked Sea Raven"] = 220150,
    ["Cursed Ghoulfish"] = 220152,
    ["Queen's Lurefish"] = 220151,
    ["Awoken Coelacanth"] = 220153,
}

-- Quest fish data
ns.questFish = {
    [82778] = {
        {name = L['Nibbling Minnow'], questId=82921, zones={L['Isle of Dorn'], L['The Ringing Deeps'], L['Hallowfall'], L['Azj-Kahet']}, pools={L['Calm Surfacing Ripple']}, notes='', caught = false},
        {name = L['Arathor Hammerfish'], questId=82928, zones={L['Hallowfall']}, pools={L['Blood in the Water']}, notes='', caught = false},
        {name = L['Queen\'s Lurefish'], questId=82934, zones={L['Hallowfall'], L['Azj-Kahet']}, pools={L['Royal Ripple'], L['Any Water']}, notes=L['Throw Regal Dottyback in water for buff, so as not to search for pools'], caught = false}
    },
    [83529] = {
        {name = L['Bismuth Bitterling'], questId=82920, zones={L['Hallowfall']}, zones={L['Isle of Dorn'], L['The Ringing Deeps']}, pools={L['Glimmerpool']}, notes='', caught = false},
        {name = L['Whispering Stargazer'], questId=82922, zones={L['Isle of Dorn'], L['The Ringing Deeps'], L['Hallowfall']}, pools={L['Stargazer Swarm']}, notes='', caught = false},
        {name = L['Regal Dottyback'], questId=82929, zones={L['Hallowfall'], L['Azj-Kahet']}, pools={L['Royal Ripple']}, notes='', caught = false}
    },
    [83530] = {
        {name = L['Bloody Perch'], questId=82918, zones={L['Isle of Dorn'], L['The Ringing Deeps'], L['Hallowfall']}, pools={L['Blood in the Water'], L['Bloody Perch Swarm'], L['Calm Surfacing Ripple'], L['Festering Rotpool'], L['Swarm of Slum Sharks']}, notes='', caught = false},
        {name = L['Roaring Anglerseeker'], questId=82927, zones={L['Isle of Dorn'], L['The Ringing Deeps'], L['Hallowfall'], L['Azj-Kahet']}, pools={L['Anglerseeker Torrent']}, notes='', caught = false},
        {name = L['Spiked Sea Raven'], questId=82933, zones={L['Isle of Dorn'], L['Hallowfall']}, pools={L['Anglerseeker Torrent'], L['Calm Surfacing Ripple'], L['Glimmerpool'], L['Stargazer Swarm']}, notes='', caught = false}
    },
    [83531] = {
        {name = L['Dilly-Dally Dace'], questId=82947, zones={L['Isle of Dorn'], L['The Ringing Deeps'], L['Hallowfall']}, pools={L['Blood in the Water'], L['Calm Surfacing Ripple'], L['Festering Rotpool']}, notes='', caught = false},
        {name = L['Dornish Pike'], questId=82926, zones={L['Isle of Dorn'], L['The Ringing Deeps'], L['Hallowfall']}, pools={L['Calm Surfacing Ripple']}, notes='', caught = false},
        {name = L['Kaheti Slum Shark'], questId=82930, zones={L['Hallowfall'], L['Azj-Kahet']}, pools={L['Blood in the Water'], L['Swarm of Slum Sharks']}, notes='', caught = false}
    },
    [83532] = {
        {name = L['Crystalline Sturgeon'], questId=82919, zones={L['Isle of Dorn'], L['The Ringing Deeps']}, pools={L['Glimmerpool']}, notes='', caught = false},
        {name = L['Specular Rainbowfish'], questId=82924, zones={L['Isle of Dorn'], L['The Ringing Deeps']}, pools={L['Glimmerpool']}, notes=L['Use Specular Rainbowfish Lure for increased chance'], caught = false},
        {name = L['Sanguine Dogfish'], questId=82932, zones={L['Isle of Dorn'], L['The Ringing Deeps'], L['Hallowfall'], L['Azj-Kahet']}, pools={L['Blood in the Water'], L['Bloody Perch Swarm']}, notes=L['Bloody Perch buff increases chance to catch this fish'], caught = false}
    }
}

-- Create Main Frame
local frame = CreateFrame("Frame", addonName, UIParent, BackdropTemplateMixin and "BackdropTemplate")
frame:SetSize(390, 310)
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

-- Table to store fish entry frames for cleanup
local fishFrames = {}

-- Update Display Function
local function updateDisplay()
    -- Clear previous fish entry frames
    for _, fishFrame in ipairs(fishFrames) do
        fishFrame:Hide()
        fishFrame:ClearAllPoints()
        fishFrame = nil
    end
    wipe(fishFrames)

    local offsetY = 0
    local text = 'Version 3.0.6\n\n'
    local activeQuest = nil
    local questIds = {82778, 83529, 83530, 83531, 83532}

    -- Check for active quest
    for _, qid in ipairs(questIds) do
        if C_QuestLog.IsQuestFlaggedCompleted(qid) or C_QuestLog.IsOnQuest(qid) then
            activeQuest = qid
            break
        end
    end

    if not activeQuest then
        local noQuestText = content:CreateFontString(nil, "ARTWORK", "GameFontHighlightSmall")
        noQuestText:SetPoint("TOPLEFT", content, "TOPLEFT", 0, -offsetY)
        noQuestText:SetJustifyH("LEFT")
        noQuestText:SetJustifyV("TOP")
        noQuestText:SetWidth(340)
        noQuestText:SetText(text .. 'No active fishing quest found.\n')
        content:SetHeight(noQuestText:GetStringHeight())
        table.insert(fishFrames, noQuestText)
        return
    end

    -- Get fish for the active quest
    local fishList = ns.questFish[activeQuest]
    local allCaught = true

    -- Update caught status
    for _, f in ipairs(fishList) do
        f.caught = C_QuestLog.IsQuestFlaggedCompleted(f.questId)
        if not f.caught then
            allCaught = false
        end
    end

    -- Build header text
    local headerText = content:CreateFontString(nil, "ARTWORK", "GameFontHighlightSmall")
    headerText:SetPoint("TOPLEFT", content, "TOPLEFT", 0, -offsetY)
    headerText:SetJustifyH("LEFT")
    headerText:SetJustifyV("TOP")
    headerText:SetWidth(340)
    headerText:SetText(text .. 'Active Quest ID: ' .. activeQuest .. '\n\n|cffffff00Fish to Catch:|r\n')
    offsetY = offsetY + headerText:GetStringHeight() + 5
    table.insert(fishFrames, headerText)

    -- Build fish entries
    for _, f in ipairs(fishList) do
        if not f.caught then
            -- Create a frame for each fish entry
            local fishFrame = CreateFrame("Frame", nil, content)
            fishFrame:SetSize(340, 60) -- Adjust height based on content
            fishFrame:SetPoint("TOPLEFT", content, "TOPLEFT", 0, -offsetY)

            -- Add icon
            local itemId = ns.fishItemIds[f.name] or 0
            local iconTexture = itemId > 0 and GetItemIcon(itemId) or "Interface\\Icons\\INV_Misc_QuestionMark"
            local icon = fishFrame:CreateTexture(nil, "ARTWORK")
            icon:SetSize(50, 50)
            icon:SetPoint("TOPLEFT", fishFrame, "TOPLEFT", 0, 0)
            icon:SetTexture(iconTexture)

            -- Add fish name
            local nameText = fishFrame:CreateFontString(nil, "ARTWORK", "GameFontHighlightSmall")
            nameText:SetPoint("TOPLEFT", icon, "TOPRIGHT", 5, 0)
            nameText:SetJustifyH("LEFT")
            nameText:SetJustifyV("TOP")
            nameText:SetWidth(280)
            nameText:SetText(f.name)

            -- Add details (Hint, Zones, Pools)
            local detailsText = fishFrame:CreateFontString(nil, "ARTWORK", "GameFontHighlightSmall")
            detailsText:SetPoint("TOPLEFT", nameText, "BOTTOMLEFT", 0, -2)
            detailsText:SetJustifyH("LEFT")
            detailsText:SetJustifyV("TOP")
            detailsText:SetWidth(280)
            local details = ''
            if f.notes ~= '' then
                details = details .. '|cff00ff00Hint:|r ' .. f.notes .. '\n'
            end
            details = details .. '|cff00ff00Zones:|r ' .. table.concat(f.zones, ", ") .. '\n'
            details = details .. '|cff00ff00Pools:|r ' .. table.concat(f.pools, ", ")
            detailsText:SetText(details)

            -- Update offset for next fish
            fishFrame:SetHeight(math.max(icon:GetHeight(), nameText:GetStringHeight() + detailsText:GetStringHeight() + 2))
            offsetY = offsetY + fishFrame:GetHeight() + 10
            table.insert(fishFrames, fishFrame)
        end
    end

    if allCaught then
        local doneText = content:CreateFontString(nil, "ARTWORK", "GameFontHighlightSmall")
        doneText:SetPoint("TOPLEFT", content, "TOPLEFT", 0, -offsetY)
        doneText:SetJustifyH("LEFT")
        doneText:SetJustifyV("TOP")
        doneText:SetWidth(340)
        doneText:SetText('|cff00ff00' .. L['DONE'] .. '|r')
        offsetY = offsetY + doneText:GetStringHeight()
        table.insert(fishFrames, doneText)
    end

    content:SetHeight(offsetY)
end

-- Check Buff and Show/Hide Frame
local SPELL_ID = 456024 -- Replace with the correct Spell ID
local function checkBuffAndDisplayFrame()
    local auraTable = C_UnitAuras.GetPlayerAuraBySpellID(SPELL_ID)
    local questIds = {82778, 83529, 83530, 83531, 83532}
    local hasActiveQuest = false

    -- Check for active quest
    for _, qid in ipairs(questIds) do
        if C_QuestLog.IsQuestFlaggedCompleted(qid) or C_QuestLog.IsOnQuest(qid) then
            hasActiveQuest = true
            break
        end
    end

    -- Show frame only if both aura and active quest are present, hide otherwise
    if auraTable and hasActiveQuest then
        frame:Show()
        updateDisplay()
    else
        frame:Hide()
    end
end

-- Event Handling
frame:RegisterEvent("PLAYER_ENTERING_WORLD")
frame:RegisterEvent("QUEST_LOG_UPDATE")
frame:RegisterEvent("UNIT_AURA")
frame:SetScript("OnEvent", function(self, event, unit)
    if event == "UNIT_AURA" and unit == "player" then
        checkBuffAndDisplayFrame()
    elseif event == "PLAYER_ENTERING_WORLD" or event == "QUEST_LOG_UPDATE" then
        checkBuffAndDisplayFrame()
    end
end)

-- Initial Buff Check
checkBuffAndDisplayFrame()