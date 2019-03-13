
#common functions
execute store result score in_0 du_data run data get entity @s Dimension

#super-chunk gen
execute if score in_0 du_data matches -1 run function #du:super_chunk_gen_nether
execute if score in_0 du_data matches 0 run function #du:super_chunk_gen
execute if score in_0 du_data matches 1 run function #du:super_chunk_gen_end

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

setblock ~ ~ ~ barrier

