# Usuwaj znaczniki z miejsc, gdzie nie ma już pnia (co 5 s, tylko załadowane chunki)
execute as @e[type=marker,tag=timber.placed] at @s unless block ~ ~ ~ #minecraft:logs run kill @s
schedule function timber:cleanup 100t replace
