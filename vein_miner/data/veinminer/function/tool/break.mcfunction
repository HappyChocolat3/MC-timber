# Kilof się zniszczył – reszta złoża zostaje
scoreboard players set #broken vm.var 1
item replace entity @s weapon.mainhand with minecraft:air
execute at @s run playsound minecraft:entity.item.break player @a ~ ~ ~
