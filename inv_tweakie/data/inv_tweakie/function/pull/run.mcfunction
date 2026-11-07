# Szybkie odkładanie: przenieś z głównego ekwipunku (sloty 9–35) całe stosy przedmiotów, które już są
# w skrzyni, o ile się w całości mieszczą. Zmiany w ekwipunku są stosowane dopiero po udanym zapisie skrzyni (pull/apply).
data modify storage it:sort pulls set value []
scoreboard players set #moved it.var 0
scoreboard players set #used it.var 0
data modify storage it:sort tmpg set from storage it:sort groups2
function inv_tweakie:pull/count_loop
scoreboard players operation #free it.var = #cap it.var
scoreboard players operation #free it.var -= #used it.var
data modify storage it:sort pinv set from entity @s Inventory
function inv_tweakie:pull/inv_loop
