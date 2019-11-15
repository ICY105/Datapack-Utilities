
execute store result score temp_1 du_data run data get block -29999999 0 1600 RecordItem.tag.du.temp[0].biomes[0]
execute if score temp_1 du_data = in_6 du_data run scoreboard players set out_0 du_data 1

data remove block -29999999 0 1600 RecordItem.tag.du.temp[0].biomes[0]
execute if data block -29999999 0 1600 RecordItem.tag.du.temp[0].biomes[0] run function du:world/generation/ore_gen/check_biomes 
