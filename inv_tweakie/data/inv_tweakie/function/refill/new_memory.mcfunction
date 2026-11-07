execute in minecraft:overworld run summon minecraft:item_display 0.5 -60 0.5 {Tags:["it.mem","it.new"],view_range:0f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0f,0f,0f]}}
scoreboard players operation @e[type=item_display,tag=it.new] it.id = #pid it.var
tag @e[type=item_display,tag=it.new] add it.cur
tag @e[type=item_display,tag=it.new] remove it.new
