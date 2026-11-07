execute unless data storage it:sort sorted[0] run return 0
data modify storage it:sort g set from storage it:sort sorted[0]
data remove storage it:sort sorted[0]
execute store result score #t it.var run data get storage it:sort g.total
execute store result score #m it.var run data get storage it:sort g.max
execute if score #m it.var matches ..0 run scoreboard players set #m it.var 64
function inv_tweakie:sort/emit_loop
function inv_tweakie:sort/expand_loop
