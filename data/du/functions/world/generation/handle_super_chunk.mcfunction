
##in_2: chunk x pos
##in_3: chunk z pos
##in_4: chunk dimension
##in_5: map seed
#>in_6: local biome

#common functions
function du:world/get_biome_id
scoreboard players operation in_6 du_data = out_0 du_data

#mark as generated
setblock ~ 0 ~ barrier

#make sure chunks are loaded
forceload add ~-12 ~-12 ~12 ~12
forceload remove ~-12 ~-12 ~12 ~12

#per super chunk gen
execute if score reg_id du_data matches 2.. in minecraft:overworld run function du:world/generation/struct_gen/start

#per chunk gen
execute positioned ~16 0 ~16 run function du:world/generation/chunk_gen
execute positioned ~16 0 ~ run function du:world/generation/chunk_gen
execute positioned ~16 0 ~-16 run function du:world/generation/chunk_gen

execute positioned ~ 0 ~16 run function du:world/generation/chunk_gen
execute positioned ~ 0 ~ run function du:world/generation/chunk_gen
execute positioned ~ 0 ~-16 run function du:world/generation/chunk_gen

execute positioned ~-16 0 ~16 run function du:world/generation/chunk_gen
execute positioned ~-16 0 ~ run function du:world/generation/chunk_gen
execute positioned ~-16 0 ~-16 run function du:world/generation/chunk_gen


