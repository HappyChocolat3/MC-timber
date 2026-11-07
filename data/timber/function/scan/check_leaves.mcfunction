# Naturalne liście mają persistent=false (liście postawione przez gracza – true).
# Dla drzew z Netheru: bloki brodawek / świetlik grzybowy.
execute if block ~1 ~ ~ #minecraft:leaves[persistent=false] run return run scoreboard players set #leaves timber.var 1
execute if block ~-1 ~ ~ #minecraft:leaves[persistent=false] run return run scoreboard players set #leaves timber.var 1
execute if block ~ ~1 ~ #minecraft:leaves[persistent=false] run return run scoreboard players set #leaves timber.var 1
execute if block ~ ~-1 ~ #minecraft:leaves[persistent=false] run return run scoreboard players set #leaves timber.var 1
execute if block ~ ~ ~1 #minecraft:leaves[persistent=false] run return run scoreboard players set #leaves timber.var 1
execute if block ~ ~ ~-1 #minecraft:leaves[persistent=false] run return run scoreboard players set #leaves timber.var 1
execute if block ~1 ~ ~ #timber:wart run return run scoreboard players set #leaves timber.var 1
execute if block ~-1 ~ ~ #timber:wart run return run scoreboard players set #leaves timber.var 1
execute if block ~ ~1 ~ #timber:wart run return run scoreboard players set #leaves timber.var 1
execute if block ~ ~-1 ~ #timber:wart run return run scoreboard players set #leaves timber.var 1
execute if block ~ ~ ~1 #timber:wart run return run scoreboard players set #leaves timber.var 1
execute if block ~ ~ ~-1 #timber:wart run return run scoreboard players set #leaves timber.var 1
