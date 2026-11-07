execute if score #k it.var matches 27.. run return 0
execute store result storage it:sort ws.k int 1 run scoreboard players get #k it.var
execute store result score #has it.var if data storage it:sort out[0]
execute if score #has it.var matches 1 run function inv_tweakie:inv/put with storage it:sort ws
execute if score #has it.var matches 0 run function inv_tweakie:inv/clear with storage it:sort ws
scoreboard players add #k it.var 1
function inv_tweakie:inv/write_loop
