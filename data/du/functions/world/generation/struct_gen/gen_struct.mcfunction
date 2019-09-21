
#>in_0: Input to ran function- Max value -> chosen struct ID
#>in_1: Input to ran function- Seed
##in_2: chunk x pos
##in_3: chunk z pos
##in_4: chunk dimension
##in_5: map seed
##in_6: local biome
#>in_7: invalid area
#>in_8: structure size
#>temp_0: 192 const -> terminate previous loop
#>temp_1: used in size calculation
#>temp_2: used in size calculation

#setup seed
scoreboard players operation in_1 du_data = in_5 du_data
scoreboard players operation in_1 du_data /= in_2 du_data
scoreboard players operation in_1 du_data += in_3 du_data

### get size
#mod pos by 192
scoreboard players set temp_0 du_data 192
scoreboard players operation temp_1 du_data = in_2 du_data
scoreboard players operation temp_2 du_data = in_3 du_data

scoreboard players operation temp_1 du_data %= temp_0 du_data
scoreboard players operation temp_2 du_data %= temp_0 du_data

#check for valid pos in checkerboard
scoreboard players set in_8 du_data 0
execute if score temp_1 du_data matches 0 if score temp_2 du_data matches 0 run scoreboard players set in_8 du_data 1
execute if score temp_1 du_data matches 96 if score temp_2 du_data matches 96 run scoreboard players set in_8 du_data 1

#randomly make large structure
scoreboard players set in_0 du_data 8
execute if score in_8 du_data matches 1 run function du:math/random_seeded
execute if score in_8 du_data matches 1 if score out_0 du_data matches 0 run scoreboard players set in_8 du_data 2
execute if score in_8 du_data matches 1 run scoreboard players operation in_1 du_data = out_1 du_data

### determine placement conditions
execute if score in_4 du_data matches -1 in minecraft:the_nether run function du:world/generation/struct_gen/check_valid_area
execute if score in_4 du_data matches 0 in minecraft:overworld run function du:world/generation/struct_gen/check_valid_area
execute if score in_4 du_data matches 1 in minecraft:the_end run function du:world/generation/struct_gen/check_valid_area

#get struct
scoreboard players set in_0 du_data 0
scoreboard players set out_0 du_data 2000

execute if score in_4 du_data matches -1 run function du:world/generation/struct_gen/get_nether
execute if score in_4 du_data matches 0 run function du:world/generation/struct_gen/get_overworld
execute if score in_4 du_data matches 1 run function du:world/generation/struct_gen/get_end

execute if score in_0 du_data matches ..1000 run scoreboard players set in_0 du_data 1000
function du:math/random_seeded
function du:world/generation/struct_gen/get_weighted_struct

#get struct id
execute store result score in_0 du_data in minecraft:overworld run data get block -29999999 0 1600 RecordItem.tag.du.temp_struct_list[0].id

#gen struct
execute if score in_0 du_data matches 1.. if score in_4 du_data matches -1 in minecraft:the_nether run function #du:world/struct_gen_nether
execute if score in_0 du_data matches 1.. if score in_4 du_data matches 0 in minecraft:overworld run function #du:world/struct_gen_overworld
execute if score in_0 du_data matches 1.. if score in_4 du_data matches 1 in minecraft:the_end run function #du:world/struct_gen_end

#end find surface loop
scoreboard players set temp_0 du_data -1
