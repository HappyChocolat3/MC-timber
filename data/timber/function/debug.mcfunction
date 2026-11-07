# /function timber:debug – włącza/wyłącza komunikaty diagnostyczne
execute if score #debug timber.config matches 1 run return run function timber:debug_off
scoreboard players set #debug timber.config 1
tellraw @a {"text":"[Timber] debug WŁĄCZONY","color":"gold"}
