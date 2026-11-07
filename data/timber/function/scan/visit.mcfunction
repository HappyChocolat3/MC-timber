execute if score #count timber.var >= #max timber.var run return 0
# już odwiedzony
execute if entity @e[type=marker,tag=timber.scan,distance=..0.1] run return 0
# postawiony przez gracza – pomijamy (nie ścinamy go i nie idziemy dalej przez niego)
execute if entity @e[type=marker,tag=timber.placed,distance=..0.1] run return 0

summon marker ~ ~ ~ {Tags:["timber.scan"]}
scoreboard players add #count timber.var 1
execute if score #leaves timber.var matches 0 run function timber:scan/check_leaves
function timber:scan/neighbors
