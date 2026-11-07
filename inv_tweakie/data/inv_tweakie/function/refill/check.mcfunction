# Przedmiot zniknął z ręki. Uzupełniamy tylko, jeśli został zużyty (postawiony/zjedzony/rzucony)
# albo narzędzie się zepsuło – statystyki minecraft.used / minecraft.broken.
data modify storage it:tmp mem set value {}
data modify storage it:tmp mem.id set from entity @e[type=item_display,tag=it.cur,limit=1] item.id
data modify storage it:tmp mem.name set string entity @e[type=item_display,tag=it.cur,limit=1] item.id 10
function inv_tweakie:refill/check_used with storage it:tmp mem
