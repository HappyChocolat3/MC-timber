execute unless data storage it:sort pinv[0] run return 0
execute store result score #s it.var run data get storage it:sort pinv[0].Slot
execute if score #s it.var matches 9..35 run function inv_tweakie:pull/try
data remove storage it:sort pinv[0]
function inv_tweakie:pull/inv_loop
