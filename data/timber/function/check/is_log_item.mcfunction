# Czy ten przedmiot (encja) to pień? Sprawdzane po NBT – działa niezależnie od wersji.
execute if entity @s[nbt={Item:{id:"minecraft:oak_log"}}] run return 1
execute if entity @s[nbt={Item:{id:"minecraft:spruce_log"}}] run return 1
execute if entity @s[nbt={Item:{id:"minecraft:birch_log"}}] run return 1
execute if entity @s[nbt={Item:{id:"minecraft:jungle_log"}}] run return 1
execute if entity @s[nbt={Item:{id:"minecraft:acacia_log"}}] run return 1
execute if entity @s[nbt={Item:{id:"minecraft:dark_oak_log"}}] run return 1
execute if entity @s[nbt={Item:{id:"minecraft:mangrove_log"}}] run return 1
execute if entity @s[nbt={Item:{id:"minecraft:cherry_log"}}] run return 1
execute if entity @s[nbt={Item:{id:"minecraft:pale_oak_log"}}] run return 1
execute if entity @s[nbt={Item:{id:"minecraft:crimson_stem"}}] run return 1
execute if entity @s[nbt={Item:{id:"minecraft:warped_stem"}}] run return 1
return 0
