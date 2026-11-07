data modify storage it:sort cmp set from storage it:sort g.key
execute store success score #diff it.var run data modify storage it:sort cmp set from storage it:sort key
execute if score #diff it.var matches 1 run return 0
scoreboard players set #found it.var 1
execute store result score #t it.var run data get storage it:sort g.total
scoreboard players operation #t it.var += #c it.var
execute store result storage it:sort g.total int 1 run scoreboard players get #t it.var
