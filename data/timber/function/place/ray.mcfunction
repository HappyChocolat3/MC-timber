# Promień z oczu gracza: pierwszy napotkany pień to ten właśnie postawiony
scoreboard players add #ray timber.var 1
execute if block ~ ~ ~ #minecraft:logs align xyz positioned ~0.5 ~0.5 ~0.5 run return run function timber:place/mark
execute if score #ray timber.var matches ..140 positioned ^ ^ ^0.05 run function timber:place/ray
