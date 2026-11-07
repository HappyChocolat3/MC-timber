$execute in minecraft:overworld unless block 0 -64 $(z) minecraft:barrel run setblock 0 -64 $(z) minecraft:barrel
# Ręka pusta, a w poprzednim ticku coś w niej było (i nie zostało wyrzucone klawiszem Q)?
$execute unless items entity @s weapon.mainhand * unless score @s it.drop matches 1.. in minecraft:overworld if data block 0 -64 $(z) Items[{Slot:$(s)b}] run function inv_tweakie:refill/check with storage it:tmp p
# Zapamiętaj, co gracz trzyma teraz
$execute in minecraft:overworld run item replace block 0 -64 $(z) container.$(s) from entity @s weapon.mainhand
$execute in minecraft:overworld if data block 0 -64 $(z) Items[{Slot:$(s)b}] run function inv_tweakie:refill/remember with storage it:tmp p
