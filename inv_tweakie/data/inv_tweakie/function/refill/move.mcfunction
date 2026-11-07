$item replace entity @s weapon.mainhand from entity @s inventory.$(i)
$item replace entity @s inventory.$(i) with minecraft:air
playsound minecraft:entity.item.pickup player @s ~ ~ ~ 0.3 1.6
