# Znajdź encję-pamięć tego gracza
scoreboard players operation #pid it.var = @s it.id
execute as @e[type=item_display,tag=it.mem] if score @s it.id = #pid it.var run tag @s add it.cur
execute unless entity @e[type=item_display,tag=it.cur,limit=1] run function inv_tweakie:refill/new_memory

# Ręka pusta, a w poprzednim ticku coś w niej było (i nie zostało wyrzucone klawiszem Q)?
execute unless items entity @s weapon.mainhand * unless score @s it.drop matches 1.. if data entity @e[type=item_display,tag=it.cur,limit=1] item.id run function inv_tweakie:refill/check

function inv_tweakie:refill/remember
tag @e[type=item_display,tag=it.cur] remove it.cur
