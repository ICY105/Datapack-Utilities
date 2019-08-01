#out_0 du_data: Biome ID
replaceitem block -29999999 0 1601 container.0 air
loot insert -29999999 0 1601 loot du:biomes
execute store result score out_0 du_data run data get block -29999999 0 1601 Items[0].tag.biome_id
