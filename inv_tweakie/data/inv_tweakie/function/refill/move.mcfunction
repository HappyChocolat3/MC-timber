$item replace entity @s weapon.mainhand from entity @s inventory.$(i)
$item replace entity @s inventory.$(i) with minecraft:air
execute at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 0.3 1.6
execute if score #debug it.config matches 1 run tellraw @s [{"text":"[inv_tweakie] ","color":"aqua"},{"text":"uzupełniono","color":"gray"}]
