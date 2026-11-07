# inv_tweakie – inicjalizacja
scoreboard objectives add it.var dummy
scoreboard objectives add it.config dummy
scoreboard objectives add it.id dummy
scoreboard objectives add it.ms dummy
scoreboard objectives add it.mz dummy
scoreboard objectives add it.look dummy
scoreboard objectives add it.drop minecraft.custom:minecraft.drop
scoreboard objectives add it.sneak minecraft.custom:minecraft.sneak_time
scoreboard objectives add it.oc minecraft.custom:minecraft.open_chest
scoreboard objectives add it.ot minecraft.custom:minecraft.trigger_trapped_chest
scoreboard objectives add it.ob minecraft.custom:minecraft.open_barrel
scoreboard objectives add it.os minecraft.custom:minecraft.open_shulker_box
scoreboard objectives add sortuj trigger

# Konfiguracja (1 = włączone, 0 = wyłączone)
execute unless score #refill it.config matches 0..1 run scoreboard players set #refill it.config 1
execute unless score #chest_sort it.config matches 0..1 run scoreboard players set #chest_sort it.config 1
execute unless score #debug it.config matches 0..1 run scoreboard players set #debug it.config 0
execute unless score #quick_stack it.config matches 0..1 run scoreboard players set #quick_stack it.config 1
execute unless score #inv_sort it.config matches 0..1 run scoreboard players set #inv_sort it.config 1

# Pamięć „co gracz trzymał w ręce” – ukryte beczki w warstwie bedrocka (y=-64) w stale załadowanym chunku 0 0
execute in minecraft:overworld run forceload add 0 0
