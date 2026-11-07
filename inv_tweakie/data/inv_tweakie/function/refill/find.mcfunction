data modify storage it:tmp inv set from entity @s Inventory
data modify storage it:tmp cand set value []
$data modify storage it:tmp cand append from storage it:tmp inv[{id:"$(id)"}]
function inv_tweakie:refill/pick
