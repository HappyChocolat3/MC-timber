data modify storage it:sort w1 set value []
data modify storage it:sort w2 set value []
scoreboard players set #k it.var 0
function inv_tweakie:chest/write_loop
execute as @e[type=marker,tag=it.c1,limit=1] at @s run data modify block ~ ~ ~ Items set from storage it:sort w1
execute as @e[type=marker,tag=it.c2,limit=1] at @s run data modify block ~ ~ ~ Items set from storage it:sort w2
