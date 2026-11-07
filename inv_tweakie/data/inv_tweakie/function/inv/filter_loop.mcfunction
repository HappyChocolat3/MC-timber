# Tylko główny ekwipunek (sloty 9–35), bez paska, zbroi i drugiej ręki
execute unless data storage it:sort all[0] run return 0
execute store result score #s it.var run data get storage it:sort all[0].Slot
execute if score #s it.var matches 9..35 run data modify storage it:sort in append from storage it:sort all[0]
data remove storage it:sort all[0]
function inv_tweakie:inv/filter_loop
