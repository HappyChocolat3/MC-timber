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
execute unless score #max_logs timber.config matches 1.. run scoreboard players set #max_logs timber.config 256
execute unless score #sneak_disables timber.config matches 0..1 run scoreboard players set #sneak_disables timber.config 1

# Wytrzymałość siekier (vanilla). Siekiery spoza listy bez komponentu max_damage nie ścinają całych drzew.
data modify storage timber:config max_damage set value {"minecraft:wooden_axe":59,"minecraft:golden_axe":32,"minecraft:stone_axe":131,"minecraft:copper_axe":190,"minecraft:iron_axe":250,"minecraft:diamond_axe":1561,"minecraft:netherite_axe":2031}

schedule function timber:cleanup 100t replace
