---@meta

--- QSanguosha LUA API
---@class sgs
sgs = {}

---@class sgs.QObject
QObject = {}

---@return string
function QObject:objectName() end

---@param name string
function QObject:setObjectName(name) end

---@param class_name string
---@return boolean
function QObject:inherits(class_name) end

---@param name string
---@param value sgs.QVariant
---@return boolean
function QObject:setProperty(name, value) end

---@param name string
---@return sgs.QVariant
function QObject:property(name) end

---@param parent sgs.QObject
function QObject:setParent(parent) end

function QObject:deleteLater() end

---@class sgs.General: sgs.QObject
General = {}

---@alias sgs.General_Gender integer

sgs.General_Sexless = 0
sgs.General_Male = 1
sgs.General_Female = 2
sgs.General_Neuter = 3

---@param package sgs.Package
---@param name string
---@param kingdom string
---@param max_hp integer
---@param male boolean
---@param hidden boolean
---@param never_shown boolean
---@return sgs.General
function sgs.General(package, name, kingdom, max_hp, male, hidden, never_shown) end

---@return integer
function General:getMaxHp() end

---@return string
function General:getKingdom() end

---@return boolean
function General:isMale() end

---@return boolean
function General:isFemale() end

---@return boolean
function General:isNeuter() end

---@return boolean
function General:isLord() end

---@return boolean
function General:isHidden() end

---@return boolean
function General:isTotallyHidden() end

---@return sgs.General_Gender
function General:getGender() end

---@param gender sgs.General_Gender
function General:setGender(gender) end

---@param skill sgs.Skill
---@overload fun(skill_name: string)
function General:addSkill(skill) end

---@param skill_name string
---@return boolean
function General:hasSkill(skill_name) end

---@return sgs.SkillList
function General:getSkillList() end

---@return sgs.SkillList
function General:getVisibleSkillList() end

---@return sgs.SkillList
function General:getVisibleSkills() end

---@param skill_name string
function General:addRelateSkill(skill_name) end

---@return string[]
function General:getRelatedSkillNames() end

---@return string
function General:getPackage() end

---@param include_name boolean
---@return string
function General:getSkillDescription(include_name) end

---@return string
function General:getBriefName() end

function General:lastWord() end

---@class sgs.Player: sgs.QObject
Player = {}

---@alias sgs.Player_Phase integer

sgs.Player_RoundStart = 0
sgs.Player_Start = 1
sgs.Player_Judge = 2
sgs.Player_Draw = 3
sgs.Player_Play = 4
sgs.Player_Discard = 5
sgs.Player_Finish = 6
sgs.Player_NotActive = 7
sgs.Player_PhaseNone = 8

---@alias sgs.Player_Place integer

sgs.Player_PlaceHand = 0
sgs.Player_PlaceEquip = 1
sgs.Player_PlaceDelayedTrick = 2
sgs.Player_PlaceJudge = 3
sgs.Player_PlaceSpecial = 4
sgs.Player_DiscardPile = 5
sgs.Player_DrawPile = 6
sgs.Player_PlaceTable = 7
sgs.Player_PlaceUnknown = 8

---@alias sgs.Player_Role integer

sgs.Player_Lord = 0
sgs.Player_Loyalist = 1
sgs.Player_Rebel = 2
sgs.Player_Renegade = 3

---@param parent sgs.QObject
---@return sgs.Player
function sgs.Player(parent) end

---@param screen_name string
function Player:setScreenName(screen_name) end

---@return string
function Player:screenName() end

---@return integer
function Player:getHp() end

---@param hp integer
function Player:setHp(hp) end

---@return integer
function Player:getMaxHp() end

---@param max_hp integer
function Player:setMaxHp(max_hp) end

---@return integer
function Player:getLostHp() end

---@return boolean
function Player:isWounded() end

---@return sgs.General_Gender
function Player:getGender() end

---@param gender sgs.General_Gender
function Player:setGender(gender) end

---@return boolean
function Player:isMale() end

---@return boolean
function Player:isFemale() end

---@return boolean
function Player:isNeuter() end

---@return boolean
function Player:hasShownRole() end

---@param shown boolean
function Player:setShownRole(shown) end

---@return integer
function Player:getMaxCards() end

---@return string
function Player:getKingdom() end

---@param kingdom string
function Player:setKingdom(kingdom) end

---@param role string
function Player:setRole(role) end

---@return string
function Player:getRole() end

---@return sgs.Player_Role
function Player:getRoleEnum() end

---@param general sgs.General
function Player:setGeneral(general) end

---@param general_name string
function Player:setGeneralName(general_name) end

---@return string
function Player:getGeneralName() end

---@param general_name string
function Player:setGeneral2Name(general_name) end

---@return string
function Player:getGeneral2Name() end

---@return sgs.General
function Player:getGeneral2() end

---@param state string
function Player:setState(state) end

---@return string
function Player:getState() end

---@return integer
function Player:getSeat() end

---@param seat integer
function Player:setSeat(seat) end

---@param another sgs.Player
---@return boolean
function Player:isAdjacentTo(another) end

---@return string
function Player:getPhaseString() end

---@param phase_str string
function Player:setPhaseString(phase_str) end

---@return sgs.Player_Phase
function Player:getPhase() end

---@param phase sgs.Player_Phase
function Player:setPhase(phase) end

---@param include_weapon boolean
---@return integer
function Player:getAttackRange(include_weapon) end

---@param other sgs.Player
---@param distance_fix integer
---@return boolean
function Player:inMyAttackRange(other, distance_fix) end

---@return boolean
function Player:isAlive() end

---@return boolean
function Player:isDead() end

---@param alive boolean
function Player:setAlive(alive) end

---@return string
function Player:getFlags() end

---@return string[]
function Player:getFlagList() end

---@param flag string
function Player:setFlags(flag) end

---@param flag string
---@return boolean
function Player:hasFlag(flag) end

function Player:clearFlags() end

---@return boolean
function Player:faceUp() end

---@param face_up boolean
function Player:setFaceUp(face_up) end

---@return integer
function Player:aliveCount() end

---@param other sgs.Player
---@param distance_fix integer
---@return integer
function Player:distanceTo(other, distance_fix) end

---@param player sgs.Player
---@param distance integer
function Player:setFixedDistance(player, distance) end

---@param player sgs.Player
---@param distance integer
function Player:removeFixedDistance(player, distance) end

---@param player sgs.Player
function Player:insertAttackRangePair(player) end

---@param player sgs.Player
function Player:removeAttackRangePair(player) end

---@return sgs.General
function Player:getAvatarGeneral() end

---@return sgs.General
function Player:getGeneral() end

---@return boolean
function Player:isLord() end

---@param skill_name string
function Player:acquireSkill(skill_name) end

---@param skill_name string
function Player:detachSkill(skill_name) end

function Player:detachAllSkills() end

---@param skill_name string
function Player:addSkill(skill_name) end

---@param skill_name string
function Player:loseSkill(skill_name) end

---@param skill sgs.Skill
---@param include_lose boolean
---@return boolean
---@overload fun(skill_name: string, include_lose: boolean): boolean
function Player:hasSkill(skill, include_lose) end

---@param skill_name string
---@param include_lose boolean
---@return boolean
function Player:hasSkills(skill_name, include_lose) end

---@param skill sgs.Skill
---@param include_lose boolean
---@return boolean
---@overload fun(skill_name: string, include_lose: boolean): boolean
function Player:hasLordSkill(skill, include_lose) end

---@param skill sgs.Skill
---@return boolean
---@overload fun(skill_name: string): boolean
function Player:hasInnateSkill(skill) end

---@param equip sgs.WrappedCard
function Player:setEquip(equip) end

---@param equip sgs.WrappedCard
function Player:removeEquip(equip) end

---@param card sgs.Card
---@return boolean
---@overload fun(): boolean
function Player:hasEquip(card) end

---@return sgs.CardList
function Player:getJudgingArea() end

---@return sgs.IntList
function Player:getJudgingAreaID() end

---@param trick sgs.Card
function Player:addDelayedTrick(trick) end

---@param trick sgs.Card
function Player:removeDelayedTrick(trick) end

---@param trick_name string
---@return boolean
function Player:containsTrick(trick_name) end

---@return integer
function Player:getHandcardNum() end

---@param card sgs.Card
---@param place sgs.Player_Place
function Player:removeCard(card, place) end

---@param card sgs.Card
---@param place sgs.Player_Place
function Player:addCard(card, place) end

---@return sgs.CardList
function Player:getHandcards() end

---@return sgs.WrappedCard
function Player:getWeapon() end

---@return sgs.WrappedCard
function Player:getArmor() end

---@return sgs.WrappedCard
function Player:getDefensiveHorse() end

---@return sgs.WrappedCard
function Player:getOffensiveHorse() end

---@return sgs.WrappedCard
function Player:getTreasure() end

---@return sgs.CardList
function Player:getEquips() end

---@param index integer
---@return sgs.EquipCard
function Player:getEquip(index) end

---@param weapon_name string
---@return boolean
function Player:hasWeapon(weapon_name) end

---@param armor_name string
---@return boolean
function Player:hasArmorEffect(armor_name) end

---@param treasure_name string
---@return boolean
function Player:hasTreasure(treasure_name) end

---@return boolean
function Player:isKongcheng() end

---@return boolean
function Player:isNude() end

---@return boolean
function Player:isAllNude() end

---@param to sgs.Player
---@param card_id integer
---@return boolean
---@overload fun(to: sgs.Player, flags: string): boolean
function Player:canDiscard(to, card_id) end

---@param mark string
---@param add_num integer
function Player:addMark(mark, add_num) end

---@param mark string
---@param remove_num integer
function Player:removeMark(mark, remove_num) end

---@param mark string
---@param value integer
function Player:setMark(mark, value) end

---@param mark string
---@return integer
function Player:getMark(mark) end

---@return string[]
function Player:getMarkNames() end

---@param chained boolean
function Player:setChained(chained) end

---@return boolean
function Player:isChained() end

---@param other sgs.Player
---@param slash sgs.Card
---@param distance_limit boolean
---@param rangefix integer
---@param others sgs.PlayerList
---@return boolean
function Player:canSlash(other, slash, distance_limit, rangefix, others) end

---@param other sgs.Player
---@param distance_limit boolean
---@param rangefix integer
---@param others sgs.PlayerList
---@return boolean
function Player:canSlash(other, distance_limit, rangefix, others) end

---@param include_equip boolean
---@param include_judging boolean
---@return integer
function Player:getCardCount(include_equip, include_judging) end

---@param pile_name string
---@return sgs.IntList
function Player:getPile(pile_name) end

---@return string[]
function Player:getPileNames() end

---@param card_id integer
---@return string
function Player:getPileName(card_id) end

---@param pile_name string
---@param player string
---@return boolean
function Player:pileOpen(pile_name, player) end

---@param pile_name string
---@param player string
function Player:setPileOpen(pile_name, player) end

---@return sgs.IntList
function Player:getHandPile() end

---@param name string
---@param times integer
function Player:addHistory(name, times) end

---@param name string
function Player:clearHistory(name) end

---@param card_class string
---@return boolean
function Player:hasUsed(card_class) end

---@param card_class string
---@return integer
function Player:usedTimes(card_class) end

---@return integer
function Player:getSlashCount() end

---@param skill_name string
---@return boolean
function Player:hasEquipSkill(skill_name) end

---@param include_equip boolean
---@param visible_only boolean
---@return sgs.SkillList
function Player:getSkills(include_equip, visible_only) end

---@param include_equip boolean
---@param visible_only boolean
---@return sgs.SkillList
function Player:getSkillList(include_equip, visible_only) end

---@param include_equip boolean
---@return sgs.SkillList
function Player:getVisibleSkills(include_equip) end

---@param include_equip boolean
---@return sgs.SkillList
function Player:getVisibleSkillList(include_equip) end

---@return string[]
function Player:getAcquiredSkills() end

---@return string
function Player:getSkillDescription() end

---@param to sgs.Player
---@param card sgs.Card
---@param others sgs.PlayerList
---@return boolean
function Player:isProhibited(to, card, others) end

---@return boolean
function Player:canSlashWithoutCrossbow() end

---@param card sgs.Card
---@param contain boolean
---@return boolean
function Player:isLastHandCard(card, contain) end

---@param card sgs.Card
---@param isHandcard boolean
---@return boolean
function Player:isJilei(card, isHandcard) end

---@param card sgs.Card
---@param isHandcard boolean
---@return boolean
function Player:isLocked(card, isHandcard) end

---@param limit_list string
---@param pattern string
---@param single_turn boolean
function Player:setCardLimitation(limit_list, pattern, single_turn) end

---@param limit_list string
---@param pattern string
function Player:removeCardLimitation(limit_list, pattern) end

---@param single_turn boolean
function Player:clearCardLimitation(single_turn) end

---@param card sgs.Card
---@param method sgs.Card_HandlingMethod
---@param isHandcard boolean
---@return boolean
function Player:isCardLimited(card, method, isHandcard) end

---@param card sgs.Card
function Player:addQinggangTag(card) end

---@param card sgs.Card
function Player:removeQinggangTag(card) end

---@param p sgs.Player
function Player:copyFrom(p) end

---@return sgs.PlayerList
function Player:getSiblings() end

---@return sgs.PlayerList
function Player:getAliveSiblings() end

---@param p sgs.Player
---@param general_name string
---@return boolean
function sgs.Player_isNostalGeneral(p, general_name) end

---@param key string
---@param value sgs.QVariant
function Player:setTag(key, value) end

---@param key string
---@return sgs.QVariant
function Player:getTag(key) end

---@param tag_name string
function Player:removeTag(tag_name) end

---@class sgs.ServerPlayer: sgs.Player
ServerPlayer = {}

---@return string
function ServerPlayer:reportHeader() end

---@param card sgs.Card
function ServerPlayer:drawCard(card) end

---@return sgs.Room
function ServerPlayer:getRoom() end

---@param card sgs.Card
function ServerPlayer:broadcastSkillInvoke(card) end

---@param card_name string
function ServerPlayer:broadcastSkillInvoke(card_name) end

---@return integer
function ServerPlayer:getRandomHandCardId() end

---@return sgs.Card
function ServerPlayer:getRandomHandCard() end

---@param card sgs.Card
---@param unhide boolean
function ServerPlayer:obtainCard(card, unhide) end

function ServerPlayer:throwAllEquips() end

function ServerPlayer:throwAllHandCards() end

function ServerPlayer:throwAllHandCardsAndEquips() end

function ServerPlayer:throwAllCards() end

function ServerPlayer:bury() end

---@param visible_only boolean
function ServerPlayer:throwAllMarks(visible_only) end

---@param pile_name string
function ServerPlayer:clearOnePrivatePile(pile_name) end

function ServerPlayer:clearPrivatePiles() end

---@param n integer
---@param reason string
function ServerPlayer:drawCards(n, reason) end

---@param skill_name string
---@param data sgs.QVariant
---@return boolean
---@overload fun(skill: sgs.Skill, data: sgs.QVariant)
function ServerPlayer:askForSkillInvoke(skill_name, data) end

---@param discard_num integer
---@param include_equip boolean
---@param is_discard boolean
---@param pattern string
---@return sgs.IntList
function ServerPlayer:forceToDiscard(discard_num, include_equip, is_discard, pattern) end

---@return sgs.IntList
function ServerPlayer:handCards() end

---@return sgs.CardList
function ServerPlayer:getHandcards() end

---@param flags string
---@return sgs.CardList
function ServerPlayer:getCards(flags) end

---@return sgs.DummyCard
function ServerPlayer:wholeHandCards() end

---@return boolean
function ServerPlayer:hasNullification() end

---@param target sgs.ServerPlayer
---@param reason string
---@param card1 sgs.Card
---@return boolean
function ServerPlayer:pindian(target, reason, card1) end

function ServerPlayer:turnOver() end

---@param set_phases sgs.PhaseList
function ServerPlayer:play(set_phases) end

---@param from sgs.Player_Phase
---@param to sgs.Player_Phase
---@return boolean
function ServerPlayer:changePhase(from, to) end

---@return sgs.PhaseList
function ServerPlayer:getPhases() end

---@param phase sgs.Player_Phase
---@param isCost boolean
function ServerPlayer:skip(phase, isCost) end

---@param phase sgs.Player_Phase
function ServerPlayer:insertPhase(phase) end

---@param phase sgs.Player_Phase
---@return boolean
function ServerPlayer:isSkipped(phase) end

---@param mark string
---@param n integer
function ServerPlayer:gainMark(mark, n) end

---@param mark string
---@param n integer
function ServerPlayer:loseMark(mark, n) end

---@param mark_name string
function ServerPlayer:loseAllMarks(mark_name) end

---@return integer
function ServerPlayer:aliveCount() end

---@return integer
function ServerPlayer:getHandcardNum() end

---@param card sgs.Card
---@param place sgs.Player_Place
function ServerPlayer:removeCard(card, place) end

---@param card sgs.Card
---@param place sgs.Player_Place
function ServerPlayer:addCard(card, place) end

---@param card sgs.Card
---@param contain boolean
---@return boolean
function ServerPlayer:isLastHandCard(card, contain) end

---@param victim sgs.ServerPlayer
function ServerPlayer:addVictim(victim) end

---@return sgs.SPlayerList
function ServerPlayer:getVictims() end

function ServerPlayer:startRecord() end

---@param filename string
function ServerPlayer:saveRecord(filename) end

---@param next sgs.ServerPlayer
function ServerPlayer:setNext(next) end

---@return sgs.ServerPlayer
function ServerPlayer:getNext() end

---@param n integer
---@return sgs.ServerPlayer
function ServerPlayer:getNextAlive(n) end

---@return integer
function ServerPlayer:getGeneralMaxHp() end

---@return string
function ServerPlayer:getGameMode() end

---@return string
function ServerPlayer:getIp() end

---@param player sgs.ServerPlayer
function ServerPlayer:introduceTo(player) end

---@param player sgs.ServerPlayer
function ServerPlayer:marshal(player) end

---@param pile_name string
---@param card_ids sgs.IntList
---@param open boolean
---@param open_players sgs.SPlayerList
---@param reason sgs.CardMoveReason
---@overload fun(pile_name: string, card: sgs.Card, open: boolean, open_players: sgs.SPlayerList)
---@overload fun(pile_name: string, card_id: integer, open: boolean, open_players: sgs.SPlayerList)
---@overload fun(pile_name: string, card_ids: sgs.IntList, open: boolean, open_players: sgs.SPlayerList)
function ServerPlayer:addToPile(pile_name, card_ids, open, open_players, reason) end

---@param skill_name string
---@param pile_name string
---@param upperlimit integer
---@param include_equip boolean
function ServerPlayer:exchangeFreelyFromPrivatePile(skill_name, pile_name, upperlimit, include_equip) end

function ServerPlayer:gainAnExtraTurn() end

---@param msg string
function ServerPlayer:speak(msg) end

---@param pile_name string
function ServerPlayer:removePileByName(pile_name) end

---@class sgs.ClientPlayer: sgs.Player
ClientPlayer = {}

---@return integer
function ClientPlayer:aliveCount() end

---@return integer
function ClientPlayer:getHandcardNum() end

---@return sgs.CardList
function ClientPlayer:getHandcards() end

---@param card sgs.Card
---@param place sgs.Player_Place
function ClientPlayer:removeCard(card, place) end

---@param card sgs.Card
---@param place sgs.Player_Place
function ClientPlayer:addCard(card, place) end

---@param card sgs.Card
function ClientPlayer:addKnownHandCard(card) end

---@param card sgs.Card
---@param contain boolean
---@return boolean
function ClientPlayer:isLastHandCard(card, contain) end

---@type sgs.ClientPlayer
sgs.Self = nil

---@class sgs.CardMoveReason
---@field m_reason integer
---@field m_playerId string
---@field m_targetId string
---@field m_skillName string
---@field m_eventName string
---@field m_extraData sgs.QVariant
CardMoveReason = {}

sgs.CardMoveReason_S_REASON_UNKNOWN = 0x00
sgs.CardMoveReason_S_REASON_USE = 0x01
sgs.CardMoveReason_S_REASON_RESPONSE = 0x02
sgs.CardMoveReason_S_REASON_DISCARD = 0x03
sgs.CardMoveReason_S_REASON_RECAST = 0x04
sgs.CardMoveReason_S_REASON_PINDIAN = 0x05
sgs.CardMoveReason_S_REASON_DRAW = 0x06
sgs.CardMoveReason_S_REASON_GOTCARD = 0x07
sgs.CardMoveReason_S_REASON_SHOW = 0x08
sgs.CardMoveReason_S_REASON_TRANSFER = 0x09
sgs.CardMoveReason_S_REASON_PUT = 0x0A

sgs.CardMoveReason_S_REASON_LETUSE = 0x11
sgs.CardMoveReason_S_REASON_RETRIAL = 0x12
sgs.CardMoveReason_S_REASON_RULEDISCARD = 0x13
sgs.CardMoveReason_S_REASON_THROW = 0x23
sgs.CardMoveReason_S_REASON_DISMANTLE = 0x33
sgs.CardMoveReason_S_REASON_GIVE = 0x17
sgs.CardMoveReason_S_REASON_EXTRACTION = 0x27
sgs.CardMoveReason_S_REASON_GOTBACK = 0x37
sgs.CardMoveReason_S_REASON_RECYCLE = 0x47
sgs.CardMoveReason_S_REASON_ROB = 0x57
sgs.CardMoveReason_S_REASON_PREVIEWGIVE = 0x67
sgs.CardMoveReason_S_REASON_TURNOVER = 0x18
sgs.CardMoveReason_S_REASON_JUDGE = 0x28
sgs.CardMoveReason_S_REASON_PREVIEW = 0x38
sgs.CardMoveReason_S_REASON_DEMONSTRATE = 0x48
sgs.CardMoveReason_S_REASON_SWAP = 0x19
sgs.CardMoveReason_S_REASON_OVERRIDE = 0x29
sgs.CardMoveReason_S_REASON_EXCHANGE_FROM_PILE = 0x39
sgs.CardMoveReason_S_REASON_NATURAL_ENTER = 0x1A
sgs.CardMoveReason_S_REASON_REMOVE_FROM_PILE = 0x2A
sgs.CardMoveReason_S_REASON_JUDGEDONE = 0x3A
sgs.CardMoveReason_S_REASON_CHANGE_EQUIP = 0x4A
sgs.CardMoveReason_S_MASK_BASIC_REASON = 0x0F

---@param moveReason integer
---@param playerId string
---@param targetId string
---@param skillName string
---@param eventName string
---@return sgs.CardMoveReason
---@overload fun(): sgs.CardMoveReason
---@overload fun(moveReason: integer, playerId: string): sgs.CardMoveReason
---@overload fun(moveReason: integer, playerId: string, skillName: string, eventName: string): sgs.CardMoveReason
function sgs.CardMoveReason(moveReason, playerId, targetId, skillName, eventName) end

---@class sgs.DamageStruct
---@field from sgs.ServerPlayer
---@field to sgs.ServerPlayer
---@field card sgs.Card
---@field damage integer
---@field nature sgs.DamageStruct_Nature
---@field chain boolean
---@field transfer boolean
---@field by_user boolean
---@field reason string
---@field transfer_reason string
---@field prevented boolean
DamageStruct = {}

---@alias sgs.DamageStruct_Nature integer

sgs.DamageStruct_Normal = 0
sgs.DamageStruct_Fire = 1
sgs.DamageStruct_Thunder = 2

---@param reason string
---@param from sgs.ServerPlayer
---@param to sgs.ServerPlayer
---@param damage integer
---@param nature sgs.DamageStruct_Nature
---@return sgs.DamageStruct
---@overload fun(): sgs.DamageStruct
---@overload fun(card: sgs.Card, from: sgs.ServerPlayer, to: sgs.ServerPlayer, damage: integer, nature: sgs.DamageStruct_Nature): sgs.DamageStruct
function sgs.DamageStruct(reason, from, to, damage, nature) end

---@return string
function DamageStruct:getReason() end

---@class sgs.CardEffectStruct
---@field card sgs.Card
---@field from sgs.ServerPlayer
---@field to sgs.ServerPlayer
---@field nullified boolean
CardEffectStruct = {}

---@return sgs.CardEffectStruct
function sgs.CardEffectStruct() end

---@class sgs.SlashEffectStruct
---@field jink_num integer
---@field slash sgs.Card
---@field jink sgs.Card
---@field from sgs.ServerPlayer
---@field to sgs.ServerPlayer
---@field drank integer
---@field nature sgs.DamageStruct_Nature
---@field nullified boolean
SlashEffectStruct = {}

---@return sgs.SlashEffectStruct
function sgs.SlashEffectStruct() end

---@class sgs.CardUseStruct
---@field card sgs.Card
---@field from sgs.ServerPlayer
---@field to sgs.SPlayerList
---@field m_isOwnerUse boolean
---@field m_addHistory boolean
---@field m_isHandcard boolean
---@field nullified_list string[]
CardUseStruct = {}

---@alias sgs.CardUseStruct_CardUseReason integer

sgs.CardUseStruct_CARD_USE_REASON_UNKNOWN = 0
sgs.CardUseStruct_CARD_USE_REASON_PLAY = 1
sgs.CardUseStruct_CARD_USE_REASON_RESPONSE = 2
sgs.CardUseStruct_CARD_USE_REASON_RESPONSE_USE = 18

---@param card sgs.Card
---@param from sgs.ServerPlayer
---@param target sgs.ServerPlayer
---@param isOwnerUse boolean
---@return sgs.CardUseStruct
---@overload fun(): sgs.CardUseStruct
---@overload fun(card: sgs.Card, from: sgs.ServerPlayer, to: sgs.SPlayerList, isOwnerUse: boolean): sgs.CardUseStruct
function sgs.CardUseStruct(card, from, target, isOwnerUse) end

---@param pattern string
---@return boolean
function CardUseStruct:isValid(pattern) end

---@param str string
---@param room sgs.Room
function CardUseStruct:parse(str, room) end

---@class sgs.CardsMoveStruct
---@field card_ids sgs.IntList
---@field from_place sgs.Player_Place
---@field to_place sgs.Player_Place
---@field from_player_name string
---@field to_player_name string
---@field from_pile_name string
---@field to_pile_name string
---@field from sgs.Player
---@field to sgs.Player
---@field reason sgs.CardMoveReason
---@field open boolean
---@field is_last_handcard boolean
CardsMoveStruct = {}

---@param id integer
---@param to sgs.Player
---@param to_place sgs.Player_Place
---@param reason sgs.CardMoveReason
---@return sgs.CardsMoveStruct
---@overload fun(): sgs.CardsMoveStruct
---@overload fun(ids: sgs.IntList, from: sgs.Player, to: sgs.Player, from_place: sgs.Player_Place, to_place: sgs.Player_Place, reason: sgs.CardMoveReason): sgs.CardsMoveStruct
---@overload fun(ids: sgs.IntList, to: sgs.Player, to_place: sgs.Player_Place, reason: sgs.CardMoveReason): sgs.CardsMoveStruct
---@overload fun(id: integer, from: sgs.Player, to: sgs.Player, from_place: sgs.Player_Place, to_place: sgs.Player_Place, reason: sgs.CardMoveReason): sgs.CardsMoveStruct
function sgs.CardsMoveStruct(id, to, to_place, reason) end

---@class sgs.CardsMoveOneTimeStruct
---@field card_ids sgs.IntList
---@field from_places sgs.Player_PlaceList
---@field to_place sgs.Player_Place
---@field reason sgs.CardMoveReason
---@field from sgs.Player
---@field to sgs.Player
---@field from_pile_names string[]
---@field to_pile_name string
---@field open sgs.BoolList
---@field is_last_handcard boolean
CardsMoveOneTimeStruct = {}

---@param to_remove sgs.IntList
function CardsMoveOneTimeStruct:removeCardIds(to_remove) end

---@class sgs.DyingStruct
---@field who sgs.ServerPlayer
---@field damage sgs.DamageStruct
DyingStruct = {}

---@return sgs.DyingStruct
function sgs.DyingStruct() end

---@class sgs.DeathStruct
---@field who sgs.ServerPlayer
---@field damage sgs.DamageStruct
DeathStruct = {}

---@return sgs.DeathStruct
function sgs.DeathStruct() end

---@class sgs.RecoverStruct
---@field recover integer
---@field who sgs.ServerPlayer
---@field card sgs.Card
RecoverStruct = {}

---@param who sgs.ServerPlayer
---@param card sgs.Card
---@param recover integer
---@return sgs.RecoverStruct
function sgs.RecoverStruct(who, card, recover) end

---@class sgs.JudgeStruct
---@field negative boolean
---@field play_animation boolean
---@field who sgs.ServerPlayer
---@field card sgs.Card
---@field pattern string
---@field good boolean
---@field reason string
---@field time_consuming boolean
---@field retrial_by_response sgs.ServerPlayer
JudgeStruct = {}

---@return sgs.JudgeStruct
function sgs.JudgeStruct() end

---@return boolean
function JudgeStruct:isGood() end

---@return boolean
function JudgeStruct:isBad() end

---@return boolean
function JudgeStruct:isEffected() end

function JudgeStruct:updateResult() end

---@param card sgs.Card
---@return boolean
function JudgeStruct:isGood(card) end

---@class sgs.PindianStruct
---@field from sgs.ServerPlayer
---@field to sgs.ServerPlayer
---@field from_card sgs.Card
---@field to_card sgs.Card
---@field from_number integer
---@field to_number integer
---@field reason string
---@field success boolean
PindianStruct = {}

---@return sgs.PindianStruct
function sgs.PindianStruct() end

---@class sgs.PhaseChangeStruct
---@field from sgs.Player_Phase
---@field to sgs.Player_Phase
PhaseChangeStruct = {}

---@return sgs.PhaseChangeStruct
function sgs.PhaseChangeStruct() end

---@class sgs.CardResponseStruct
---@field m_card sgs.Card
---@field m_who sgs.ServerPlayer
---@field m_isUse boolean
---@field m_isRetrial boolean
---@field m_isHandcard boolean
CardResponseStruct = {}

---@return sgs.CardResponseStruct
function sgs.CardResponseStruct() end

---@class sgs.Card: sgs.QObject
Card = {}

---@alias sgs.Card_Suit integer

sgs.Card_Spade = 0
sgs.Card_Club = 1
sgs.Card_Heart = 2
sgs.Card_Diamond = 3
sgs.Card_NoSuitBlack = 4
sgs.Card_NoSuitRed = 5
sgs.Card_NoSuit = 6
sgs.Card_SuitToBeDecided = 7

---@alias sgs.Card_HandlingMethod integer

sgs.Card_MethodNone = 0
sgs.Card_MethodUse = 1
sgs.Card_MethodResponse = 2
sgs.Card_MethodDiscard = 3
sgs.Card_MethodRecast = 4
sgs.Card_MethodPindian = 5

---@alias sgs.Card_CardType integer

sgs.Card_TypeSkill = 0
sgs.Card_TypeBasic = 1
sgs.Card_TypeTrick = 2
sgs.Card_TypeEquip = 3

---@param suit sgs.Card_Suit
---@param number integer
---@param target_fixed boolean
---@return sgs.Card
function sgs.Card(suit, number, target_fixed) end

---@return string
function Card:getSuitString() end

---@return boolean
function Card:isRed() end

---@return boolean
function Card:isBlack() end

---@return integer
function Card:getId() end

---@param id integer
function Card:setId(id) end

---@return integer
function Card:getEffectiveId() end

---@return integer
function Card:getNumber() end

---@param number integer
function Card:setNumber(number) end

---@return string
function Card:getNumberString() end

---@return sgs.Card_Suit
function Card:getSuit() end

---@param suit sgs.Card_Suit
function Card:setSuit(suit) end

---@param other sgs.Card
---@return boolean
function Card:sameColorWith(other) end

---@return boolean
function Card:isEquipped() end

---@return string
function Card:getPackage() end

---@param include_suit boolean
---@return string
function Card:getFullName(include_suit) end

---@return string
function Card:getLogName() end

---@return string
function Card:getName() end

---@param removePrefix boolean
---@return string
function Card:getSkillName(removePrefix) end

---@param skill_name string
function Card:setSkillName(skill_name) end

---@return string
function Card:getDescription() end

---@return boolean
function Card:isVirtualCard() end

---@param pattern string
---@return boolean
function Card:match(pattern) end

---@param card_id integer
function Card:addSubcard(card_id) end

---@param card sgs.Card
function Card:addSubcard(card) end

---@return sgs.IntList
function Card:getSubcards() end

function Card:clearSubcards() end

---@return string
function Card:subcardString() end

---@param cards sgs.CardList
function Card:addSubcards(cards) end

---@param subcards_list sgs.IntList
function Card:addSubcards(subcards_list) end

---@return integer
function Card:subcardsLength() end

---@return string
function Card:getType() end

---@return string
function Card:getSubtype() end

---@return sgs.Card_CardType
function Card:getTypeId() end

---@param hidden boolean
---@return string
function Card:toString(hidden) end

---@return boolean
function Card:isNDTrick() end

---@return boolean
function Card:targetFixed() end

---@param targets sgs.PlayerList
---@param self sgs.Player
---@return boolean
function Card:targetsFeasible(targets, self) end

---@param targets sgs.PlayerList
---@param to_select sgs.Player
---@param self sgs.Player
---@return boolean
function Card:targetFilter(targets, to_select, self) end

---@param player sgs.Player
---@return boolean
function Card:isAvailable(player) end

---@param card_use sgs.CardUseStruct
---@return sgs.Card
function Card:validate(card_use) end

---@param user sgs.ServerPlayer
---@return sgs.Card
function Card:validateInResponse(user) end

---@return boolean
function Card:isMute() end

---@return boolean
function Card:willThrow() end

---@return boolean
function Card:canRecast() end

---@return boolean
function Card:hasPreAction() end

---@return sgs.Card_HandlingMethod
function Card:getHandlingMethod() end

---@param can boolean
function Card:setCanRecast(can) end

---@param flag string
function Card:setFlags(flag) end

---@param flag string
---@return boolean
function Card:hasFlag(flag) end

function Card:clearFlags() end

---@param key string
---@param data sgs.QVariant
function Card:setTag(key, data) end

---@param key string
function Card:removeTag(key) end

---@param room sgs.Room
---@param card_use sgs.CardUseStruct
function Card:onUse(room, card_use) end

---@param room sgs.Room
---@param source sgs.ServerPlayer
---@param targets sgs.SPlayerList
function Card:use(room, source, targets) end

---@param effect sgs.CardEffectStruct
function Card:onEffect(effect) end

---@param effect sgs.CardEffectStruct
---@return boolean
function Card:isCancelable(effect) end

---@param cardType string
---@return boolean
function Card:isKindOf(cardType) end

---@return string[]
function Card:getFlags() end

---@return boolean
function Card:isModified() end

---@return string
function Card:getClassName() end

---@return sgs.Card
function Card:getRealCard() end

---@param a sgs.Card
---@param b sgs.Card
---@return boolean
function sgs.Card_CompareByNumber(a, b) end

---@param a sgs.Card
---@param b sgs.Card
---@return boolean
function sgs.Card_CompareBySuit(a, b) end

---@param a sgs.Card
---@param b sgs.Card
---@return boolean
function sgs.Card_CompareByType(a, b) end

---@param str string
---@return sgs.Card
function sgs.Card_Parse(str) end

---@param card sgs.Card
---@return sgs.Card
function sgs.Card_Clone(card) end

---@param suit sgs.Card_Suit
---@return string
function sgs.Card_Suit2String(suit) end

---@return sgs.EquipCard
function Card:toEquipCard() end

---@return sgs.Weapon
function Card:toWeapon() end

---@return sgs.WrappedCard
function Card:toWrapped() end

---@return sgs.TrickCard
function Card:toTrick() end

---@param room sgs.Room
---@param card_use sgs.CardUseStruct
function Card:cardOnUse(room, card_use) end

---@param player sgs.Player
---@return boolean
function Card:cardIsAvailable(player) end

---@param key string
---@return sgs.QVariant
function Card:getTag(key) end

---@class sgs.WrappedCard: sgs.Card
WrappedCard = {}

---@param card sgs.Card
function WrappedCard:takeOver(card) end

---@param card sgs.Card
function WrappedCard:copyEverythingFrom(card) end

---@param modified boolean
function WrappedCard:setModified(modified) end

---@class sgs.SkillCard: sgs.Card
SkillCard = {}

---@return sgs.SkillCard
function sgs.SkillCard() end

---@param user_string string
function SkillCard:setUserString(user_string) end

---@return string
function SkillCard:getUserString() end

---@return string
function SkillCard:getSubtype() end

---@return string
function SkillCard:getType() end

---@return sgs.Card_CardType
function SkillCard:getTypeId() end

---@param hidden boolean
---@return string
function SkillCard:toString(hidden) end

---@class sgs.DummyCard: sgs.SkillCard
DummyCard = {}

---@param subcards sgs.IntList
---@return sgs.DummyCard
---@overload fun(): sgs.DummyCard
function sgs.DummyCard(subcards) end

---@class sgs.Package: sgs.QObject
Package = {}

---@alias sgs.Package_Type integer

sgs.Package_GeneralPack = 0
sgs.Package_CardPack = 1
sgs.Package_SpecialPack = 2

---@param name string
---@param pack_type sgs.Package_Type
---@return sgs.Package
function sgs.Package(name, pack_type) end

---@param main_skill string
---@param related_skill string
function Package:insertRelatedSkills(main_skill, related_skill) end

---@param from string
---@param to string
function Package:insertConvertPairs(from, to) end

---@class sgs.Engine: sgs.QObject
Engine = {}

---@param key string
---@param value string
function Engine:addTranslationEntry(key, value) end

---@param to_translate string
---@return string
function Engine:translate(to_translate) end

---@param package sgs.Package
function Engine:addPackage(package) end

---@param package_name string
function Engine:addBanPackage(package_name) end

---@return string[]
function Engine:getBanPackages() end

---@param name string
---@param suit sgs.Card_Suit
---@param number integer
---@param flags string[]
---@return sgs.Card
---@overload fun(card: sgs.Card): sgs.Card
function Engine:cloneCard(name, suit, number, flags) end

---@param name string
---@return sgs.SkillCard
function Engine:cloneSkillCard(name) end

---@return string
function Engine:getVersion() end

---@return string
function Engine:getVersionName() end

---@return string[]
function Engine:getExtensions() end

---@return string[]
function Engine:getKingdoms() end

---@return string
function Engine:getSetupString() end

---@param mode string
---@return string
function Engine:getModeName(mode) end

---@param mode string
---@return integer
function Engine:getPlayerCount(mode) end

---@param mode string
---@return string
function Engine:getRoles(mode) end

---@param mode string
---@return string[]
function Engine:getRoleList(mode) end

---@return integer
function Engine:getRoleIndex() end

--@param name string
--@return sgs.CardPattern
--function Engine:getPattern(name) end

---@param pattern string
---@param player sgs.Player
---@param card sgs.Card
---@return boolean
function Engine:matchExpPattern(pattern, player, card) end

---@param method_name string
---@return sgs.Card_HandlingMethod
function Engine:getCardHandlingMethod(method_name) end

---@param skill_name string
---@return sgs.SkillList
function Engine:getRelatedSkills(skill_name) end

---@param skill_name string
---@return sgs.Skill
function Engine:getMainSkill(skill_name) end

---@return string[]
function Engine:getModScenarioNames() end

---@param name string
---@return sgs.General
function Engine:getGeneral(name) end

---@param include_banned boolean
---@param kingdom string
---@return integer
function Engine:getGeneralCount(include_banned, kingdom) end

---@param skill_name string
---@return sgs.Skill
function Engine:getSkill(skill_name) end

---@param skill_name string
---@return sgs.TriggerSkill
function Engine:getTriggerSkill(skill_name) end

---@param skill_name string
---@return sgs.ViewAsSkill
function Engine:getViewAsSkill(skill_name) end

---@return sgs.SkillList
function Engine:getDistanceSkills() end

---@return sgs.SkillList
function Engine:getMaxCardsSkills() end

---@return sgs.SkillList
function Engine:getTargetModSkills() end

---@return sgs.SkillList
function Engine:getInvaliditySkills() end

---@return sgs.SkillList
function Engine:getGlobalTriggerSkills() end

---@param skills sgs.SkillList
function Engine:addSkills(skills) end

---@return integer
function Engine:getCardCount() end

---@param cardId integer
---@return sgs.Card
function Engine:getEngineCard(cardId) end

---@param cardId integer
---@return sgs.Card
function Engine:getCard(cardId) end

---@param cardId integer
---@return sgs.WrappedCard
function Engine:getWrappedCard(cardId) end

---@param contain_banned boolean
---@return string[]
function Engine:getLords(contain_banned) end

---@return string[]
function Engine:getRandomLords() end

---@param count integer
---@param ban_set string[]
---@param kingdom string
---@return string[]
function Engine:getRandomGenerals(count, ban_set, kingdom) end

---@return sgs.IntList
function Engine:getRandomCards() end

---@return string
function Engine:getRandomGeneralName() end

---@param kingdom string
---@return string[]
function Engine:getLimitedGeneralNames(kingdom) end

---@return sgs.GeneralList
function Engine:getAllGenerals() end

---@param name string
---@param superpose boolean
function Engine:playSystemAudioEffect(name, superpose) end

---@param filename string
---@param superpose boolean
function Engine:playAudioEffect(filename, superpose) end

---@param skill_name string
---@param index integer
---@param superpose boolean
function Engine:playSkillAudioEffect(skill_name, index, superpose) end

---@param from sgs.Player
---@param to sgs.Player
---@param card sgs.Card
---@param others sgs.PlayerList
---@return sgs.ProhibitSkill
function Engine:isProhibited(from, to, card, others) end

---@param from sgs.Player
---@param to sgs.Player
---@return integer
function Engine:correctDistance(from, to) end

---@param target sgs.Player
---@return integer
function Engine:correctMaxCards(target) end

---@param type sgs.TargetModSkill_ModType
---@param from sgs.Player
---@param card sgs.Card
---@return integer
function Engine:correctCardTarget(type, from, card) end

---@param player sgs.Player
---@param skill sgs.Skill
---@return boolean
function Engine:correctSkillValidity(player, skill) end

---@return sgs.Room
function Engine:currentRoom() end

---@return string
function Engine:getCurrentCardUsePattern() end

---@return sgs.CardUseStruct_CardUseReason
function Engine:getCurrentCardUseReason() end

---@param general_name string
---@return string
function Engine:findConvertFrom(general_name) end

---@param general_name string
---@return boolean
function Engine:isGeneralHidden(general_name) end

---@type sgs.Engine
sgs.Sanguosha = nil

---@class sgs.Skill: sgs.QObject
Skill = {}

---@alias sgs.Skill_Frequency integer

sgs.Skill_Frequent = 0
sgs.Skill_NotFrequent = 1
sgs.Skill_Compulsory = 2
sgs.Skill_Limited = 3
sgs.Skill_Wake = 4
sgs.Skill_NotCompulsory = 5

---@param name string
---@param frequent sgs.Skill_Frequency
---@return sgs.Skill
function sgs.Skill(name, frequent) end

---@return boolean
function Skill:isLordSkill() end

---@return boolean
function Skill:isAttachedLordSkill() end

---@return string
function Skill:getDescription() end

---@return boolean
function Skill:isVisible() end

---@param player sgs.ServerPlayer
---@param card sgs.Card
---@return integer
function Skill:getEffectIndex(player, card) end

function Skill:initMediaSource() end

---@param index integer
---@param superpose boolean
function Skill:playAudioEffect(index, superpose) end

---@param target sgs.Player
---@return sgs.Skill_Frequency
function Skill:getFrequency(target) end

---@return string[]
function Skill:getSources() end

---@return sgs.TriggerSkill
function Skill:toTriggerSkill() end

---@class sgs.TriggerSkill: sgs.Skill
TriggerSkill = {}

---@param name string
---@return sgs.TriggerSkill
function sgs.TriggerSkill(name) end

---@return sgs.ViewAsSkill
function TriggerSkill:getViewAsSkill() end

---@param triggerEvent sgs.TriggerEvent
---@return integer
function TriggerSkill:getPriority(triggerEvent) end

---@param target sgs.ServerPlayer
---@return boolean
function TriggerSkill:triggerable(target) end

---@param event sgs.TriggerEvent
---@param room sgs.Room
---@param player sgs.ServerPlayer
---@param data sgs.QVariant
---@return boolean
function TriggerSkill:trigger(event, room, player, data) end

---@return boolean
function TriggerSkill:isGlobal() end

---@class sgs.QThread: sgs.QObject
QThread = {}

---@class sgs.LogMessage
---@field type string
---@field from sgs.ServerPlayer
---@field to sgs.SPlayerList
---@field card_str string
---@field arg string
---@field arg2 string
LogMessage = {}

---@return sgs.LogMessage
function sgs.LogMessage() end

---@class sgs.RoomThread: sgs.QThread
RoomThread = {}

function RoomThread:constructTriggerTable() end

---@param event sgs.TriggerEvent
---@param room sgs.Room
---@param target sgs.ServerPlayer
---@param data sgs.QVariant
---@return boolean
function RoomThread:trigger(event, room, target, data) end

---@param player sgs.ServerPlayer
---@param invoke_game_start boolean
function RoomThread:addPlayerSkills(player, invoke_game_start) end

---@param skill sgs.TriggerSkill
function RoomThread:addTriggerSkill(skill) end

---@param msecs integer
function RoomThread:delay(msecs) end

---@class sgs.Room: sgs.QThread
Room = {}

---@alias sgs.Room_GuanxingType integer

sgs.Room_GuanxingUpOnly = 1
sgs.Room_GuanxingBothSides = 0
sgs.Room_GuanxingDownOnly = - 1

---@return boolean
function Room:isFull() end

---@return boolean
function Room:isFinished() end

---@return integer
function Room:getLack() end

---@return string
function Room:getMode() end

---@return sgs.RoomThread
function Room:getThread() end

---@return sgs.ServerPlayer
function Room:getCurrent() end

---@param current sgs.ServerPlayer
function Room:setCurrent(current) end

---@return integer
function Room:alivePlayerCount() end

---@param except sgs.ServerPlayer
---@param include_dead boolean
---@return sgs.SPlayerList
function Room:getOtherPlayers(except, include_dead) end

---@return sgs.SPlayerList
function Room:getPlayers() end

---@param include_dead boolean
---@return sgs.SPlayerList
function Room:getAllPlayers(include_dead) end

---@return sgs.SPlayerList
function Room:getAlivePlayers() end

---@param player sgs.ServerPlayer
---@param reason sgs.DamageStruct
function Room:enterDying(player, reason) end

---@return sgs.ServerPlayer
function Room:getCurrentDyingPlayer() end

---@param victim sgs.ServerPlayer
---@param reason sgs.DamageStruct
function Room:killPlayer(victim, reason) end

---@param player sgs.ServerPlayer
---@param sendlog boolean
function Room:revivePlayer(player, sendlog) end

---@param except sgs.ServerPlayer
---@return string[]
function Room:aliveRoles(except) end

---@param winner string
function Room:gameOver(winner) end

---@param effect sgs.SlashEffectStruct
function Room:slashEffect(effect) end

---@param effect sgs.SlashEffectStruct
---@param jink sgs.Card
function Room:slashResult(effect, jink) end

---@param player sgs.ServerPlayer
---@param skill_name string
function Room:attachSkillToPlayer(player, skill_name) end

---@param player sgs.ServerPlayer
---@param skill_name string
---@param is_equip boolean
---@param acquire_only boolean
function Room:detachSkillFromPlayer(player, skill_name, is_equip, acquire_only) end

---@param player sgs.ServerPlayer
---@param skill_names string
---@param acquire_only boolean
function Room:handleAcquireDetachSkills(player, skill_names, acquire_only) end

---@param player sgs.ServerPlayer
---@param flag string
function Room:setPlayerFlag(player, flag) end

---@param player sgs.ServerPlayer
---@param property_name string
---@param value sgs.QVariant
function Room:setPlayerProperty(player, property_name, value) end

---@param player sgs.ServerPlayer
---@param mark string
---@param value integer
function Room:setPlayerMark(player, mark, value) end

---@param player sgs.ServerPlayer
---@param mark string
---@param add_num integer
function Room:addPlayerMark(player, mark, add_num) end

---@param player sgs.ServerPlayer
---@param mark string
---@param remove_num integer
function Room:removePlayerMark(player, mark, remove_num) end

---@param player sgs.ServerPlayer
---@param limit_list string
---@param pattern string
---@param single_turn boolean
function Room:setPlayerCardLimitation(player, limit_list, pattern, single_turn) end

---@param player sgs.ServerPlayer
---@param limit_list string
---@param pattern string
function Room:removePlayerCardLimitation(player, limit_list, pattern) end

---@param player sgs.ServerPlayer
---@param single_turn boolean
function Room:clearPlayerCardLimitation(player, single_turn) end

---@param card_id integer
---@param flag string
---@param who sgs.ServerPlayer
---@overload fun(card: sgs.Card, flag: string, who: sgs.ServerPlayer)
function Room:setCardFlag(card_id, flag, who) end

---@param card_id integer
---@param who sgs.ServerPlayer
---@overload fun(card: sgs.Card, who: sgs.ServerPlayer)
function Room:clearCardFlag(card_id, who) end

---@param card_use sgs.CardUseStruct
---@param add_history boolean
function Room:useCard(card_use, add_history) end

---@param data sgs.DamageStruct
function Room:damage(data) end

---@param victim sgs.ServerPlayer
---@param lose integer
function Room:loseHp(victim, lose) end

---@param victim sgs.ServerPlayer
---@param lose integer
function Room:loseMaxHp(victim, lose) end

---@param player sgs.ServerPlayer
---@param magnitude integer
---@return boolean
function Room:changeMaxHpForAwakenSkill(player, magnitude) end

---@param player sgs.ServerPlayer
---@param recover sgs.RecoverStruct
---@param set_emotion boolean
function Room:recover(player, recover, set_emotion) end

---@param effect sgs.CardEffectStruct
---@return boolean
---@overload fun(card: sgs.Card, from: sgs.ServerPlayer, to: sgs.ServerPlayer, multiple: boolean): boolean
function Room:cardEffect(effect) end

---@param user sgs.ServerPlayer
---@param jink sgs.Card
---@return boolean
function Room:isJinkEffected(user, jink) end

---@param judge_struct sgs.JudgeStruct
function Room:judge(judge_struct) end

---@param judge sgs.JudgeStruct
function Room:sendJudgeResult(judge) end

---@param n integer
---@param update_pile_number boolean
---@return sgs.IntList
function Room:getNCards(n, update_pile_number) end

---@return sgs.ServerPlayer
function Room:getLord() end

---@param zhuge sgs.ServerPlayer
---@param cards sgs.IntList
---@param guanxing_type sgs.Room_GuanxingType
function Room:askForGuanxing(zhuge, cards, guanxing_type) end

---@param cards sgs.IntList
function Room:returnToTopDrawPile(cards) end

---@param shenlvmeng sgs.ServerPlayer
---@param target sgs.ServerPlayer
---@param enabled_ids sgs.IntList
---@param skill_name string
---@return integer
function Room:doGongxin(shenlvmeng, target, enabled_ids, skill_name) end

---@return integer
function Room:drawCard() end

---@param card_ids sgs.IntList
---@param who sgs.ServerPlayer
---@param disabled_ids sgs.IntList
function Room:fillAG(card_ids, who, disabled_ids) end

---@param player sgs.ServerPlayer
---@param card_id integer
---@param move_cards boolean
---@param to_notify sgs.SPlayerList
function Room:takeAG(player, card_id, move_cards, to_notify) end

---@param player sgs.ServerPlayer
function Room:clearAG(player) end

---@param card sgs.Card
function Room:provide(card) end

---@param kingdom string
---@param lord sgs.ServerPlayer
---@return sgs.SPlayerList
function Room:getLieges(kingdom, lord) end

---@param log sgs.LogMessage
---@param player sgs.ServerPlayer
---@overload fun(log: sgs.LogMessage, players: sgs.SPlayerList)
function Room:sendLog(log, player) end

---@param player sgs.ServerPlayer
---@param skill_name string
---@param notify_skill boolean
function Room:sendCompulsoryTriggerLog(player, skill_name, notify_skill) end

---@param player sgs.ServerPlayer
---@param card_id integer
---@param only_viewer sgs.ServerPlayer
function Room:showCard(player, card_id, only_viewer) end

---@param player sgs.ServerPlayer
---@param to sgs.ServerPlayer
function Room:showAllCards(player, to) end

---@param card sgs.Card
---@param player sgs.ServerPlayer
---@param judge sgs.JudgeStruct
---@param skill_name string
---@param exchange boolean
function Room:retrial(card, player, judge, skill_name, exchange) end

---@param player sgs.ServerPlayer
---@param skill_name string
function Room:notifySkillInvoked(player, skill_name) end

---@param skillName string
---@param type integer
---@overload fun(skillName: string)
---@overload fun(skillName: string, category: string)
---@overload fun(skillName: string, isMale: boolean, type: integer)
function Room:broadcastSkillInvoke(skillName, type) end

---@param lightboxName string
---@param duration integer
---@param pixelSize integer
function Room:doLightbox(lightboxName, duration, pixelSize) end

---@param type integer
---@param arg1 string
---@param arg2 string
---@param players sgs.SPlayerList
function Room:doAnimate(type, arg1, arg2, players) end

---@param heroName string
---@param skillName string
function Room:doSuperLightbox(heroName, skillName) end

---@param isLostPhase boolean
---@param cards_moves sgs.CardsMoveList
---@param forceVisible boolean
---@param players sgs.SPlayerList
---@return boolean
function Room:notifyMoveCards(isLostPhase, cards_moves, forceVisible, players) end

---@param player sgs.ServerPlayer
---@param cardId integer
---@param newCard sgs.Card
---@return boolean
function Room:notifyUpdateCard(player, cardId, newCard) end

---@param players sgs.SPlayerList
---@param cardId integer
---@param newCard sgs.Card
---@return boolean
function Room:broadcastUpdateCard(players, cardId, newCard) end

---@param player sgs.ServerPlayer
---@param cardId integer
---@return boolean
function Room:notifyResetCard(player, cardId) end

---@param players sgs.SPlayerList
---@param cardId integer
---@return boolean
function Room:broadcastResetCard(players, cardId) end

---@param player sgs.ServerPlayer
---@param new_general string
function Room:changePlayerGeneral(player, new_general) end

---@param player sgs.ServerPlayer
---@param new_general string
function Room:changePlayerGeneral2(player, new_general) end

---@param player sgs.ServerPlayer
---@param cards sgs.CardList
---@param refilter boolean
function Room:filterCards(player, cards, refilter) end

---@param player sgs.ServerPlayer
---@param skill_name string
---@param open boolean
---@overload fun(player: sgs.ServerPlayer, skill: sgs.Skill, open: boolean)
function Room:acquireSkill(player, skill_name, open) end

function Room:adjustSeats() end

function Room:swapPile() end

---@return sgs.IntList
function Room:getDiscardPile() end

---@return sgs.IntList
function Room:getDrawPile() end

---@param card_name string
---@return integer
function Room:getCardFromPile(card_name) end

---@param general_name string
---@param include_dead boolean
---@return sgs.ServerPlayer
function Room:findPlayer(general_name, include_dead) end

---@param skill_name string
---@return sgs.ServerPlayer
function Room:findPlayerBySkillName(skill_name) end

---@param skill_name string
---@return sgs.SPlayerList
function Room:findPlayersBySkillName(skill_name) end

---@param player sgs.ServerPlayer
---@param equip_name string
function Room:installEquip(player, equip_name) end

---@param player sgs.ServerPlayer
function Room:resetAI(player) end

---@param player sgs.ServerPlayer
---@param new_general string
---@param full_state boolean
---@param invokeStart boolean
---@param isSecondaryHero boolean
---@param sendLog boolean
function Room:changeHero(player, new_general, full_state, invokeStart, isSecondaryHero, sendLog) end

---@param a sgs.ServerPlayer
---@param b sgs.ServerPlayer
function Room:swapSeat(a, b) end

---@param from sgs.Player
---@param to sgs.Player
---@param distance integer
function Room:setFixedDistance(from, to, distance) end

---@param from sgs.Player
---@param to sgs.Player
---@param distance integer
function Room:removeFixedDistance(from, to, distance) end

---@param from sgs.Player
---@param to sgs.Player
function Room:insertAttackRangePair(from, to) end

---@param from sgs.Player
---@param to sgs.Player
function Room:removeAttackRangePair(from, to) end

---@param player sgs.ServerPlayer
---@return boolean
function Room:hasWelfare(player) end

---@param a sgs.ServerPlayer
---@param b sgs.ServerPlayer
---@return sgs.ServerPlayer
function Room:getFront(a, b) end

---@param player sgs.ServerPlayer
---@param screen_name string
---@param avatar string
---@param is_robot boolean
function Room:signup(player, screen_name, avatar, is_robot) end

---@return sgs.ServerPlayer
function Room:getOwner() end

---@param players sgs.SPlayerList
function Room:sortByActionOrder(players) end

---@param from sgs.Player
---@param to sgs.Player
---@param card sgs.Card
---@param others sgs.PlayerList
---@return sgs.ProhibitSkill
function Room:isProhibited(from, to, card, others) end

---@param key string
---@param value sgs.QVariant
function Room:setTag(key, value) end

---@param key string
---@return sgs.QVariant
function Room:getTag(key) end

---@param key string
function Room:removeTag(key) end

---@param target sgs.ServerPlayer
---@param emotion string
function Room:setEmotion(target, emotion) end

---@param card_id integer
---@return sgs.Player_Place
function Room:getCardPlace(card_id) end

---@param card_id integer
---@return sgs.ServerPlayer
function Room:getCardOwner(card_id) end

---@param card_id integer
---@param owner sgs.ServerPlayer
---@param place sgs.Player_Place
function Room:setCardMapping(card_id, owner, place) end

---@param players sgs.SPlayerList
---@param n_list sgs.IntList
---@param reason string
---@overload fun(player: sgs.ServerPlayer, n: integer, reason: string)
---@overload fun(players: sgs.SPlayerList, n: integer, reason: string)
function Room:drawCards(players, n_list, reason) end

---@param target sgs.ServerPlayer
---@param card sgs.Card
---@param reason sgs.CardMoveReason
---@param unhide boolean
---@overload fun(target: sgs.ServerPlayer, card: sgs.Card, unhide: boolean)
---@overload fun(target: sgs.ServerPlayer, card_id: integer, unhide: boolean)
function Room:obtainCard(target, card, reason, unhide) end

---@param card sgs.Card
---@param reason sgs.CardMoveReason
---@param who sgs.ServerPlayer
---@param thrower sgs.ServerPlayer
---@overload fun(card_id: integer, who: sgs.ServerPlayer, thrower: sgs.ServerPlayer)
---@overload fun(card: sgs.Card, who: sgs.ServerPlayer, thrower: sgs.ServerPlayer)
function Room:throwCard(card, reason, who, thrower) end

---@param card sgs.Card
---@param srcPlayer sgs.ServerPlayer
---@param dstPlayer sgs.ServerPlayer
---@param dstPlace sgs.Player_Place
---@param pileName string
---@param reason sgs.CardMoveReason
---@param forceMoveVisible boolean
---@overload fun(card: sgs.Card, dstPlayer: sgs.ServerPlayer, dstPlace: sgs.Player_Place, forceMoveVisible: boolean)
---@overload fun(card: sgs.Card, dstPlayer: sgs.ServerPlayer, dstPlace: sgs.Player_Place, reason: sgs.CardMoveReason, forceMoveVisible: boolean)
---@overload fun(card: sgs.Card, srcPlayer: sgs.ServerPlayer, dstPlayer: sgs.ServerPlayer, dstPlace: sgs.Player_Place, reason: sgs.CardMoveReason, forceMoveVisible: boolean)
function Room:moveCardTo(card, srcPlayer, dstPlayer, dstPlace, pileName, reason, forceMoveVisible) end

---@param cards_move sgs.CardsMoveStruct
---@param forceMoveVisible boolean
---@overload fun(cards_move: sgs.CardsMoveList, forceMoveVisible: boolean)
function Room:moveCardsAtomic(cards_move, forceMoveVisible) end

---@param player sgs.ServerPlayer
---@param card_use sgs.CardUseStruct
function Room:activate(player, card_use) end

---@param player sgs.ServerPlayer
---@param reason string
---@return sgs.Card_Suit
function Room:askForSuit(player, reason) end

---@param player sgs.ServerPlayer
---@return string
function Room:askForKingdom(player) end

---@param player sgs.ServerPlayer
---@param skill_name string
---@param data sgs.QVariant
---@return boolean
function Room:askForSkillInvoke(player, skill_name, data) end

---@param player sgs.ServerPlayer
---@param skill_name string
---@param choices string
---@param data sgs.QVariant
---@return string
function Room:askForChoice(player, skill_name, choices, data) end

---@param target sgs.ServerPlayer
---@param reason string
---@param discard_num integer
---@param min_num integer
---@param optional boolean
---@param include_equip boolean
---@param prompt string
---@param pattern string
---@return boolean
function Room:askForDiscard(target, reason, discard_num, min_num, optional, include_equip, prompt, pattern) end

---@param player sgs.ServerPlayer
---@param reason string
---@param discard_num integer
---@param min_num integer
---@param include_equip boolean
---@param prompt string
---@param optional boolean
---@param pattern string
---@return sgs.Card
function Room:askForExchange(player, reason, discard_num, min_num, include_equip, prompt, optional, pattern) end

---@param trick sgs.Card
---@param from sgs.ServerPlayer
---@param to sgs.ServerPlayer
---@param positive boolean
---@return boolean
function Room:askForNullification(trick, from, to, positive) end

---@param effect sgs.CardEffectStruct
---@return boolean
function Room:isCanceled(effect) end

---@param player sgs.ServerPlayer
---@param who sgs.ServerPlayer
---@param flags string
---@param reason string
---@param handcard_visible boolean
---@param method sgs.Card_HandlingMethod
---@param disabled_ids sgs.IntList
---@return integer
function Room:askForCardChosen(player, who, flags, reason, handcard_visible, method, disabled_ids) end

---@param player sgs.ServerPlayer
---@param pattern string
---@param prompt string
---@param data sgs.QVariant
---@param method sgs.Card_HandlingMethod
---@param to sgs.ServerPlayer
---@param isRetrial boolean
---@param skill_name string
---@param isProvision boolean
---@return sgs.Card
---@overload fun(player: sgs.ServerPlayer, pattern: string, prompt: string, data: sgs.QVariant, skill_name: string): sgs.Card
function Room:askForCard(player, pattern, prompt, data, method, to, isRetrial, skill_name, isProvision) end

---@param player sgs.ServerPlayer
---@param pattern string
---@param prompt string
---@param notice_index integer
---@param method sgs.Card_HandlingMethod
---@param addHistory boolean
---@return sgs.Card
function Room:askForUseCard(player, pattern, prompt, notice_index, method, addHistory) end

---@param slasher sgs.ServerPlayer
---@param victim sgs.ServerPlayer
---@param prompt string
---@param distance_limit boolean
---@param disable_extra boolean
---@param addHistory boolean
---@return sgs.Card
---@overload fun(slasher: sgs.ServerPlayer, victims: sgs.SPlayerList, prompt: string, distance_limit: boolean, disable_extra: boolean, addHistory: boolean)
function Room:askForUseSlashTo(slasher, victim, prompt, distance_limit, disable_extra, addHistory) end

---@param player sgs.ServerPlayer
---@param card_ids sgs.IntList
---@param refusable boolean
---@param reason string
---@return integer
function Room:askForAG(player, card_ids, refusable, reason) end

---@param player sgs.ServerPlayer
---@param requestor sgs.ServerPlayer
---@param reason string
---@return sgs.Card
function Room:askForCardShow(player, requestor, reason) end

---@param guojia sgs.ServerPlayer
---@param cards sgs.IntList
---@param skill_name string
---@param is_preview boolean
---@param visible boolean
---@param optional boolean
---@param max_num integer
---@param players sgs.SPlayerList
---@param reason sgs.CardMoveReason
---@param prompt string
---@param notify_skill boolean
---@return boolean
function Room:askForYiji(guojia, cards, skill_name, is_preview, visible, optional, max_num, players, reason, prompt, notify_skill) end

---@param player sgs.ServerPlayer
---@param from sgs.ServerPlayer
---@param to sgs.ServerPlayer
---@param reason string
---@return sgs.Card
function Room:askForPindian(player, from, to, reason) end

---@param from sgs.ServerPlayer
---@param to sgs.ServerPlayer
---@param reason string
---@return sgs.CardList
function Room:askForPindianRace(from, to, reason) end

---@param player sgs.ServerPlayer
---@param targets sgs.SPlayerList
---@param reason string
---@param prompt string
---@param optional boolean
---@param notify_skill boolean
---@return sgs.ServerPlayer
function Room:askForPlayerChosen(player, targets, reason, prompt, optional, notify_skill) end

---@param player sgs.ServerPlayer
---@param generals string
---@param default_choice string
---@return string
function Room:askForGeneral(player, generals, default_choice) end

---@param player sgs.ServerPlayer
---@param dying sgs.ServerPlayer
---@return sgs.Card
function Room:askForSinglePeach(player, dying) end

---@param player sgs.ServerPlayer
---@param key string
---@param times integer
function Room:addPlayerHistory(player, key, times) end

---@param method string
---@param arg string
---@param except sgs.ServerPlayer
function Room:broadcastInvoke(method, arg, except) end

---@param player sgs.ServerPlayer
---@param command integer
---@param arg sgs.QVariant
---@return boolean
---@overload fun(player: sgs.ServerPlayer, command: integer, arg: string): boolean
function Room:doNotify(player, command, arg) end

---@param players sgs.SPlayerList
---@param command integer
---@param arg sgs.QVariant
---@return boolean
---@overload fun(command: integer, arg: sgs.QVariant): boolean
---@overload fun(players: sgs.SPlayerList, command: integer, arg: string): boolean
---@overload fun(command: integer, arg: string): boolean
function Room:doBroadcastNotify(players, command, arg) end

function Room:updateStateItem() end

---@param playerToNotify sgs.ServerPlayer
---@param propertyOwner sgs.ServerPlayer
---@param propertyName string
---@param value string
---@return boolean
function Room:notifyProperty(playerToNotify, propertyOwner, propertyName, value) end

---@param player sgs.ServerPlayer
---@param property_name string
---@param value string
---@return boolean
function Room:broadcastProperty(player, property_name, value) end

---@param level integer
---@return integer
function Room:getBossModeExpMult(level) end

---@return sgs.ServerPlayer
function Room:nextPlayer() end

---@param msg string
function Room:output(msg) end

function Room:outputEventStack() end

---@param msg string
function Room:writeToConsole(msg) end

---@param event sgs.TriggerEvent
function Room:throwEvent(event) end

---@class sgs.QVariant
QVariant = {}

---@return sgs.QVariant
function sgs.QVariant() end

---@return integer
function QVariant:toInt() end

---@return string
function QVariant:toString() end

---@return string[]
function QVariant:toStringList() end

---@return boolean
function QVariant:toBool() end

---@param value integer
---@overload fun(damage: sgs.DamageStruct)
---@overload fun(effect: sgs.CardEffectStruct)
---@overload fun(effect: sgs.SlashEffectStruct)
---@overload fun(use: sgs.CardUseStruct)
---@overload fun(card: sgs.Card)
---@overload fun(player: sgs.ServerPlayer)
---@overload fun(dying: sgs.DyingStruct)
---@overload fun(recover: sgs.RecoverStruct)
---@overload fun(judge: sgs.JudgeStruct)
---@overload fun(pindian: sgs.PindianStruct)
---@overload fun(move: sgs.CardsMoveOneTimeStruct)
---@overload fun(phase: sgs.PhaseChangeStruct)
---@overload fun(resp: sgs.CardResponseStruct)
---@overload fun(intlist: sgs.IntList)
function QVariant:setValue(value) end

---@return sgs.DamageStruct
function QVariant:toDamage() end

---@return sgs.CardEffectStruct
function QVariant:toCardEffect() end

---@return sgs.SlashEffectStruct
function QVariant:toSlashEffect() end

---@return sgs.CardUseStruct
function QVariant:toCardUse() end

---@return sgs.Card
function QVariant:toCard() end

---@return sgs.ServerPlayer
function QVariant:toPlayer() end

---@return sgs.DyingStruct
function QVariant:toDying() end

---@return sgs.DeathStruct
function QVariant:toDeath() end

---@return sgs.RecoverStruct
function QVariant:toRecover() end

---@return sgs.JudgeStruct
function QVariant:toJudge() end

---@return sgs.PindianStruct
function QVariant:toPindian() end

---@return sgs.PhaseChangeStruct
function QVariant:toPhaseChange() end

---@return sgs.CardsMoveOneTimeStruct
function QVariant:toMoveOneTime() end

---@return sgs.CardResponseStruct
function QVariant:toCardResponse() end

---@return sgs.IntList
function QVariant:toIntList() end

---@class sgs.LuaTriggerSkill: sgs.TriggerSkill
---@field on_trigger function
---@field can_trigger function
---@field dynamic_frequency function
---@field priority integer
LuaTriggerSkill = {}

---@param name string
---@param frequency sgs.Skill_Frequency
---@param limit_mark string
---@return sgs.LuaTriggerSkill
function sgs.LuaTriggerSkill(name, frequency, limit_mark) end

---@param event sgs.TriggerEvent
function LuaTriggerSkill:addEvent(event) end

---@param view_as_skill sgs.ViewAsSkill
function LuaTriggerSkill:setViewAsSkill(view_as_skill) end

---@param global boolean
function LuaTriggerSkill:setGlobal(global) end

---@param triggerEvent sgs.TriggerEvent
---@param priority integer
function LuaTriggerSkill:insertPriorityTable(triggerEvent, priority) end

---@param type string
function LuaTriggerSkill:setGuhuoDialog(type) end

---@param target sgs.Player
---@return sgs.Skill_Frequency
function LuaTriggerSkill:getFrequency(target) end

---@param target sgs.ServerPlayer
---@param room sgs.Room
---@return boolean
function LuaTriggerSkill:triggerable(target, room) end

---@param event sgs.TriggerEvent
---@param room sgs.Room
---@param player sgs.ServerPlayer
---@param data sgs.QVariant
---@return boolean
function LuaTriggerSkill:trigger(event, room, player, data) end

---@class sgs.GameStartSkill: sgs.TriggerSkill
GameStartSkill = {}

---@param name string
---@return sgs.GameStartSkill
function sgs.GameStartSkill(name) end

---@param event sgs.TriggerEvent
---@param room sgs.Room
---@param player sgs.ServerPlayer
---@param data sgs.QVariant
---@return boolean
function GameStartSkill:trigger(event, room, player, data) end

---@param player sgs.ServerPlayer
function GameStartSkill:onGameStart(player) end

---@class sgs.ProhibitSkill: sgs.Skill
ProhibitSkill = {}

---@param name string
---@return sgs.ProhibitSkill
function sgs.ProhibitSkill(name) end

---@param from sgs.Player
---@param to sgs.Player
---@param card sgs.Card
---@param others sgs.PlayerList
---@return boolean
function ProhibitSkill:isProhibited(from, to, card, others) end

---@class sgs.DistanceSkill: sgs.Skill
DistanceSkill = {}

---@param name string
---@return sgs.DistanceSkill
function sgs.DistanceSkill(name) end

---@param from sgs.Player
---@param to sgs.Player
---@return integer
function DistanceSkill:getCorrect(from, to) end

---@class sgs.MaxCardsSkill: sgs.Skill
MaxCardsSkill = {}

---@param name string
---@return sgs.MaxCardsSkill
function sgs.MaxCardsSkill(name) end

---@param target sgs.Player
---@return integer
function MaxCardsSkill:getExtra(target) end

---@param target sgs.Player
---@return integer
function MaxCardsSkill:getFixed(target) end

---@class sgs.TargetModSkill: sgs.Skill
TargetModSkill = {}

---@alias sgs.TargetModSkill_ModType integer

sgs.TargetModSkill_Residue = 0
sgs.TargetModSkill_DistanceLimit = 1
sgs.TargetModSkill_ExtraTarget = 2

---@param name string
---@return sgs.TargetModSkill
function sgs.TargetModSkill(name) end

---@return string
function TargetModSkill:getPattern() end

---@param from sgs.Player
---@param card sgs.Card
---@return integer
function TargetModSkill:getResidueNum(from, card) end

---@param from sgs.Player
---@param card sgs.Card
---@return integer
function TargetModSkill:getDistanceLimit(from, card) end

---@param from sgs.Player
---@param card sgs.Card
---@return integer
function TargetModSkill:getExtraTargetNum(from, card) end

---@class sgs.InvaliditySkill: sgs.Skill
InvaliditySkill = {}

---@param name string
---@return sgs.InvaliditySkill
function sgs.InvaliditySkill(name) end

---@param player sgs.Player
---@param skill sgs.Skill
---@return boolean
function InvaliditySkill:isSkillValid(player, skill) end

---@class sgs.AttackRangeSkill: sgs.Skill
AttackRangeSkill = {}

---@param name string
---@return sgs.AttackRangeSkill
function sgs.AttackRangeSkill(name) end

---@param target sgs.Player
---@param include_weapon boolean
---@return integer
function AttackRangeSkill:getExtra(target, include_weapon) end

---@param target sgs.Player
---@param include_weapon boolean
---@return integer
function AttackRangeSkill:getFixed(target, include_weapon) end

---@class sgs.LuaAttackRangeSkill: sgs.AttackRangeSkill
---@field extra_func function
---@field fixed_func function
LuaAttackRangeSkill = {}

---@param name string
---@return sgs.LuaAttackRangeSkill
function sgs.LuaAttackRangeSkill(name) end

---@param target sgs.Player
---@param include_weapon boolean
---@return integer
function LuaAttackRangeSkill:getExtra(target, include_weapon) end

---@param target sgs.Player
---@param include_weapon boolean
---@return integer
function LuaAttackRangeSkill:getFixed(target, include_weapon) end

---@class sgs.LuaProhibitSkill: sgs.ProhibitSkill
---@field is_prohibited function
LuaProhibitSkill = {}

---@param name string
---@return sgs.LuaProhibitSkill
function sgs.LuaProhibitSkill(name) end

---@param from sgs.Player
---@param to sgs.Player
---@param card sgs.Card
---@param others sgs.PlayerList
---@return boolean
function LuaProhibitSkill:isProhibited(from, to, card, others) end

---@class sgs.ViewAsSkill: sgs.Skill
ViewAsSkill = {}

---@param name string
---@return sgs.ViewAsSkill
function sgs.ViewAsSkill(name) end

---@param selected sgs.CardList
---@param to_select sgs.Card
---@return boolean
function ViewAsSkill:viewFilter(selected, to_select) end

---@param cards sgs.CardList
---@return sgs.Card
function ViewAsSkill:viewAs(cards) end

---@param player sgs.Player
---@return boolean
function ViewAsSkill:isEnabledAtPlay(player) end

---@param player sgs.Player
---@param pattern string
---@return boolean
function ViewAsSkill:isEnabledAtResponse(player, pattern) end

---@return boolean
function ViewAsSkill:isResponseOrUse() end

---@return string
function ViewAsSkill:getExpandPile() end

---@class sgs.LuaViewAsSkill: sgs.ViewAsSkill
---@field should_be_visible function
---@field view_filter function
---@field view_as function
---@field enabled_at_play function
---@field enabled_at_response function
---@field enabled_at_nullification function
LuaViewAsSkill = {}

---@param name string
---@param response_pattern string
---@param response_or_use boolean
---@param expand_pile string
---@return sgs.LuaViewAsSkill
function sgs.LuaViewAsSkill(name, response_pattern, response_or_use, expand_pile) end

---@param selected sgs.CardList
---@param to_select sgs.Card
---@return boolean
function LuaViewAsSkill:viewFilter(selected, to_select) end

---@param cards sgs.CardList
---@return sgs.Card
function LuaViewAsSkill:viewAs(cards) end

---@param player sgs.Player
---@return boolean
function LuaViewAsSkill:shouldBeVisible(player) end

---@param type string
function LuaViewAsSkill:setGuhuoDialog(type) end

---@class sgs.OneCardViewAsSkill: sgs.ViewAsSkill
OneCardViewAsSkill = {}

---@param name string
---@return sgs.OneCardViewAsSkill
function sgs.OneCardViewAsSkill(name) end

---@param selected sgs.CardList
---@param to_select sgs.Card
---@return boolean
function OneCardViewAsSkill:viewFilter(selected, to_select) end

---@param cards sgs.CardList
---@return sgs.Card
function OneCardViewAsSkill:viewAs(cards) end

---@param to_select sgs.Card
---@return boolean
function OneCardViewAsSkill:viewFilter(to_select) end

---@param originalCard sgs.Card
---@return sgs.Card
function OneCardViewAsSkill:viewAs(originalCard) end

---@class sgs.FilterSkill: sgs.OneCardViewAsSkill
FilterSkill = {}

---@param name string
---@return sgs.FilterSkill
function sgs.FilterSkill(name) end

---@class sgs.LuaFilterSkill: sgs.FilterSkill
---@field view_filter function
---@field view_as function
LuaFilterSkill = {}

---@param name string
---@return sgs.LuaFilterSkill
function sgs.LuaFilterSkill(name) end

---@param to_select sgs.Card
---@return boolean
function LuaFilterSkill:viewFilter(to_select) end

---@param originalCard sgs.Card
---@return sgs.Card
function LuaFilterSkill:viewAs(originalCard) end

---@class sgs.LuaDistanceSkill: sgs.DistanceSkill
---@field correct_func function
LuaDistanceSkill = {}

---@param name string
---@return sgs.LuaDistanceSkill
function sgs.LuaDistanceSkill(name) end

---@param from sgs.Player
---@param to sgs.Player
---@return integer
function LuaDistanceSkill:getCorrect(from, to) end

---@class sgs.LuaMaxCardsSkill: sgs.MaxCardsSkill
---@field extra_func function
---@field fixed_func function
LuaMaxCardsSkill = {}

---@param name string
---@return sgs.LuaMaxCardsSkill
function sgs.LuaMaxCardsSkill(name) end

---@param target sgs.Player
---@return integer
function LuaMaxCardsSkill:getExtra(target) end

---@param target sgs.Player
---@return integer
function LuaMaxCardsSkill:getFixed(target) end

---@class sgs.LuaTargetModSkill: sgs.TargetModSkill
---@field residue_func function
---@field distance_limit_func function
---@field extra_target_func function
LuaTargetModSkill = {}

---@param name string
---@param pattern string
---@return sgs.LuaTargetModSkill
function sgs.LuaTargetModSkill(name, pattern) end

---@param from sgs.Player
---@param card sgs.Card
---@return integer
function LuaTargetModSkill:getResidueNum(from, card) end

---@param from sgs.Player
---@param card sgs.Card
---@return integer
function LuaTargetModSkill:getDistanceLimit(from, card) end

---@param from sgs.Player
---@param card sgs.Card
---@return integer
function LuaTargetModSkill:getExtraTargetNum(from, card) end

---@class sgs.LuaInvaliditySkill: sgs.InvaliditySkill
---@field skill_valid function
LuaInvaliditySkill = {}

---@param name string
---@return sgs.LuaInvaliditySkill
function sgs.LuaInvaliditySkill(name) end

---@param player sgs.Player
---@param skill sgs.Skill
---@return boolean
function LuaInvaliditySkill:isSkillValid(player, skill) end

---@class sgs.LuaSkillCard: sgs.SkillCard
---@field filter function
---@field feasible function
---@field about_to_use function
---@field on_use function
---@field on_effect function
---@field on_validate function
---@field on_validate_in_response function
LuaSkillCard = {}

---@param name string
---@param skillName string
---@return sgs.LuaSkillCard
function sgs.LuaSkillCard(name, skillName) end

---@param target_fixed boolean
function LuaSkillCard:setTargetFixed(target_fixed) end

---@param will_throw boolean
function LuaSkillCard:setWillThrow(will_throw) end

---@param can_recast boolean
function LuaSkillCard:setCanRecast(can_recast) end

---@param handling_method sgs.Card_HandlingMethod
function LuaSkillCard:setHandlingMethod(handling_method) end

---@param mute boolean
function LuaSkillCard:setMute(mute) end

---@return sgs.LuaSkillCard
function LuaSkillCard:clone() end

---@class sgs.LuaBasicCard: sgs.BasicCard
---@field filter function
---@field feasible function
---@field available function
---@field about_to_use function
---@field on_use function
---@field on_effect function
LuaBasicCard = {}

---@param suit sgs.Card_Suit
---@param number integer
---@param obj_name string
---@param class_name string
---@param subtype string
---@return sgs.LuaBasicCard
function sgs.LuaBasicCard(suit, number, obj_name, class_name, subtype) end

---@param suit sgs.Card_Suit
---@param number integer
---@return sgs.LuaBasicCard
function LuaBasicCard:clone(suit, number) end

---@param target_fixed boolean
function LuaBasicCard:setTargetFixed(target_fixed) end

---@param can_recast boolean
function LuaBasicCard:setCanRecast(can_recast) end

---@param room sgs.Room
---@param card_use sgs.CardUseStruct
function LuaBasicCard:onUse(room, card_use) end

---@param effect sgs.CardEffectStruct
function LuaBasicCard:onEffect(effect) end

---@param room sgs.Room
---@param source sgs.ServerPlayer
---@param targets sgs.SPlayerList
function LuaBasicCard:use(room, source, targets) end

---@param targets sgs.PlayerList
---@param Self sgs.Player
---@return boolean
function LuaBasicCard:targetsFeasible(targets, Self) end

---@param targets sgs.PlayerList
---@param to_select sgs.Player
---@param Self sgs.Player
---@return boolean
function LuaBasicCard:targetFilter(targets, to_select, Self) end

---@param player sgs.Player
---@return boolean
function LuaBasicCard:isAvailable(player) end

---@return string
function LuaBasicCard:getClassName() end

---@return string
function LuaBasicCard:getSubtype() end

---@param cardType string
---@return boolean
function LuaBasicCard:isKindOf(cardType) end

---@class sgs.LuaTrickCard: sgs.TrickCard
---@field filter function
---@field feasible function
---@field available function
---@field is_cancelable function
---@field about_to_use function
---@field on_use function
---@field on_effect function
---@field on_nullified function
LuaTrickCard = {}

---@alias sgs.LuaTrickCard_SubClass integer

sgs.LuaTrickCard_TypeNormal = 0
sgs.LuaTrickCard_TypeSingleTargetTrick = 1
sgs.LuaTrickCard_TypeDelayedTrick = 2
sgs.LuaTrickCard_TypeAOE = 3
sgs.LuaTrickCard_TypeGlobalEffect = 4

---@param suit sgs.Card_Suit
---@param number integer
---@param obj_name string
---@param class_name string
---@param subtype string
---@return sgs.LuaTrickCard
function sgs.LuaTrickCard(suit, number, obj_name, class_name, subtype) end

---@param suit sgs.Card_Suit
---@param number integer
---@return sgs.LuaTrickCard
function LuaTrickCard:clone(suit, number) end

---@param target_fixed boolean
function LuaTrickCard:setTargetFixed(target_fixed) end

---@param can_recast boolean
function LuaTrickCard:setCanRecast(can_recast) end

---@param room sgs.Room
---@param card_use sgs.CardUseStruct
function LuaTrickCard:onUse(room, card_use) end

---@param effect sgs.CardEffectStruct
function LuaTrickCard:onEffect(effect) end

---@param room sgs.Room
---@param source sgs.ServerPlayer
---@param targets sgs.SPlayerList
function LuaTrickCard:use(room, source, targets) end

---@param target sgs.ServerPlayer
function LuaTrickCard:onNullified(target) end

---@param effect sgs.CardEffectStruct
---@return boolean
function LuaTrickCard:isCancelable(effect) end

---@param targets sgs.PlayerList
---@param Self sgs.Player
---@return boolean
function LuaTrickCard:targetsFeasible(targets, Self) end

---@param targets sgs.PlayerList
---@param to_select sgs.Player
---@param Self sgs.Player
---@return boolean
function LuaTrickCard:targetFilter(targets, to_select, Self) end

---@param player sgs.Player
---@return boolean
function LuaTrickCard:isAvailable(player) end

---@return string
function LuaTrickCard:getClassName() end

---@param subclass sgs.LuaTrickCard_SubClass
function LuaTrickCard:setSubClass(subclass) end

---@return sgs.LuaTrickCard_SubClass
function LuaTrickCard:getSubClass() end

---@return string
function LuaTrickCard:getSubtype() end

---@param cardType string
---@return boolean
function LuaTrickCard:isKindOf(cardType) end

---@class sgs.LuaWeapon: sgs.Weapon
---@field on_install function
---@field on_uninstall function
LuaWeapon = {}

---@param suit sgs.Card_Suit
---@param number integer
---@param range integer
---@param obj_name string
---@param class_name string
---@return sgs.LuaWeapon
function sgs.LuaWeapon(suit, number, range, obj_name, class_name) end

---@param suit sgs.Card_Suit
---@param number integer
---@return sgs.LuaWeapon
function LuaWeapon:clone(suit, number) end

---@param player sgs.ServerPlayer
function LuaWeapon:onInstall(player) end

---@param player sgs.ServerPlayer
function LuaWeapon:onUninstall(player) end

---@return string
function LuaWeapon:getClassName() end

---@param cardType string
---@return boolean
function LuaWeapon:isKindOf(cardType) end

---@class sgs.LuaArmor: sgs.Armor
---@field on_install function
---@field on_uninstall function
LuaArmor = {}

---@param suit sgs.Card_Suit
---@param number integer
---@param obj_name string
---@param class_name string
---@return sgs.LuaArmor
function sgs.LuaArmor(suit, number, obj_name, class_name) end

---@param suit sgs.Card_Suit
---@param number integer
---@return sgs.LuaArmor
function LuaArmor:clone(suit, number) end

---@param player sgs.ServerPlayer
function LuaArmor:onInstall(player) end

---@param player sgs.ServerPlayer
function LuaArmor:onUninstall(player) end

---@return string
function LuaArmor:getClassName() end

---@param cardType string
---@return boolean
function LuaArmor:isKindOf(cardType) end

---@class sgs.LuaTreasure: sgs.Treasure
---@field on_install function
---@field on_uninstall function
LuaTreasure = {}

---@param suit sgs.Card_Suit
---@param number integer
---@param obj_name string
---@param class_name string
---@return sgs.LuaTreasure
function sgs.LuaTreasure(suit, number, obj_name, class_name) end

---@param suit sgs.Card_Suit
---@param number integer
---@return sgs.LuaTreasure
function LuaTreasure:clone(suit, number) end

---@param player sgs.ServerPlayer
function LuaTreasure:onInstall(player) end

---@param player sgs.ServerPlayer
function LuaTreasure:onUninstall(player) end

---@return string
function LuaTreasure:getClassName() end

---@param cardType string
---@return boolean
function LuaTreasure:isKindOf(cardType) end

---@class sgs.QList
QList = {}

---@return sgs.QList
function sgs.QList() end

---@return sgs.QList
function sgs.QList() end

---@return integer
function QList:length() end

---@generic T
---@param elem  T
function QList:append(elem) end

---@generic T
---@param elem  T
function QList:prepend(elem) end

---@return boolean
function QList:isEmpty() end

---@generic T
---@param value  T
---@return boolean
function QList:contains(value) end

---@generic T
---@return  T
function QList:first() end

---@generic T
---@return  T
function QList:last() end

---@param i integer
function QList:removeAt(i) end

---@generic T
---@param value  T
---@return integer
function QList:removeAll(value) end

---@generic T
---@param value  T
---@return boolean
function QList:removeOne(value) end

---@param pos integer
---@param length integer
---@return sgs.QList
function QList:mid(pos, length) end

---@generic T
---@param value  T
---@param from integer
---@return integer
function QList:indexOf(value, from) end

---@param i integer
---@generic T
---@param value  T
function QList:replace(i, value) end

---@param i integer
---@param j integer
function QList:swapItemsAt(i, j) end

---@param i integer
---@generic T
---@return  T
function QList:at(i) end

---@class sgs.SPlayerList: sgs.QList
SPlayerList = {}

---@class sgs.PlayerList: sgs.QList
PlayerList = {}

---@class sgs.CardList: sgs.QList
CardList = {}

---@class sgs.IntList: sgs.QList
IntList = {}

---@class sgs.BoolList: sgs.QList
BoolList = {}

---@class sgs.SkillList: sgs.QList
SkillList = {}

---@class sgs.CardsMoveList: sgs.QList
CardsMoveList = {}

---@class sgs.Player_PlaceList: sgs.QList
PlaceList = {}

---@class sgs.PhaseList: sgs.QList
PhaseList = {}

---@class sgs.GeneralList: sgs.QList
GeneralList = {}

---@class sgs.BasicCard: sgs.Card
BasicCard = {}

---@param suit sgs.Card_Suit
---@param number integer
---@return sgs.BasicCard
function sgs.BasicCard(suit, number) end

---@return string
function BasicCard:getType() end

---@return sgs.Card_CardType
function BasicCard:getTypeId() end

---@class sgs.TrickCard: sgs.Card
TrickCard = {}

---@param suit sgs.Card_Suit
---@param number integer
---@return sgs.TrickCard
function sgs.TrickCard(suit, number) end

---@param cancelable boolean
function TrickCard:setCancelable(cancelable) end

---@return string
function TrickCard:getType() end

---@return sgs.Card_CardType
function TrickCard:getTypeId() end

---@param effect sgs.CardEffectStruct
---@return boolean
function TrickCard:isCancelable(effect) end

---@class sgs.DelayedTrick: sgs.TrickCard
DelayedTrick = {}

---@param suit sgs.Card_Suit
---@param number integer
---@param movable boolean
---@return sgs.DelayedTrick
function sgs.DelayedTrick(suit, number, movable) end

---@class sgs.EquipCard: sgs.Card
EquipCard = {}

---@alias sgs.EquipCard_Location integer

sgs.EquipCard_WeaponLocation = 0
sgs.EquipCard_ArmorLocation = 1
sgs.EquipCard_DefensiveHorseLocation = 2
sgs.EquipCard_OffensiveHorseLocation = 3
sgs.EquipCard_TreasureLocation = 4

---@param suit sgs.Card_Suit
---@param number integer
---@return sgs.EquipCard
function sgs.EquipCard(suit, number) end

---@return string
function EquipCard:getType() end

---@return sgs.Card_CardType
function EquipCard:getTypeId() end

---@param room sgs.Room
---@param source sgs.ServerPlayer
---@param targets sgs.SPlayerList
function EquipCard:use(room, source, targets) end

---@param player sgs.ServerPlayer
function EquipCard:onInstall(player) end

---@param player sgs.ServerPlayer
function EquipCard:onUninstall(player) end

---@return sgs.EquipCard_Location
function EquipCard:location() end

---@param player sgs.ServerPlayer
function EquipCard:equipOnInstall(player) end

---@param player sgs.ServerPlayer
function EquipCard:equipOnUninstall(player) end

---@class sgs.Weapon: sgs.EquipCard
Weapon = {}

---@param suit sgs.Card_Suit
---@param number integer
---@param range integer
---@return sgs.Weapon
function sgs.Weapon(suit, number, range) end

---@return integer
function Weapon:getRange() end

---@return string
function Weapon:getSubtype() end

---@return sgs.EquipCard_Location
function Weapon:location() end

---@param player sgs.ServerPlayer
function Weapon:onInstall(player) end

---@param player sgs.ServerPlayer
function Weapon:onUninstall(player) end

---@class sgs.Armor: sgs.EquipCard
Armor = {}

---@param suit sgs.Card_Suit
---@param number integer
---@return sgs.Armor
function sgs.Armor(suit, number) end

---@return string
function Armor:getSubtype() end

---@return sgs.EquipCard_Location
function Armor:location() end

---@class sgs.Horse: sgs.EquipCard
Horse = {}

---@param suit sgs.Card_Suit
---@param number integer
---@param correct integer
---@return sgs.Horse
function sgs.Horse(suit, number, correct) end

---@return sgs.EquipCard_Location
function Horse:location() end

---@param player sgs.ServerPlayer
function Horse:onInstall(player) end

---@param player sgs.ServerPlayer
function Horse:onUninstall(player) end

---@class sgs.OffensiveHorse: sgs.Horse
OffensiveHorse = {}

---@param suit sgs.Card_Suit
---@param number integer
---@param correct integer
---@return sgs.OffensiveHorse
function sgs.OffensiveHorse(suit, number, correct) end

---@return string
function OffensiveHorse:getSubtype() end

---@class sgs.DefensiveHorse: sgs.Horse
DefensiveHorse = {}

---@param suit sgs.Card_Suit
---@param number integer
---@param correct integer
---@return sgs.DefensiveHorse
function sgs.DefensiveHorse(suit, number, correct) end

---@return string
function DefensiveHorse:getSubtype() end

---@class sgs.Treasure: sgs.EquipCard
Treasure = {}

---@param suit sgs.Card_Suit
---@param number integer
---@return sgs.Treasure
function sgs.Treasure(suit, number) end

---@return string
function Treasure:getSubtype() end

---@return sgs.EquipCard_Location
function Treasure:location() end

---@class sgs.Slash: sgs.BasicCard
Slash = {}

---@param suit sgs.Card_Suit
---@param number integer
---@return sgs.Slash
function sgs.Slash(suit, number) end

---@param nature sgs.DamageStruct_Nature
function Slash:setNature(nature) end

---@return sgs.DamageStruct_Nature
function Slash:getNature() end

---@param player sgs.Player
function Slash:addSpecificAssignee(player) end

---@param player sgs.Player
---@return boolean
function Slash:hasSpecificAssignee(player) end

---@param player sgs.Player
---@param slash sgs.Card
---@param considerSpecificAssignee boolean
---@return boolean
function sgs.Slash_IsAvailable(player, slash, considerSpecificAssignee) end

---@param player sgs.Player
---@param from sgs.Player
---@param slash sgs.Card
---@return boolean
function sgs.Slash_IsSpecificAssignee(player, from, slash) end

---@class sgs.Analeptic: sgs.BasicCard
Analeptic = {}

---@param suit sgs.Card_Suit
---@param number integer
---@return sgs.Analeptic
function sgs.Analeptic(suit, number) end

---@param player sgs.Player
---@param analeptic sgs.Card
---@return boolean
function sgs.Analeptic_IsAvailable(player, analeptic) end

---@alias sgs.TriggerEvent integer

sgs.NonTrigger = 0
sgs.GameStart = 1
sgs.TurnStart = 2
sgs.EventPhaseStart = 3
sgs.EventPhaseProceeding = 4
sgs.EventPhaseEnd = 5
sgs.EventPhaseChanging = 6
sgs.EventPhaseSkipping = 7
sgs.DrawNCards = 8
sgs.AfterDrawNCards = 9
sgs.DrawInitialCards = 10
sgs.AfterDrawInitialCards = 11
sgs.PreHpRecover = 12
sgs.HpRecover = 13
sgs.PreHpLost = 14
sgs.HpLost = 15
sgs.HpChanged = 16
sgs.MaxHpChanged = 17
sgs.EventLoseSkill = 18
sgs.EventAcquireSkill = 19
sgs.StartJudge = 20
sgs.AskForRetrial = 21
sgs.FinishRetrial = 22
sgs.FinishJudge = 23
sgs.PindianVerifying = 24
sgs.Pindian = 25
sgs.TurnedOver = 26
sgs.ChainStateChanged = 27
sgs.ConfirmDamage = 28
sgs.Predamage = 29
sgs.DamageForseen = 30
sgs.DamageCaused = 31
sgs.DamageInflicted = 32
sgs.PreDamageDone = 33
sgs.DamageDone = 34
sgs.Damage = 35
sgs.Damaged = 36
sgs.DamageComplete = 37
sgs.EnterDying = 38
sgs.Dying = 39
sgs.QuitDying = 40
sgs.AskForPeaches = 41
sgs.AskForPeachesDone = 42
sgs.Death = 43
sgs.BuryVictim = 44
sgs.BeforeGameOverJudge = 45
sgs.GameOverJudge = 46
sgs.GameFinished = 47
sgs.SlashEffected = 48
sgs.SlashProceed = 49
sgs.SlashHit = 50
sgs.SlashMissed = 51
sgs.JinkEffect = 52
sgs.NullificationEffect = 53
sgs.CardAsked = 54
sgs.PreCardResponded = 55
sgs.CardResponded = 56
sgs.BeforeCardsMove = 57
sgs.CardsMoveOneTime = 58
sgs.PreCardUsed = 59
sgs.CardUsed = 60
sgs.TargetSpecifying = 61
sgs.TargetConfirming = 62
sgs.TargetSpecified = 63
sgs.TargetConfirmed = 64
sgs.CardEffect = 65
sgs.CardEffected = 66
sgs.PostCardEffected = 67
sgs.CardFinished = 68
sgs.TrickCardCanceling = 69
sgs.TrickEffect = 70
sgs.ChoiceMade = 71
sgs.StageChange = 72
sgs.FetchDrawPileCard = 73
sgs.Debut = 74
sgs.TurnBroken = 75
sgs.NumOfEvents = 76

-- ============================================
-- Lua functions in lua/?.lua
-- ============================================

-- utilities.lua

---@param qlist sgs.QList
---@return table
function sgs.QList2Table(qlist) end

--- the iterator of QList object
---@param list sgs.QList
function sgs.qlist(list) end

--- reverse a table
---@param list table
function sgs.reverse(list) end

-- copied from "Well House Consultants"
-- used to split string into a table, similar with php' explode function
---@param delimiter string
function string:split(delimiter)
	if #self == 0 then return {} end
	local result = {}
	local from = 1
	local delim_from, delim_to = string.find(self, delimiter, from)
	while delim_from do
		table.insert(result, string.sub(self, from, delim_from - 1))
		from  = delim_to + 1
		delim_from, delim_to = string.find(self, delimiter, from)
	end
	table.insert(result, string.sub(self, from))
	return result
end

---@param element any
---@param compare_objectName boolean
---@return boolean
function table:contains(element, compare_objectName)
	if #self == 0 or type(self[1]) ~= type(element) then return false end
	if compare_objectName then
		for _, e in ipairs(self) do
			if e:objectName() == element:objectName() then return true end
		end
	else
		for _, e in ipairs(self) do
			if e == element then return true end
		end
	end
end

function table:removeOne(element)
	if #self == 0 or type(self[1]) ~= type(element) then return false end

	for i = 1, #self do
		if self[i] == element then
			table.remove(self, i)
			return true
		end
	end
	return false
end

function table:removeAll(element)
	if #self == 0 or type(self[1]) ~= type(element) then return 0 end
	local n = 0
	for i = 1, #self do
		if self[i] == element then
			table.remove(self, i)
			n = n + 1
		end
	end
	return n
end

function table:insertTable(list)
	for _, e in ipairs(list) do
		table.insert(self, e)
	end
end

function table:removeTable(list)
	for _, e in ipairs(list) do
		table.removeAll(self, e)
	end
end

function table.copyFrom(list)
	local l = {}
	for _, e in ipairs(list) do
		table.insert(l, e)
	end
	return l
end

function table:indexOf(value, from)
	from = from or 1
	for i = from, #self do
		if self[i] == value then return i end
	end
	return -1
end

function string:matchOne(option)
	return self:match("^" .. option .. "%p") or self:match("%p" .. option .. "%p") or self:match("%p" .. option .. "$")
end

function string:startsWith(substr)
	local len = string.len(substr)
	if len == 0 or len > string.len(self) then return false end
	return string.sub(self, 1, len) == substr
end

function string:endsWith(substr)
	local len = string.len(substr)
	if len == 0 or len > string.len(self) then return false end
	return string.sub(self, -len, -1) == substr
end

function math:mod(num)
	return math.fmod(self, num)
end

sgs.CommandType = {}

-- sgs_ex.lua

---@class TriggerSkillSpec
---@field name string
---@field frequency sgs.Skill_Frequency
---@field limit_mark string
---@field guhuo_type string
---@field events sgs.TriggerEvent | sgs.TriggerEvent[]
---@field global boolean
---@field on_trigger fun(self: sgs.LuaTriggerSkill, event: sgs.TriggerEvent, player: sgs.ServerPlayer, data: sgs.QVariant): boolean
---@field can_trigger fun(self: sgs.LuaTriggerSkill, target: sgs.ServerPlayer): boolean
---@field view_as_skill sgs.LuaViewAsSkill
---@field priority number | table<sgs.TriggerEvent, number>

---@param spec TriggerSkillSpec
---@return sgs.LuaTriggerSkill
function sgs.CreateTriggerSkill(spec) end

---@class ProhibitSkillSpec
---@field name string
---@field is_prohibited fun(self: sgs.LuaProhibitSkill, from: sgs.Player, to: sgs.Player, card: sgs.Card): boolean

---@param spec ProhibitSkillSpec
---@return sgs.LuaProhibitSkill
function sgs.CreateProhibitSkill(spec) end

---@class FilterSkillSpec
---@field name string
---@field view_filter fun(self: sgs.LuaFilterSkill, to_select: sgs.Card): boolean
---@field view_as fun(self: sgs.LuaFilterSkill, to_select: sgs.Card): sgs.Card

---@param spec FilterSkillSpec
---@return sgs.LuaFilterSkill
function sgs.CreateFilterSkill(spec) end

---@class DistanceSkillSpec
---@field name string
---@field correct_func fun(self:sgs.LuaDistanceSkill, from: sgs.Player, to:sgs.Player): integer

---@param spec DistanceSkillSpec
---@return sgs.LuaDistanceSkill
function sgs.CreateDistanceSkill(spec) end

---@class MaxCardsSkillSpec
---@field name string
---@field extra_func fun(self:sgs.LuaDistanceSkill, target: sgs.Player): integer
---@field fixed_func fun(self:sgs.LuaDistanceSkill, target: sgs.Player): integer

---@param spec MaxCardsSkillSpec
---@return sgs.LuaMaxCardsSkill
function sgs.CreateMaxCardsSkill(spec) end

---@class TargetModSkillSpec
---@field name string
---@field residue_func fun(self: sgs.LuaTargetModSkill, from: sgs.Player, card: sgs.Card): integer
---@field distance_limit_func fun(self: sgs.LuaTargetModSkill, from: sgs.Player, card: sgs.Card): integer
---@field extra_target_func fun(self: sgs.LuaTargetModSkill, from: sgs.Player, card: sgs.Card): integer

---@param spec TargetModSkillSpec
---@return sgs.LuaTargetModSkill
function sgs.CreateTargetModSkill(spec) end

---@class InvaliditySkillSpec
---@field name string
---@field skill_valid fun(self: sgs.InvaliditySkill, target: sgs.Player, skill: sgs.Skill): boolean

---@param spec InvaliditySkillSpec
---@return sgs.LuaInvaliditySkill
function sgs.CreateInvaliditySkill(spec) end

---@class AttackRangeSkillSpec
---@field name string
---@field extra_func fun(self:sgs.LuaAttackRangeSkill, target: sgs.Player, include_weapon: boolean): integer
---@field fixed_func fun(self:sgs.LuaAttackRangeSkill, target: sgs.Player, include_weapon: boolean): integer

---@param spec AttackRangeSkillSpec
---@return sgs.LuaAttackRangeSkill
function sgs.CreateAttackRangeSkill(spec) end

---@class SkillCardSpec
---@field name string
---@field skill_name string
---@field target_fixed boolean
---@field will_throw boolean
---@field can_recast boolean
---@field handling_method sgs.Card_HandlingMethod
---@field mute boolean
---@field filter fun(self: sgs.LuaSkillCard, selected: sgs.Player[], to_select: sgs.Player): boolean
---@field feasible fun(self: sgs.LuaSkillCard, targets: sgs.Player[]): boolean
---@field about_to_use fun(self: sgs.LuaSkillCard, room: sgs.Room, card_use: sgs.CardUseStruct)
---@field on_use fun(self: sgs.LuaSkillCard, room: sgs.Room, source: sgs.ServerPlayer, targets: sgs.ServerPlayer[])
---@field on_effect fun(self: sgs.LuaSkillCard, effect: sgs.CardEffectStruct)
---@field on_validate fun(self: sgs.LuaSkillCard, card_use: sgs.CardUseStruct): sgs.Card
---@field on_validate_in_response fun(self: sgs.LuaSkillCard, user: sgs.ServerPlayer): sgs.Card

---@param spec SkillCardSpec
---@return sgs.LuaSkillCard
function sgs.CreateSkillCard(spec) end

---@class BasicCardSpec
---@field name string
---@field class_name string
---@field suit sgs.Card_Suit
---@field number integer
---@field subtype string
---@field target_fixed boolean
---@field can_recast boolean
---@field filter fun(self: sgs.LuaBasicCard, selected: sgs.Player[], to_select: sgs.Player): boolean
---@field feasible fun(self: sgs.LuaBasicCard, targets: sgs.Player[]): boolean
---@field available fun(self: sgs.LuaBasicCard, player: sgs.Player): boolean
---@field about_to_use fun(self: sgs.LuaBasicCard, room: sgs.Room, card_use: sgs.CardUseStruct)
---@field on_use fun(self: sgs.LuaBasicCard, room: sgs.Room, source: sgs.ServerPlayer, targets: sgs.ServerPlayer[])
---@field on_effect fun(self: sgs.LuaBasicCard, effect: sgs.CardEffectStruct)

---@param spec BasicCardSpec
---@return sgs.LuaBasicCard
function sgs.CreateBasicCard(spec) end

---@class TrickCardSpec
---@field name string
---@field class_name string
---@field suit sgs.Card_Suit
---@field number integer
---@field subtype string
---@field subclass sgs.LuaTrickCard_SubClass
---@field target_fixed boolean
---@field can_recast boolean
---@field filter fun(self: sgs.LuaTrickCard, selected: sgs.Player[], to_select: sgs.Player): boolean
---@field feasible fun(self: sgs.LuaTrickCard, targets: sgs.Player[]): boolean
---@field available fun(self: sgs.LuaTrickCard, player: sgs.Player): boolean
---@field is_cancelable fun(self: sgs.LuaTrickCard, effect: sgs.CardEffectStruct): boolean
---@field on_nullified fun(self: sgs.LuaTrickCard, target: sgs.ServerPlayer)
---@field about_to_use fun(self: sgs.LuaTrickCard, room: sgs.Room, card_use: sgs.CardUseStruct)
---@field on_use fun(self: sgs.LuaTrickCard, room: sgs.Room, source: sgs.ServerPlayer, targets: sgs.ServerPlayer[])
---@field on_effect fun(self: sgs.LuaTrickCard, effect: sgs.CardEffectStruct)

---@param spec TrickCardSpec
---@return sgs.LuaTrickCard
function sgs.CreateTrickCard(spec) end

---@class ViewAsSkillSpec
---@field name string
---@field response_pattern string
---@field response_or_use boolean
---@field expand_pile string
---@field n integer
---@field guhuo_type string
---@field view_filter fun(self: sgs.LuaViewAsSkill, selected: sgs.Card[], to_select: card): boolean
---@field view_as fun(self: sgs.LuaViewAsSkill, cards: sgs.Card[]): sgs.Card
---@field should_be_visible fun(self: sgs.LuaViewAsSkill, player: sgs.Player): boolean
---@field enabled_at_play fun(self: sgs.LuaViewAsSkill, player: sgs.Player): boolean
---@field enabled_at_response fun(self: sgs.LuaViewAsSkill, player: sgs.Player, pattern: string): boolean
---@field enabled_at_nullification fun(self: sgs.LuaViewAsSkill, player: sgs.ServerPlayer): boolean

---@param spec ViewAsSkillSpec
---@return sgs.LuaViewAsSkill
function sgs.CreateViewAsSkill(spec) end

---@class EquipCardSpec
---@field name string
---@field class_name string
---@field location sgs.EquipCard_Location
---@field suit sgs.Card_Suit
---@field number integer
---@generic T
---@field on_install fun(self: T, player: sgs.ServerPlayer)
---@field on_uninstall fun(self: T, player: sgs.ServerPlayer)

---@param spec EquipCardSpec
---@return sgs.LuaWeapon
function sgs.CreateWeapon(spec) end

---@param spec EquipCardSpec
---@return sgs.LuaArmor
function sgs.CreateArmor(spec) end

---@param spec EquipCardSpec
---@return sgs.LuaTreasure
function sgs.CreateTreasure(spec) end

---@param t table<string, string>
function sgs.LoadTranslationTable(t) end

-- native.i

---@param dirname string
---@return string[]
function sgs.GetFileNames(dirname) end

---@param msg string
function sgs.Print(msg) end

---@param key string
---@param value string
function sgs.AddTranslationEntry(key, value) end

---@param key string
---@param default number | string | boolean
---@return number | string | boolean
function sgs.GetConfig(key, default) end

---@param key string
---@param default number | string | boolean
function sgs.SetConfig(key, value) end

---@param obj sgs.QObject
---@param property_name string
---@return number | string | boolean | nil
function sgs.GetProperty(obj, property_name) end

-- P.S. 懒得写注释了，哪个dalao有精力的话帮忙补充一下
-- 底下是给函数、函数参数写注释的例子

--- 弹出一个警告框，对话框内容为msg
---@param msg string @ 警告的内容
function sgs.Alert(msg) end
