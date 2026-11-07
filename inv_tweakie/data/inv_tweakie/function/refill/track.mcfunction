# Liczniki użycia/zepsucia tworzone na żądanie dla trzymanego przedmiotu i zerowane co tick
$scoreboard objectives add it.u.$(name) minecraft.used:$(id)
$scoreboard objectives add it.b.$(name) minecraft.broken:$(id)
$scoreboard players reset @s it.u.$(name)
$scoreboard players reset @s it.b.$(name)
