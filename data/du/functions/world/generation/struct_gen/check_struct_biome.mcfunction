
## $du.biome: current biome
#> out_0: 0 for not in list, 1 for in list
#> temp_1: current biome ID

execute store result score temp_1 du_data run data get block -29999999 0 1600 RecordItem.tag.du.temp_struct_list[0].biomes[0]
execute if score temp_1 du_data = $du.biome du_data run scoreboard players set out_0 du_data 1

data remove block -29999999 0 1600 RecordItem.tag.du.temp_struct_list[0].biomes[0]
execute if score out_0 du_data matches 0 if data block -29999999 0 1600 RecordItem.tag.du.temp_struct_list[0].biomes[0] run function du:world/generation/struct_gen/check_struct_biome
