# Niezniszczalność N: szansa na zużycie = 1/(N+1), jak w vanilli
execute if score #unb vm.var matches ..0 run return run scoreboard players add #dmg vm.var 1
function veinminer:tool/roll with storage veinminer:tmp ub
execute if score #r vm.var matches 0 run scoreboard players add #dmg vm.var 1
