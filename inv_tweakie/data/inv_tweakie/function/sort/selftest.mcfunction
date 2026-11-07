# Sprawdza, czy w tej wersji gry działają mechanizmy potrzebne do bezpiecznego sortowania
scoreboard players set #self it.var 0
data modify entity @e[type=item_display,tag=it.tmp,limit=1] item set value {id:"minecraft:ender_pearl",count:1}
execute unless items entity @e[type=item_display,tag=it.tmp,limit=1] contents minecraft:ender_pearl run return 0
execute unless function inv_tweakie:sort/m/sixteen run return 0
execute if function inv_tweakie:sort/m/one run return 0
data modify entity @e[type=item_display,tag=it.tmp,limit=1] item set value {id:"minecraft:diamond_sword",count:1}
execute unless function inv_tweakie:sort/m/one run return 0
scoreboard players set #self it.var 1
