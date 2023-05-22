---@type l10n
local l10n = QuestieLoader:ImportModule("l10n")

local classicObjectiveLocales = {
    ["Use a Fresh Carcass at the Flame of Uzel"] = { -- 1136
        ["ptBR"] = false,
        ["ruRU"] = "Используйте Свежую Тушу в Пламени Узеля",
        ["deDE"] = "Einen frischen Kadaver an der Flamme von Uzel verbrennen.",
        ["koKR"] = false,
        ["esMX"] = false,
        ["enUS"] = true,
        ["frFR"] = false,
        ["esES"] = false,
        ["zhTW"] = false,
        ["zhCN"] = false,
    },
    ["Fish for Darkshore Groupers"] = { -- 1141
        ["ptBR"] = false,
        ["ruRU"] = false,
        ["deDE"] = false,
        ["koKR"] = false,
        ["esMX"] = false,
        ["enUS"] = true,
        ["frFR"] = false,
        ["esES"] = false,
        ["zhTW"] = false,
        ["zhCN"] = false,
    },
    ["Slay Gelkis centaur to increase your reputation with the Magram Clan"] = { -- 1367
        ["ptBR"] = false,
        ["ruRU"] = "Убейте кентавра из племени Гелкис, чтобы поднять свою репутацию с племенем Маграм",
        ["deDE"] = "Töte Gelkis-Zentauren, um Ansehen beim Magram-Clan zu erhöhen.",
        ["koKR"] = false,
        ["esMX"] = false,
        ["enUS"] = true,
        ["frFR"] = false,
        ["esES"] = false,
        ["zhTW"] = false,
        ["zhCN"] = false,
    },
    ["Slay Magram centaur to increase your reputation with the Gelkis Clan"] = { -- 1368
        ["ptBR"] = false,
        ["ruRU"] = "Убейте кентавра из племени Маграм, чтобы поднять свою репутацию с племенем Гелкис",
        ["deDE"] = "Töte Magram-Zentauren, um dein Ansehen beim Gelkis-Clan zu erhöhen.",
        ["koKR"] = false,
        ["esMX"] = false,
        ["enUS"] = true,
        ["frFR"] = false,
        ["esES"] = false,
        ["zhTW"] = false,
        ["zhCN"] = false,
    },
    ["Fish for Gaffer Jacks"] = { -- 1579
        ["ptBR"] = false,
        ["ruRU"] = false,
        ["deDE"] = false,
        ["koKR"] = false,
        ["esMX"] = false,
        ["enUS"] = true,
        ["frFR"] = false,
        ["esES"] = false,
        ["zhTW"] = false,
        ["zhCN"] = false,
    },
    ["Use Cantation of Manifestation to reveal Rift Spawn. Use Chest of Containment Coffers on stunned Rift Spawn"] = { -- 1920 & 1960
        ["ptBR"] = false,
        ["ruRU"] = "Используйте Свиток заклятия Проявления, чтобы увидеть Порождение Разлома. Используйте Ящик со шкатулками-духоловками на ошеломленное Порождение Разлома",
        ["deDE"] = "Benutze die Kantate der Manifestation, um den Rift-Spawn zu enthüllen. Verwende Truhe der Eindämmungskassen am betäubtem Rift-Spawn.",
        ["koKR"] = false,
        ["esMX"] = false,
        ["enUS"] = true,
        ["frFR"] = false,
        ["esES"] = false,
        ["zhTW"] = false,
        ["zhCN"] = false,
    },
    ["Slay Rogue Vale Screecher and use Veh'kinya's Bramble on their corpse."] = { -- 3520
        ["ptBR"] = false,
        ["ruRU"] = "Убейте Норовистого дольного крикуна, а затем используйте Колючку Йе'киньи на его трупе.",
        ["deDE"] = "Erschlagt Wilde Talkreischer und benutzt dann Veh'kinya's Stab auf ihren Körpern.",
        ["koKR"] = false,
        ["esMX"] = false,
        ["enUS"] = true,
        ["frFR"] = false,
        ["esES"] = false,
        ["zhTW"] = false,
        ["zhCN"] = false,
    },
    ["Beat Emberstrife till his will is broken, then place the Unforged Seal of Ascension before him and use the Orb of Draconic Energy."] = { -- 4743
        ["ptBR"] = false,
        ["ruRU"] = "Победите Огнебора, пока его воля не сломлена, затем поместите Заготовку печати Вознесения перед ним, после чего используйте Сферу энергии дракона.",
        ["deDE"] = "Kämpfe mit Aschenschwinge, bis sein Wille gebrochen ist, platziere dann das Ungeschmiedete Siegel des Aufstiegs vor ihm und benutze den Orb der Drakonischen Energie.",
        ["koKR"] = false,
        ["esMX"] = false,
        ["enUS"] = true,
        ["frFR"] = false,
        ["esES"] = false,
        ["zhTW"] = false,
        ["zhCN"] = false,
    },
    ["Use the Lovers' Hearts to summon an Incubus and slay it."] = { -- 65597
        ["ptBR"] = false,
        ["ruRU"] = "Используйте Сердца влюбленных, чтобы призвать Суккуба и убить его.",
        ["deDE"] = "Benutzt die Herzen der Liebenden um den Inkubus zu beschwören und zu erschlagen.",
        ["koKR"] = false,
        ["esMX"] = false,
        ["enUS"] = true,
        ["frFR"] = false,
        ["esES"] = false,
        ["zhTW"] = false,
        ["zhCN"] = false,
    },
    ["Light the Unlit Torch near a fire and use the Burning Torch to set the Archaeoligst's Cart on fire."] = { -- 65602
        ["ptBR"] = false,
        ["ruRU"] = "Зажгите Незажженный факел с помощью огня, затем используйте Зажженный Факел чтобы поджечь Телегу Археолога.",
        ["deDE"] = "Entzünde die Fackel an einem Feuer und nutze die brennende Fackel um die Lore des Archeologen Cart in brand zu stecken.",
        ["koKR"] = false,
        ["esMX"] = false,
        ["enUS"] = true,
        ["frFR"] = false,
        ["esES"] = false,
        ["zhTW"] = false,
        ["zhCN"] = false,
    },
    ["Use the Withered Scarf to summon an Incubus and slay it."] = { -- 65603 & 65604
        ["ptBR"] = false,
        ["ruRU"] = "Используйте Истлевший платок, чтобы призвать Суккуба и убить его.",
        ["deDE"] = "Benutzt den abgetragener Schal um den Inkubus zu beschwören und erschlagt ihn.",
        ["koKR"] = false,
        ["esMX"] = false,
        ["enUS"] = true,
        ["frFR"] = false,
        ["esES"] = false,
        ["zhTW"] = false,
        ["zhCN"] = false,
    },
    ["Slay ghouls to free Darrowshire spirits"] = { -- 5211
        ["ptBR"] = false,
        ["ruRU"] = "Убейте Вурдалаков, чтобы освободить Духов Дарроушира",
        ["deDE"] = "Erschlagt die Ghoule um die Geist von Darrowshire freizulassen.",
        ["koKR"] = false,
        ["esMX"] = false,
        ["enUS"] = true,
        ["frFR"] = false,
        ["esES"] = false,
        ["zhTW"] = false,
        ["zhCN"] = false,
    },
    ["Plant the Demon Summoning Torch"] = { -- 8481
        ["ptBR"] = false,
        ["ruRU"] = false,
        ["deDE"] = "Platziere die Fackel zur Dämonenbeschwörung",
        ["koKR"] = false,
        ["esMX"] = false,
        ["enUS"] = true,
        ["frFR"] = false,
        ["esES"] = false,
        ["zhTW"] = false,
        ["zhCN"] = false,
    },
    ["Use Arcanite Buoy"] = { -- 8729
        ["ptBR"] = false,
        ["ruRU"] = "Используйте Арканитовый буй",
        ["deDE"] = "Benutze Arkanitboje",
        ["koKR"] = false,
        ["esMX"] = false,
        ["enUS"] = true,
        ["frFR"] = false,
        ["esES"] = false,
        ["zhTW"] = false,
        ["zhCN"] = false,
    },
    ["Talk to Silva Fil'naveth to fly back to Darnassus"] = { -- 5931
        ["ptBR"] = false,
        ["ruRU"] = false,
        ["deDE"] = false,
        ["koKR"] = false,
        ["esMX"] = false,
        ["enUS"] = true,
        ["frFR"] = false,
        ["esES"] = false,
        ["zhTW"] = false,
        ["zhCN"] = false,
    },
    ["Talk to Bunthen Plainswind to fly back to Thunder Bluff"] = { -- 5932
        ["ptBR"] = false,
        ["ruRU"] = false,
        ["deDE"] = false,
        ["koKR"] = false,
        ["esMX"] = false,
        ["enUS"] = true,
        ["frFR"] = false,
        ["esES"] = false,
        ["zhTW"] = false,
        ["zhCN"] = false,
    },
    ["Release the kitten near the Jadefire Satyrs' corrupted moonwell."] = { -- quest 4506, text from item 12565
        ["ptBR"] = false,
        ["ruRU"] = false,
        ["deDE"] = false,
        ["koKR"] = false,
        ["esMX"] = false,
        ["enUS"] = true,
        ["frFR"] = false,
        ["esES"] = false,
        ["zhTW"] = false,
        ["zhCN"] = false,
    },
}

for k, v in pairs(classicObjectiveLocales) do
    l10n.translations[k] = v
end
