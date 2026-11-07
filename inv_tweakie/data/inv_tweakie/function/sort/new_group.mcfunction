data modify storage it:sort g set value {}
data modify storage it:sort g.key set from storage it:sort key
execute store result storage it:sort g.total int 1 run scoreboard players get #c it.var
data modify storage it:sort groups append from storage it:sort g
