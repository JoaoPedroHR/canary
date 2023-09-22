local internalNpcName = "Imbuement Assistant"
local npcType = Game.createNpcType(internalNpcName)
local npcConfig = {}

npcConfig.name = internalNpcName
npcConfig.description = internalNpcName

npcConfig.health = 100
npcConfig.maxHealth = npcConfig.health
npcConfig.walkInterval = 2000
npcConfig.walkRadius = 2

npcConfig.outfit = {
	lookType = 141,
	lookHead = 41,
	lookBody = 72,
	lookLegs = 39,
	lookFeet = 96,
	lookAddons = 3,
	lookMount = 688,
}

npcConfig.flags = {
	floorchange = false,
}

npcConfig.voices = {
	interval = 15000,
	chance = 50,
	{ text = "Hello adventurer, looking for Imbuement items? Just ask me!" },
}

local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)

npcType.onThink = function(npc, interval)
	npcHandler:onThink(npc, interval)
end

npcType.onAppear = function(npc, creature)
	npcHandler:onAppear(npc, creature)
end

npcType.onDisappear = function(npc, creature)
	npcHandler:onDisappear(npc, creature)
end

npcType.onMove = function(npc, creature, fromPosition, toPosition)
	npcHandler:onMove(npc, creature, fromPosition, toPosition)
end

npcType.onSay = function(npc, creature, type, message)
	npcHandler:onSay(npc, creature, type, message)
end

npcType.onCloseChannel = function(npc, creature)
	npcHandler:onCloseChannel(npc, creature)
end

-- Basic

keywordHandler:addKeyword({ "job" }, StdModule.say, { npcHandler = npcHandler, text = "Currently I have been working selling items for imbuement." })

npcHandler:setMessage(MESSAGE_GREET, "Welcome to Imbuement's shop!")
npcHandler:setMessage(MESSAGE_FAREWELL, "Good bye and come again.")
npcHandler:setMessage(MESSAGE_WALKAWAY, "Good bye and come again.")

npcHandler:addModule(FocusModule:new(), npcConfig.name, true, true, true)

npcConfig.shop = {
	{ itemName = "battle stone", clientId = 11447, buy = 8000, sell = 4000 },
	{ itemName = "blazing bone", clientId = 16131, buy = 1500 , sell = 750},
	{ itemName = "bloody pincers", clientId = 9633, buy = 9000, sell = 4500 },
	{ itemName = "brimstone fangs", clientId = 11702, buy = 18000, sell = 9000 },
	{ itemName = "brimstone shell", clientId = 11703, buy = 800, sell = 400 },
	{ itemName = "broken shamanic staff", clientId = 11452, buy = 15000, sell = 7500 },
	{ itemName = "compass", clientId = 10302, buy = 200, sell = 100 },
	{ itemName = "crawler head plating", clientId = 14079, buy = 11000, sell = 5500 },
	{ itemName = "crystallized anger", clientId = 23507, buy = 800, sell = 400 },
	{ itemName = "cultish mask", clientId = 9638, buy = 20000, sell = 10000 },
	{ itemName = "cultish robe", clientId = 9639, buy = 1000, sell = 500 },
	{ itemName = "cyclops toe", clientId = 9657, buy = 2000, sell = 1000 },
	{ itemName = "damselfly wing", clientId = 17458, buy = 500, sell = 250 },
	{ itemName = "deepling warts", clientId = 14012, buy = 750, sell = 375 },
	{ itemName = "demon horn", clientId = 5954, buy = 1000, sell = 500 },
	{ itemName = "demonic skeletal hand", clientId = 9647, buy = 100, sell = 500 },
	{ itemName = "draken sulphur", clientId = 11658, buy = 1500, sell = 750 },
	{ itemName = "elven hoof", clientId = 18994, buy = 7200, sell = 3600 },
	{ itemName = "elven scouting glass", clientId = 11464, buy = 1250, sell = 675 },
	{ itemName = "elvish talisman", clientId = 9635, buy = 6200, sell = 3100 },
	{ itemName = "energy vein", clientId = 23508, buy = 350, sell = 175 },
	{ itemName = "fairy wings", clientId = 25694, buy = 900, sell = 450 },
	{ itemName = "fiery heart", clientId = 9636, buy = 1100, sell = 5500 },
	{ itemName = "flask of embalming fluid", clientId = 11466, buy = 5100, sell = 2550 },
	{ itemName = "frazzle skin", clientId = 20199, buy = 2000, sell = 1000 },
	{ itemName = "frosty heart", clientId = 9661, buy = 400, sell = 200 },
	{ itemName = "gloom wolf fur", clientId = 22007, buy = 12000, sell = 6000 },
	{ itemName = "goosebump leather", clientId = 20205, buy = 1500, sell = 750 },
	{ itemName = "green dragon leather", clientId = 5877, buy = 8000, sell = 4000 },
	{ itemName = "green dragon scale", clientId = 5920, buy = 200, sell = 100 },
	{ itemName = "hellspawn tail", clientId = 10304, buy = 1200, sell = 600 },
	{ itemName = "lion's mane", clientId = 9691, buy = 80, sell = 40 },
	{ itemName = "little bowl of myrrh", clientId = 25702, buy = 5200, sell = 2600 },
	{ itemName = "metal spike", clientId = 10298, buy = 1000, sell = 500 },
	{ itemName = "mooh'tah shell", clientId = 21202, buy = 5000, sell = 2500 },
	{ itemName = "moohtant horn", clientId = 21200, buy = 7000, sell = 3500 },
	{ itemName = "mystical hourglass", clientId = 9660, buy = 600, sell = 300 },
	{ itemName = "ogre nose ring", clientId = 22189, buy = 7000, sell = 3500 },
	{ itemName = "orc tooth", clientId = 10196, buy = 2000, sell = 1000 },
	{ itemName = "peacock feather fan", clientId = 21975, buy = 350, sell = 175 },
	{ itemName = "petrified scream", clientId = 10420, buy = 160, sell = 80 },
	{ itemName = "piece of dead brain", clientId = 9663, buy = 18000, sell = 9000 },
	{ itemName = "piece of scarab shell", clientId = 9641, buy = 1000, sell = 500 },
	{ itemName = "piece of swampling wood", clientId = 17823, buy = 4800, sell = 2400 },
	{ itemName = "pile of grave earth", clientId = 11484, buy = 600, sell = 300 },
	{ itemName = "poisonous slime", clientId = 9640, buy = 900, sell = 450 },
	{ itemName = "polar bear paw", clientId = 9650, buy = 1000, sell = 500 },
	{ itemName = "protective charm", clientId = 11444, buy = 2000, sell = 1000 },
	{ itemName = "quill", clientId = 28567, buy = 2300, sell = 1150 },
	{ itemName = "rope belt", clientId = 11492, buy = 3500, sell = 1750 },
	{ itemName = "rorc feather", clientId = 18993, buy = 2500, sell = 1250 },
	{ itemName = "sabretooth", clientId = 10311, buy = 4500, sell = 2250 },
	{ itemName = "seacrest hair", clientId = 21801, buy = 2900, sell = 1450 },
	{ itemName = "silencer claws", clientId = 20200, buy = 2800, sell = 1400 },
	{ itemName = "slime heart", clientId = 21194, buy = 120, sell = 60 },
	{ itemName = "snake skin", clientId = 9694, buy = 1700, sell = 850 },
	{ itemName = "some grimeleech wings", clientId = 22730, buy = 2300, sell = 1150 },
	{ itemName = "strand of medusa hair", clientId = 10309, buy = 3800, sell = 1900 },
	{ itemName = "swamp grass", clientId = 9686, buy = 200, sell = 100 },
	{ itemName = "thick fur", clientId = 10307, buy = 4450, sell = 2275 },
	{ itemName = "vampire teeth", clientId = 9685, buy = 2300, sell = 1250 },
	{ itemName = "vexclaw talon", clientId = 22728, buy = 1100, sell = 550 },
	{ itemName = "war crystal", clientId = 9654, buy = 4500, sell = 2250 },
	{ itemName = "warmaster's wristguards", clientId = 10405, buy = 1200, sell = 600 },
	{ itemName = "waspoid wing", clientId = 14081, buy = 1900, sell = 950 },
	{ itemName = "wereboar hooves", clientId = 22053, buy = 1500, sell = 750 },
	{ itemName = "winter wolf fur", clientId = 10295, buy = 9500, sell = 4750 },
	{ itemName = "wyrm scale", clientId = 9665, buy = 800, sell = 400 },
	{ itemName = "wyvern talisman", clientId = 9644, buy = 9500, sell = 4750 },
}
-- On buy npc shop message
npcType.onBuyItem = function(npc, player, itemId, subType, amount, ignore, inBackpacks, totalCost)
	npc:sellItem(player, itemId, amount, subType, 0, ignore, inBackpacks)
end
-- On sell npc shop message
npcType.onSellItem = function(npc, player, itemId, subtype, amount, ignore, name, totalCost)
	player:sendTextMessage(MESSAGE_INFO_DESCR, string.format("Sold %ix %s for %i gold.", amount, name, totalCost))
end
-- On check npc shop message (look item)
npcType.onCheckItem = function(npc, player, clientId, subType) end

npcType:register(npcConfig)
