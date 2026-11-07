scoreboard players add #ray it.var 1
execute if block ~ ~ ~ minecraft:chest align xyz positioned ~0.5 ~0.5 ~0.5 run return run function inv_tweakie:chest/found
execute if block ~ ~ ~ minecraft:trapped_chest align xyz positioned ~0.5 ~0.5 ~0.5 run return run function inv_tweakie:chest/found
execute if block ~ ~ ~ minecraft:barrel align xyz positioned ~0.5 ~0.5 ~0.5 run return run function inv_tweakie:chest/found
execute if block ~ ~ ~ #minecraft:shulker_boxes align xyz positioned ~0.5 ~0.5 ~0.5 run return run function inv_tweakie:chest/found
execute if score #ray it.var matches ..120 positioned ^ ^ ^0.05 run function inv_tweakie:chest/ray
