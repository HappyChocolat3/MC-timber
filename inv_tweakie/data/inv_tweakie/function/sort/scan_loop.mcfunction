execute unless data storage it:sort scan[0] run return 0
data modify storage it:sort g set from storage it:sort scan[0]
data remove storage it:sort scan[0]
execute if score #found it.var matches 0 run function inv_tweakie:sort/compare
data modify storage it:sort groups append from storage it:sort g
function inv_tweakie:sort/scan_loop
