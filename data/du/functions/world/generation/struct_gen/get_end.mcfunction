
#>in_0: Input to ran function- Max value
##in_6: structure size
##in_7: valid area
#>temp_0: loop counter

execute store result score temp_0 du_data run data get block -29999999 0 1600 RecordItem.tag.du.struct_reg_end
execute if score temp_0 du_data matches 1.. run function du:world/generation/struct_gen/loop_end