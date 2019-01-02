
#common functions
function du:world/get_biome_id
scoreboard players operation in_1 du_data = out_0 du_data
execute store result score in_2 du_data run data get entity @s Dimension

#per super chunk gen
execute if score reg_id du_data matches 2.. run function du:world/generation/struct_gen/start

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

