kill @e[type=marker,tag=it.c]
function inv_tweakie:chest/mark
# Pojedyncza „lewa” połowa bez pary – traktuj jako zwykłą skrzynię
execute unless entity @e[type=marker,tag=it.c1] run tag @e[type=marker,tag=it.c2] add it.c1
execute unless entity @e[type=marker,tag=it.c1] run return 0
execute if entity @e[type=marker,tag=it.c1,tag=it.c2] run tag @e[type=marker,tag=it.c] remove it.c2

data modify storage it:sort in set value []
execute as @e[type=marker,tag=it.c1,limit=1] at @s run data modify storage it:sort in append from block ~ ~ ~ Items[]
execute as @e[type=marker,tag=it.c2,limit=1] at @s run data modify storage it:sort in append from block ~ ~ ~ Items[]
scoreboard players set #cap it.var 27
execute if entity @e[type=marker,tag=it.c2] run scoreboard players set #cap it.var 54

function inv_tweakie:sort/run
function inv_tweakie:sort/debug
execute if score #ok it.var matches 1 run function inv_tweakie:chest/write
execute if score #ok it.var matches 1 run title @s actionbar {"text":"Posortowano","color":"green"}
execute unless score #ok it.var matches 1 run title @s actionbar {"text":"Nie udało się posortować – nic nie zmieniono","color":"red"}
kill @e[type=marker,tag=it.c]
