# Sprawdza, czy w tej wersji gry działają mechanizmy potrzebne do bezpiecznego sortowania
scoreboard players set #self it.var 0
execute in minecraft:overworld unless block 1 -64 0 minecraft:barrel run return 0
scoreboard players set #self it.var 2
data modify storage it:sort ti set value {id:"minecraft:ender_pearl",count:1}
function inv_tweakie:sort/set_tmp
execute in minecraft:overworld unless items block 1 -64 0 container.0 minecraft:ender_pearl run return 0
scoreboard players set #self it.var 3
execute unless function inv_tweakie:sort/m/sixteen run return 0
execute if function inv_tweakie:sort/m/one run return 0
scoreboard players set #self it.var 4
data modify storage it:sort ti set value {id:"minecraft:diamond_sword",count:1}
function inv_tweakie:sort/set_tmp
execute unless function inv_tweakie:sort/m/one run return 0
scoreboard players set #self it.var 1
