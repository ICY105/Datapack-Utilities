
#> in_0: Input to ran function- Max value
## in_2: structure size
## in_3: valid area
#> temp_0: loop counter

execute store result score temp_0 du_data run data get block -29999999 0 1600 RecordItem.tag.du.temp_struct_list
execute if score temp_0 du_data matches 1.. run function du:world/generation/struct_gen/check_structs_2
