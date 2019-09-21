
#load values
#>in_0 du_data: ran function max output
##in_1 du_data: initial ore ID
##in_2: chunk x pos
##in_3: chunk z pos
##in_4: chunk dimension
##in_5: map seed
##in_6: local biome
#>in_7: min y
#>in_8: max y
#>in_9: min veins
#>in_10: max veins
#>in_11: min vein size
#>in_12: max vein size
#>temp_0: current reg ID
#>temp_3: biome list

execute store result score in_7 du_data run data get block -29999999 0 1600 RecordItem.tag.du.ore_reg_end[0].y_min
execute store result score in_8 du_data run data get block -29999999 0 1600 RecordItem.tag.du.ore_reg_end[0].y_max
execute store result score in_9 du_data run data get block -29999999 0 1600 RecordItem.tag.du.ore_reg_end[0].veins_min
execute store result score in_10 du_data run data get block -29999999 0 1600 RecordItem.tag.du.ore_reg_end[0].veins_max
execute store result score in_11 du_data run data get block -29999999 0 1600 RecordItem.tag.du.ore_reg_end[0].vein_size_min
execute store result score in_12 du_data run data get block -29999999 0 1600 RecordItem.tag.du.ore_reg_end[0].vein_size_max
execute store result score temp_3 du_data run data get block -29999999 0 1600 RecordItem.tag.du.ore_reg_end[0].isBlacklist

#check biome list
scoreboard players set out_0 du_data 0
execute if score temp_3 du_data matches 0..1 run function du:world/generation/ore_gen/check_biomes_end
execute if score temp_3 du_data matches 0 if score out_0 du_data matches 1 run function du:world/generation/ore_gen/start
execute if score temp_3 du_data matches 1 if score out_0 du_data matches 0 run function du:world/generation/ore_gen/start
execute if score temp_3 du_data matches -1 run function du:world/generation/ore_gen/start

### loop registry ID, then repeat until initial ID has cycled back
data modify block -29999999 0 1600 RecordItem.tag.du.ore_reg_end append from block -29999999 0 1600 RecordItem.tag.du.ore_reg_end[0]
data remove block -29999999 0 1600 RecordItem.tag.du.ore_reg_end[0]

scoreboard players remove in_1 du_data 1
execute if score in_1 du_data matches 1.. run function du:world/generation/ore_gen/generate_ores_end

