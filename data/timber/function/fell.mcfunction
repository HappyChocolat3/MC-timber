# Wykonawca: gracz. Pozycja: wykopany blok.
# Odczytaj siekierę z aktywnego slotu paska
execute store result storage timber:tmp slot.slot int 1 run data get entity @s SelectedItemSlot
function timber:tool/read with storage timber:tmp slot
# zapas: inne możliwe ścieżki danych gracza
execute unless data storage timber:tmp item.id run data modify storage timber:tmp item set from entity @s SelectedItem
execute unless data storage timber:tmp item.id run data modify storage timber:tmp item set from entity @s equipment.mainhand
execute if score #debug timber.config matches 1 unless data storage timber:tmp item.id run tellraw @a [{"text":"[Timber] ","color":"gold"},{"text":"4/5 nie mogę odczytać siekiery z danych gracza","color":"gray"}]
execute unless data storage timber:tmp item.id run return 0

execute store result score #dmg timber.var run data get storage timber:tmp item.components."minecraft:damage"
execute store result score #unb timber.var run data get storage timber:tmp item.components."minecraft:enchantments"."minecraft:unbreaking"
execute store success score #unbreakable timber.var if data storage timber:tmp item.components."minecraft:unbreakable"
execute store result score #maxdmg timber.var run data get storage timber:tmp item.components."minecraft:max_damage"
execute if score #maxdmg timber.var matches 0 run function timber:tool/lookup_max with storage timber:tmp item
# nieznana siekiera – nie potrafimy policzyć zużycia, więc nic nie robimy
execute if score #debug timber.config matches 1 run tellraw @a [{"text":"[Timber] ","color":"gold"},{"text":"4/5 zużycie: ","color":"gray"},{"score":{"name":"#dmg","objective":"timber.var"},"color":"white"},{"text":" / "},{"score":{"name":"#maxdmg","objective":"timber.var"},"color":"white"},{"text":" unbreaking: "},{"score":{"name":"#unb","objective":"timber.var"},"color":"white"}]
execute if score #debug timber.config matches 1 if score #unbreakable timber.var matches 0 if score #maxdmg timber.var matches 0 run tellraw @a [{"text":"[Timber] ","color":"gold"},{"text":"4/5 nieznana wytrzymałość siekiery","color":"gray"}]
execute if score #unbreakable timber.var matches 0 if score #maxdmg timber.var matches 0 run return 0
execute store result storage timber:tmp ub.lvl int 1 run scoreboard players get #unb timber.var

scoreboard players set #broken timber.var 0
function timber:fell_loop
# Liście: po chwili (gdy gra przeliczy odległości od pni) usuń te, które i tak by opadły
execute if score #leaf_decay timber.config matches 1 run schedule function timber:leaves/run 20t replace
execute unless score #leaf_decay timber.config matches 1 run kill @e[type=marker,tag=timber.leafseed]
execute if score #debug timber.config matches 1 run tellraw @a [{"text":"[Timber] ","color":"gold"},{"text":"5/5 ścięto, zużycie teraz: ","color":"gray"},{"score":{"name":"#dmg","objective":"timber.var"},"color":"white"}]

execute if score #broken timber.var matches 0 if score #unbreakable timber.var matches 0 run function timber:tool/write
