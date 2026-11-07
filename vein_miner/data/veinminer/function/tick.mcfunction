execute as @a at @s run function veinminer:player_tick

scoreboard players reset @a vm.m.coal_ore
scoreboard players reset @a vm.m.deepslate_coal_ore
scoreboard players reset @a vm.m.iron_ore
scoreboard players reset @a vm.m.deepslate_iron_ore
scoreboard players reset @a vm.m.copper_ore
scoreboard players reset @a vm.m.deepslate_copper_ore
scoreboard players reset @a vm.m.gold_ore
scoreboard players reset @a vm.m.deepslate_gold_ore
scoreboard players reset @a vm.m.redstone_ore
scoreboard players reset @a vm.m.deepslate_redstone_ore
scoreboard players reset @a vm.m.lapis_ore
scoreboard players reset @a vm.m.deepslate_lapis_ore
scoreboard players reset @a vm.m.diamond_ore
scoreboard players reset @a vm.m.deepslate_diamond_ore
scoreboard players reset @a vm.m.emerald_ore
scoreboard players reset @a vm.m.deepslate_emerald_ore
scoreboard players reset @a vm.m.nether_quartz_ore
scoreboard players reset @a vm.m.nether_gold_ore
scoreboard players reset @a vm.m.ancient_debris
scoreboard players reset @a vm.sneak

# Oznacz istniejące przedmioty jako „stare” – nowe (bez tagu) to świeże dropy z wykopanego bloku
tag @e[type=item,tag=!vm.old] add vm.old
