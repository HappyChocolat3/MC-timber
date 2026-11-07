scoreboard players reset @s sortuj
execute unless score #inv_sort it.config matches 1 run return 0
data modify storage it:sort all set from entity @s Inventory
data modify storage it:sort in set value []
function inv_tweakie:inv/filter_loop
scoreboard players set #cap it.var 27
summon minecraft:item_display ~ ~ ~ {Tags:["it.tmp"],view_range:0f}
function inv_tweakie:sort/run
execute if score #ok it.var matches 1 run function inv_tweakie:inv/write
execute if score #ok it.var matches 1 run title @s actionbar {"text":"Posortowano ekwipunek","color":"green"}
execute unless score #ok it.var matches 1 run title @s actionbar {"text":"Nie udało się posortować – nic nie zmieniono","color":"red"}
kill @e[type=item_display,tag=it.tmp]
