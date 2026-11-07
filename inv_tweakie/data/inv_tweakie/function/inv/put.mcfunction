data modify storage it:sort ti set from storage it:sort out[0]
data remove storage it:sort out[0]
function inv_tweakie:sort/set_tmp
$execute in minecraft:overworld run item replace entity @s inventory.$(k) from block 1 -64 0 container.0
