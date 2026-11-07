# MC-Timber – inicjalizacja
scoreboard objectives add timber.var dummy
scoreboard objectives add timber.config dummy

# Liczniki wykopanych pni (statystyka minecraft.mined)
scoreboard objectives add timber.m.oak minecraft.mined:minecraft.oak_log
scoreboard objectives add timber.m.spruce minecraft.mined:minecraft.spruce_log
scoreboard objectives add timber.m.birch minecraft.mined:minecraft.birch_log
scoreboard objectives add timber.m.jungle minecraft.mined:minecraft.jungle_log
scoreboard objectives add timber.m.acacia minecraft.mined:minecraft.acacia_log
scoreboard objectives add timber.m.darkoak minecraft.mined:minecraft.dark_oak_log
scoreboard objectives add timber.m.mangrove minecraft.mined:minecraft.mangrove_log
scoreboard objectives add timber.m.cherry minecraft.mined:minecraft.cherry_log
scoreboard objectives add timber.m.paleoak minecraft.mined:minecraft.pale_oak_log
scoreboard objectives add timber.m.crimson minecraft.mined:minecraft.crimson_stem
scoreboard objectives add timber.m.warped minecraft.mined:minecraft.warped_stem

# Konfiguracja (ustawiana tylko jeśli jeszcze nie istnieje)
#  max_logs        – maks. liczba pni ścinanych naraz
#  sneak_disables  – 1 = skradanie się (Shift) wyłącza ścinanie całego drzewa
#  leaf_decay      – 1 = liście ściętego drzewa od razu opadają
execute unless score #max_logs timber.config matches 1.. run scoreboard players set #max_logs timber.config 256
execute unless score #debug timber.config matches 0..1 run scoreboard players set #debug timber.config 0
execute unless score #leaf_decay timber.config matches 0..1 run scoreboard players set #leaf_decay timber.config 1
execute unless score #sneak_disables timber.config matches 0..1 run scoreboard players set #sneak_disables timber.config 1

# Liczniki postawionych pni (statystyka minecraft.used)
scoreboard objectives add timber.u.oak_log minecraft.used:minecraft.oak_log
scoreboard objectives add timber.u.oak_wood minecraft.used:minecraft.oak_wood
scoreboard objectives add timber.u.stripped_oak_log minecraft.used:minecraft.stripped_oak_log
scoreboard objectives add timber.u.stripped_oak_wood minecraft.used:minecraft.stripped_oak_wood
scoreboard objectives add timber.u.spruce_log minecraft.used:minecraft.spruce_log
scoreboard objectives add timber.u.spruce_wood minecraft.used:minecraft.spruce_wood
scoreboard objectives add timber.u.stripped_spruce_log minecraft.used:minecraft.stripped_spruce_log
scoreboard objectives add timber.u.stripped_spruce_wood minecraft.used:minecraft.stripped_spruce_wood
scoreboard objectives add timber.u.birch_log minecraft.used:minecraft.birch_log
scoreboard objectives add timber.u.birch_wood minecraft.used:minecraft.birch_wood
scoreboard objectives add timber.u.stripped_birch_log minecraft.used:minecraft.stripped_birch_log
scoreboard objectives add timber.u.stripped_birch_wood minecraft.used:minecraft.stripped_birch_wood
scoreboard objectives add timber.u.jungle_log minecraft.used:minecraft.jungle_log
scoreboard objectives add timber.u.jungle_wood minecraft.used:minecraft.jungle_wood
scoreboard objectives add timber.u.stripped_jungle_log minecraft.used:minecraft.stripped_jungle_log
scoreboard objectives add timber.u.stripped_jungle_wood minecraft.used:minecraft.stripped_jungle_wood
scoreboard objectives add timber.u.acacia_log minecraft.used:minecraft.acacia_log
scoreboard objectives add timber.u.acacia_wood minecraft.used:minecraft.acacia_wood
scoreboard objectives add timber.u.stripped_acacia_log minecraft.used:minecraft.stripped_acacia_log
scoreboard objectives add timber.u.stripped_acacia_wood minecraft.used:minecraft.stripped_acacia_wood
scoreboard objectives add timber.u.dark_oak_log minecraft.used:minecraft.dark_oak_log
scoreboard objectives add timber.u.dark_oak_wood minecraft.used:minecraft.dark_oak_wood
scoreboard objectives add timber.u.stripped_dark_oak_log minecraft.used:minecraft.stripped_dark_oak_log
scoreboard objectives add timber.u.stripped_dark_oak_wood minecraft.used:minecraft.stripped_dark_oak_wood
scoreboard objectives add timber.u.mangrove_log minecraft.used:minecraft.mangrove_log
scoreboard objectives add timber.u.mangrove_wood minecraft.used:minecraft.mangrove_wood
scoreboard objectives add timber.u.stripped_mangrove_log minecraft.used:minecraft.stripped_mangrove_log
scoreboard objectives add timber.u.stripped_mangrove_wood minecraft.used:minecraft.stripped_mangrove_wood
scoreboard objectives add timber.u.cherry_log minecraft.used:minecraft.cherry_log
scoreboard objectives add timber.u.cherry_wood minecraft.used:minecraft.cherry_wood
scoreboard objectives add timber.u.stripped_cherry_log minecraft.used:minecraft.stripped_cherry_log
scoreboard objectives add timber.u.stripped_cherry_wood minecraft.used:minecraft.stripped_cherry_wood
scoreboard objectives add timber.u.pale_oak_log minecraft.used:minecraft.pale_oak_log
scoreboard objectives add timber.u.pale_oak_wood minecraft.used:minecraft.pale_oak_wood
scoreboard objectives add timber.u.stripped_pale_oak_log minecraft.used:minecraft.stripped_pale_oak_log
scoreboard objectives add timber.u.stripped_pale_oak_wood minecraft.used:minecraft.stripped_pale_oak_wood
scoreboard objectives add timber.u.crimson_stem minecraft.used:minecraft.crimson_stem
scoreboard objectives add timber.u.crimson_hyphae minecraft.used:minecraft.crimson_hyphae
scoreboard objectives add timber.u.stripped_crimson_stem minecraft.used:minecraft.stripped_crimson_stem
scoreboard objectives add timber.u.stripped_crimson_hyphae minecraft.used:minecraft.stripped_crimson_hyphae
scoreboard objectives add timber.u.warped_stem minecraft.used:minecraft.warped_stem
scoreboard objectives add timber.u.warped_hyphae minecraft.used:minecraft.warped_hyphae
scoreboard objectives add timber.u.stripped_warped_stem minecraft.used:minecraft.stripped_warped_stem
scoreboard objectives add timber.u.stripped_warped_hyphae minecraft.used:minecraft.stripped_warped_hyphae

# Wytrzymałość siekier (vanilla). Siekiery spoza listy bez komponentu max_damage nie ścinają całych drzew.
data modify storage timber:config max_damage set value {"minecraft:wooden_axe":59,"minecraft:golden_axe":32,"minecraft:stone_axe":131,"minecraft:copper_axe":190,"minecraft:iron_axe":250,"minecraft:diamond_axe":1561,"minecraft:netherite_axe":2031}

schedule function timber:cleanup 100t replace
