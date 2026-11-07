# Warstwa 1: liście z distance > 1 (lub 7), jeszcze nieodwiedzone
execute positioned ~1 ~ ~ if block ~ ~ ~ #minecraft:leaves[persistent=false] unless block ~ ~ ~ #minecraft:leaves[distance=1] unless entity @e[type=marker,tag=timber.leaf,distance=..0.1] run function timber:leaves/mark
execute positioned ~-1 ~ ~ if block ~ ~ ~ #minecraft:leaves[persistent=false] unless block ~ ~ ~ #minecraft:leaves[distance=1] unless entity @e[type=marker,tag=timber.leaf,distance=..0.1] run function timber:leaves/mark
execute positioned ~ ~1 ~ if block ~ ~ ~ #minecraft:leaves[persistent=false] unless block ~ ~ ~ #minecraft:leaves[distance=1] unless entity @e[type=marker,tag=timber.leaf,distance=..0.1] run function timber:leaves/mark
execute positioned ~ ~-1 ~ if block ~ ~ ~ #minecraft:leaves[persistent=false] unless block ~ ~ ~ #minecraft:leaves[distance=1] unless entity @e[type=marker,tag=timber.leaf,distance=..0.1] run function timber:leaves/mark
execute positioned ~ ~ ~1 if block ~ ~ ~ #minecraft:leaves[persistent=false] unless block ~ ~ ~ #minecraft:leaves[distance=1] unless entity @e[type=marker,tag=timber.leaf,distance=..0.1] run function timber:leaves/mark
execute positioned ~ ~ ~-1 if block ~ ~ ~ #minecraft:leaves[persistent=false] unless block ~ ~ ~ #minecraft:leaves[distance=1] unless entity @e[type=marker,tag=timber.leaf,distance=..0.1] run function timber:leaves/mark
