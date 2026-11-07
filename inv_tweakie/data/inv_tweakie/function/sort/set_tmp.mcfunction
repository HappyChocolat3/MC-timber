# Włóż storage it:sort ti do slotu 0 ukrytej beczki roboczej
data modify storage it:sort ti.Slot set value 0b
execute in minecraft:overworld run data modify block 1 -64 0 Items set value []
execute in minecraft:overworld run data modify block 1 -64 0 Items append from storage it:sort ti
