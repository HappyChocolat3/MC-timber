$scoreboard players set #left it.var $(left)
$execute if score #left it.var matches ..0 run item replace entity @s inventory.$(k) with minecraft:air
$execute if score #left it.var matches 1.. run item modify entity @s inventory.$(k) {function:"minecraft:set_count",count:$(left)}
