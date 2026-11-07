execute store result storage it:tmp p.s int 1 run scoreboard players get @s it.ms
execute store result storage it:tmp p.z int 1 run scoreboard players get @s it.mz
function inv_tweakie:refill/tick_m with storage it:tmp p
