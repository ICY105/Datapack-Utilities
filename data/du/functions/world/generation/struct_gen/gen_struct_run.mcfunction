
#get data
execute store result score in_0 du_data run data get block -29999999 0 1600 RecordItem.tag.du.temp_struct_list[0].id
execute store result score temp_0 du_data run data get block -29999999 0 1600 RecordItem.tag.du.temp_struct_list[0].ignore_placement

#gen struct
execute if score in_2 du_data matches -1 if block ~ ~ ~ #du:internal/valid_gen_struct run function #du:world/struct_gen_nether
execute if score in_2 du_data matches 0 if block ~ ~ ~ #du:internal/valid_gen_struct run function #du:world/struct_gen_overworld
execute if score in_2 du_data matches 1 if block ~ ~ ~ #du:internal/valid_gen_struct run function #du:world/struct_gen_end

execute if score in_2 du_data matches -1 if score temp_0 du_data matches 1 unless block ~ ~ ~ #du:internal/valid_gen_struct run function #du:world/struct_gen_nether
execute if score in_2 du_data matches 0 if score temp_0 du_data matches 1 unless block ~ ~ ~ #du:internal/valid_gen_struct run function #du:world/struct_gen_overworld
execute if score in_2 du_data matches 1 if score temp_0 du_data matches 1 unless block ~ ~ ~ #du:internal/valid_gen_struct run function #du:world/struct_gen_end
