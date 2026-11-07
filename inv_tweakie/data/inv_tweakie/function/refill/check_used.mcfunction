$execute if score @s it.u.$(name) matches 1.. run return run function inv_tweakie:refill/find with storage it:tmp mem
$execute if score @s it.b.$(name) matches 1.. run return run function inv_tweakie:refill/find with storage it:tmp mem
execute if score #debug it.config matches 1 run tellraw @s [{"text":"[inv_tweakie] ","color":"aqua"},{"text":"nie zużyto (brak statystyki użycia) – nie uzupełniam","color":"gray"}]
