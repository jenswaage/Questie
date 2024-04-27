---@class CataQuestFixes
local CataQuestFixes = QuestieLoader:CreateModule("CataQuestFixes")

---@type QuestieDB
local QuestieDB = QuestieLoader:ImportModule("QuestieDB")
---@type ZoneDB
local ZoneDB = QuestieLoader:ImportModule("ZoneDB")
---@type QuestieProfessions
local QuestieProfessions = QuestieLoader:ImportModule("QuestieProfessions")
---@type QuestieCorrections
local QuestieCorrections = QuestieLoader:ImportModule("QuestieCorrections")
---@type l10n
local l10n = QuestieLoader:ImportModule("l10n")

QuestieCorrections.objectObjectiveFirst[24817] = true
QuestieCorrections.killCreditObjectiveFirst[26621] = true
QuestieCorrections.killCreditObjectiveFirst[26875] = true

function CataQuestFixes.Load()
    local questKeys = QuestieDB.questKeys
    local raceKeys = QuestieDB.raceKeys
    local profKeys = QuestieProfessions.professionKeys
    local zoneIDs = ZoneDB.zoneIDs
    local specialFlags = QuestieDB.specialFlags

    return {
        [578] = { -- The Stone of the Tides
            [questKeys.childQuests] = {579},
        },
        [579] = { -- Stormwind Library
            [questKeys.parentQuest] = 578,
        },
        [869] = { -- To Track a Thief
            [questKeys.triggerEnd] = {"Source of Tracks Discovered", {[zoneIDs.THE_BARRENS]={{63.5,61.5}}}},
        },
        [2438] = { -- The Emerald Dreamcatcher
            [questKeys.specialFlags] = 0,
        },
        [7490] = { -- Victory for the Horde
            [questKeys.finishedBy] = {{39605}},
            [questKeys.objectivesText] = {"Take the Head of Onyxia to Garrosh Hellscream in Orgrimmar."},
        },
        [7783] = { -- The Lord of Blackrock
            [questKeys.finishedBy] = {{39605}},
            [questKeys.objectivesText] = {"Return the Head of Nefarian to Garrosh Hellscream in Orgrimmar."},
        },
        [9616] = { -- Bandits!
            [questKeys.requiredRaces] = raceKeys.ALL_ALLIANCE,
        },
        [9626] = { -- Meeting the Orcs
            [questKeys.name] = "Meeting the Warchief",
            [questKeys.finishedBy] = {{39605}},
            [questKeys.objectivesText] = {"Lady Sylvanas Windrunner wants you to take the Letter Sealed by Sylvanas to Garrosh Hellscream in Orgrimmar, capital of Durotar."},
        },
        [9813] = { -- Meeting the Orcs
            [questKeys.name] = "Meeting the Warchief",
            [questKeys.finishedBy] = {{39605}},
            [questKeys.objectivesText] = {"Lady Sylvanas Windrunner wants you to take the Letter Sealed by Sylvanas to Garrosh Hellscream in Orgrimmar, capital of Durotar."},
        },
        [10068] = { -- Frost Nova
            [questKeys.objectives] = {{{44175}},nil,nil,nil,nil,{{5143}}},
            [questKeys.objectivesText] = {"Learn Arcane Missiles from Julia Sunstriker. Locate a Training Dummy outside the Sunspire and practice using Arcane Missiles 2 times."},
        },
        [10069] = { -- Ways of the Light
            [questKeys.objectives] = {{{44175}},nil,nil,nil,nil,{{20154}}},
            [questKeys.objectivesText] = {"Learn Judgement and Seal of Righteousness from Jesthenis Sunstriker. Cast Seal of Righteousness on yourself, then locate a Training Dummy outside the Sunspire and use Judgement."},
        },
        [10070] = { -- Steady Shot
            [questKeys.objectives] = {{{44175}},nil,nil,nil,nil,{{56641}}},
            [questKeys.objectivesText] = {"Learn Steady Shot from Ranger Sallina. Locate a Training Dummy outside the Sunspire and practice using Steady Shot 5 times."},
        },
        [10071] = { -- Evisceration
            [questKeys.objectives] = {{{44175}},nil,nil,nil,nil,{{2098}}},
            [questKeys.objectivesText] = {"Learn Eviscerate from Pathstalker Kariel. Locate a Training Dummy outside the Sunspire and practice using Eviscerate 3 times."},
        },
        [10072] = { -- Learning the Word
            [questKeys.objectives] = {{{44175}},nil,nil,nil,nil,{{2061}}},
            [questKeys.objectivesText] = {"Learn Flash Heal from Matron Arena. Practice casting Flash Heal 5 times on Wounded Outrunners."},
        },
        [10073] = { -- Corruption
            [questKeys.objectives] = {{{44175}},nil,nil,nil,nil,{{348}}},
            [questKeys.objectivesText] = {"Learn Immolate from Summoner Teli'Larien. Locate a Training Dummy outside the Sunspire and practice casting Immolate 5 times."},
        },
        [13189] = { -- Saurfang's Blessing
            [questKeys.name] = "Warchief's Blessing",
            [questKeys.finishedBy] = {{39605}},
            [questKeys.objectivesText] = {"Deliver the letter to High Overlord Garrosh Hellscream at Orgrimmar."},
        },
        [13564] = { -- A Lost Companion
            [questKeys.triggerEnd] = {"Locate Grimclaw", {[zoneIDs.DARKSHORE]={{43,39}}}},
        },
        [13567] = { -- Spirit of the Stag
            [questKeys.requiredRaces] = raceKeys.ALL_ALLIANCE,
        },
        [13568] = { -- Spirit of the Moonstalker
            [questKeys.requiredRaces] = raceKeys.ALL_ALLIANCE,
        },
        [13597] = { -- Spirit of the Thistle Bear
            [questKeys.requiredRaces] = raceKeys.ALL_ALLIANCE,
        },
        [13639] = { -- Resupplying the Excavation
            [questKeys.triggerEnd] = {"Find Huldar, Miran, and Saean", {[zoneIDs.LOCH_MODAN]={{55.6,68.5}}}},
        },
        [13655] = { -- Explorers' League Document (2 of 6)
            [questKeys.requiredRaces] = raceKeys.ALL_ALLIANCE,
        },
        [13656] = { -- Explorers' League Document (1 of 6)
            [questKeys.requiredRaces] = raceKeys.ALL_ALLIANCE,
        },
        [13657] = { -- Explorers' League Document (3 of 6)
            [questKeys.requiredRaces] = raceKeys.ALL_ALLIANCE,
        },
        [13658] = { -- Explorers' League Document (4 of 6)
            [questKeys.requiredRaces] = raceKeys.ALL_ALLIANCE,
        },
        [13659] = { -- Explorers' League Document (6 of 6)
            [questKeys.requiredRaces] = raceKeys.ALL_ALLIANCE,
        },
        [13831] = { -- A Troubling Prescription
            [questKeys.requiredRaces] = raceKeys.ALL_ALLIANCE,
        },
        [13660] = { -- Explorers' League Document (5 of 6)
            [questKeys.requiredRaces] = raceKeys.ALL_ALLIANCE,
        },
        [13841] = { -- All Apologies
            [questKeys.finishedBy] = {{39605}},
            [questKeys.objectivesText] = {"Draaka wants you to bring her Letter of Explanation to Garrosh Hellscream in Orgrimmar."},
        },
        [13842] = { -- Dread Head Redemption
            [questKeys.finishedBy] = {{39605}},
        },
        [13881] = { -- Consumed
            [questKeys.triggerEnd] = {"Watering Hole Investigated", {[zoneIDs.DARKSHORE]={{45,79.1}}}},
        },
        [13961] = { -- Drag it Out of Them
            [questKeys.triggerEnd] = {"Razormane Prisoner Delivered", {[zoneIDs.THE_BARRENS]={{56.4,40.3}}}},
        },
        [14008] = { -- Frost Nova
            [questKeys.objectives] = {{{44175}},nil,nil,nil,nil,{{5143}}},
            [questKeys.objectivesText] = {"Speak with Fizz Lighter and train Arcane Missiles, then cast the spell 2 times at a Training Dummy.$B$BRemember, Arcane Missiles have a chance to activate through the use of other offensive spells. Use your Fireball spell first on the Training Dummy to enable the casting of your Arcane Missiles spell."},
        },
        [14009] = { -- Learning the Word
            [questKeys.objectives] = {{{44175}},nil,nil,nil,nil,{{2061}}},
            [questKeys.objectivesText] = {"Speak with Sister Goldskimmer and train Flash Heal, then cast the spell 3 times on an Injured Employee."},
        },
        [14011] = { -- Primal Strike
            [questKeys.objectives] = {{{48304}},nil,nil,nil,nil,{{73899}}},
            [questKeys.objectivesText] = {"Speak with Maxx Avalanche and train Primal Strike, then use it 2 times on a Training Dummy."},
        },
        [14012] = { -- Corruption
            [questKeys.objectives] = {{{44175}},nil,nil,nil,nil,{{348}}},
            [questKeys.objectivesText] = {"Speak with Evol Fingers and train Immolate, then cast it 3 times on a Training Dummy."},
        },
        [14013] = { -- Charge
            [questKeys.objectives] = {{{44175}},nil,nil,nil,nil,{{100}}},
            [questKeys.objectivesText] = {"Speak with Warrior-Matic NX-01 and train the Charge ability, then use it on a Training Dummy."},
        },
        [14019] = { -- Monkey Business
            [questKeys.objectives] = {{{34699}}},
            [questKeys.preQuestSingle] = {14001},
        },
        [14021] = { -- Miner Troubles
            [questKeys.triggerEnd] = {"Kaja'mite Ore mining a success!", {[zoneIDs.THE_LOST_ISLES]={{31.9,73.6}}}},
        },
        [14066] = { -- Investigate the Wreckage
            [questKeys.triggerEnd] = {"Caravan Scene Searched", {[zoneIDs.THE_BARRENS]={{59.2,67.5}}}},
        },
        [14071] = { -- Rolling with my Homies
            [questKeys.objectives] = {{{48323},{34890},{34892},{34954}}},
            [questKeys.childQuests] = {28606},
        },
        [14094] = { -- Salvage the Supplies
            [questKeys.preQuestSingle] = {14078},
        },
        [14098] = { -- Evacuate the Merchant Square
            [questKeys.startedBy] = {{34913}},
            [questKeys.objectives] = {nil,{{195327}}},
        },
        [14099] = { -- Royal Orders
            [questKeys.preQuestGroup] = {14093,14098},
        },
        [14109] = { -- The New You
            [questKeys.requiredSourceItems] = {47044},
            [questKeys.exclusiveTo] = {14110},
        },
        [14110] = { -- The New You
            [questKeys.requiredSourceItems] = {47044},
            [questKeys.exclusiveTo] = {14109},
        },
        [14113] = { -- Life of the Party
            [questKeys.preQuestSingle] = {14109},
        },
        [14121] = { -- Robbing Hoods
            [questKeys.childQuests] = {28607},
        },
        [14122] = { -- The Great Bank Heist
            [questKeys.startedBy] = {{34668}},
        },
        [14125] = { -- 447
            [questKeys.startedBy] = {{34668}},
            [questKeys.preQuestSingle] = {},
            [questKeys.preQuestGroup] = {14121,14122,14123,14124},
        },
        [14153] = { -- Life of the Party
            [questKeys.preQuestSingle] = {14110},
        },
        [14165] = { -- Stone Cold
            [questKeys.triggerEnd] = {"Stonified Miner Delivered", {[zoneIDs.AZSHARA]={{59.9,40.2}}}},
        },
        [14233] = { -- Orcs Can Write?
            [questKeys.exclusiveTo] = {},
        },
        [14234] = { -- The Enemy of My Enemy
            [questKeys.preQuestSingle] = {},
            [questKeys.preQuestGroup] = {14031,14233},
        },
        [14244] = { -- Up, Up & Away!
            [questKeys.objectives] = {nil,{{196439}}},
        },
        [14266] = { -- Charge
            [questKeys.objectives] = {{{44175}},nil,nil,nil,nil,{{100}}},
            [questKeys.objectivesText] = {"Speak to Sergeant Cleese and learn Charge. Practice using Charge against a Bloodfang Worgen."},
        },
        [14245] = { -- It's a Town-In-A-Box
            [questKeys.objectives] = {nil,{{201938}}},
        },
        [14248] = { -- Help Wanted
            [questKeys.preQuestSingle] = {},
            [questKeys.preQuestGroup] = {14014,14019,14473}
        },
        [14274] = { -- Corruption
            [questKeys.objectives] = {{{44175}},nil,nil,nil,nil,{{348}}},
            [questKeys.objectivesText] = {"Speak to Vitus Darkwalker and learn Immolate. Practice casting Immolate on a Bloodfang Worgen."},
        },
        [14276] = { -- Steady Shot
            [questKeys.objectives] = {{{44175}},nil,nil,nil,nil,{{56641}}},
            [questKeys.objectivesText] = {"Speak to Huntsman Blake and learn Steady Shot. Practice using Steady Shot 2 times against a Bloodfang Worg."},
        },
        [14279] = { -- Learning the Word
            [questKeys.objectives] = {{{47091}},nil,nil,nil,nil,{{2061}}},
            [questKeys.objectivesText] = {"Speak to Sister Almyra and learn Flash Heal. Use Flash Heal 2 times on a Wounded Guard."},
        },
        [14281] = { -- Frost Nova
            [questKeys.objectives] = {{{44175}},nil,nil,nil,nil,{{5143}}},
            [questKeys.objectivesText] = {"Speak to Myriam Spellwaker and learn Arcane Missiles. Use Arcane Missiles against a Bloodfang Worgen."},
        },
        [14283] = { -- Moonfire
            [questKeys.objectives] = {{{44175}},nil,nil,nil,nil,{{774}}},
            [questKeys.objectivesText] = {"Speak to Celestine of the Harvest and learn Rejuvenation. Practice using Rejuvenation on a Wounded Guard."},
        },
        [14389] = { -- Wasn't It Obvious?
            [questKeys.triggerEnd] = {"Find Anara, and hopefully, Azuregos", {[zoneIDs.AZSHARA]={{27.7,40.4}}}},
        },
        [14473] = { -- It's Our Problem Now
            [questKeys.preQuestSingle] = {14001},
        },
        [14482] = { -- Call of Duty
            [questKeys.extraObjectives] = {{{[zoneIDs.STORMWIND_CITY]={{18.3,25.5}}}, Questie.ICON_TYPE_EVENT, l10n("Wait for the Mercenary Ship to arrive")}},
        },
        [24452] = { -- Profitability Scouting
            [questKeys.triggerEnd] = {"Heart of Arkkoroc identified", {[zoneIDs.AZSHARA]={{32.4,50.4}}}},
        },
        [24502] = { -- Necessary Roughness
            [questKeys.objectives] = {{{48526},{37114}}},
        },
        [24526] = { -- Filling Up the Spellbook
            [questKeys.objectives] = {{{44175}},nil,nil,nil,nil,{{5143}}},
            [questKeys.objectivesText] = {"Learn Arcane Missiles from Teegli Merrowith. Successfully cast Arcane Missiles 2 times on the Training Dummies outside the entrance to Anvilmar."},
        },
        [24528] = { -- The Power of the Light
            [questKeys.objectives] = {{{44175}},nil,nil,nil,nil,{{20154}}},
            [questKeys.objectivesText] = {"Learn Seal of Righteousness and Judgment from Bromos Grummner. After casting Seal of Righteousness on yourself, use Judgment on one of the Training Dummies at the entrance to Anvilmar."},
        },
        [24530] = { -- Oh, A Hunter's Life For Me
            [questKeys.objectives] = {{{44175}},nil,nil,nil,nil,{{56641}}},
            [questKeys.objectivesText] = {"Learn Steady Shot from Thorgas Grimson, then use Steady Shot 5 times on the Training Dummies outside the entrance to Anvilmar."},
        },
        [24531] = { -- Getting Battle-Ready
            [questKeys.objectives] = {{{44175}},nil,nil,nil,nil,{{100}}},
            [questKeys.objectivesText] = {"Learn Charge from Thran Khorman, then use Charge on one of the Training Dummies outside the entrance to Anvilmar."},
        },
        [24532] = { -- Evisceratin' the Enemy
            [questKeys.objectives] = {{{44175}},nil,nil,nil,nil,{{2098}}},
            [questKeys.objectivesText] = {"Learn Evisecerate from Solm Hargrin, then use Eviscerate 3 times on the Training Dummies near the entrance to Anvilmar."},
        },
        [24533] = { -- Words of Power
            [questKeys.objectives] = {{{44175}},nil,nil,nil,nil,{{2061}}},
            [questKeys.objectivesText] = {"Learn Flash Heal from Branstock Khalder, then cast Flash Heal 5 times on Wounded Militia members in Anvilmar."},
        },
        [24612] = { -- A Gift for the Emissary of Orgrimmar
            [questKeys.finishedBy] = {{39605}},
        },
        [24618] = { -- Claim the Battle Scar
            [questKeys.triggerEnd] = {"Battlescar Flag Scouted", {[zoneIDs.THE_BARRENS]={{45.2,69.4}}}},
        },
        [24640] = { -- The Arts of a Warrior
            [questKeys.objectives] = {{{44175}},nil,nil,nil,nil,{{100}}},
            [questKeys.objectivesText] = {"Speak to Nortet to train Charge. Practice using Charge against a Tiki Target."},
        },
        [24671] = { -- Cluster Cluck
            [questKeys.objectives] = {{{38111}}},
            [questKeys.preQuestSingle] = {},
        },
        [24752] = { -- The Arts of a Mage
            [questKeys.objectives] = {{{44175}},nil,nil,nil,nil,{{5143}}},
            [questKeys.objectivesText] = {"Speak to Soratha to train Arcane Missiles. Practice using Arcane Missiles 2 times against a Tiki Target."},
        },
        [24766] = { -- The Arts of a Druid
            [questKeys.objectives] = {{{44175}},nil,nil,nil,nil,{{774}}},
            [questKeys.objectivesText] = {"Speak to Zen'Tabra to train Rejuvenation. Practice using Rejuvenation on a Wounded Darkspear Watcher in the Darkspear Training Grounds."},
        },
        [24772] = { -- The Arts of a Rogue
            [questKeys.objectives] = {{{44175}},nil,nil,nil,nil,{{2098}}},
            [questKeys.objectivesText] = {"Speak to Legati to train Eviscerate. Use Eviscerate 3 times against a Tiki Target."},
        },
        [24778] = { -- The Arts of a Hunter
            [questKeys.objectives] = {{{44175}},nil,nil,nil,nil,{{56641}}},
            [questKeys.objectivesText] = {"Speak to Ortezza to train Steady Shot. Use Steady Shot 5 times on a Tiki Target."},
        },
        [24784] = { -- Learnin' tha Word
            [questKeys.objectives] = {{{44175}},nil,nil,nil,nil,{{2061}}},
            [questKeys.objectivesText] = {"Speak to Tunari to train Flash Heal. Use Flash Heal 5 times to heal Wounded Darkspear Watchers around the Darkspear Training Grounds."},
        },
        [24817] = { -- A Goblin in Shark's Clothing
            [questKeys.objectives] = {{{36682}},{{202108}}},
        },
        [24864] = { -- Irresistible Pool Pony
            [questKeys.objectives] = {nil,nil,nil,nil,{{{38412,44578,44579,44580},38412,"Naga Hatchling lured"}}},
            [questKeys.preQuestSingle] = {},
            [questKeys.preQuestGroup] = {24858,24859},
        },
        [24901] = { -- Town-In-A-Box: Under Attack
            [questKeys.objectives] = {{{38526}}},
        },
        [24930] = { -- While You're At It
            [questKeys.startedBy] = {{35115}},
        },
        [24937] = { -- Oomlot Dealt With
            [questKeys.preQuestSingle] = {},
            [questKeys.preQuestGroup] = {24925,24929},
        },
        [24942] = { -- Zombies vs. Super Booster Rocket Boots
            [questKeys.objectives] = {nil,nil,nil,nil,{{{38753,38813,38815,38816},38813,"Goblin Zombies slain"}}},
        },
        [24945] = { -- Three Little Pygmies
            [questKeys.preQuestSingle] = {24940},
        },
        [24952] = { -- Rocket Boot Boost
            [questKeys.preQuestSingle] = {},
            [questKeys.preQuestGroup] = {24942,24945,24946},
        },
        [24958] = { -- Volcanoth!
            [questKeys.objectives] = {{{38855}}},
        },
        [24960] = { -- The Wakening
            [questKeys.preQuestSingle] = {28608},
        },
        [24964] = { -- The Thrill of the Hunt
            [questKeys.objectives] = {{{44175}},nil,nil,nil,nil,{{56641}}},
            [questKeys.objectivesText] = {"Learn Steady Shot from Xavier the Huntsman in Deathknell, then practice using Steady Shot 5 times on a Training Dummy."},
        },
        [24966] = { -- Of Light and Shadows
            [questKeys.objectives] = {{{44175}},nil,nil,nil,nil,{{2061}}},
            [questKeys.objectivesText] = {"Train Flash Heal from Dark Cleric Duesten in Deathknell. Then, practice casting Flash Heal 5 times on Wounded Deathguards."},
        },
        [24967] = { -- Stab!
            [questKeys.objectives] = {{{44175}},nil,nil,nil,nil,{{2098}}},
            [questKeys.objectivesText] = {"Learn Eviscerate from David Trias in Deathknell, then practice using Eviscerate 3 times on a Training Dummy."},
        },
        [24968] = { -- Dark Deeds
            [questKeys.objectives] = {{{44175}},nil,nil,nil,nil,{{348}}},
            [questKeys.objectivesText] = {"Learn Immolate from Maximillion in Deathknell, then practice casting Immolate 5 times on a Training Dummy."},
        },
        [24969] = { -- Charging into Battle
            [questKeys.objectives] = {{{44175}},nil,nil,nil,nil,{{100}}},
            [questKeys.objectivesText] = {"Learn Charge from Dannal Stern in Deathknell, then practice using Charge on a Training Dummy."},
        },
        [25081] = { -- Claim the Battlescar
            [questKeys.triggerEnd] = {"Battlescar Flag Scouted", {[zoneIDs.THE_BARRENS]={{45.2,69.4}}}},
        },
        [25105] = { -- Nibbler!  No!
            [questKeys.requiredSkill] = {profKeys.JEWELCRAFTING, 475}
        },
        [25122] = { -- Morale Boost
            [questKeys.requiredSourceItems] = {52484},
        },
        [25123] = { -- Throw It On the Ground!
            [questKeys.objectives] = {{{39194}}},
            [questKeys.requiredSourceItems] = {52481},
        },
        [25139] = { -- Steady Shot
            [questKeys.objectives] = {{{44175}},nil,nil,nil,nil,{{56641}}},
            [questKeys.objectivesText] = {"Learn Steady Shot from Karranisha in the Valley of Trials. Locate a Training Dummy and practice using Steady Shot 5 times."},
        },
        [25143] = { -- Primal Strike
            [questKeys.objectives] = {{{44175}},nil,nil,nil,nil,{{73899}}},
        },
        [25145] = { -- Corruption
            [questKeys.objectives] = {{{44175}},nil,nil,nil,nil,{{348}}},
            [questKeys.objectivesText] = {"Train Immolate from Nartok in the Valley of Trials. Locate a Training Dummy and practice casting Immolate 5 times."},
        },
        [25147] = { -- Charge
            [questKeys.objectives] = {{{44175}},nil,nil,nil,nil,{{100}}},
            [questKeys.objectivesText] = {"Train Charge from Frang in the Valley of Trials. Locate a Training Dummy and practice using Charge."},
        },
        [25149] = { -- Frost Nova
            [questKeys.objectives] = {{{44175}},nil,nil,nil,nil,{{5143}}},
            [questKeys.objectivesText] = {"Learn Arcane Missiles from Acrypha in the Valley of Trials. Locate a Training Dummy and practice using Arcane Missiles 2 times."},
        },
        [25154] = { -- A Present for Lila
            [questKeys.requiredSkill] = {profKeys.JEWELCRAFTING, 475}
        },
        [25155] = { -- Ogrezonians in the Mood
            [questKeys.requiredSkill] = {profKeys.JEWELCRAFTING, 475}
        },
        [25156] = { -- Elemental Goo
            [questKeys.requiredSkill] = {profKeys.JEWELCRAFTING, 475}
        },
        [25157] = { -- The Latest Fashion!
            [questKeys.requiredSkill] = {profKeys.JEWELCRAFTING, 475}
        },
        [25158] = { -- Nibbler!  No!
            [questKeys.requiredSkill] = {profKeys.JEWELCRAFTING, 475}
        },
        [25159] = { -- The Latest Fashion!
            [questKeys.requiredSkill] = {profKeys.JEWELCRAFTING, 475}
        },
        [25160] = { -- A Present for Lila
            [questKeys.requiredSkill] = {profKeys.JEWELCRAFTING, 475}
        },
        [25161] = { -- Ogrezonians in the Mood
            [questKeys.requiredSkill] = {profKeys.JEWELCRAFTING, 475}
        },
        [25162] = { -- Elemental Goo
            [questKeys.requiredSkill] = {profKeys.JEWELCRAFTING, 475}
        },
        [25202] = { -- The Fastest Way to His Heart
            [questKeys.preQuestSingle] = {25213},
            [questKeys.exclusiveTo] = {25243},
        },
        [25203] = { -- What Kind of Name is Chip, Anyway?
            [questKeys.exclusiveTo] = {25244},
        },
        [25204] = { -- Release the Valves
            [questKeys.preQuestSingle] = {},
            [questKeys.preQuestGroup] = {25200,25201},
        },
        [25207] = { -- Good-bye, Sweet Oil
            [questKeys.objectives] = {nil,{{205061}}},
        },
        [25213] = { -- The Slave Pits
            [questKeys.preQuestSingle] = {},
            [questKeys.preQuestGroup] = {25203,25207},
        },
        [25217] = { -- Totem Modification
            [questKeys.requiredSourceItems] = {53052,54214,54216,54217},
            [questKeys.extraObjectives] = {{{[zoneIDs.SHIMMERING_EXPANSE]={{40.4,34.2}}}, Questie.ICON_TYPE_EVENT, l10n("Place a totem on the ground and defend it")}},
        },
        [25243] = { -- She Loves Me, She Loves Me NOT!
            [questKeys.exclusiveTo] = {25202},
        },
        [25244] = { -- What Kind of Name is Candy, Anyway?
            [questKeys.preQuestSingle] = {25243},
            [questKeys.exclusiveTo] = {25203},
        },
        [25266] = { -- Warchief's Emissary
            [questKeys.finishedBy] = {{39609}},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_TALK, l10n("Talk to Sassy Hardwrench"), 0, {{"monster", 38387}}}},
        },
        [25267] = { -- Message for the Saurfang
            [questKeys.name] = "Message for Garrosh",
            [questKeys.objectivesText] = {"Deliver the SI:7 Emblem to Garrosh Hellscream at Grommash Hold in Orgrimmar."},
            [questKeys.startedBy] = {{39609}},
            [questKeys.finishedBy] = {{39605}},
        },
        [25275] = { -- Report to the Labor Captain
            [questKeys.startedBy] = {{39605}},
        },
        [25316] = { -- As Hyjal Burns
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_TALK, l10n("Hop on Aronus"), 0, {{"monster", 39140}}}},
        },
        [25325] = { -- Through the Dream
            [questKeys.triggerEnd] = {"Arch Druid Fandral Staghelm delivered", {[zoneIDs.MOUNT_HYJAL]={{55,28.9}}}},
        },
        [25354] = { -- Sweeping the Shelf
            [questKeys.requiredRaces] = raceKeys.ALL_HORDE,
        },
        [25419] = { -- Lady La-La's Medallion
            [questKeys.requiredSourceItems] = {55188},
        },
        [25442] = { -- A Pearl of Wisdom
            [questKeys.startedBy] = {{40510},nil,{54614}},
            [questKeys.exclusiveTo] = {25890},
        },
        [25464] = { -- The Return of Baron Geddon
            [questKeys.objectives] = {{{40147}}},
        },
        [25473] = { -- Kaja'Cola
            [questKeys.startedBy] = {{34872}},
            [questKeys.preQuestSingle] = {},
            [questKeys.preQuestGroup] = {14075,14069},
        },
        [25577] = { -- Crushing the Cores
            [questKeys.requiredSourceItems] = {55123},
        },
        [25593] = { -- Shelled Salvation
            [questKeys.objectives] = {nil,nil,nil,nil,{{{39729,41203,41219,42404},39729,"Shell Survivors rescued"}}},
            [questKeys.requiredSourceItems] = {55141},
        },
        [25617] = { -- Into the Maw!
            [questKeys.exclusiveTo] = {25624},
        },
        [25618] = { -- Into the Maw!
            [questKeys.exclusiveTo] = {25623},
        },
        [25621] = { -- Field Test: Gnomecorder
            [questKeys.triggerEnd] = {"Gnomecorder Tested", {[zoneIDs.STONETALON_MOUNTAINS]={{73.2,46.6}}}},
        },
        [25623] = { -- Into the Maw!
            [questKeys.exclusiveTo] = {25618},
        },
        [25624] = { -- Into the Maw!
            [questKeys.exclusiveTo] = {25617},
        },
        [25715] = { -- A Closer Look
            [questKeys.triggerEnd] = {"Scout the ships on the Shattershore", {[zoneIDs.BLASTED_LANDS]={{69,32.7}}}},
        },
        [27517] = { -- Be Prepared
            [questKeys.objectives] = {nil,nil,{{61321}}},
        },
        [25830] = { -- The Last Living Lorekeeper
            [questKeys.preQuestSingle] = {},
            [questKeys.preQuestGroup] = {25520,25611,25807},
        },
        [25890] = { -- Nespirah
            [questKeys.triggerEnd] = {"Find a way to communicate with Nespirah", {[zoneIDs.SHIMMERING_EXPANSE]={{52.5,54.1}}}},
            [questKeys.preQuestSingle] = {},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_TALK, l10n("Take the Swift Seahorse to Nespirah."), 0, {{"monster", 40851}}}},
        },
        [25900] = { -- Making Contact
            [questKeys.objectives] = {{{41531}}},
        },
        [25909] = { -- Capture the Crab
            [questKeys.preQuestSingle] = {},
            [questKeys.preQuestGroup] = {25907,25908},
        },
        [25930] = { -- Ascending the Vale
            [questKeys.triggerEnd] = {"Ascend the Charred Vale", {[zoneIDs.STONETALON_MOUNTAINS]={{31.3,73.2}}}},
        },
        [25974] = { -- Sira'kess Slaying
            [questKeys.preQuestSingle] = {26092},
        },
        [25976] = { -- Treasure Reclamation
            [questKeys.preQuestSingle] = {26092},
        },
        [25980] = { -- A Standard Day for Azrajar
            [questKeys.objectives] = {{{41590}}},
            [questKeys.preQuestSingle] = {26092},
        },
        [25982] = { -- Those Aren't Masks
            [questKeys.preQuestSingle] = {26092},
        },
        [25987] = { -- Put It On
            [questKeys.triggerEnd] = {"Merciless One worn",{[zoneIDs.ABYSSAL_DEPTHS]={{51.5,60.8}}}},
        },
        [25988] = { -- Put It On
            [questKeys.triggerEnd] = {"Merciless One worn",{[zoneIDs.ABYSSAL_DEPTHS]={{51.5,60.8}}}},
        },
        [26056] = { -- The Wavespeaker
            [questKeys.exclusiveTo] = {26057,26065},
            [questKeys.nextQuestInChain] = 26065,
        },
        [26057] = { -- The Wavespeaker
            [questKeys.exclusiveTo] = {26056,26065},
            [questKeys.nextQuestInChain] = 26065,
        },
        [26065] = { -- Free Wil'hai
            [questKeys.preQuestSingle] = {},
        },
        [26072] = { -- Into the Totem
            [questKeys.objectives] = {{{42051}}},
        },
        [26086] = { -- Orako
            [questKeys.preQuestSingle] = {26126},
        },
        [26088] = { -- Here Fishie Fishie
            [questKeys.preQuestSingle] = {26087},
        },
        [26089] = { -- Die Fishman Die
            [questKeys.preQuestSingle] = {26087},
        },
        [26090] = { -- I Brought You This Egg
            [questKeys.startedBy] = {{41925,41926},nil,{56812}},
        },
        [26092] = { -- Orako's Report
            [questKeys.preQuestGroup] = {26088,26089},
        },
        [26105] = { -- Claim Korthun's End
            [questKeys.startedBy] = {{42115}},
        },
        [26106] = { -- Fuel-ology 101
            [questKeys.requiredSourceItems] = {56819,56820},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_EVENT, l10n("Bring three Hammerhead Oil and two Remora Oil to Engineer Hexascrub."), 0, {{"monster", 41666}}}},
        },
        [26122] = { -- Environmental Awareness
            [questKeys.preQuestSingle] = {26221},
        },
        [26124] = { -- Secure Seabrush
            [questKeys.exclusiveTo] = {26125},
        },
        [26125] = { -- Secure Seabrush
            [questKeys.exclusiveTo] = {26124},
        },
        [26126] = { -- The Perfect Fuel
            [questKeys.requiredSourceItems] = {56819,56820},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_EVENT, l10n("Bring three Hammerhead Oil and two Remora Oil to Fiasco Sizzlegrin."), 0, {{"monster", 41666}}}},
        },
        [26133] = { -- Fiends from the Netherworld
            [questKeys.preQuestSingle] = {26111},
        },
        [26154] = { -- Twilight Extermination
            [questKeys.objectives] = {{{47969},{42285}},nil,nil,nil,{{{42281,42280},42280}}},
        },
        [26182] = { -- Back to the Tenebrous Cavern
            [questKeys.preQuestSingle] = {26143},
        },
        [26198] = { -- The Arts of a Mage
            [questKeys.objectives] = {{{44175}},nil,nil,nil,nil,{{5143}}},
            [questKeys.objectivesText] = {"Speak to Bipsi Frostflinger to train Arcane Missiles. Once you've learned the spell, successfully cast Arcane Missiles twice at a Training Dummy in New Tinkertown."},
        },
        [26200] = { -- The Arts of a Priest
            [questKeys.objectives] = {{{44175}},nil,nil,nil,nil,{{2061}}},
            [questKeys.objectivesText] = {"Speak to \"Doc\" Cogspin to train Flash Heal. Use Flash Heal 5 times on Wounded Infantry in New Tinkertown."},
        },
        [26201] = { -- The Power of a Warlock
            [questKeys.objectives] = {{{44175}},nil,nil,nil,nil,{{348}}},
            [questKeys.objectivesText] = {"Speak to Alamar Grimm and learn Immolate, then cast Immolate on a Training Dummy in New Tinkertown 5 times."},
        },
        [26204] = { -- The Arts of a Warrior
            [questKeys.objectives] = {{{44175}},nil,nil,nil,nil,{{100}}},
            [questKeys.objectivesText] = {"Speak to Drill Sergeant Steamcrank to learn Charge. Locate a Training Dummy in New Tinkertown and use Charge on it."},
        },
        [26207] = { -- The Arts of a Rogue
            [questKeys.objectives] = {{{44175}},nil,nil,nil,nil,{{2098}}},
            [questKeys.objectivesText] = {"Speak to Kelsey Steelspark to learn Eviscerate, then find a training dummy in New Tinkertown and practice using Eviscerate 3 times."},
        },
        [26229] = { -- "I TAKE Candle!"
            [questKeys.requiredRaces] = raceKeys.ALL_ALLIANCE,
        },
        [26230] = { -- Feast or Famine
            [questKeys.requiredRaces] = raceKeys.ALL_ALLIANCE,
        },
        [26258] = { -- Deathwing's Fall
            [questKeys.triggerEnd] = {"Deathwing's Fall reached", {[zoneIDs.DEEPHOLM]={{61.3,57.5}}}},
        },
        [26293] = { -- Machines of War
            [questKeys.startedBy] = {{39605}},
        },
        [26294] = { -- Weapons of Mass Dysfunction
            [questKeys.finishedBy] = {{39605}},
            [questKeys.objectives] = {{{42673},{42671}}},
        },
        [26311] = { -- Unfamiliar Waters
            [questKeys.preQuestSingle] = {26294},
        },
        [26324] = { -- Where Is My Warfleet?
            [questKeys.startedBy] = {{39605}},
        },
        [26337] = { -- Beating the Market
            [questKeys.objectives] = {{{42777}}},
        },
        [26374] = { -- Ready the Ground Troops
            [questKeys.objectives] = {{{42646}}},
        },
        [26377] = { -- Unsolid Ground
            [questKeys.requiredSourceItems] = {58500,58783},
        },
        [26397] = { -- Walk With The Earth Mother
            [questKeys.finishedBy] = {{39605}},
            [questKeys.objectivesText] = {"Take the Mark of Bloodhoof to Garrosh Hellscream, located in Grommash Hold in Orgrimmar.","","You may speak with Tal the Wind Rider Master to travel there, or wait for the zeppelin."},
        },
        [26398] = { -- Walk With The Earth Mother
            [questKeys.startedBy] = {{36648}},
            [questKeys.finishedBy] = {{39605}},
            [questKeys.objectivesText] = {"Take the Mark of Bloodhoof to Garrosh Hellscream, located in Grommash Hold in Orgrimmar.","","You may speak with Tal the Wind Rider Master to travel there, or wait for the zeppelin."},
        },
        [26440] = { -- Clingy
            [questKeys.triggerEnd] = {"Pebble brought to crystal formation",{[zoneIDs.DEEPHOLM]={{29,45}}}},
            [questKeys.objectives] = {},
        },
        [26512] = { -- Tuning the Gnomecorder
            [questKeys.triggerEnd] = {"Test the Gnomecorder at the Lakeshire Graveyard", {[zoneIDs.REDRIDGE_MOUNTAINS]={{32.3,39.5}}}},
        },
        [26538] = { -- Emergency Aid
            [questKeys.objectives] = {{{43191}}},
        },
        [26549] = { -- Madness
            [questKeys.objectives] = {},
            [questKeys.triggerEnd] = {"Negotiations Concluded",{[zoneIDs.TWILIGHT_HIGHLANDS]={{75.5,55.25}}}},
        },
        [26621] = { -- Insurrection
            [questKeys.objectives] = {{{43575},{43394}},nil,nil,nil,{{{43577,43578},43577,"Dragonmaw Civilian Armed"}}},
        },
        [26642] = { -- Preserving the Barrens
            [questKeys.exclusiveTo] = {28494},
        },
        [26656] = { -- Don't. Stop. Moving.
            [questKeys.triggerEnd] = {"Opalescent Guardians Escorted to safety", {[zoneIDs.DEEPHOLM]={{51,14.8}}}},
            [questKeys.objectives] = {{{42466},{43597}},nil,nil,nil,},
        },
        [26711] = { -- Off to the Bank (female)
            [questKeys.exclusiveTo] = {26712},
        },
        [26712] = { -- Off to the Bank (male)
            [questKeys.exclusiveTo] = {26711},
        },
        [26750] = { -- At the Stonemother's Call
            [questKeys.preQuestSingle] = {26659},
        },
        [26798] = { -- Saurfang Will be Pleased
            [questKeys.name] = "The Warchief Will Be Pleased",
            [questKeys.finishedBy] = {{39605}},
            [questKeys.objectivesText] = {"Use the portal in Dragonmaw Port to go to Orgrimmar and report to Garrosh Hellscream."},
        },
        [26803] = { -- Missing Reports
            [questKeys.preQuestSingle] = {},
        },
        [26827] = { -- Rallying the Earthen Ring
            [questKeys.objectives] = {nil,nil,nil,nil,{{{43836,44633,44634,44642,44644,44646,44647},44642,"Earthen Ring rallied"}}},
        },
        [26829] = { -- The Stone March
            [questKeys.preQuestSingle] = {26828},
        },
        [26830] = { -- Traitor's Bait
            [questKeys.startedBy] = {{39605}},
            [questKeys.finishedBy] = {{39605}},
            [questKeys.objectives] = {{{44160},{44120}}},
        },
        [26831] = { -- The Twilight Flight
            [questKeys.finishedBy] = {{44080}},
            [questKeys.preQuestSingle] = {26828},
        },
        [26832] = { -- Therazane's Mercy
            [questKeys.preQuestSingle] = {26828},
        },
        [26840] = { -- Return to the Highlands
            [questKeys.startedBy] = {{39605}},
        },
        [26904] = { -- Corruption
            [questKeys.objectives] = {{{44175}},nil,nil,nil,nil,{{348}}},
            [questKeys.objectivesText] = {"Speak to Saripal Smolderbrew and learn Immolate, then cast Immolate 5 times on a Training Dummy near the entrance to Anvilmar."},
        },
        [26913] = { -- Charging into Battle
            [questKeys.objectives] = {{{44175}},nil,nil,nil,nil,{{100}}},
            [questKeys.objectivesText] = {"Speak to Llane Bershere and purchase the Charge ability, then practice using Charge on a Training Dummy south of the entrance to Northshire Abbey."},
        },
        [26914] = { -- Corruption
            [questKeys.objectives] = {{{44175}},nil,nil,nil,nil,{{348}}},
            [questKeys.objectivesText] = {"Speak to Drusilla La Salle and purchase the Immolate ability, then practice casting Immolate 5 times on a Training Dummy south of the entrance to Northshire Abbey."},
        },
        [26915] = { -- The Deepest Cut
            [questKeys.objectives] = {{{44175}},nil,nil,nil,nil,{{2098}}},
            [questKeys.objectivesText] = {"Speak to Jorik Kerridan and purchase the Eviscerate ability, then find a Training Dummy south of the entrance to Northshire Abbey and practice Eviscerate 3 times."},
        },
        [26916] = { -- Mastering the Arcane
            [questKeys.objectives] = {{{44175}},nil,nil,nil,nil,{{5143}}},
            [questKeys.objectivesText] = {"Speak to Khelden Bremen and purchase the Arcane Missiles ability, then practice casting Arcane Missiles 2 times on a Training Dummy south of the entrance to Northshire Abbey."},
        },
        [26917] = { -- The Hunter's Path
            [questKeys.objectives] = {{{44175}},nil,nil,nil,nil,{{56641}}},
            [questKeys.objectivesText] = {"Speak to Ashley Blank and purchase the Steady Shot ability, then find a Training Dummy south of the entrance to Northshire Abbey and practice using Steady Shot 5 times."},
        },
        [26918] = { -- The Power of the Light
            [questKeys.objectives] = {{{44175}},nil,nil,nil,nil,{{20154}}},
            [questKeys.objectivesText] = {"Speak to Brother Sammuel and purchase the Seal of Righteousness and Judgement abilities. Cast Seal of Righteousness on yourself and then use Judgement on a Training Dummy south of the entrance to Northshire Abbey."},
        },
        [26919] = { -- Learning the Word
            [questKeys.objectives] = {{{44175}},nil,nil,nil,nil,{{2061}}},
            [questKeys.objectivesText] = {"Speak to Priestess Anetta and purchase the Flash Heal ability, then use Flash Heal 5 times to treat Wounded Trainees inside Northshire Abbey."},
        },
        [26930] = { -- After the Crusade
            [questKeys.triggerEnd] = {"Scarlet Crusade camp scouted", {[zoneIDs.WESTERN_PLAGUELANDS]={{40.6,52.6}}}},
        },
        [26940] = { -- Frost Nova
            [questKeys.objectives] = {{{44175}},nil,nil,nil,nil,{{5143}}},
            [questKeys.objectivesText] = {"Learn Arcane Missiles from Rhyanda. Look for a Training Dummy near, and practice using Arcane Missiles twice."},
        },
        [26945] = { -- Learning New Techniques
            [questKeys.objectives] = {{{44175}},nil,nil,nil,nil,{{100}}},
            [questKeys.objectivesText] = {"Learn Charge from Alyissia. Look for a Training Dummy near, and practice using Charge."},
        },
        [26947] = { -- A Woodsman's Training
            [questKeys.objectives] = {{{44175}},nil,nil,nil,nil,{{56641}}},
            [questKeys.objectivesText] = {"Learn Steady Shot from Ayanna Everstride. Look for a Training Dummy southeast of Aldrassil, and practice using Steady Shot 5 times."},
        },
        [26948] = { -- Moonfire
            [questKeys.objectives] = {{{44175}},nil,nil,nil,nil,{{774}}},
            [questKeys.objectivesText] = {"Learn Rejuvenation from Mardant Strongoak. Use Rejuvenation to treat a Wounded Sentinel in Aldrassil."},
        },
        [26949] = { -- Learning the Word
            [questKeys.objectives] = {{{44175}},nil,nil,nil,nil,{{2061}}},
            [questKeys.objectivesText] = {"Learn Flash Heal from Shanda. Use Flash Heal 5 times to treat the Wounded Sentinels in Aldrassil."},
        },
        [26958] = { -- Your First Lesson
            [questKeys.objectives] = {{{44175}},nil,nil,nil,nil,{{100}}},
            [questKeys.objectivesText] = {"Learn Charge from Kore. Find a Training Dummy on the northwest side of the Crash Site and practice using Charge."},
        },
        [26963] = { -- Steadying Your Shot
            [questKeys.objectives] = {{{44175}},nil,nil,nil,nil,{{56641}}},
            [questKeys.objectivesText] = {"Learn Steady Shot from Keilnei. Find a Training Dummy on the northwest side of the Crash Site and practice using Steady Shot 5 times."},
        },
        [26966] = { -- The Light's Power
            [questKeys.objectives] = {{{44175}},nil,nil,nil,nil,{{20154}}},
            [questKeys.objectivesText] = {"Learn Seal of Righteousness and Judgement from Aurelon. Apply Seal of Righteousness, find a Training Dummy on the northwest side of the Crash Site and use Judgement."},
        },
        [26968] = { -- Frost Nova
            [questKeys.objectives] = {{{44175}},nil,nil,nil,nil,{{5143}}},
            [questKeys.objectivesText] = {"Learn Arcane Missiles from Valaatu. Find a Training Dummy on the northwest side of the Crash Site and practice using Arcane Missiles 2 times."},
        },
        [26969] = { -- Primal Strike
            [questKeys.objectives] = {{{44175}},nil,nil,nil,nil,{{73899}}},
        },
        [26970] = { -- Learning the Word
            [questKeys.objectives] = {{{44175}},nil,nil,nil,nil,{{2061}}},
            [questKeys.objectivesText] = {"Learn Flash Heal from Zalduun. Use Flash Heal 5 times to heal the wounds of Injured Draenei at the Crash Site."},
        },
        [26975] = { -- Rallying the Fleet
            [questKeys.triggerEnd] = {"Prince Anduin Escorted to Graves", {[zoneIDs.STORMWIND_CITY]={{33.5,40.9}}}},
        },
        [27007] = { -- Silvermarsh Rendezvous
            [questKeys.triggerEnd] = {"Upper Silvermarsh reached", {[zoneIDs.DEEPHOLM]={{72.3,62.3}}}},
        },
        [27010] = { -- Quicksilver Submersion
            [questKeys.requiredSourceItems] = {60809},
        },
        [27020] = { -- The First Lesson
            [questKeys.objectives] = {{{44175}},nil,nil,nil,nil,{{100}}},
            [questKeys.objectivesText] = {"Learn Charge from Harutt Thunderhorn. Locate a Training Dummy in Camp Narache and practice using Charge."},
        },
        [27021] = { -- The Hunter's Path
            [questKeys.objectives] = {{{44175}},nil,nil,nil,nil,{{56641}}},
            [questKeys.objectivesText] = {"Learn Steady Shot from Lanka Farshot. Locate a Training Dummy in Camp Narache and practice using Steady Shot 5 times."},
        },
        [27023] = { -- The Way of the Sunwalkers
            [questKeys.objectives] = {{{44175}},nil,nil,nil,nil,{{20154}}},
            [questKeys.objectivesText] = {"Learn Seal of Righteousness and Judgement from Sunwalker Helaku. Locate a Training Dummy in Camp Narache and practice using Judgement."},
        },
        [27027] = { -- Primal Strike
            [questKeys.objectives] = {{{44175}},nil,nil,nil,nil,{{73899}}},
            [questKeys.objectivesText] = {"Learn Primal Strike from Meela Dawnstrider. Locate a Training Dummy in Camp Narache and practice using Primal Strike 3 times."},
        },
        [27044] = { -- Peasant Problems
            [questKeys.triggerEnd] = {"Anduin Escorted to Farmer Wollerton", {[zoneIDs.STORMWIND_CITY]={{52.1,6.5}}}},
        },
        [27066] = { -- Learning the Word
            [questKeys.objectives] = {{{44175}},nil,nil,nil,nil,{{2061}}},
            [questKeys.objectivesText] = {"Learn Flash Heal from Seer Ravenfeather. Practice using Flash Heal 5 times on Wounded Braves in Camp Narache."},
        },
        [27067] = { -- Moonfire
            [questKeys.objectives] = {{{44175}},nil,nil,nil,nil,{{774}}},
            [questKeys.objectivesText] = {"Learn Rejuvination from Gart Mistrunner. Practice using Rejuvination on a Wounded Brave in Camp Narache."},
        },
        [27091] = { -- Charge!
            [questKeys.objectives] = {{{44175}},nil,nil,nil,nil,{{100}}},
            [questKeys.objectivesText] = {"Learn Charge from Delios. Locate a Training Dummy outside the Sunspire and practice using Charge."},
        },
        [27509] = { -- Breach in the Defenses
            [questKeys.objectives] = {nil,{{205486,"Twilight Portal destroyed"}}},
        },
        [27123] = { -- Deepholm, Realm of Earth
            [questKeys.exclusiveTo] = {26244,26245,26246},
        },
        [27139] = { -- Hobart Needs You
            [questKeys.exclusiveTo] = {24671},
        },
        [27141] = { -- Exploding Through
            [questKeys.preQuestSingle] = {},
        },
        [27152] = { -- Unusual Behavior... Even For Gnolls
            [questKeys.triggerEnd] = {"Gnoll camp investigated", {[zoneIDs.WESTERN_PLAGUELANDS]={{57.5,35.6}}}},
        },
        [27176] = { -- A Strange Disc
            [questKeys.requiredSourceItems] = {60865},
        },
        [27203] = { -- The Maelstrom
            [questKeys.preQuestSingle] = {27399,27442,27722,27398,27443,27727},
        },
        [27299] = { -- Torn Ground
            [questKeys.preQuestSingle] = {},
        },
        [27301] = { -- Unbroken
            [questKeys.preQuestSingle] = {27300},
        },
        [27302] = { -- Simple Solutions
            [questKeys.preQuestSingle] = {27299},
        },
        [27341] = { -- Scouting the Shore
            [questKeys.triggerEnd] = {"Beach Head Control Point Scouted", {[zoneIDs.TWILIGHT_HIGHLANDS]={{77.5,65.2}}}},
        },
        [27349] = { -- Break in Communications: Dreadwatch Outpost
            [questKeys.triggerEnd] = {"Investigate Dreadwatch Outpost", {[zoneIDs.RUINS_OF_GILNEAS]={{53,32.6}}}},
        },
        [27398] = { -- The Battle Is Won, The War Goes On
            [questKeys.exclusiveTo] = {27443,27727},
        },
        [27399] = { -- The Battle Is Won, The War Goes On
            [questKeys.exclusiveTo] = {27442,27722},
        },
        [27442] = { -- The War Has Many Fronts
            [questKeys.exclusiveTo] = {27399,27722},
        },
        [27443] = { -- The War Has Many Fronts
            [questKeys.exclusiveTo] = {27398,27727},
        },
        [27583] = {
            [questKeys.preQuestSingle] = {26840},
        },
        [27586] = { -- Shells on the Sea Shore
            [questKeys.preQuestSingle] = {27583},
        },
        [27606] = { -- Blast Him!
            [questKeys.preQuestGroup] = {27584,27586},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_EVENT, l10n("Use the Heth'Jatari Conch"), 0, {{"object", 205831}}}},
        },
        [27610] = { -- Scouting the Shore
            [questKeys.triggerEnd] = {"Beach Head Control Point Scouted", {[zoneIDs.TWILIGHT_HIGHLANDS]={{77.5,65.2}}}},
        },
        [27622] = { -- Mo' Better Shredder
            [questKeys.objectives] = {{{46100},{46098}}},
            [questKeys.preQuestSingle] = {27611},
        },
        [27674] = { -- To the Surface
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_TALK, l10n("Talk to Torben Zapblast."), 0, {{"monster", 46293}}}},
        },
        [27689] = { -- Distract Them for Me
            [questKeys.preQuestSingle] = {27655},
            [questKeys.exclusiveTo] = {},
        },
        [27690] = { -- Narkrall, the Drake-Tamer
            [questKeys.preQuestSingle] = {27606},
        },
        [27696] = { -- The Elementium Axe
            [questKeys.preQuestSingle] = {27689},
            [questKeys.exclusiveTo] = {},
        },
        [27704] = { -- Legends of the Sunken Temple
            [questKeys.triggerEnd] = {"Hall of Masks found", {[zoneIDs.THE_TEMPLE_OF_ATAL_HAKKAR]={{74,44.4}}}},
        },
        [27721] = { -- Warchief's Command: Mount Hyjal! TODO: Add TALK_ICON
            [questKeys.objectives] = {{{15188}}},
        },
        [27722] = { -- Warchief's Command: Deepholm!
            [questKeys.exclusiveTo] = {27399,27442},
        },
        [27724] = { -- Hero's Call: Vashj'ir!
            [questKeys.startedBy] = {nil,{206111,206294,207320,207321,207322,281339}},
        },
        [27726] = { -- Hero's Call: Mount Hyjal!
            [questKeys.startedBy] = {nil,{206111,206294,207320,207321,207322,281339}},
        },
        [27727] = { -- Hero's Call: Deepholm!
            [questKeys.startedBy] = {nil,{206111,206294,207320,207321,207322,281339}},
            [questKeys.exclusiveTo] = {27398,27443},
        },
        [27742] = { -- A Little on the Side
            [questKeys.preQuestSingle] = {28885},
        },
        [27743] = { -- While We're Here
            [questKeys.preQuestSingle] = {28885},
        },
        [27747] = { -- Total War
            [questKeys.objectives] = {nil,{{206195}}},
            [questKeys.preQuestSingle] = {27690},
        },
        [27750] = { -- War Forage
            [questKeys.preQuestSingle] = {27690},
        },
        [27751] = { -- Crushing the Wildhammer
            [questKeys.preQuestSingle] = {27690},
        },
        [27755] = { -- The Curse of the Tombs
            [questKeys.preQuestSingle] = {28501},
        },
        [27778] = { -- Hacking the Wibson
            [questKeys.objectives] = {{{46715}}},
            [questKeys.requiredSourceItems] = {62621},
            [questKeys.preQuestSingle] = {},
            [questKeys.preQuestGroup] = {27761,27777},
        },
        [27779] = { -- Gnomebliteration
            [questKeys.objectives] = {{{46384}}},
        },
        [27783] = { -- Garona Needs You
            [questKeys.preQuestSingle] = {27745},
            [questKeys.exclusiveTo] = {27786},
        },
        [27922] = { -- Traitors!
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_OBJECT, l10n("Hide behind Neferset Frond"), 0, {{"object", 206579}}}},
        },
        [27929] = { -- Drag 'em Down
            [questKeys.preQuestSingle] = {27690},
        },
        [27945] = { -- Paint it Black
            [questKeys.preQuestSingle] = {27690},
        },
        [27947] = { -- A Vision of Twilight
            [questKeys.preQuestSingle] = {27690},
        },
        [27950] = { -- Gobbles!
            [questKeys.objectives] = {{{47191}}},
        },
        [27969] = { -- Make Yourself Useful
            [questKeys.objectives] = {{{47292}}},
        },
        [27990] = { -- Battlezone
            [questKeys.objectives] = {{{47385},{47940}}},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_INTERACT, l10n("Man the Siege Tank"), 0, {{"monster", 47732}}}},
        },
        [27993] = { -- Take it to 'Em!
            [questKeys.triggerEnd] = {"Khartut's Tomb Investigated",{[zoneIDs.ULDUM]={{64.6,28.6}}}},
            [questKeys.exclusiveTo] = {27141},
        },
        [28038] = { -- Blood in the Highlands
            [questKeys.exclusiveTo] = {27863},
        },
        [28041] = { -- Bait and Throttle
            [questKeys.preQuestGroup] = {27751,27929},
        },
        [28043] = { -- How to Maim Your Dragon
            [questKeys.objectives] = {{{47391}}},
        },
        [28134] = { -- Impending Retribution
            [questKeys.objectives] = {{{46603},{47715},{47930}}}
        },
        [28145] = { -- Venomblood Antidote
            [questKeys.objectives] = {{{45859}}},
        },
        [28170] = { -- Night Terrors
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_TALK, l10n("Talk to Uchek"), 0, {{"monster", 47826}}}},
        },
        [28247] = { -- Last of Her Kind
            [questKeys.objectives] = {{{47929,"Obsidia defeated"}}},
        },
        [28250] = { -- Thieving Little Pluckers
            [questKeys.objectives] = {nil,nil,nil,nil,{{{48040,48041,48043},48040,"Thieving plucker smashed"}}},
        },
        [28351] = { -- Unlimited Potential
            [questKeys.objectives] = {{{51217}}},
        },
        [28352] = { -- Camelraderie
            [questKeys.objectives] = {{{51193}}},
        },
        [28376] = { -- Myzerian's Head
            [questKeys.startedBy] = {{48428},nil,{63700}},
        },
        [28403] = { -- Bad Datas
            [questKeys.triggerEnd] = {"Titan Data Uploaded",{[zoneIDs.ULDUM]={{36.18,23.25}}}},
            [questKeys.objectives] = {},
        },
        [28486] = { -- Salhet's Gambit
            [questKeys.triggerEnd] = {"Higher ground secured", {[zoneIDs.ULDUM]={{54.,71.1}}}},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_TALK, l10n("Talk to Ranmkahen Ranger Captain"), 0, {{"monster", 49244}}}},
        },
        [28501] = { -- The Defense of Nahom
            [questKeys.objectives] = {{{49228}}},
        },
        [28558] = { -- Hero's Call: Uldum!
            [questKeys.startedBy] = {nil,{206111,206294,207320,207321,207322,281339}},
        },
        [28584] = { -- Quality Construction
            [questKeys.preQuestSingle] = {28583},
        },
        [28586] = { -- Pool Pony Rescue
            [questKeys.preQuestSingle] = {28583},
        },
        [28592] = { -- Parting Packages
            [questKeys.preQuestSingle] = {28591},
        },
        [28606] = { -- The Keys to the Hot Rod
            [questKeys.startedBy] = {{34874}},
            [questKeys.parentQuest] = 14071,
            [questKeys.specialFlags] = specialFlags.REPEATABLE,
        },
        [28607] = { -- The Keys to the Hot Rod
            [questKeys.parentQuest] = 14121,
            [questKeys.specialFlags] = specialFlags.REPEATABLE,
        },
        [28622] = { -- Three if by Air
            [questKeys.objectives] = {{{49211},{49215},{49216}}},
        },
        [28635] = { -- A Haunting in Hillsbrad
            [questKeys.triggerEnd] = {"Search Dun Garok for Evidence of a Haunting", {[zoneIDs.HILLSBRAD_FOOTHILLS]={{61.9,84.5}}}},
        },
        [28708] = { -- Hero's Call: Outland!
            [questKeys.startedBy] = {nil,{206111,206294,207320,207321,207322,281339}},
        },
        [28709] = { -- Hero's Call: Borean Tundra!
            [questKeys.startedBy] = {nil,{206111,206294,207320,207321,207322,281339}},
        },
        [28716] = { -- Hero's Call: Twilight Highlands!
            [questKeys.startedBy] = {nil,{206111,206294,207320,207321,207322,281339}},
        },
        [28717] = { -- Warchief's Command: Twilight Highlands!
            [questKeys.finishedBy] = {{39605}},
        },
        [28732] = { --This Can Only Mean One Thing...
            [questKeys.triggerEnd] = {"Arrive at Blackrock Caverns", {[zoneIDs.BLACKROCK_CAVERNS]={{33,66.4}}}},
            [questKeys.objectives] = {{{49456}},nil,nil,nil,},
        },
        [28805] = { -- The Eye of the Storm
            [questKeys.objectives] = {nil,{{197196}}},
        },
        [28228] = { -- Rejoining the Forest
            [questKeys.triggerEnd] = {"Protector brought to hill", {[zoneIDs.FELWOOD]={{48.7,25.2}}}},
        },
        [28849] = { -- Twilight Skies
            [questKeys.preQuestGroup] = {26337,26372,26374},
        },
        [28870] = { -- Return to the Lost City
            [questKeys.preQuestSingle] = {28520},
        },
        [28871] = { -- Crushing the Wildhammer
            [questKeys.preQuestSingle] = {28133},
        },
        [28872] = { -- Total War
            [questKeys.objectives] = {nil,{{206195}}},
        },
        [28873] = { -- Another Maw to Feed
            [questKeys.preQuestSingle] = {28133},
        },
        [28874] = { -- Hook 'em High
            [questKeys.preQuestSingle] = {28133},
        },
        [28875] = { -- Bring Down the High Shaman
            [questKeys.preQuestSingle] = {28133},
        },
        [28909] = { -- Sauranok Will Point the Way
            [questKeys.startedBy] = {{39605}},
            [questKeys.preQuestSingle] = {26294},
            [questKeys.exclusiveTo] = {26311},
        },
        [29102] = { -- To Fort Livingston
            [questKeys.triggerEnd] = {"Head to Fort Livingston in Northern Stranglethorn Vale.", {[zoneIDs.STRANGLETHORN_VALE]={{52.8,67.2}}}},
        },
        [29156] = { -- The Troll Incursion
            [questKeys.startedBy] = {nil,{206111,206294,207320,207321,207322,281339}},
        },
        [29326] = { -- The Nordrassil Summit
            [questKeys.preQuestSingle] = {},
            [questKeys.nextQuestInChain] = 29335,
        },
        [29327] = { -- Elemental Bonds: Doubt
            [questKeys.nextQuestInChain] = 29336,
        },
        [29328] = { -- Elemental Bonds: Desire
            [questKeys.preQuestSingle] = {29336},
            [questKeys.nextQuestInChain] = 29337,
        },
        [29329] = { -- Elemental Bonds: Patience
            [questKeys.preQuestSingle] = {29337},
            [questKeys.nextQuestInChain] = 29338,
        },
        [29330] = { -- Elemental Bonds: Fury
            [questKeys.preQuestSingle] = {29338},
            [questKeys.nextQuestInChain] = 29331,
        },
        [29331] = { -- Elemental Bonds: The Vow
            [questKeys.preQuestSingle] = {29330},
        },
        [29335] = { -- Into Slashing Winds
            [questKeys.nextQuestInChain] = 29327,
        },
        [29336] = { -- Into Coaxing Tides
            [questKeys.preQuestSingle] = {29327},
            [questKeys.nextQuestInChain] = 29328,
        },
        [29337] = { -- Into Constant Earth
            [questKeys.nextQuestInChain] = 29329,
        },
        [29338] = { -- Into Unrelenting Flame
            [questKeys.nextQuestInChain] = 29330,
        },
        [29387] = { -- Guardians of Hyjal: Firelands Invasion!
            [questKeys.startedBy] = {nil,{206111,206294,207320,207321,207322,281339}},
        },
        [29391] = { -- Guardians of Hyjal: Call of the Ancients
            [questKeys.startedBy] = {nil,{206111,206294,207320,207321,207322,281339}},
        },
        [29392] = { -- Missing Heirlooms
            [questKeys.triggerEnd] = {"Search the courier's cabin", {[zoneIDs.STORMWIND_CITY]={{41.4,72.5}}}},
        },
        [29415] = { -- Missing Heirlooms
            [questKeys.triggerEnd] = {"Search the courier's cabin", {[zoneIDs.DUROTAR]={{60,46.1}}}},
        },
        [29439] = { -- The Call of the World-Shaman
            [questKeys.exclusiveTo] = {29326},
            [questKeys.nextQuestInChain] = 29326,
        },
        [29440] = { -- The Call of the World-Shaman
            [questKeys.exclusiveTo] = {29326},
            [questKeys.nextQuestInChain] = 29326,
        },
        [29475] = { -- Goblin Engineering
            [questKeys.startedBy] = {{5174,5518,8126,8738,11017,11031,16667,16726,29513,52636,52651}},
            [questKeys.finishedBy] = {{5174,5518,11017,11031,16667,16726,29513,52636,52651}},
            [questKeys.exclusiveTo] = {3639,3641,3643,29477},
        },
        [29477] = { -- Gnomish Engineering
            [questKeys.startedBy] = {{5174,5518,7406,7944,11017,11031,16667,16726,29514,52636,52651}},
            [questKeys.finishedBy] = {{5174,5518,7944,11017,11031,16667,16726,29514,52636,52651}},
            [questKeys.exclusiveTo] = {3639,3641,3643,29475},
        },
        [29481] = { -- Elixir Master
            [questKeys.requiredSkill] = {profKeys.ALCHEMY,475},
        },
        [29482] = { -- Transmutation Master
            [questKeys.requiredSkill] = {profKeys.ALCHEMY,475},
        },
        [29536] = { -- Heart of Rage
            [questKeys.triggerEnd] = {"Fully Investigate The Blood Furnace", {[zoneIDs.THE_BLOOD_FURNACE]={{64.9,41.5}}}},
        },
        [29539] = { -- Heart of Rage
            [questKeys.triggerEnd] = {"Fully Investigate The Blood Furnace", {[zoneIDs.THE_BLOOD_FURNACE]={{64.9,41.5}}}},
        },
    }
end

function CataQuestFixes:LoadFactionFixes()
    local questKeys = QuestieDB.questKeys

    local questFixesHorde = {
        [29481] = { -- Elixir Master
            [questKeys.startedBy] = {{3347}}
        },
        [29482] = { -- Transmutation Master
            [questKeys.startedBy] = {{3347}}
        },
    }

    local questFixesAlliance = {
        [29481] = { -- Elixir Master
            [questKeys.startedBy] = {{5499}}
        },
        [29482] = { -- Transmutation Master
            [questKeys.startedBy] = {{5499}}
        },
    }

    if UnitFactionGroup("Player") == "Horde" then
        return questFixesHorde
    else
        return questFixesAlliance
    end
end
