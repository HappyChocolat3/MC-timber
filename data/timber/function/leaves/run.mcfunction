# Usuwa liście, które należały do ściętego drzewa – także w gęstym lesie.
# Po ścięciu gra przelicza "distance" liści = odległość do najbliższego POZOSTAŁEGO pnia (1–7).
# Przeszukujemy liście warstwami (BFS) od miejsc po ściętych pniach: liść w warstwie L należał do
# ściętego drzewa, jeśli L < jego distance (był bliżej ściętego pnia niż jakiegokolwiek innego).
# Liście sąsiednich drzew są bliżej swoich pni – zostają. Postawione przez gracza (persistent=true) też.
scoreboard players set #lcount timber.var 0
tag @e[type=marker,tag=timber.leafseed] add timber.front
execute as @e[type=marker,tag=timber.front] at @s run function timber:leaves/layer1
tag @e[type=marker,tag=timber.front] remove timber.front
tag @e[type=marker,tag=timber.next] add timber.front
tag @e[type=marker,tag=timber.next] remove timber.next
execute as @e[type=marker,tag=timber.front] at @s run function timber:leaves/layer2
tag @e[type=marker,tag=timber.front] remove timber.front
tag @e[type=marker,tag=timber.next] add timber.front
tag @e[type=marker,tag=timber.next] remove timber.next
execute as @e[type=marker,tag=timber.front] at @s run function timber:leaves/layer3
tag @e[type=marker,tag=timber.front] remove timber.front
tag @e[type=marker,tag=timber.next] add timber.front
tag @e[type=marker,tag=timber.next] remove timber.next
execute as @e[type=marker,tag=timber.front] at @s run function timber:leaves/layer4
tag @e[type=marker,tag=timber.front] remove timber.front
tag @e[type=marker,tag=timber.next] add timber.front
tag @e[type=marker,tag=timber.next] remove timber.next
execute as @e[type=marker,tag=timber.front] at @s run function timber:leaves/layer5
tag @e[type=marker,tag=timber.front] remove timber.front
tag @e[type=marker,tag=timber.next] add timber.front
tag @e[type=marker,tag=timber.next] remove timber.next
execute as @e[type=marker,tag=timber.front] at @s run function timber:leaves/layer6
tag @e[type=marker,tag=timber.front] remove timber.front
tag @e[type=marker,tag=timber.next] add timber.front
tag @e[type=marker,tag=timber.next] remove timber.next
execute as @e[type=marker,tag=timber.front] at @s run function timber:leaves/layer7
tag @e[type=marker,tag=timber.front] remove timber.front
tag @e[type=marker,tag=timber.next] add timber.front
tag @e[type=marker,tag=timber.next] remove timber.next
execute as @e[type=marker,tag=timber.front] at @s run function timber:leaves/layer8
tag @e[type=marker,tag=timber.front] remove timber.front
tag @e[type=marker,tag=timber.next] add timber.front
tag @e[type=marker,tag=timber.next] remove timber.next
execute as @e[type=marker,tag=timber.front] at @s run function timber:leaves/layer9
tag @e[type=marker,tag=timber.front] remove timber.front
tag @e[type=marker,tag=timber.next] add timber.front
tag @e[type=marker,tag=timber.next] remove timber.next
execute as @e[type=marker,tag=timber.front] at @s run function timber:leaves/layer10
tag @e[type=marker,tag=timber.front] remove timber.front
tag @e[type=marker,tag=timber.next] add timber.front
tag @e[type=marker,tag=timber.next] remove timber.next
execute as @e[type=marker,tag=timber.front] at @s run function timber:leaves/layer11
tag @e[type=marker,tag=timber.front] remove timber.front
tag @e[type=marker,tag=timber.next] add timber.front
tag @e[type=marker,tag=timber.next] remove timber.next
execute as @e[type=marker,tag=timber.front] at @s run function timber:leaves/layer12
tag @e[type=marker,tag=timber.front] remove timber.front
tag @e[type=marker,tag=timber.next] add timber.front
tag @e[type=marker,tag=timber.next] remove timber.next

# Usuń wszystkie znalezione liście naraz („destroy” = normalne dropy: sadzonki, patyki, jabłka)
execute as @e[type=marker,tag=timber.leaf] at @s if block ~ ~ ~ #minecraft:leaves run setblock ~ ~ ~ minecraft:air destroy
kill @e[type=marker,tag=timber.leaf]
kill @e[type=marker,tag=timber.leafseed]
kill @e[type=marker,tag=timber.front]
