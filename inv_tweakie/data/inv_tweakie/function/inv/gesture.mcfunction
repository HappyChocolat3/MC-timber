# Gest: Shift + patrzenie prosto w górę przez ~1 sekundę = sortowanie ekwipunku
execute unless score @s it.sneak matches 1.. run return run scoreboard players set @s it.look 0
execute unless entity @s[x_rotation=-90..-70] run return run scoreboard players set @s it.look 0
scoreboard players add @s it.look 1
execute if score @s it.look matches 20 run function inv_tweakie:inv/run
