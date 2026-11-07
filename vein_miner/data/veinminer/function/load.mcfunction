# vein_miner – inicjalizacja
scoreboard objectives add vm.var dummy
scoreboard objectives add vm.config dummy
scoreboard objectives add vm.sneak minecraft.custom:minecraft.sneak_time

# Liczniki wykopanych bloków rud
scoreboard objectives add vm.m.coal_ore minecraft.mined:minecraft.coal_ore
scoreboard objectives add vm.m.deepslate_coal_ore minecraft.mined:minecraft.deepslate_coal_ore
scoreboard objectives add vm.m.iron_ore minecraft.mined:minecraft.iron_ore
scoreboard objectives add vm.m.deepslate_iron_ore minecraft.mined:minecraft.deepslate_iron_ore
scoreboard objectives add vm.m.copper_ore minecraft.mined:minecraft.copper_ore
scoreboard objectives add vm.m.deepslate_copper_ore minecraft.mined:minecraft.deepslate_copper_ore
scoreboard objectives add vm.m.gold_ore minecraft.mined:minecraft.gold_ore
scoreboard objectives add vm.m.deepslate_gold_ore minecraft.mined:minecraft.deepslate_gold_ore
scoreboard objectives add vm.m.redstone_ore minecraft.mined:minecraft.redstone_ore
scoreboard objectives add vm.m.deepslate_redstone_ore minecraft.mined:minecraft.deepslate_redstone_ore
scoreboard objectives add vm.m.lapis_ore minecraft.mined:minecraft.lapis_ore
scoreboard objectives add vm.m.deepslate_lapis_ore minecraft.mined:minecraft.deepslate_lapis_ore
scoreboard objectives add vm.m.diamond_ore minecraft.mined:minecraft.diamond_ore
scoreboard objectives add vm.m.deepslate_diamond_ore minecraft.mined:minecraft.deepslate_diamond_ore
scoreboard objectives add vm.m.emerald_ore minecraft.mined:minecraft.emerald_ore
scoreboard objectives add vm.m.deepslate_emerald_ore minecraft.mined:minecraft.deepslate_emerald_ore
scoreboard objectives add vm.m.nether_quartz_ore minecraft.mined:minecraft.nether_quartz_ore
scoreboard objectives add vm.m.nether_gold_ore minecraft.mined:minecraft.nether_gold_ore
scoreboard objectives add vm.m.ancient_debris minecraft.mined:minecraft.ancient_debris

# Konfiguracja
#  max_blocks      – maks. liczba bloków złoża wykopywanych naraz
#  sneak_disables  – 1 = Shift (skradanie) = zwykłe kopanie jednego bloku
#  xp              – 1 = z rud wypada doświadczenie jak przy zwykłym kopaniu
#  debug           – komunikaty diagnostyczne (/function veinminer:debug)
execute unless score #max_blocks vm.config matches 1.. run scoreboard players set #max_blocks vm.config 64
execute unless score #sneak_disables vm.config matches 0..1 run scoreboard players set #sneak_disables vm.config 1
execute unless score #xp vm.config matches 0..1 run scoreboard players set #xp vm.config 1
execute unless score #debug vm.config matches 0..1 run scoreboard players set #debug vm.config 0

# Wytrzymałość kilofów (vanilla). Inne narzędzia nie wykopują całych złóż.
data modify storage veinminer:config max_damage set value {"minecraft:wooden_pickaxe":59,"minecraft:golden_pickaxe":32,"minecraft:stone_pickaxe":131,"minecraft:copper_pickaxe":190,"minecraft:iron_pickaxe":250,"minecraft:diamond_pickaxe":1561,"minecraft:netherite_pickaxe":2031}
