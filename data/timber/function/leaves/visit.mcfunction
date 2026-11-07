execute if score #lcount timber.var matches 3000.. run return 0
# „destroy” = jak przy naturalnym opadaniu: wypadają sadzonki, patyki, jabłka
setblock ~ ~ ~ minecraft:air destroy
scoreboard players add #lcount timber.var 1
function timber:leaves/neighbors
