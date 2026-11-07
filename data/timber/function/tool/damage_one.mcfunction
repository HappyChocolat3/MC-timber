# Unbreaking N: szansa na zużycie = 1/(N+1), tak jak w vanilli
execute if score #unb timber.var matches ..0 run return run scoreboard players add #dmg timber.var 1
function timber:tool/roll with storage timber:tmp ub
execute if score #r timber.var matches 0 run scoreboard players add #dmg timber.var 1
