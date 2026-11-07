# Użyj: /function timber:uninstall, potem /datapack disable "file/MC-Timber"
schedule clear timber:cleanup
kill @e[type=marker,tag=timber.placed]
kill @e[type=marker,tag=timber.scan]
kill @e[type=marker,tag=timber.leafseed]
kill @e[type=marker,tag=timber.leaf]
schedule clear timber:leaves/run
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
scoreboard objectives remove timber.u.oak_log
scoreboard objectives remove timber.u.oak_wood
scoreboard objectives remove timber.u.stripped_oak_log
scoreboard objectives remove timber.u.stripped_oak_wood
scoreboard objectives remove timber.u.spruce_log
scoreboard objectives remove timber.u.spruce_wood
scoreboard objectives remove timber.u.stripped_spruce_log
scoreboard objectives remove timber.u.stripped_spruce_wood
scoreboard objectives remove timber.u.birch_log
scoreboard objectives remove timber.u.birch_wood
scoreboard objectives remove timber.u.stripped_birch_log
scoreboard objectives remove timber.u.stripped_birch_wood
scoreboard objectives remove timber.u.jungle_log
scoreboard objectives remove timber.u.jungle_wood
scoreboard objectives remove timber.u.stripped_jungle_log
scoreboard objectives remove timber.u.stripped_jungle_wood
scoreboard objectives remove timber.u.acacia_log
scoreboard objectives remove timber.u.acacia_wood
scoreboard objectives remove timber.u.stripped_acacia_log
scoreboard objectives remove timber.u.stripped_acacia_wood
scoreboard objectives remove timber.u.dark_oak_log
scoreboard objectives remove timber.u.dark_oak_wood
scoreboard objectives remove timber.u.stripped_dark_oak_log
scoreboard objectives remove timber.u.stripped_dark_oak_wood
scoreboard objectives remove timber.u.mangrove_log
scoreboard objectives remove timber.u.mangrove_wood
scoreboard objectives remove timber.u.stripped_mangrove_log
scoreboard objectives remove timber.u.stripped_mangrove_wood
scoreboard objectives remove timber.u.cherry_log
scoreboard objectives remove timber.u.cherry_wood
scoreboard objectives remove timber.u.stripped_cherry_log
scoreboard objectives remove timber.u.stripped_cherry_wood
scoreboard objectives remove timber.u.pale_oak_log
scoreboard objectives remove timber.u.pale_oak_wood
scoreboard objectives remove timber.u.stripped_pale_oak_log
scoreboard objectives remove timber.u.stripped_pale_oak_wood
scoreboard objectives remove timber.u.crimson_stem
scoreboard objectives remove timber.u.crimson_hyphae
scoreboard objectives remove timber.u.stripped_crimson_stem
scoreboard objectives remove timber.u.stripped_crimson_hyphae
scoreboard objectives remove timber.u.warped_stem
scoreboard objectives remove timber.u.warped_hyphae
scoreboard objectives remove timber.u.stripped_warped_stem
scoreboard objectives remove timber.u.stripped_warped_hyphae
data remove storage timber:config max_damage
data remove storage timber:tmp item
tellraw @a {"text":"MC-Timber odinstalowany. Wyłącz teraz paczkę danych.","color":"yellow"}
