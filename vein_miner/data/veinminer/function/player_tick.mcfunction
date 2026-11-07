# Który rodzaj rudy gracz wykopał w poprzednim ticku?
scoreboard players set #grp vm.var 0
execute if score @s vm.m.coal_ore matches 1.. run scoreboard players set #grp vm.var 1
execute if score @s vm.m.deepslate_coal_ore matches 1.. run scoreboard players set #grp vm.var 1
execute if score @s vm.m.iron_ore matches 1.. run scoreboard players set #grp vm.var 2
execute if score @s vm.m.deepslate_iron_ore matches 1.. run scoreboard players set #grp vm.var 2
execute if score @s vm.m.copper_ore matches 1.. run scoreboard players set #grp vm.var 3
execute if score @s vm.m.deepslate_copper_ore matches 1.. run scoreboard players set #grp vm.var 3
execute if score @s vm.m.gold_ore matches 1.. run scoreboard players set #grp vm.var 4
execute if score @s vm.m.deepslate_gold_ore matches 1.. run scoreboard players set #grp vm.var 4
execute if score @s vm.m.redstone_ore matches 1.. run scoreboard players set #grp vm.var 5
execute if score @s vm.m.deepslate_redstone_ore matches 1.. run scoreboard players set #grp vm.var 5
execute if score @s vm.m.lapis_ore matches 1.. run scoreboard players set #grp vm.var 6
execute if score @s vm.m.deepslate_lapis_ore matches 1.. run scoreboard players set #grp vm.var 6
execute if score @s vm.m.diamond_ore matches 1.. run scoreboard players set #grp vm.var 7
execute if score @s vm.m.deepslate_diamond_ore matches 1.. run scoreboard players set #grp vm.var 7
execute if score @s vm.m.emerald_ore matches 1.. run scoreboard players set #grp vm.var 8
execute if score @s vm.m.deepslate_emerald_ore matches 1.. run scoreboard players set #grp vm.var 8
execute if score @s vm.m.nether_quartz_ore matches 1.. run scoreboard players set #grp vm.var 9
execute if score @s vm.m.nether_gold_ore matches 1.. run scoreboard players set #grp vm.var 10
execute if score @s vm.m.ancient_debris matches 1.. run scoreboard players set #grp vm.var 11
execute if score #grp vm.var matches 0 run return 0
execute if score #debug vm.config matches 1 run tellraw @s [{"text":"[vein_miner] ","color":"gold"},{"text":"1/5 wykopano rudę, grupa: ","color":"gray"},{"score":{"name":"#grp","objective":"vm.var"},"color":"white"}]
# Shift = zwykłe kopanie
execute if score #sneak_disables vm.config matches 1 if score @s vm.sneak matches 1.. run return 0

# Świeży drop wskazuje pozycję wykopanego bloku
tag @s add vm.miner
scoreboard players set #done vm.var 0
scoreboard players set #found vm.var 0
execute as @e[type=item,distance=..8,tag=!vm.old] at @s align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ minecraft:air run function veinminer:start
execute if score #debug vm.config matches 1 if score #found vm.var matches 0 run tellraw @s [{"text":"[vein_miner] ","color":"gold"},{"text":"2/5 nie znaleziono dropu z wykopanego bloku","color":"gray"}]
tag @s remove vm.miner
