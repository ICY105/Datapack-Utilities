
## $du.x: x cord
## $du.z: z cord
## $du.dim: current dimension
## $du.biome: current biome
#* $du.seed: world seed

## in_2: invalid area
## in_3: structure size
## out_0: output from get biomes

#> in_0: Input to ran function- Max value
## in_2: structure size
## in_3: valid area
#> temp_0: loop counter
#> temp_1: size
#> temp_2: ignore placement restriction
#> temp_3: weight
#> temp_4: biome
#> temp_5: is valid

#load data
execute store result score temp_1 du_data run data get block -29999999 0 1600 RecordItem.tag.du.temp_struct_list[0].size
execute store result score temp_2 du_data run data get block -29999999 0 1600 RecordItem.tag.du.temp_struct_list[0].ignore_placement
execute store result score temp_3 du_data run data get block -29999999 0 1600 RecordItem.tag.du.temp_struct_list[0].weight
execute store result score temp_4 du_data run data get block -29999999 0 1600 RecordItem.tag.du.temp_struct_list[0].isBlacklist

## Check for valid biome, size, and placement
scoreboard players set temp_5 du_data 1

#size
execute unless score temp_1 du_data = in_3 du_data run scoreboard players set temp_5 du_data 0

#placement
execute if score in_2 du_data matches 1 if score temp_2 du_data matches 0 run scoreboard players set temp_5 du_data 0

#biome
scoreboard players set out_0 du_data 0
execute if score temp_5 du_data matches 1 if score temp_4 du_data matches 0..1 run function du:world/generation/struct_gen/check_struct_biome
execute if score temp_5 du_data matches 1 if score temp_4 du_data = out_0 du_data run scoreboard players set temp_5 du_data 0

#cycle registry
execute if score temp_5 du_data matches 1 run scoreboard players operation in_0 du_data += temp_3 du_data
execute if score temp_5 du_data matches 1 run data modify block -29999999 0 1600 RecordItem.tag.du.temp_struct_list append from block -29999999 0 1600 RecordItem.tag.du.temp_struct_list[0]
data remove block -29999999 0 1600 RecordItem.tag.du.temp_struct_list[0]

#loop
scoreboard players remove temp_0 du_data 1
execute if score temp_0 du_data matches 1.. run function du:world/generation/struct_gen/check_structs_2
