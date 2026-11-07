data modify storage it:sort key set from storage it:sort pinv[0]
execute store result score #c it.var run data get storage it:sort key.count
execute if score #c it.var matches ..0 run scoreboard players set #c it.var 1
data remove storage it:sort key.Slot
data remove storage it:sort key.count
scoreboard players set #found it.var 0
data modify storage it:sort scan set from storage it:sort groups2
data modify storage it:sort groups2 set value []
function inv_tweakie:pull/scan_loop
