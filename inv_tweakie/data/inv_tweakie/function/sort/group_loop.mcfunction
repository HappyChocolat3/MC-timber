# Łączenie identycznych przedmiotów (to samo id i komponenty) w grupy z sumą sztuk
execute unless data storage it:sort in[0] run return 0
data modify storage it:sort key set from storage it:sort in[0]
data remove storage it:sort in[0]
execute store result score #c it.var run data get storage it:sort key.count
execute if score #c it.var matches ..0 run scoreboard players set #c it.var 1
data remove storage it:sort key.Slot
data remove storage it:sort key.count
scoreboard players operation #in_total it.var += #c it.var

scoreboard players set #found it.var 0
data modify storage it:sort scan set from storage it:sort groups
data modify storage it:sort groups set value []
function inv_tweakie:sort/scan_loop
execute if score #found it.var matches 0 run function inv_tweakie:sort/new_group
function inv_tweakie:sort/group_loop
