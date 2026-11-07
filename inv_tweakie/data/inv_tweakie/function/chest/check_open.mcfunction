# Otworzono pojemnik, skradając się (Shift) z pustymi rękami?
scoreboard players set #open it.var 0
execute if score @s it.oc matches 1.. run scoreboard players set #open it.var 1
execute if score @s it.ot matches 1.. run scoreboard players set #open it.var 1
execute if score @s it.ob matches 1.. run scoreboard players set #open it.var 1
execute if score @s it.os matches 1.. run scoreboard players set #open it.var 1
execute if score #open it.var matches 0 run return 0
execute if score #debug it.config matches 1 run tellraw @s [{"text":"[inv_tweakie] ","color":"aqua"},{"text":"otwarto pojemnik ze Shiftem","color":"gray"}]
execute if score #debug it.config matches 1 if items entity @s weapon.mainhand * run tellraw @s [{"text":"[inv_tweakie] ","color":"aqua"},{"text":"ręce nie są puste","color":"gray"}]
execute if items entity @s weapon.mainhand * run return 0
execute if score #debug it.config matches 1 if items entity @s weapon.offhand * run tellraw @s [{"text":"[inv_tweakie] ","color":"aqua"},{"text":"ręce nie są puste","color":"gray"}]
execute if items entity @s weapon.offhand * run return 0
scoreboard players set #ray it.var 0
scoreboard players set #rayhit it.var 0
execute anchored eyes positioned ^ ^ ^ run function inv_tweakie:chest/ray
execute if score #debug it.config matches 1 if score #rayhit it.var matches 0 run tellraw @s [{"text":"[inv_tweakie] ","color":"aqua"},{"text":"nie znaleziono pojemnika na linii wzroku","color":"gray"}]
