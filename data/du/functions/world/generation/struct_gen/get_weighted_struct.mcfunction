
#get weight
execute store result score temp_0 du_data run data get block -29999999 0 1600 RecordItem.tag.du.temp_struct_list[0].weight

#decr weight
scoreboard players operation out_0 du_data -= temp_0 du_data

#loop
execute if score out_0 du_data matches 1.. run data remove block -29999999 0 1600 RecordItem.tag.du.temp_struct_list[0]
execute if score temp_0 du_data matches 1.. if score out_0 du_data matches 1.. run function du:world/generation/struct_gen/get_weighted_struct
