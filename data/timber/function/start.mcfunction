# Pozycja: środek wykopanego bloku. Wykonawca: przedmiot. Gracz ma tag timber.cutter.

# Pień postawiony przez gracza – nie ścinamy, usuwamy znacznik
execute if entity @e[type=marker,tag=timber.placed,distance=..0.1] run return run kill @e[type=marker,tag=timber.placed,distance=..0.1]

scoreboard players set #count timber.var 0
scoreboard players set #leaves timber.var 0
scoreboard players operation #max timber.var = #max_logs timber.config

# Sprawdź liście wokół wykopanego bloku i przeszukaj połączone pnie
function timber:scan/check_leaves
function timber:scan/neighbors

# Ścinamy tylko, gdy struktura dotyka naturalnych liści (odrzuca powalone drzewa i budowle)
execute if score #leaves timber.var matches 1.. if score #count timber.var matches 1.. as @a[tag=timber.cutter,limit=1] run function timber:fell

kill @e[type=marker,tag=timber.scan]
