# Gracz postawił pień – oznacz go markerem, żeby nie był ścinany
advancement revoke @s only timber:placed_log
scoreboard players set #ray timber.var 0
execute anchored eyes positioned ^ ^ ^ run function timber:place/ray
