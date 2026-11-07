# Wykonawca: gracz. Pozycja: wykopany blok. Odczytaj kilof z aktywnego slotu paska.
execute store result storage veinminer:tmp slot.slot int 1 run data get entity @s SelectedItemSlot
function veinminer:tool/read with storage veinminer:tmp slot
execute unless data storage veinminer:tmp item.id run data modify storage veinminer:tmp item set from entity @s SelectedItem
execute if score #debug vm.config matches 1 unless data storage veinminer:tmp item.id run tellraw @s [{"text":"[vein_miner] ","color":"gold"},{"text":"3/5 nie mogę odczytać narzędzia","color":"gray"}]
execute unless data storage veinminer:tmp item.id run return 0

execute store result score #dmg vm.var run data get storage veinminer:tmp item.components."minecraft:damage"
execute store result score #unb vm.var run data get storage veinminer:tmp item.components."minecraft:enchantments"."minecraft:unbreaking"
execute store result score #silk vm.var run data get storage veinminer:tmp item.components."minecraft:enchantments"."minecraft:silk_touch"
execute store success score #unbreakable vm.var if data storage veinminer:tmp item.components."minecraft:unbreakable"
scoreboard players set #maxdmg vm.var 0
function veinminer:tool/lookup_max with storage veinminer:tmp item
execute if score #debug vm.config matches 1 run tellraw @s [{"text":"[vein_miner] ","color":"gold"},{"text":"3/5 kilof – zużycie: ","color":"gray"},{"score":{"name":"#dmg","objective":"vm.var"},"color":"white"},{"text":" / "},{"score":{"name":"#maxdmg","objective":"vm.var"},"color":"white"},{"text":" unbreaking: "},{"score":{"name":"#unb","objective":"vm.var"},"color":"white"},{"text":" silk: "},{"score":{"name":"#silk","objective":"vm.var"},"color":"white"}]
# Tylko kilofy z listy (vanilla)
execute if score #debug vm.config matches 1 if score #maxdmg vm.var matches 0 run tellraw @s [{"text":"[vein_miner] ","color":"gold"},{"text":"3/5 to nie jest kilof – zwykłe kopanie","color":"gray"}]
execute if score #maxdmg vm.var matches 0 run return 0
execute store result storage veinminer:tmp ub.lvl int 1 run scoreboard players get #unb vm.var

scoreboard players set #broken vm.var 0
scoreboard players set #mined vm.var 0
function veinminer:mine_loop
execute if score #debug vm.config matches 1 run tellraw @s [{"text":"[vein_miner] ","color":"gold"},{"text":"5/5 wykopano dodatkowo: ","color":"gray"},{"score":{"name":"#mined","objective":"vm.var"},"color":"white"},{"text":" zużycie teraz: "},{"score":{"name":"#dmg","objective":"vm.var"},"color":"white"}]
execute if score #broken vm.var matches 0 if score #unbreakable vm.var matches 0 run function veinminer:tool/write
