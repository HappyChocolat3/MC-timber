# Pozycja: wykopany blok (teraz powietrze). Wykonawca: przedmiot. Gracz ma tag vm.miner.
execute if score #done vm.var matches 1 run return 0
scoreboard players set #found vm.var 1
scoreboard players set #count vm.var 0
scoreboard players operation #max vm.var = #max_blocks vm.config
execute if score #grp vm.var matches 1 run function veinminer:scan/coal/neighbors
execute if score #grp vm.var matches 2 run function veinminer:scan/iron/neighbors
execute if score #grp vm.var matches 3 run function veinminer:scan/copper/neighbors
execute if score #grp vm.var matches 4 run function veinminer:scan/gold/neighbors
execute if score #grp vm.var matches 5 run function veinminer:scan/redstone/neighbors
execute if score #grp vm.var matches 6 run function veinminer:scan/lapis/neighbors
execute if score #grp vm.var matches 7 run function veinminer:scan/diamond/neighbors
execute if score #grp vm.var matches 8 run function veinminer:scan/emerald/neighbors
execute if score #grp vm.var matches 9 run function veinminer:scan/quartz/neighbors
execute if score #grp vm.var matches 10 run function veinminer:scan/nether_gold/neighbors
execute if score #grp vm.var matches 11 run function veinminer:scan/debris/neighbors
execute if score #debug vm.config matches 1 run tellraw @a[tag=vm.miner] [{"text":"[vein_miner] ","color":"gold"},{"text":"2/5 bloków w złożu (poza wykopanym): ","color":"gray"},{"score":{"name":"#count","objective":"vm.var"},"color":"white"}]
execute if score #count vm.var matches 1.. run scoreboard players set #done vm.var 1
execute if score #count vm.var matches 1.. as @a[tag=vm.miner,limit=1] run function veinminer:mine
kill @e[type=marker,tag=vm.scan]
