
##in_2: chunk x pos
##in_3: chunk z pos
##in_4: chunk dimension
##in_5: map seed
#>in_6: local biome

#get biome
function du:world/get_biome_id
scoreboard players operation in_6 du_data = out_0 du_data

#run ore gen
execute if score reg_id du_data matches 2.. in minecraft:overworld run function du:world/generation/ore_gen/generate_ores

#run custom functions
execute if score in_4 du_data matches -1 run function #du:world/chunk_gen_nether
execute if score in_4 du_data matches 0 run function #du:world/chunk_gen_overworld
execute if score in_4 du_data matches 1 run function #du:world/chunk_gen_end
