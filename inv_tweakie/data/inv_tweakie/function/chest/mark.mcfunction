# c1 = pierwsza (górna w oknie) połowa, c2 = druga połowa podwójnej skrzyni
execute if block ~ ~ ~ minecraft:chest[type=single] run summon minecraft:marker ~ ~ ~ {Tags:["it.c","it.c1"]}
execute if block ~ ~ ~ minecraft:chest[type=right,facing=north] if block ~-1 ~ ~0 minecraft:chest[type=left] run summon minecraft:marker ~-1 ~ ~0 {Tags:["it.c","it.c2"]}
execute if block ~ ~ ~ minecraft:chest[type=right,facing=west] if block ~0 ~ ~1 minecraft:chest[type=left] run summon minecraft:marker ~0 ~ ~1 {Tags:["it.c","it.c2"]}
execute if block ~ ~ ~ minecraft:chest[type=right,facing=south] if block ~1 ~ ~0 minecraft:chest[type=left] run summon minecraft:marker ~1 ~ ~0 {Tags:["it.c","it.c2"]}
execute if block ~ ~ ~ minecraft:chest[type=right,facing=east] if block ~0 ~ ~-1 minecraft:chest[type=left] run summon minecraft:marker ~0 ~ ~-1 {Tags:["it.c","it.c2"]}
execute if block ~ ~ ~ minecraft:chest[type=right] run summon minecraft:marker ~ ~ ~ {Tags:["it.c","it.c1"]}
execute if block ~ ~ ~ minecraft:chest[type=left,facing=north] if block ~1 ~ ~0 minecraft:chest[type=right] run summon minecraft:marker ~1 ~ ~0 {Tags:["it.c","it.c1"]}
execute if block ~ ~ ~ minecraft:chest[type=left,facing=east] if block ~0 ~ ~1 minecraft:chest[type=right] run summon minecraft:marker ~0 ~ ~1 {Tags:["it.c","it.c1"]}
execute if block ~ ~ ~ minecraft:chest[type=left,facing=south] if block ~-1 ~ ~0 minecraft:chest[type=right] run summon minecraft:marker ~-1 ~ ~0 {Tags:["it.c","it.c1"]}
execute if block ~ ~ ~ minecraft:chest[type=left,facing=west] if block ~0 ~ ~-1 minecraft:chest[type=right] run summon minecraft:marker ~0 ~ ~-1 {Tags:["it.c","it.c1"]}
execute if block ~ ~ ~ minecraft:chest[type=left] run summon minecraft:marker ~ ~ ~ {Tags:["it.c","it.c2"]}
execute if block ~ ~ ~ minecraft:trapped_chest[type=single] run summon minecraft:marker ~ ~ ~ {Tags:["it.c","it.c1"]}
execute if block ~ ~ ~ minecraft:trapped_chest[type=right,facing=north] if block ~-1 ~ ~0 minecraft:trapped_chest[type=left] run summon minecraft:marker ~-1 ~ ~0 {Tags:["it.c","it.c2"]}
execute if block ~ ~ ~ minecraft:trapped_chest[type=right,facing=west] if block ~0 ~ ~1 minecraft:trapped_chest[type=left] run summon minecraft:marker ~0 ~ ~1 {Tags:["it.c","it.c2"]}
execute if block ~ ~ ~ minecraft:trapped_chest[type=right,facing=south] if block ~1 ~ ~0 minecraft:trapped_chest[type=left] run summon minecraft:marker ~1 ~ ~0 {Tags:["it.c","it.c2"]}
execute if block ~ ~ ~ minecraft:trapped_chest[type=right,facing=east] if block ~0 ~ ~-1 minecraft:trapped_chest[type=left] run summon minecraft:marker ~0 ~ ~-1 {Tags:["it.c","it.c2"]}
execute if block ~ ~ ~ minecraft:trapped_chest[type=right] run summon minecraft:marker ~ ~ ~ {Tags:["it.c","it.c1"]}
execute if block ~ ~ ~ minecraft:trapped_chest[type=left,facing=north] if block ~1 ~ ~0 minecraft:trapped_chest[type=right] run summon minecraft:marker ~1 ~ ~0 {Tags:["it.c","it.c1"]}
execute if block ~ ~ ~ minecraft:trapped_chest[type=left,facing=east] if block ~0 ~ ~1 minecraft:trapped_chest[type=right] run summon minecraft:marker ~0 ~ ~1 {Tags:["it.c","it.c1"]}
execute if block ~ ~ ~ minecraft:trapped_chest[type=left,facing=south] if block ~-1 ~ ~0 minecraft:trapped_chest[type=right] run summon minecraft:marker ~-1 ~ ~0 {Tags:["it.c","it.c1"]}
execute if block ~ ~ ~ minecraft:trapped_chest[type=left,facing=west] if block ~0 ~ ~-1 minecraft:trapped_chest[type=right] run summon minecraft:marker ~0 ~ ~-1 {Tags:["it.c","it.c1"]}
execute if block ~ ~ ~ minecraft:trapped_chest[type=left] run summon minecraft:marker ~ ~ ~ {Tags:["it.c","it.c2"]}
execute unless entity @e[type=marker,tag=it.c] run summon minecraft:marker ~ ~ ~ {Tags:["it.c","it.c1"]}
