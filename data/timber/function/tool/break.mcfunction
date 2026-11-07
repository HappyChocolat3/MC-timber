# Siekiera się zniszczyła – reszta drzewa zostaje
scoreboard players set #broken timber.var 1
item replace entity @s weapon.mainhand with minecraft:air
execute at @s run playsound minecraft:entity.item.break player @a ~ ~ ~
