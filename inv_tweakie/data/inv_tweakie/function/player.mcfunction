execute unless score @s it.id matches 1.. run function inv_tweakie:new_player
execute if score #refill it.config matches 1 run function inv_tweakie:refill/tick
execute if score #chest_sort it.config matches 1 if score @s it.sneak matches 1.. run function inv_tweakie:chest/check_open
execute if score @s sortuj matches 1.. run function inv_tweakie:inv/run
