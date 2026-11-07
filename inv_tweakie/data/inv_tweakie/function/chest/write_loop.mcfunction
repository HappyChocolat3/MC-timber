execute unless data storage it:sort out[0] run return 0
data modify storage it:sort st set from storage it:sort out[0]
data remove storage it:sort out[0]
scoreboard players operation #k2 it.var = #k it.var
scoreboard players remove #k2 it.var 27
execute if score #k it.var matches ..26 store result storage it:sort st.Slot byte 1 run scoreboard players get #k it.var
execute if score #k it.var matches ..26 run data modify storage it:sort w1 append from storage it:sort st
execute if score #k it.var matches 27.. store result storage it:sort st.Slot byte 1 run scoreboard players get #k2 it.var
execute if score #k it.var matches 27.. run data modify storage it:sort w2 append from storage it:sort st
scoreboard players add #k it.var 1
function inv_tweakie:chest/write_loop
