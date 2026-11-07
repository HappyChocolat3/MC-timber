$execute store result storage veinminer:tmp xp.v int 1 run random value $(min)..$(max)
execute store result score #xpv vm.var run data get storage veinminer:tmp xp.v
execute if score #xpv vm.var matches 1.. run function veinminer:xp_orb with storage veinminer:tmp xp
