#out_0 du_data: 0 for clear, 1 for rain, 2 for thunder, 3 if it is magically raining and thundering
loot replace block -29999999 0 1601 container.0 loot du:weather
execute store result score out_0 du_data run data get block -29999999 0 1601 Items[0].tag.biome_id
