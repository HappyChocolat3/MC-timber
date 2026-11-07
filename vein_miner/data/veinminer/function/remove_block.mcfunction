# Usunięcie bloku z dźwiękiem i cząsteczkami (destroy bez dropu nie istnieje – więc particle + dźwięk ręcznie)
playsound minecraft:block.stone.break block @a ~ ~ ~ 1 0.9
particle minecraft:poof ~ ~ ~ 0.3 0.3 0.3 0.01 4
setblock ~ ~ ~ minecraft:air
