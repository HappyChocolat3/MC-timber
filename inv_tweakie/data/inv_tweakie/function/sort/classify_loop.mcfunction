execute unless data storage it:sort groups[0] run return 0
data modify storage it:sort g set from storage it:sort groups[0]
data remove storage it:sort groups[0]
data modify storage it:sort ti set from storage it:sort g.key
data modify storage it:sort ti.count set value 1
data modify entity @e[type=item_display,tag=it.tmp,limit=1] item set from storage it:sort ti
data modify storage it:sort g.cat set value 9
execute store result storage it:sort g.cat int 1 run function inv_tweakie:sort/category
data modify storage it:sort g.max set value 64
execute if function inv_tweakie:sort/m/sixteen run data modify storage it:sort g.max set value 16
execute if function inv_tweakie:sort/m/one run data modify storage it:sort g.max set value 1
data modify storage it:sort groups2 append from storage it:sort g
function inv_tweakie:sort/classify_loop
