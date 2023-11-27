---@type l10n
local l10n = QuestieLoader:ImportModule("l10n")

local socialOptionsLocales = {
    ["Social"] = {
        ["ptBR"] = false,
        ["ruRU"] = "Социальное",
        ["deDE"] = "Soziales",
        ["koKR"] = false,
        ["esMX"] = true,
        ["enUS"] = true,
        ["zhCN"] = "通报",
        ["zhTW"] = "通報",
        ["esES"] = true,
        ["frFR"] = true,
    },
    ["Social Options"] = {
        ["ptBR"] = false,
        ["ruRU"] = "Социальные настройки",
        ["deDE"] = "Soziale Einstellungen", -- TODO: Improve translation
        ["koKR"] = false,
        ["esMX"] = "Opciones sociales",
        ["enUS"] = true,
        ["zhCN"] = "通报设置",
        ["zhTW"] = "通報選項",
        ["esES"] = "Opciones sociales",
        ["frFR"] = "Options sociales",
    },
    ["Announce quest updates via chat"] = {
        ["ptBR"] = "Anúncio de missão",
        ["ruRU"] = "Оповещения о заданиях",
        ["deDE"] = "Quest Ereignisse im Chat mitteilen",
        ["koKR"] = "퀘스트 알림",
        ["esMX"] = "Anuncio de misión",
        ["enUS"] = true,
        ["zhCN"] = "任务进度通报",
        ["zhTW"] = "任務進度通報",
        ["esES"] = "Anuncio de misión",
        ["frFR"] = "Annonce de quête",
    },
    ["Announce quest updates to other players in your group"] = {
        ["ptBR"] = false,
        ["ruRU"] = "Включает оповещения об обновлениях заданий в чате группы",
        ["deDE"] = "Teilt Updates von Quests anderen Spielern in deiner Gruppe mit.",
        ["koKR"] = false,
        ["esMX"] = "Anuncia actualizaciones de misiones a otros jugadores en tu grupo",
        ["enUS"] = true,
        ["zhCN"] = "与您队伍中的其他玩家分享任务进度",
        ["zhTW"] = "將任務進度通報給隊伍中的其他玩家",
        ["esES"] = "Anuncia actualizaciones de misiones a otros jugadores en tu grupo",
        ["frFR"] = "Annoncer l'avancée des quêtes aux autres membres de votre groupe.",
    },
    ["Channels to announce in"] = {
        ["ptBR"] = false,
        ["ruRU"] = "Чаты для оповещений",
        ["deDE"] = "Kanäle in denen mitgeteilt wird",
        ["koKR"] = false,
        ["esMX"] = "Canales para anunciar en",
        ["enUS"] = true,
        ["zhCN"] = "通报的频道",
        ["zhTW"] = "通報的頻道",
        ["esES"] = "Canales para anunciar en",
        ["frFR"] = "Canaux dans lesquels annoncer",
    },
    ["Questie ShutUp!"] = {
    -- TN: This was a stand-alone addon name, so you may want to leave it untranslated (change to true)
        ["ptBR"] = false,
        ["ruRU"] = "Заткнись, Questie!",
        ["deDE"] = true,
        ["koKR"] = false,
        ["esMX"] = true,
        ["enUS"] = true,
        ["zhCN"] = "关闭Questie!通报",
        ["zhTW"] = "關閉任務通報!",
        ["esES"] = true,
        ["frFR"] = true,
    },
    ["Remove all Questie chat messages coming from other players and disable sending your own."] = {
        ["ptBR"] = false,
        ["ruRU"] = "Скрывает в чатах все сообщения Questie от других игроков и отключает отправку ваших",
        ["deDE"] = "Alle Questie-Chatnachrichten anderer Spieler entfernen und das Senden der eigenen deaktivieren.",
        ["koKR"] = false,
        ["esMX"] = "Elimina todos los mensajes de chat de Questie provenientes de otros jugadores y deshabilita el envío de los tuyos.",
        ["enUS"] = true,
        ["zhCN"] = "屏蔽来自其他玩家的所有 Questie 聊天消息，并禁止发送您自己的消息。",
        ["zhTW"] = "移除所有來自其他玩家的任務位置提示聊天訊息，你自己也停止發送訊息。",
        ["esES"] = "Elimina todos los mensajes de chat de Questie provenientes de otros jugadores y deshabilita el envío de los tuyos.",
        ["frFR"] = "Retire vos messages Questie du chat ainsi que ceux des autres joueurs",
    },
    ["Both"] = {
        ["ptBR"] = false,
        ["ruRU"] = "Группа и рейд",
        ["deDE"] = "Beide",
        ["koKR"] = false,
        ["esMX"] = "Ambos",
        ["enUS"] = true,
        ["zhCN"] = "两者",
        ["zhTW"] = "兩者",
        ["esES"] = "Ambos",
        ["frFR"] = "les deux",
    },
    ["Types of updates to announce in chat"] = {
        ["ptBR"] = false,
        ["ruRU"] = "Типы обновлений для оповещения в чатах",
        ["deDE"] = "Updatearten die im Chat mitgeteilt werden",
        ["koKR"] = false,
        ["esMX"] = "Tipos de actualizaciones para anunciar en el chat",
        ["enUS"] = true,
        ["zhCN"] = "在聊天中宣布的更新的类型",
        ["zhTW"] = "要通報的進度類型",
        ["esES"] = "Tipos de actualizaciones para anunciar en el chat",
        ["frFR"] = "Types de mises à jour à annoncer dans le chat",
    },
    ["Items starting a quest"] = {
        ["ptBR"] = false,
        ["ruRU"] = "Предметы, начинающие задание",
        ["deDE"] = "Quests startende Gegenstände",
        ["koKR"] = false,
        ["esMX"] = "Objetos que inician una misión",
        ["enUS"] = true,
        ["zhCN"] = "开始任务的物品",
        ["zhTW"] = "開始任務的物品",
        ["esES"] = "Objetos que inician una misión",
        ["frFR"] = "Objets commençant une quête",
    },
    ["Announce looted items that start a quest to other players"] = {
        ["ptBR"] = false,
        ["ruRU"] = "Оповещение о предметах, начинающих задание",
        ["deDE"] = "Teilt das Aufheben von Gegenständen, die eine Quests beginnen, anderen Spielern mit.",
        ["koKR"] = false,
        ["esMX"] = "Anunciar objetos despojados que inician una misión a otros jugadores",
        ["enUS"] = true,
        ["zhCN"] = "向队友通报开始任务的物品",
        ["zhTW"] = "拾取到會開始任務的物品時向其他玩家通報",
        ["esES"] = "Anunciar objetos despojados que inician una misión a otros jugadores",
        ["frFR"] = "Annonce le ramassage d’objets commençant une quête aux autres joueurs",
    },
    ["Quest accepted"] = {
        ["ptBR"] = false,
        ["ruRU"] = "Задание принято",
        ["deDE"] = "Quest angenommen",
        ["koKR"] = false,
        ["esMX"] = "Misión aceptada",
        ["enUS"] = true,
        ["zhCN"] = "已接受任务",
        ["zhTW"] = "接受任務",
        ["esES"] = "Misión aceptada",
        ["frFR"] = "Quête acceptée",
    },
    ["Announce quest acceptance to other players"] = {
        ["ptBR"] = false,
        ["ruRU"] = "Оповещение о принятии задания",
        ["deDE"] = "Teilt die Annahme von Quests anderen Spielern mit.",
        ["koKR"] = false,
        ["esMX"] = "Anunciar la aceptación de misiones a otros jugadores.",
        ["enUS"] = true,
        ["zhCN"] = "向其他玩家通报接受任务",
        ["zhTW"] = "接受任務時向其他玩家通報",
        ["esES"] = "Anunciar la aceptación de misiones a otros jugadores.",
        ["frFR"] = "Annoncer l'acceptation des quêtes aux autres joueurs",
    },
    ["Quest abandoned"] = {
        ["ptBR"] = false,
        ["ruRU"] = "Задание отменено",
        ["deDE"] = "Quest abgebrochen",
        ["koKR"] = false,
        ["esMX"] = "Misión abandonada",
        ["enUS"] = true,
        ["zhCN"] = "放弃任务",
        ["zhTW"] = "放棄任務",
        ["esES"] = "Misión abandonada",
        ["frFR"] = "Quête abandonnée",
    },
    ["Announce quest abortion to other players"] = {
        ["ptBR"] = false,
        ["ruRU"] = "Оповещение об отмене задания",
        ["deDE"] = "Teilt den Abbruch von Quests anderen Spielern mit.",
        ["koKR"] = false,
        ["esMX"] = "Anunciar el aborto de misiones a otros jugadores.",
        ["enUS"] = true,
        ["zhCN"] = "向其他玩家通报放弃任务",
        ["zhTW"] = "放棄任務時向其他玩家通報",
        ["esES"] = "Anunciar el aborto de misiones a otros jugadores.",
        ["frFR"] = "Annoncer l'annulation des quêtes aux autres joueurs",
    },
    ["Objective completed"] = {
        ["ptBR"] = false,
        ["ruRU"] = "Цель достигнута",
        ["deDE"] = "Questziel erfüllt",
        ["koKR"] = false,
        ["esMX"] = "Objetivo completado",
        ["enUS"] = true,
        ["zhCN"] = "完成目标",
        ["zhTW"] = "任務目標完成",
        ["esES"] = "Objetivo completado",
        ["frFR"] = "Objectif complété",
    },
    ["Announce completed objectives to other players"] = {
        ["ptBR"] = false,
        ["ruRU"] = "Оповещение о достижении целей задания",
        ["deDE"] = "Teilt die Erfüllung von Questzielen anderen Spielern mit.",
        ["koKR"] = false,
        ["esMX"] = "Anunciar objetivos completados a otros jugadores.",
        ["enUS"] = true,
        ["zhCN"] = "向其他玩家通报完成目标",
        ["zhTW"] = "任務目標完成時向其他玩家通報",
        ["esES"] = "Anunciar objetivos completados a otros jugadores.",
        ["frFR"] = "Annoncer les objectifs complétés aux autres joueurs",
    },
    ["Quest completed"] = {
        ["ptBR"] = false,
        ["ruRU"] = "Задание выполнено",
        ["deDE"] = "Quest abgeschlossen",
        ["koKR"] = false,
        ["esMX"] = "Misión completada",
        ["enUS"] = true,
        ["zhCN"] = "任务完成",
        ["zhTW"] = "任務完成",
        ["esES"] = "Misión completada",
        ["frFR"] = "Quête complétée",
    },
    ["Announce quest completion to other players"] = {
        ["ptBR"] = false,
        ["ruRU"] = "Оповещение о выполнении задания",
        ["deDE"] = "Teilt den Abschluß von Quests anderen Spielern mit.",
        ["koKR"] = false,
        ["esMX"] = "Anunciar la completación de la misión a otros jugadores.",
        ["enUS"] = true,
        ["zhCN"] = "向其他玩家通报任务完成",
        ["zhTW"] = "任務完成時向其他玩家通報",
        ["esES"] = "Anunciar la completación de la misión a otros jugadores.",
        ["frFR"] = "Annoncer la complétion des quêtes aux autres joueurs",
    },
    ["Share quest progress with nearby players"] = {
        ["ptBR"] = "Compartilhar o progresso da missão com jogadores próximos",
        ["ruRU"] = "Делиться прогрессом заданий",
        ["deDE"] = "Quest-Fortschritt mit Spielern in der Nähe teilen",
        ["koKR"] = "근처 플레이어에게 퀘스트 진행 공유",
        ["esMX"] = "Compartir el progreso de la misión con jugadores cercanos",
        ["enUS"] = true,
        ["zhCN"] = "与身边玩家分享任务进度",
        ["zhTW"] = "和附近的玩家分享任務進度",
        ["esES"] = "Compartir el progreso de la misión con jugadores cercanos",
        ["frFR"] = "Partager la progression avec les joueurs proches",
    },
    ["Your quest progress will be periodically sent to nearby players. Disabling this doesn't affect sharing progress with party members."] = {
        ["ptBR"] = "O progresso da sua missão será enviado periodicamente a jogadores próximos",
        ["ruRU"] = "Прогресс ваших заданий будет периодически отправляться игрокам, находящимся рядом",
        ["deDE"] = "Sendet deinen Quests-Fortschritt regelmäßig zu nahegelegenen Spielern",
        ["koKR"] = "퀘스트 진행상황은 정기적으로 근처 플레이어로 전송됩니다. 이 기능을 사용하지 않도록 설정해도 파티원과의 진행률 공유에는 영향을 주지 않습니다.",
        ["esMX"] = "El progreso de tu misión se enviará periódicamente a los jugadores cercanos.",
        ["enUS"] = true,
        ["zhCN"] = "你的任务进度將定期的发送给身边玩家",
        ["zhTW"] = "你的任務進度將會定期發送給附近的玩家。停用此選項不會影響與隊友分享任務進度。",
        ["esES"] = "El progreso de tu misión se enviará periódicamente a los jugadores cercanos.",
        ["frFR"] = "La progression de vos quêtes sera régulièrement partagée avec les joueurs proches.",
    },
    ["Display announcements locally when outside of a group"] = {
        ["ptBR"] = false,
        ["ruRU"] = "Оповещения вне группы",
        ["deDE"] = "Ankündigungen anzeigen, wenn du nicht in einer Gruppe bist",
        ["koKR"] = false,
        ["esMX"] = false,
        ["enUS"] = true,
        ["zhCN"] = "没在队伍时通报给自己",
        ["zhTW"] = "沒有隊伍時通報給自己",
        ["esES"] = false,
        ["frFR"] = false,
    },
    ["Questie will print your progress messages to chat when not in a group. Other players will NOT be able to see this."] = {
        ["ptBR"] = false,
        ["ruRU"] = "Questie будет отображать в чате оповещения о прогрессе ваших заданий, когда вы вне группы. Другие игроки НЕ БУДУТ видеть эти оповещения",
        ["deDE"] = "Questie wird deine Fortschrittsnachrichten im Chat anzeigen, wenn du nicht in einer Gruppe bist. Andere Spieler werden dies NICHT sehen können.",
        ["koKR"] = false,
        ["esMX"] = false,
        ["enUS"] = true,
        ["zhCN"] = "不在队伍时会用系统白色显示你的任务进度信息，其他玩家无法看到。",
        ["zhTW"] = "不在隊伍中時會用系統白字顯示你的任務進度訊息，其他玩家無法看到。",
        ["esES"] = false,
        ["frFR"] = false,
    },
}

for k, v in pairs(socialOptionsLocales) do
    l10n.translations[k] = v
end
