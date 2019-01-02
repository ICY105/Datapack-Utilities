
#spread based on size
execute store result score temp_4 du_data run data get block -29999999 0 1600 RecordItem.tag.du.temp_struct_list[0].size

execute if score temp_4 du_data matches 0 run scoreboard players set in_0 du_data 32
execute if score temp_4 du_data matches 1 run scoreboard players set in_0 du_data 16
execute if score temp_4 du_data matches 2 run scoreboard players set in_0 du_data 8
function du:math/random
scoreboard players operation temp_5 du_data = out_0 du_data

execute if score temp_4 du_data matches 0 run scoreboard players set in_0 du_data 32
execute if score temp_4 du_data matches 1 run scoreboard players set in_0 du_data 16
execute if score temp_4 du_data matches 2 run scoreboard players set in_0 du_data 4
function du:math/random
scoreboard players operation temp_6 du_data = out_0 du_data

#displace
execute if score temp_4 du_data matches 0 positioned ~-12 ~ ~-12 run function du:world/generation/struct_gen/gen_displace_x
execute if score temp_4 du_data matches 1 positioned ~-1 ~ ~-1 run function du:world/generation/struct_gen/gen_displace_x
execute if score temp_4 du_data matches 2 positioned ~3 ~ ~3 run function du:world/generation/struct_gen/gen_displace_x