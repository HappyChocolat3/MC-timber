# Czy gracz w poprzednim ticku wykopał jakiś pień?
scoreboard players set #mined timber.var 0
execute if score @s timber.m.oak matches 1.. run scoreboard players set #mined timber.var 1
execute if score @s timber.m.spruce matches 1.. run scoreboard players set #mined timber.var 1
execute if score @s timber.m.birch matches 1.. run scoreboard players set #mined timber.var 1
execute if score @s timber.m.jungle matches 1.. run scoreboard players set #mined timber.var 1
execute if score @s timber.m.acacia matches 1.. run scoreboard players set #mined timber.var 1
execute if score @s timber.m.darkoak matches 1.. run scoreboard players set #mined timber.var 1
execute if score @s timber.m.mangrove matches 1.. run scoreboard players set #mined timber.var 1
execute if score @s timber.m.cherry matches 1.. run scoreboard players set #mined timber.var 1
execute if score @s timber.m.paleoak matches 1.. run scoreboard players set #mined timber.var 1
execute if score @s timber.m.crimson matches 1.. run scoreboard players set #mined timber.var 1
execute if score @s timber.m.warped matches 1.. run scoreboard players set #mined timber.var 1
execute if score #mined timber.var matches 0 run return 0
execute if score #debug timber.config matches 1 run tellraw @a [{"text":"[Timber] ","color":"gold"},{"text":"1/5 wykopano pień","color":"gray"}]

# Musi trzymać siekierę
execute if score #debug timber.config matches 1 unless items entity @s weapon.mainhand #minecraft:axes run tellraw @a [{"text":"[Timber] ","color":"gold"},{"text":"brak siekiery w ręce","color":"gray"}]
execute unless items entity @s weapon.mainhand #minecraft:axes run return 0
# Opcjonalnie: Shift = zwykłe kopanie
execute if score #sneak_disables timber.config matches 1 if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{flags:{is_sneaking:true}}} run return 0

# Znajdź świeżo wypadnięty przedmiot-pień (bez tagu timber.old) – jego pozycja wskazuje wykopany blok
tag @s add timber.cutter
scoreboard players set #found timber.var 0
execute as @e[type=item,distance=..8,tag=!timber.old] if items entity @s contents #minecraft:logs at @s align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ #minecraft:air run function timber:start
execute if score #debug timber.config matches 1 if score #found timber.var matches 0 run tellraw @a [{"text":"[Timber] ","color":"gold"},{"text":"2/5 nie znaleziono wypadniętego pnia","color":"gray"}]
tag @s remove timber.cutter
