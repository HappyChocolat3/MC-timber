# Wejście: storage it:sort in (lista przedmiotów), #cap = liczba slotów. Wyjście: storage it:sort out, #ok = 1 gdy bezpiecznie.
scoreboard players set #ok it.var 0
function inv_tweakie:sort/selftest
execute unless score #self it.var matches 1 run return 0

data modify storage it:sort groups set value []
scoreboard players set #in_total it.var 0
function inv_tweakie:sort/group_loop

data modify storage it:sort groups2 set value []
function inv_tweakie:sort/classify_loop

data modify storage it:sort sorted set value []
data modify storage it:sort sorted append from storage it:sort groups2[{cat:1}]
data modify storage it:sort sorted append from storage it:sort groups2[{cat:2}]
data modify storage it:sort sorted append from storage it:sort groups2[{cat:3}]
data modify storage it:sort sorted append from storage it:sort groups2[{cat:4}]
data modify storage it:sort sorted append from storage it:sort groups2[{cat:5}]
data modify storage it:sort sorted append from storage it:sort groups2[{cat:6}]
data modify storage it:sort sorted append from storage it:sort groups2[{cat:7}]
data modify storage it:sort sorted append from storage it:sort groups2[{cat:8}]
data modify storage it:sort sorted append from storage it:sort groups2[{cat:9}]

data modify storage it:sort out set value []
scoreboard players set #out_total it.var 0
scoreboard players set #out_len it.var 0
function inv_tweakie:sort/expand_loop

# Zapis tylko gdy liczba przedmiotów się zgadza i wszystko się mieści
execute if score #out_total it.var = #in_total it.var if score #out_len it.var <= #cap it.var run scoreboard players set #ok it.var 1
