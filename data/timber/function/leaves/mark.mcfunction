execute if score #lcount timber.var matches 3000.. run return 0
summon minecraft:marker ~ ~ ~ {Tags:["timber.leaf","timber.next"]}
scoreboard players add #lcount timber.var 1
