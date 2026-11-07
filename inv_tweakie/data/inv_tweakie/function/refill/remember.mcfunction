# Zapamiętaj, co gracz trzyma teraz
item replace entity @e[type=item_display,tag=it.cur,limit=1] contents from entity @s weapon.mainhand
execute unless data entity @e[type=item_display,tag=it.cur,limit=1] item.id run return 0
data modify storage it:tmp mem set value {}
data modify storage it:tmp mem.id set from entity @e[type=item_display,tag=it.cur,limit=1] item.id
data modify storage it:tmp mem.name set string entity @e[type=item_display,tag=it.cur,limit=1] item.id 10
function inv_tweakie:refill/track with storage it:tmp mem
