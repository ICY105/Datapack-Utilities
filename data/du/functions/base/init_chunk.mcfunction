
#setup static region
forceload add -29999999 1600
setblock -29999999 0 1601 minecraft:green_shulker_box
setblock -29999999 0 1602 minecraft:oak_wall_sign[facing=south]
fill -29999999 1 1600 -29999999 1 1615 minecraft:bedrock

execute positioned -29999999 0 1600 run kill @e[tag=du_forced_chunk,distance=..16]
summon minecraft:item_frame -29999999 0 1600 {Tags:["du_forced_chunk"],Fixed:1b,Invisible:1b}
