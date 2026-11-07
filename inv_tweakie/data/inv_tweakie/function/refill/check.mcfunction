# Przedmiot zniknął z ręki. Uzupełniamy tylko, jeśli został zużyty (postawiony/zjedzony/rzucony)
# albo narzędzie się zepsuło – statystyki minecraft.used / minecraft.broken.
data modify storage it:tmp mem set value {}
$data modify storage it:tmp mem.id set from block 0 -64 $(z) Items[{Slot:$(s)b}].id
$data modify storage it:tmp mem.name set string block 0 -64 $(z) Items[{Slot:$(s)b}].id 10
execute if score #debug it.config matches 1 run tellraw @s [{"text":"[inv_tweakie] ","color":"aqua"},{"text":"pusta ręka, poprzednio: ","color":"gray"},{"storage":"it:tmp","nbt":"mem.id","color":"white"}]
function inv_tweakie:refill/check_used with storage it:tmp mem
