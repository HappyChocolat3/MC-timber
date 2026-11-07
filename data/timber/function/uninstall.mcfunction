# Użyj: /function timber:uninstall, potem /datapack disable "file/MC-Timber"
schedule clear timber:cleanup
kill @e[type=marker,tag=timber.placed]
kill @e[type=marker,tag=timber.scan]
scoreboard objectives remove timber.var
scoreboard objectives remove timber.config
scoreboard objectives remove timber.m.oak
scoreboard objectives remove timber.m.spruce
scoreboard objectives remove timber.m.birch
scoreboard objectives remove timber.m.jungle
scoreboard objectives remove timber.m.acacia
scoreboard objectives remove timber.m.darkoak
scoreboard objectives remove timber.m.mangrove
scoreboard objectives remove timber.m.cherry
scoreboard objectives remove timber.m.paleoak
scoreboard objectives remove timber.m.crimson
scoreboard objectives remove timber.m.warped
data remove storage timber:config max_damage
data remove storage timber:tmp item
tellraw @a {"text":"MC-Timber odinstalowany. Wyłącz teraz paczkę danych.","color":"yellow"}
