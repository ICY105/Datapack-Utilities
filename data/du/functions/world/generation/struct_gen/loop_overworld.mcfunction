
#load data
execute store result score temp_3 du_data run data get block -29999999 0 1600 RecordItem.tag.du.struct_reg_overworld[0].size
execute store result score temp_4 du_data run data get block -29999999 0 1600 RecordItem.tag.du.struct_reg_overworld[0].weight
execute store result score temp_5 du_data run data get block -29999999 0 1600 RecordItem.tag.du.struct_reg_overworld[0].isBlacklist

#check if size & biomes match
scoreboard players set temp_6 du_data 1
execute unless score temp_3 du_data = in_3 du_data run scoreboard players set temp_6 du_data 0
execute if score temp_6 du_data matches 1 if score temp_5 du_data matches 0..1 run function du:world/generation/struct_gen/check_biomes_overworld
execute if score temp_6 du_data matches 1 if score temp_5 du_data matches 0 if score out_0 du_data matches 0 run scoreboard players set temp_6 du_data 0
execute if score temp_6 du_data matches 1 if score temp_5 du_data matches 1 if score out_0 du_data matches 1 run scoreboard players set temp_6 du_data 0

#add to temp list if valid
execute if score temp_6 du_data matches 1 run scoreboard players operation in_0 du_data += temp_4
execute if score temp_6 du_data matches 1 run data modify block -29999999 0 1600 RecordItem.tag.du.temp_struct_list append from block -29999999 0 1600 RecordItem.tag.du.struct_reg_overworld[0]

#cycle registry
data modify block -29999999 0 1600 RecordItem.tag.du.struct_reg_overworld append from block -29999999 0 1600 RecordItem.tag.du.struct_reg_overworld[0]
data remove block -29999999 0 1600 RecordItem.tag.du.struct_reg_overworld[0]

#loop
scoreboard players remove temp_0 du_data 1
execute if score temp_0 du_data matches 1.. run function du:world/generation/struct_gen/loop_overworld