# /function veinminer:uninstall – potem wyłącz paczkę
kill @e[type=marker,tag=vm.scan]
scoreboard objectives remove vm.var
scoreboard objectives remove vm.config
scoreboard objectives remove vm.sneak
scoreboard objectives remove vm.m.coal_ore
scoreboard objectives remove vm.m.deepslate_coal_ore
scoreboard objectives remove vm.m.iron_ore
scoreboard objectives remove vm.m.deepslate_iron_ore
scoreboard objectives remove vm.m.copper_ore
scoreboard objectives remove vm.m.deepslate_copper_ore
scoreboard objectives remove vm.m.gold_ore
scoreboard objectives remove vm.m.deepslate_gold_ore
scoreboard objectives remove vm.m.redstone_ore
scoreboard objectives remove vm.m.deepslate_redstone_ore
scoreboard objectives remove vm.m.lapis_ore
scoreboard objectives remove vm.m.deepslate_lapis_ore
scoreboard objectives remove vm.m.diamond_ore
scoreboard objectives remove vm.m.deepslate_diamond_ore
scoreboard objectives remove vm.m.emerald_ore
scoreboard objectives remove vm.m.deepslate_emerald_ore
scoreboard objectives remove vm.m.nether_quartz_ore
scoreboard objectives remove vm.m.nether_gold_ore
scoreboard objectives remove vm.m.ancient_debris
tag @e[type=item,tag=vm.old] remove vm.old
data remove storage veinminer:config max_damage
tellraw @a {"text":"vein_miner odinstalowany. Wyłącz teraz paczkę danych.","color":"yellow"}
