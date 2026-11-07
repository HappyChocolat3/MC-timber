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

# Musi trzymać siekierę
execute unless items entity @s weapon.mainhand #minecraft:axes run return 0
# Opcjonalnie: Shift = zwykłe kopanie
execute if score #sneak_disables timber.config matches 1 if predicate timber:sneaking run return 0

# Znajdź świeżo wypadnięty przedmiot-pień (Age 0) – jego pozycja wskazuje wykopany blok
tag @s add timber.cutter
execute as @e[type=item,distance=..8,nbt={Age:0s},predicate=timber:is_log_item,sort=nearest,limit=1] at @s align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ #minecraft:air run function timber:start
tag @s remove timber.cutter
