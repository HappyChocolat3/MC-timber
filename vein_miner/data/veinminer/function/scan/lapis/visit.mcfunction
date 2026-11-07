execute if score #count vm.var >= #max vm.var run return 0
execute if entity @e[type=marker,tag=vm.scan,distance=..0.1] run return 0
summon minecraft:marker ~ ~ ~ {Tags:["vm.scan"]}
scoreboard players add #count vm.var 1
function veinminer:scan/lapis/neighbors
