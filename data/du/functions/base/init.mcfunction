
#set timers
scoreboard players set $base.timer_2 du_data 0
scoreboard players set $base.timer_10 du_data 0
scoreboard players set $base.timer_20 du_data 0
scoreboard players set $base.timer_100 du_data 0

#setup static region
execute unless block -29999999 0 1601 green_shulker_box run setblock -29999999 0 1601 minecraft:green_shulker_box
execute unless block -29999999 0 1602 oak_wall_sign run setblock -29999999 0 1602 minecraft:oak_wall_sign[facing=south]
fill -29999999 1 1600 -29999999 1 1615 minecraft:bedrock

execute in minecraft:the_end unless block -29999999 0 1601 green_shulker_box run setblock -29999999 0 1601 minecraft:green_shulker_box
execute in minecraft:the_end unless block -29999999 0 1602 oak_wall_sign run setblock -29999999 0 1602 minecraft:oak_wall_sign[facing=south]
execute in minecraft:the_end run fill -29999999 1 1600 -29999999 1 1615 minecraft:bedrock

execute in minecraft:the_nether unless block -29999999 0 1601 green_shulker_box run setblock -29999999 0 1601 minecraft:green_shulker_box
execute in minecraft:the_nether unless block -29999999 0 1602 oak_wall_sign run setblock -29999999 0 1602 minecraft:oak_wall_sign[facing=south]
execute in minecraft:the_nether run fill -29999999 1 1600 -29999999 1 1615 minecraft:bedrock

#reset storage
data merge storage du:temp {list:[],object:{},var:0}
