-- Create a custom frame to serve as the dialog
local baseFrame = CreateFrame("Frame", "QuestieTutorialChooseObjectiveType", UIParent, BackdropTemplateMixin and "BackdropTemplate")
baseFrame:SetSize(600, 400)
baseFrame:SetPoint("CENTER", UIParent, 0, 0)
baseFrame:EnableMouse(true)
baseFrame:SetMovable(true)
baseFrame:RegisterForDrag("LeftButton")
baseFrame:SetScript("OnDragStart", baseFrame.StartMoving)
baseFrame:SetScript("OnDragStop", baseFrame.StopMovingOrSizing)
baseFrame:SetBackdrop({
    bgFile = "Interface\\Tooltips\\UI-Tooltip-Background",
    edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
    tile = true,
    edgeSize = 16,
    insets = { left = 4, right = 4, top = 4, bottom = 4 },
})
baseFrame:SetBackdropColor(0, 0, 0, 1)
baseFrame:SetBackdropBorderColor(1, 1, 1, 0)
--objectiveChooser:Hide()

local titleText = baseFrame:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
titleText:SetText("Welcome to Questie")
titleText:SetFont("Fonts\\FRIZQT__.TTF", 16)
titleText:SetPoint("TOP", 0, -10)

local customText = baseFrame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
customText:SetText("With Wotlk Phase 4 Blizzard introduced their own quest objective system.\n\nPlease choose the objective types you want to use:")
customText:SetPoint("TOP", 0, -35)


local onlyQuestieImage = baseFrame:CreateTexture(nil, "OVERLAY")
onlyQuestieImage:SetTexture("Interface\\Addons\\Questie\\Modules\\Tutorial\\onlyQuestie.blp")
onlyQuestieImage:SetSize(256, 256)
onlyQuestieImage:SetPoint("TOPLEFT", 30, -90)

local onlyBlizzardImage = baseFrame:CreateTexture(nil, "OVERLAY")
onlyBlizzardImage:SetTexture("Interface\\Addons\\Questie\\Modules\\Tutorial\\onlyQuestie.blp")
onlyBlizzardImage:SetSize(256, 256)
onlyBlizzardImage:SetPoint("TOPRIGHT", -30, -90)

local acceptOnlyQuestieButton = CreateFrame("Button", nil, baseFrame, "UIPanelButtonTemplate")
acceptOnlyQuestieButton:SetText("Questie Objectives")
acceptOnlyQuestieButton:SetSize(140, 24)
acceptOnlyQuestieButton:SetPoint("BOTTOMLEFT", 85, 10)
acceptOnlyQuestieButton:SetScript("OnClick", function()
    -- TODO: Hide Blizzard objective markers
end)

local acceptOnlyBlizzardButton = CreateFrame("Button", nil, baseFrame, "UIPanelButtonTemplate")
acceptOnlyBlizzardButton:SetText("Blizzard Objectives")
acceptOnlyBlizzardButton:SetSize(140, 24)
acceptOnlyBlizzardButton:SetPoint("BOTTOMRIGHT", -85, 10)
acceptOnlyBlizzardButton:SetScript("OnClick", function()
    -- TODO: Disable Questies objectives marker
end)
