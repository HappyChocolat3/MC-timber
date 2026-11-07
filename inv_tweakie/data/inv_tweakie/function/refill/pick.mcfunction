# Weź pierwszy pasujący stos z głównego ekwipunku (sloty 9–35)
execute unless data storage it:tmp cand[0] run return 0
execute store result score #s it.var run data get storage it:tmp cand[0].Slot
execute if score #s it.var matches 9..35 run return run function inv_tweakie:refill/move_prep
data remove storage it:tmp cand[0]
function inv_tweakie:refill/pick
