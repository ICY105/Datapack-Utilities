function du:world/get_biome_id
scoreboard players operation in_1 du_data = out_0 du_data
execute store result score in_2 du_data run data get entity @s Dimension

execute if score reg_id du_data matches 2.. run function du:world/generation/generate_ores

execute if score in_2 du_data matches -1 run function #du:world/chunk_gen_nether
execute if score in_2 du_data matches 0 run function #du:world/chunk_gen_overworld
execute if score in_2 du_data matches 1 run function #du:world/chunk_gen_end
