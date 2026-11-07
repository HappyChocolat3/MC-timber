data modify storage it:tmp mem set value {}
$data modify storage it:tmp mem.id set from block 0 -64 $(z) Items[{Slot:$(s)b}].id
$data modify storage it:tmp mem.name set string block 0 -64 $(z) Items[{Slot:$(s)b}].id 10
function inv_tweakie:refill/track with storage it:tmp mem
