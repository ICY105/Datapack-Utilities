
#load values
execute store result score in_4 du_data run data get block -29999999 0 1600 RecordItem.tag.du.ore_reg_nether[0].y_min
execute store result score in_5 du_data run data get block -29999999 0 1600 RecordItem.tag.du.ore_reg_nether[0].y_max
execute store result score in_6 du_data run data get block -29999999 0 1600 RecordItem.tag.du.ore_reg_nether[0].veins_min
execute store result score in_7 du_data run data get block -29999999 0 1600 RecordItem.tag.du.ore_reg_nether[0].veins_max
execute store result score in_8 du_data run data get block -29999999 0 1600 RecordItem.tag.du.ore_reg_nether[0].vein_size_min
execute store result score in_9 du_data run data get block -29999999 0 1600 RecordItem.tag.du.ore_reg_nether[0].vein_size_max
execute store result score in_10 du_data run data get block -29999999 0 1600 RecordItem.tag.du.ore_reg_nether[0].isBlacklist

#check biome list
scoreboard players set out_0 du_data 0
execute if score temp_10 du_data matches 0..1 run function du:world/generation/ore_gen/check_biomes_end
execute if score temp_10 du_data matches 0 if score out_0 du_data matches 1 run function du:world/generation/ore_gen/start
execute if score temp_10 du_data matches 1 if score out_0 du_data matches 0 run function du:world/generation/ore_gen/start
execute if score temp_10 du_data matches -1 run function du:world/generation/ore_gen/start

### loop registry ID, then repeat until initial ID has cycled back

data modify block -29999999 0 1600 RecordItem.tag.du.ore_reg_nether append from block -29999999 0 1600 RecordItem.tag.du.ore_reg_nether[0]
data remove block -29999999 0 1600 RecordItem.tag.du.ore_reg_nether[0]
execute store result score temp_0 du_data run data get block -29999999 0 1600 RecordItem.tag.du.ore_reg_nether[0].id
execute unless score temp_0 du_data = in_3 du_data run function du:world/generation/ore_gen/generate_ores_nether

