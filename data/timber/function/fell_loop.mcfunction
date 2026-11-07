# Ścinaj od najbliższego wykopanemu blokowi, każdy pień = 1 użycie siekiery
execute unless entity @e[type=marker,tag=timber.scan] run return 0
execute as @e[type=marker,tag=timber.scan,sort=nearest,limit=1] at @s run function timber:cut_one

execute if score #unbreakable timber.var matches 0 run function timber:tool/damage_one
execute if score #dmg timber.var >= #maxdmg timber.var if score #unbreakable timber.var matches 0 run return run function timber:tool/break

function timber:fell_loop
