scoreboard players reset @s sortuj
execute unless score #inv_sort it.config matches 1 run return 0
data modify storage it:sort all set from entity @s Inventory
data modify storage it:sort in set value []
function inv_tweakie:inv/filter_loop
scoreboard players set #cap it.var 27
function inv_tweakie:sort/run
function inv_tweakie:sort/debug
execute if score #ok it.var matches 1 run function inv_tweakie:inv/write
execute if score #ok it.var matches 1 run title @s actionbar {"text":"Posortowano ekwipunek","color":"green"}
execute unless score #ok it.var matches 1 run title @s actionbar {"text":"Nie udało się posortować – nic nie zmieniono","color":"red"}
