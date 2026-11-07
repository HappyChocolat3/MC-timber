data modify storage it:sort w1 set value []
data modify storage it:sort w2 set value []
scoreboard players set #k it.var 0
function inv_tweakie:chest/write_loop
execute as @e[type=marker,tag=it.c1,limit=1] at @s store success score #w1 it.var run data modify block ~ ~ ~ Items set from storage it:sort w1
execute as @e[type=marker,tag=it.c2,limit=1] at @s store success score #w2 it.var run data modify block ~ ~ ~ Items set from storage it:sort w2
execute if score #debug it.config matches 1 run tellraw @s [{"text":"[inv_tweakie] ","color":"aqua"},{"text":"zapis skrzyni – część 1: ","color":"gray"},{"score":{"name":"#w1","objective":"it.var"}},{"text":" część 2: "},{"score":{"name":"#w2","objective":"it.var"}},{"text":" (1 = zmieniono, 0 = bez zmian)"}]
