# Liczniki użycia/zepsucia tworzone na żądanie dla trzymanego przedmiotu i zerowane co tick
$scoreboard objectives add it.u.$(name) minecraft.used:minecraft.$(name)
$scoreboard objectives add it.b.$(name) minecraft.broken:minecraft.$(name)
$scoreboard players reset @s it.u.$(name)
$scoreboard players reset @s it.b.$(name)
