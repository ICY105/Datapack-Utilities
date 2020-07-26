
data merge storage du:temp {output:""}
loot replace block -29999999 0 1601 container.0 loot du:biomes
execute store result score $math.temp_0 du_data run data get block -29999999 0 1601 Items[0].tag.biome_id

execute if score $math.temp_0 du_data matches -1 run function #du:generation/custom_biomes
execute if score $math.temp_0 du_data matches 0.. run data modify storage du:temp output set from block -29999999 0 1601 Items[0].tag.biome_id
