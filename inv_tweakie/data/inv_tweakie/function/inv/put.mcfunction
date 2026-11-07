data modify entity @e[type=item_display,tag=it.tmp,limit=1] item set from storage it:sort out[0]
data remove storage it:sort out[0]
$item replace entity @s inventory.$(k) from entity @e[type=item_display,tag=it.tmp,limit=1] contents
