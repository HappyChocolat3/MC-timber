# Ile slotów zajmą obecne grupy: suma ceil(total/max)
execute unless data storage it:sort tmpg[0] run return 0
execute store result score #t it.var run data get storage it:sort tmpg[0].total
execute store result score #m it.var run data get storage it:sort tmpg[0].max
execute if score #m it.var matches ..0 run scoreboard players set #m it.var 64
scoreboard players operation #t it.var += #m it.var
scoreboard players remove #t it.var 1
scoreboard players operation #t it.var /= #m it.var
scoreboard players operation #used it.var += #t it.var
data remove storage it:sort tmpg[0]
function inv_tweakie:pull/count_loop
