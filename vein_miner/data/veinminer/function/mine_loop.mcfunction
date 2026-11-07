# Kop od najbliższego bloku, każdy blok = 1 użycie kilofa (jak przy zwykłym kopaniu)
execute unless entity @e[type=marker,tag=vm.scan] run return 0
execute as @e[type=marker,tag=vm.scan,sort=nearest,limit=1] at @s as @a[tag=vm.miner,limit=1] run function veinminer:break_one
kill @e[type=marker,tag=vm.scan,sort=nearest,limit=1]
scoreboard players add #mined vm.var 1
execute if score #unbreakable vm.var matches 0 run function veinminer:tool/damage_one
execute if score #dmg vm.var >= #maxdmg vm.var if score #unbreakable vm.var matches 0 run return run function veinminer:tool/break
function veinminer:mine_loop
