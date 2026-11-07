# Wykonawca: gracz. Pozycja: blok rudy.
# Doświadczenie jak w vanilli (nie przy Jedwabnym dotyku) – liczone zanim blok zniknie
execute if score #xp vm.config matches 1 if score #silk vm.var matches 0 run function veinminer:xp
# Dropy jak przy kopaniu trzymanym narzędziem (Szczęście / Jedwabny dotyk działają)
scoreboard players set #looted vm.var 0
execute store success score #looted vm.var run function veinminer:loot_one
# Zapas, gdyby /loot nie działał w tej wersji: zwykłe zniszczenie z dropem
execute if score #looted vm.var matches 0 run setblock ~ ~ ~ minecraft:air destroy
execute if score #looted vm.var matches 1 run function veinminer:remove_block
