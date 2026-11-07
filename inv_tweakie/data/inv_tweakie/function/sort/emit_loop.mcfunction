execute if score #t it.var matches ..0 run return 0
scoreboard players operation #n it.var = #t it.var
execute if score #n it.var > #m it.var run scoreboard players operation #n it.var = #m it.var
data modify storage it:sort st set from storage it:sort g.key
execute store result storage it:sort st.count int 1 run scoreboard players get #n it.var
data modify storage it:sort out append from storage it:sort st
scoreboard players operation #t it.var -= #n it.var
scoreboard players operation #out_total it.var += #n it.var
scoreboard players add #out_len it.var 1
function inv_tweakie:sort/emit_loop
