execute if score #debug vm.config matches 1 run return run function veinminer:debug_off
scoreboard players set #debug vm.config 1
tellraw @a {"text":"[vein_miner] debug WŁĄCZONY","color":"gold"}
