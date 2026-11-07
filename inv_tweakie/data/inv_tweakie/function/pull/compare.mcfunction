data modify storage it:sort cmp set from storage it:sort g.key
execute store success score #diff it.var run data modify storage it:sort cmp set from storage it:sort key
execute if score #diff it.var matches 1 run return 0
scoreboard players set #found it.var 1
execute store result score #t it.var run data get storage it:sort g.total
execute store result score #m it.var run data get storage it:sort g.max
execute if score #m it.var matches ..0 run scoreboard players set #m it.var 64
# b = ceil(t/m) – sloty zajęte teraz przez tę grupę
scoreboard players operation #b it.var = #t it.var
scoreboard players operation #b it.var += #m it.var
scoreboard players remove #b it.var 1
scoreboard players operation #b it.var /= #m it.var
# room = b*m - t + free*m
scoreboard players operation #room it.var = #b it.var
scoreboard players operation #room it.var *= #m it.var
scoreboard players operation #room it.var -= #t it.var
scoreboard players operation #fm it.var = #free it.var
scoreboard players operation #fm it.var *= #m it.var
scoreboard players operation #room it.var += #fm it.var
scoreboard players operation #mv it.var = #c it.var
execute if score #mv it.var > #room it.var run scoreboard players operation #mv it.var = #room it.var
execute if score #mv it.var matches ..0 run return 0
# Przenosimy tylko całe stosy (bez dzielenia), żeby nie zmieniać liczby sztuk w ekwipunku
execute if score #mv it.var < #c it.var run return 0
scoreboard players operation #t it.var += #mv it.var
execute store result storage it:sort g.total int 1 run scoreboard players get #t it.var
# a = ceil(t/m) po dodaniu; free -= a - b
scoreboard players operation #a it.var = #t it.var
scoreboard players operation #a it.var += #m it.var
scoreboard players remove #a it.var 1
scoreboard players operation #a it.var /= #m it.var
scoreboard players operation #a it.var -= #b it.var
scoreboard players operation #free it.var -= #a it.var
scoreboard players operation #in_total it.var += #mv it.var
scoreboard players operation #moved it.var += #mv it.var
# zapamiętaj zmianę w ekwipunku: slot inventory.(s-9), zostaje c-mv sztuk
data modify storage it:sort pl set value {k:0,left:0}
scoreboard players operation #k it.var = #s it.var
scoreboard players remove #k it.var 9
execute store result storage it:sort pl.k int 1 run scoreboard players get #k it.var
scoreboard players operation #c it.var -= #mv it.var
execute store result storage it:sort pl.left int 1 run scoreboard players get #c it.var
data modify storage it:sort pulls append from storage it:sort pl
