execute if score reg_id du_data matches 2.. run function du:world/generation/ore_gen/generate_ores

execute if score in_2 du_data matches -1 run function #du:world/chunk_gen_nether
execute if score in_2 du_data matches 0 run function #du:world/chunk_gen_overworld
execute if score in_2 du_data matches 1 run function #du:world/chunk_gen_end
