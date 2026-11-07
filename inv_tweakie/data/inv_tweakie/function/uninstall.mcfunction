# /function inv_tweakie:uninstall – potem wyłącz paczkę
kill @e[type=marker,tag=it.c]
execute in minecraft:overworld run fill 0 -64 0 1 -64 15 minecraft:bedrock replace minecraft:barrel
execute in minecraft:overworld run forceload remove 0 0
scoreboard objectives remove it.var
scoreboard objectives remove it.config
scoreboard objectives remove it.id
scoreboard objectives remove it.ms
scoreboard objectives remove it.mz
scoreboard objectives remove it.drop
scoreboard objectives remove it.sneak
scoreboard objectives remove it.oc
scoreboard objectives remove it.ot
scoreboard objectives remove it.ob
scoreboard objectives remove it.os
scoreboard objectives remove sortuj
data remove storage it:sort groups
tellraw @a {"text":"inv_tweakie odinstalowany. Wyłącz teraz paczkę danych.","color":"yellow"}
