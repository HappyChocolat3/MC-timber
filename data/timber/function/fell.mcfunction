# Wykonawca: gracz. Pozycja: wykopany blok.
# Odczytaj siekierę z aktywnego slotu paska
execute store result storage timber:tmp slot.slot int 1 run data get entity @s SelectedItemSlot
function timber:tool/read with storage timber:tmp slot
execute unless data storage timber:tmp item.id run return 0

execute store result score #dmg timber.var run data get storage timber:tmp item.components."minecraft:damage"
execute store result score #unb timber.var run data get storage timber:tmp item.components."minecraft:enchantments"."minecraft:unbreaking"
execute store success score #unbreakable timber.var if data storage timber:tmp item.components."minecraft:unbreakable"
execute store result score #maxdmg timber.var run data get storage timber:tmp item.components."minecraft:max_damage"
execute if score #maxdmg timber.var matches 0 run function timber:tool/lookup_max with storage timber:tmp item
# nieznana siekiera – nie potrafimy policzyć zużycia, więc nic nie robimy
execute if score #unbreakable timber.var matches 0 if score #maxdmg timber.var matches 0 run return 0
execute store result storage timber:tmp ub.lvl int 1 run scoreboard players get #unb timber.var

scoreboard players set #broken timber.var 0
function timber:fell_loop

execute if score #broken timber.var matches 0 if score #unbreakable timber.var matches 0 run function timber:tool/write
