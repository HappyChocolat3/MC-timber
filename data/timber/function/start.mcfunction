# Pozycja: środek wykopanego bloku. Wykonawca: przedmiot. Gracz ma tag timber.cutter.

scoreboard players set #found timber.var 1
execute if score #debug timber.config matches 1 run tellraw @a [{"text":"[Timber] ","color":"gold"},{"text":"2/5 znaleziono pień","color":"gray"}]

# Pień postawiony przez gracza – nie ścinamy, usuwamy znacznik
execute if entity @e[type=marker,tag=timber.placed,distance=..0.1] run return run function timber:start_placed

scoreboard players set #count timber.var 0
scoreboard players set #leaves timber.var 0
scoreboard players operation #max timber.var = #max_logs timber.config

# Sprawdź liście wokół wykopanego bloku i przeszukaj połączone pnie
function timber:scan/check_leaves
function timber:scan/neighbors

execute if score #debug timber.config matches 1 run tellraw @a [{"text":"[Timber] ","color":"gold"},{"text":"3/5 pni: ","color":"gray"},{"score":{"name":"#count","objective":"timber.var"},"color":"white"},{"text":" liście: "},{"score":{"name":"#leaves","objective":"timber.var"},"color":"white"}]

# Ścinamy tylko, gdy struktura dotyka naturalnych liści (odrzuca powalone drzewa i budowle)
execute if score #leaves timber.var matches 1.. if score #count timber.var matches 1.. as @a[tag=timber.cutter,limit=1] run function timber:fell

kill @e[type=marker,tag=timber.scan]
