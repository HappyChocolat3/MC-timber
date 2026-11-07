# Ukryte beczki: pamięć rąk graczy (x=0) i beczka robocza do sortowania (1 -64 0)
execute in minecraft:overworld unless block 1 -64 0 minecraft:barrel run setblock 1 -64 0 minecraft:barrel
scoreboard players enable @a sortuj
execute as @a at @s run function inv_tweakie:player
scoreboard players reset @a it.drop
scoreboard players reset @a it.sneak
scoreboard players reset @a it.oc
scoreboard players reset @a it.ot
scoreboard players reset @a it.ob
scoreboard players reset @a it.os
