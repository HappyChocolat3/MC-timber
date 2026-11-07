# Usuwa liście z distance=7 (bez pnia w zasięgu 6 bloków) połączone z miejscami po ściętych pniach.
# Liście sąsiednich drzew mają distance<7, a postawione przez gracza persistent=true – zostają.
scoreboard players set #lcount timber.var 0
execute as @e[type=marker,tag=timber.leafseed] at @s run function timber:leaves/neighbors
kill @e[type=marker,tag=timber.leafseed]
