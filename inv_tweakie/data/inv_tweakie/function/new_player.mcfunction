execute store result score @s it.id run scoreboard players add #next it.var 1
# miejsce w pamięci: beczka z = (id-1)/27, slot = (id-1)%27
scoreboard players operation @s it.ms = @s it.id
scoreboard players remove @s it.ms 1
scoreboard players operation @s it.mz = @s it.ms
scoreboard players set #27 it.var 27
scoreboard players operation @s it.mz /= #27 it.var
scoreboard players operation @s it.ms %= #27 it.var
