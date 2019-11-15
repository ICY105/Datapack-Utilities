
## $du.x: x cord
## $du.z: z cord
## $du.dim: current dimension
## $du.biome: current biome
#* $du.seed: world seed

#>in_0 du_data: ran function max output
#>in_7: min y
#>in_8: max y
#>in_9: min veins
#>in_10: max veins
#>in_11: min vein size
#>in_12: max vein size
#>temp_0: current reg ID
#>temp_3: biome list

#load values
execute store result score in_7 du_data run data get block -29999999 0 1600 RecordItem.tag.du.temp[0].y_min
execute store result score in_8 du_data run data get block -29999999 0 1600 RecordItem.tag.du.temp[0].y_max
execute store result score in_9 du_data run data get block -29999999 0 1600 RecordItem.tag.du.temp[0].veins_min
execute store result score in_10 du_data run data get block -29999999 0 1600 RecordItem.tag.du.temp[0].veins_max
execute store result score in_11 du_data run data get block -29999999 0 1600 RecordItem.tag.du.temp[0].vein_size_min
execute store result score in_12 du_data run data get block -29999999 0 1600 RecordItem.tag.du.temp[0].vein_size_max
execute store result score temp_3 du_data run data get block -29999999 0 1600 RecordItem.tag.du.temp[0].isBlacklist

#check biome list
scoreboard players set out_0 du_data 0
execute if score temp_3 du_data matches -1 run scoreboard players set out_0 du_data 2
execute if score temp_3 du_data matches 0..1 run function du:world/generation/ore_gen/check_biomes
execute if score temp_3 du_data matches 0 if score out_0 du_data matches 1 run scoreboard players set out_0 du_data 2
execute if score temp_3 du_data matches 1 if score out_0 du_data matches 0 run scoreboard players set out_0 du_data 2
execute if score out_0 du_data matches 2 run function du:world/generation/ore_gen/start

### remove entry, then repeat until temp is empty
data remove block -29999999 0 1600 RecordItem.tag.du.temp[0]
execute if data block -29999999 0 1600 RecordItem.tag.du.temp[0] run function du:world/generation/ore_gen/generate_ores_2

